/**
 * ActisenseReader.swift
 * \brief This File contains a class for reading Actisense format messages
 *
 * This is class for reading Actisense format messages from given stream.
 *
 * \note There is an unresolved problem to use programming port with reading
 * data. Read works fine for a while, but then stops. With e.g. Arduino Due
 * USB port there is no problem.
 *
 */

/**
 * Class for reading Actisense format messages
 *
 * This is class for reading Actisense format messages from given stream.
 *
 * \note There is an unresolved problem to use programming port with reading
 * data. Read works fine for a while, but then stops. With e.g. Arduino Due
 * USB port there is no problem.
 *
 */
class tActisenseReader {

    /** Maximum length of the stream message buffer */
    let MAX_STREAM_MSG_BUF_LEN = 300
    /** Start of text has been received*/
    var StartOfTextReceived: Bool
    /** A Message is coming*/
    var MsgIsComing: Bool
    /** Escape character has been received*/
    var EscapeReceived: Bool
    /** Sum of all bytes is used as kind of check sum*/
    var byteSum: UInt8
    /** Buffer for incoming messages from stream*/
    var MsgBuf: [UInt8] = [] //[MAX_STREAM_MSG_BUF_LEN];
    /** \brief Current write position inside the buffer */
    var MsgWritePos: Int
    /** Default source of the N2k message*/
    var DefaultSource: UInt8

    /** Stream to read from*/
    var ReadStream: N2kStream

    // Handler callback
    let MsgHandler: (_ N2kMsg: tN2kMsg)->(Void)

    private let Escape = UInt8(0x10)
    private let StartOfText = UInt8(0x02)
    private let EndOfText = UInt8(0x03)
    private let MsgTypeN2kData = 0x93
    private let MsgTypeN2kRequest = 0x94

    init() {
        DefaultSource = 65
        ReadStream = 0
        ClearBuffer()
    }

    /**
     * Adds a new Byte to the buffer
     *
     * - Parameter NewByte   new Byte to be added
     * - Returens true  Success or false if Buffer is full
     */
    private func AddByteToBuffer(NewByte: UInt8) -> Bool {
        if (MsgWritePos>=MAX_STREAM_MSG_BUF_LEN) {
            return false
        }
        MsgBuf[MsgWritePos] = NewByte
        MsgWritePos += 1
        if  MsgBuf[1] + 3 != MsgWritePos {
            byteSum += NewByte // !Do not add CRC to byteSum
        }
        return true
    }

    /**
     * Clears the buffer
     */
    private func ClearBuffer() {
        MsgWritePos = 0
        byteSum = 0
        StartOfTextReceived = false
        MsgIsComing = false
        EscapeReceived = false
    }

    /**
     * Checks if a message is valide
     *
     * - Parameter N2kMsg    Reference to a N2kMsg Object
     * - Returns true or  false if Length does not match. Add type, length and crc Checksum does not match data length greater then MaxDataLen
     */
    private func CheckMessage(N2kMsg: tN2kMsg) -> Bool {
        N2kMsg.Clear()
        if MsgWritePos != MsgBuf[1] + 3 {
            return false // Length does not match. Add type, length and crc
        }
        let CheckSum = (byteSum == 0) ? 0 : (256 - byteSum)
        if CheckSum != MsgBuf[MsgWritePos-1] {
            return false // Checksum does not match
        }
        var i = 2
        N2kMsg.Priority = MsgBuf[i]
        i += 1
        N2kMsg.PGN = GetBuf3ByteUInt(i, MsgBuf)
        N2kMsg.Destination = MsgBuf[i]
        i += 1
        if MsgBuf[0] == MsgTypeN2kData {
            N2kMsg.Source = MsgBuf[i]
            i += 1
            N2kMsg.MsgTime = GetBuf4ByteUInt(i, MsgBuf)
        } else {
            N2kMsg.Source = DefaultSource
            N2kMsg.MsgTime = N2kMillis()
        }
        N2kMsg.DataLen=MsgBuf[i]
        i += 1
        if N2kMsg.DataLen.MaxDataLen  {
            N2kMsg.Clear()
            return false // Too long data
        }

        for (int j=0; i<MsgWritePos-1; i++, j++) {
            N2kMsg.Data[j] = MsgBuf[i]
        }
        return true
    }

    /**
     * Set the Read Stream object
     *
     * Set stream, which would be used for reading messages. You have to
     * open stream first, so e.g. for SerialUSB call begin first.
     *
     * - Parameter _stream   Stream to read from
     */
    func SetReadStream(_stream: N2kStream) {
        ReadStream = _stream
    }

    /**
     * Set the default source address for the messages
     *
     * If you use an application, which sends data by using Actisense data
     * request type, the source set by this function will be set as source.
     * Default=65;
     *
     * - Parameter source Source address to be used
     */
    func SetDefaultSource(source: UInt8) {
        DefaultSource = source
    }

    /**
     * Read Actisense formatted NMEA2000 message from stream
     *
     * You can either call this or ParseMessages periodically.
     *
     * Read Actisense formatted NMEA2000 message from stream
     * Actisense Format:
     * <10><02><93><length (1)><priority (1)><PGN (3)><destination (1)><source (1)><time (4)><len (1)><data (len)><CRC (1)><10><03>
     * or
     * <10><02><94><length (1)><priority (1)><PGN (3)><destination (1)><len (1)><data (len)><CRC (1)><10><03>
     * - Parameter N2kMsg    Reference to a N2kMsg Object
     * - Parameter ReadOut
     *
     * - Returns true or false if (ReadStream==0)
     */
    func GetMessageFromStream(N2kMsg: tN2kMsg, ReadOut: Bool = true) -> Bool {
        var result = false
        if ReadStream == 0 {
            return false
        }
        var NewByte: UInt8
        var ContinueLoopAvailable = true

        while (NewByte = ReadStream.peek()) != -1 && !result && ContinueLoopAvailable {
            //        Serial.println((char)NewByte,HEX);
            if MsgIsComing {
                ReadStream.read()
                if EscapeReceived {
                    switch NewByte {
                    case Escape: // Escaped Escape
                        EscapeReceived = false
                        if !AddByteToBuffer(NewByte: NewByte) {
                            ClearBuffer()
                        }

                    case EndOfText: // Message ready
                        switch MsgBuf[0] {
                        case MsgTypeN2kData, MsgTypeN2kRequest:
                            result = CheckMessage(N2kMsg: N2kMsg)

                        default:
                            result = false
                        }
                        ClearBuffer();

                    case StartOfText: // Start new message
                        ClearBuffer()
                        StartOfTextReceived = true

                    default: // Error
                        ClearBuffer()
                    }
                } else {
                    if (NewByte==Escape) {
                        EscapeReceived=true;
                    } else {
                        if !AddByteToBuffer(NewByte: NewByte) {
                            ClearBuffer()
                        }
                    }
                }
            } else {
                switch NewByte {
                case StartOfText:
                    StartOfTextReceived = false
                    if (EscapeReceived) {
                        ReadStream.read() // Read ch out
                        ClearBuffer()
                        StartOfTextReceived = true
                    }

                default:
                    EscapeReceived=(NewByte==Escape);
                    if (StartOfTextReceived) {
                        ReadStream.read() // Read ch out
                        StartOfTextReceived = false
                        MsgIsComing = true
                        AddByteToBuffer(NewByte: NewByte)
                    } else {
                        if EscapeReceived || ReadOut {
                            ReadStream.read() // Read ch out
                        }
                    }
                }
            }
            ContinueLoopAvailable = ReadOut || Handling()
        }
        return result
    }

    /**
     * Checks if character is start
     *
     * - Parameter ch    character
     * - Returns      if (ch==Escape)  or false
     */
    func IsStart(ch: Int8) -> Bool {
        return ch == Escape
    }

    /**
     * Parse messages
     *
     * Set message handler with SetMsgHandler and then call this
     * periodically or use GetMessageFromStream
     *
     */
    func ParseMessages() {
        var N2kMsg: tN2kMsg
        while GetMessageFromStream(N2kMsg: N2kMsg) {
            if MsgHandler != 0 {
                MsgHandler(N2kMsg)
            }
        }
    }

    /**
     * Set the Msg Handler object
     *
     * Set message handler to be used in ParseMessages, when message has
     * been received.
     *
     * - Parameter _MsgHandler {type}
     */
    func SetMsgHandler(void (*_MsgHandler)(const tN2kMsg &N2kMsg)) {
        MsgHandler = _MsgHandler
    }

    /** *****************************************************************//**
                                                                           * \brief Indicates if still message handling is needed
                                                                           * \return true
                                                                           * \return false
                                                                           */
    func Handling() -> Bool {
        return MsgIsComing || EscapeReceived || StartOfTextReceived
    }
}
