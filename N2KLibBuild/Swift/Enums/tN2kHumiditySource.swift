//
//  tN2kHumiditySource.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kHumiditySource
 * Enumeration of sources for a humidity value according to PGN130311
 * and PGN130313
 */
enum tN2kHumiditySource: Int {
    case N2khs_InsideHumidity=0,       ///< humidity is measured inside
         N2khs_OutsideHumidity=1,      ///< humidity is measured outside
         N2khs_Undef=0xff              ///< source is undefined
}

extension tN2kHumiditySource: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2khs_InsideHumidity:
            return "inside"
        case .N2khs_OutsideHumidity:
            return "outside"
        case .N2khs_Undef:
            return "undefined"
        }
    }
}
