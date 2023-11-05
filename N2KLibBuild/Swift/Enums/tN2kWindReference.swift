//
//  tN2kWindReference.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kWindReference
 * Enumeration of wind reference types according to PGN130306
 *
 * Details found on page 12 of https://www.rocktheboatmarinestereo.com/specs/MSNRX200I.pdf
 */
enum tN2kWindReference: Int {
    case N2kWind_True_North=0,     ///< Theoretical Wind (ground referenced, referenced to True North; calculated using COG/SOG)
         N2kWind_Magnetic=1,       ///< Theoretical Wind (ground referenced, referenced to Magnetic North; calculated using COG/SOG)
         N2kWind_Apparent=2,       ///< Apparent Wind (relative to the vessel centerline)
         //N2kWind_Apprent=2,        ///< Deprecated - We had the typo in older version of the library
         N2kWind_True_boat=3,      ///< Theoretical (Calculated to Centerline of the vessel, referenced to ground; calculated using COG/SOG)
         N2kWind_True_water=4,     ///< Theoretical (Calculated to Centerline of the vessel, referenced to water; calculated using Heading/Speed through Water)
         N2kWind_Error=6,          ///< error occurred
         N2kWind_Unavailable=7     ///< unavailable
}
