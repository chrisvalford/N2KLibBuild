//
//  tN2kOnOff.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kOnOff
 * Enumeration of On/Off staus at a NMEA 2000 network
 */
enum tN2kOnOff: Int  {
    case N2kOnOff_Off=0,         ///< No, Off, Disabled
         N2kOnOff_On=1,          ///< Yes, On, Enabled
         N2kOnOff_Error=2,       ///< Error
         N2kOnOff_Unavailable=3  ///< Unavailable
}
