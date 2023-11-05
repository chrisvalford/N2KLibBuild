/**
 * This File contains all specific Enumerations to make NMEA2000
 *        Messages easier for humans to read.
 *
 * Each NMEA2000 message has a specific CanID (address) which consists a
 * PGN Number (eg. PGN127802) and carries 8byte of raw data. For every PGN
 * exists a detailed description how these 8 bytes transfer into usable values.
 * To save bandwidth not all of values have the size of 1byte. All sizes from
 * 1bit to 64bits are allowed. The Enumerations of this file make these values
 * easier for humans to read, and are used in the corresponding SetXXX and
 * ParseXXX functions of \ref N2kMessages.h .
 */
