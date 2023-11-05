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
    var byteSum: Int
    /** Buffer for incoming messages from stream*/
    var MsgBuf: [UInt8] = [] //[MAX_STREAM_MSG_BUF_LEN];
    /** \brief Current write position inside the buffer */
    var MsgWritePos: Int
    /** Default source of the N2k message*/
    var DefaultSource: UInt8

    /** Stream to read from*/
    var ReadStream: N2kStream
    // Handler callback
    void (*MsgHandler)(const tN2kMsg &N2kMsg);


    /********************************************************************//**
     * \brief Adds a new Byte to the buffer
     *
     * \param NewByte   new Byte to be added
     * \return true     -> Success
     * \return false    -> Buffer is full
     */
    private func AddByteToBuffer(NewByte: Int8) -> Bool {

    }
    /********************************************************************//**
     * \brief Clears the buffer
     */
    private func ClearBuffer() {

    }

    /********************************************************************//**
     * \brief Checks if a message is valide
     *
     * \param N2kMsg    Reference to a N2kMsg Object  
     * \return true     
     * \return false    -> Length does not match. Add type, length and crc
     * \return false    -> Checksum does not match
     * \return false    -> data length greater then tN2kMsg::MaxDataLen
     */
    private func CheckMessage(N2kMsg: tN2kMsg) -> Bool {

    }

    /********************************************************************//**
     * \brief Set the Read Stream object
     * 
     * Set stream, which would be used for reading messages. You have to
     * open stream first, so e.g. for SerialUSB call begin first.
     * 
     * \param _stream   Stream to read from
     */
     
    func SetReadStream(_stream: N2kStream) {
        ReadStream = _stream
    }

    /********************************************************************//**
     * \brief Set the default source address for the messages
     *
     * If you use an application, which sends data by using Actisense data 
     * request type, the source set by this function will be set as source. 
     * Default=65;
     * 
     * \param source Source address to be used
     */
    func SetDefaultSource(source: UInt8) {
        DefaultSource = source
    }

    /********************************************************************//**
     * \brief Read Actisense formatted NMEA2000 message from stream
     * 
     * You can either call this or ParseMessages periodically.
     * 
     * Read Actisense formatted NMEA2000 message from stream
     * Actisense Format:
     * <10><02><93><length (1)><priority (1)><PGN (3)><destination (1)><source (1)><time (4)><len (1)><data (len)><CRC (1)><10><03>
     * or
     * <10><02><94><length (1)><priority (1)><PGN (3)><destination (1)><len (1)><data (len)><CRC (1)><10><03>
     * \param N2kMsg    Reference to a N2kMsg Object  
     * \param ReadOut   
     * 
     * \return true 
     * \return false  -> if (ReadStream==0)
     */
    func GetMessageFromStream(N2kMsg: tN2kMsg, ReadOut: Bool = true) -> Bool {

    }

    /********* **********************************************************//**
     * \brief Checks if character is start 
     *
     * \param ch    character
     * \return true     -> if (ch==Escape)
     * \return false 
     */
    func IsStart(ch: Int8) -> Bool {

    }

    /********************************************************************//**
     * \brief Parse messages
     *
     * Set message handler with SetMsgHandler and then call this 
     * periodically or use GetMessageFromStream
     * 
     */
    func ParseMessages() {}

    /********************************************************************//**
     * \brief Set the Msg Handler object
     *
     * Set message handler to be used in ParseMessages, when message has
     * been received.
     * 
     * \param _MsgHandler {type} 
     */
    void SetMsgHandler(void (*_MsgHandler)(const tN2kMsg &N2kMsg)) { MsgHandler=_MsgHandler; }

    /** *****************************************************************//**
     * \brief Indicates if still message handling is needed
     * \return true
     * \return false
     */
    bool Handling() const { return MsgIsComing || EscapeReceived || StartOfTextReceived; }
};

#endif

//=============================



//*****************************************************************************
tActisenseReader::tActisenseReader() {
  DefaultSource=65;
  ReadStream=0;
  ClearBuffer();
}

//*****************************************************************************
void tActisenseReader::ClearBuffer() {
  MsgWritePos=0;
  byteSum=0;
  StartOfTextReceived=false;
  MsgIsComing=false;
  EscapeReceived=false;
}

//*****************************************************************************
bool tActisenseReader::AddByteToBuffer(char NewByte) {
  if (MsgWritePos>=MAX_STREAM_MSG_BUF_LEN) return false;

  MsgBuf[MsgWritePos]=NewByte;
  MsgWritePos++;
  if ( MsgBuf[1]+3!=MsgWritePos ) byteSum+=NewByte; // !Do not add CRC to byteSum
  return true;
}

#define Escape 0x10
#define StartOfText 0x02
#define EndOfText 0x03
#define MsgTypeN2kData 0x93
#define MsgTypeN2kRequest 0x94

//*****************************************************************************
bool tActisenseReader::CheckMessage(tN2kMsg &N2kMsg) {

   N2kMsg.Clear();

   if (MsgWritePos!=MsgBuf[1]+3) {
     return false; // Length does not match. Add type, length and crc
   }

   uint8_t CheckSum = (uint8_t)((byteSum == 0) ? 0 : (256 - byteSum));
   if ( CheckSum!=MsgBuf[MsgWritePos-1] ) {
     return false; // Checksum does not match
   }

   int i=2;
   N2kMsg.Priority=MsgBuf[i++];
   N2kMsg.PGN=GetBuf3ByteUInt(i,MsgBuf);
   N2kMsg.Destination=MsgBuf[i++];
   if ( MsgBuf[0]==MsgTypeN2kData ) {
     N2kMsg.Source=MsgBuf[i++];
     N2kMsg.MsgTime=GetBuf4ByteUInt(i,MsgBuf);
   } else {
     N2kMsg.Source=DefaultSource;
     N2kMsg.MsgTime=N2kMillis();
   }
   N2kMsg.DataLen=MsgBuf[i++];

   if ( N2kMsg.DataLen>tN2kMsg::MaxDataLen ) {
     N2kMsg.Clear();
     return false; // Too long data
   }

   for (int j=0; i<MsgWritePos-1; i++, j++) N2kMsg.Data[j]=MsgBuf[i];

   return true;
}

//*****************************************************************************
bool tActisenseReader::IsStart(char ch) {
  return (ch==Escape);
}

//*****************************************************************************
// Read Actisense formatted NMEA2000 message from stream
// Actisense Format:
// <10><02><93><length (1)><priority (1)><PGN (3)><destination (1)><source (1)><time (4)><len (1)><data (len)><CRC (1)><10><03>
// or
// <10><02><94><length (1)><priority (1)><PGN (3)><destination (1)><len (1)><data (len)><CRC (1)><10><03>
bool tActisenseReader::GetMessageFromStream(tN2kMsg &N2kMsg, bool ReadOut) {
  bool result=false;

  if (ReadStream==0) return false;

  int NewByte;
  bool ContinueLoopAvailable=true;

  while ((NewByte = ReadStream->peek()) != -1 && !result && ContinueLoopAvailable) {
//        Serial.println((char)NewByte,HEX);
      if (MsgIsComing) {
        ReadStream->read();
        if (EscapeReceived) {
          switch (NewByte) {
            case Escape: // Escaped Escape
              EscapeReceived=false;
              if (!AddByteToBuffer(NewByte)) ClearBuffer();
              break;
            case EndOfText: // Message ready
              switch (MsgBuf[0]) {
                case MsgTypeN2kData:
                case MsgTypeN2kRequest:
                  result=CheckMessage(N2kMsg);
                  break;
                default:
                  result=false;
              }
              ClearBuffer();
              break;
            case StartOfText: // Start new message
              ClearBuffer();
              StartOfTextReceived=true;
              break;
            default: // Error
              ClearBuffer();
          }
        } else {
          if (NewByte==Escape) {
            EscapeReceived=true;
          } else {
            if (!AddByteToBuffer(NewByte)) ClearBuffer();
          }
        }
      } else {
        switch (NewByte) {
          case StartOfText:
            StartOfTextReceived=false;
            if (EscapeReceived) {
              ReadStream->read(); // Read ch out
              ClearBuffer();
              StartOfTextReceived=true;
            }
            break;
          default:
            EscapeReceived=(NewByte==Escape);
            if (StartOfTextReceived) {
              ReadStream->read(); // Read ch out
              StartOfTextReceived=false;
              MsgIsComing=true;
              AddByteToBuffer(NewByte);
            } else {
              if ( EscapeReceived || ReadOut ) ReadStream->read(); // Read ch out
            }
        }
      }

    ContinueLoopAvailable=ReadOut || Handling();
  }

  return result;
}

//*****************************************************************************
void tActisenseReader::ParseMessages() {
  tN2kMsg N2kMsg;

    while (GetMessageFromStream(N2kMsg)) {
      if (MsgHandler!=0) MsgHandler(N2kMsg);
    }
}



