//
//  tN2kDCType.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDCType
 * Enumeration of DC power sources according to PGN 127506
 *
 * DC Type for PGN 127506 «DC Detailed Status». Legacy NMEA 2000 devices
 * may not support this PGN
 */
enum tN2kDCType: Int {
    case N2kDCt_Battery=0,           ///< DC power from battery
         N2kDCt_Alternator=1,        ///< DC power from alternator
         N2kDCt_Converter=2,         ///< DC power from converter
         N2kDCt_SolarCell=3,         ///< DC power from solar cell
         N2kDCt_WindGenerator=4      ///< DC power from wind generator
}
