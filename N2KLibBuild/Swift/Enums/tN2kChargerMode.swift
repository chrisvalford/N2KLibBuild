//
//  tN2kChargerMode.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kChargerMode
 * Enumeration of charger modes according to PGN 127507
 */
enum tN2kChargerMode: Int {
    case N2kCM_Standalone=0,   ///< Charger mode is stand alone
         N2kCM_Primary=1,      ///< Charger mode is primary charger
         N2kCM_Secondary=2,    ///< Charger mode is secondary charger
         N2kCM_Echo=3,         ///< Charger mode is echo
         N2kCM_Unavailable=15  ///< Charger mode is unvailable
}
