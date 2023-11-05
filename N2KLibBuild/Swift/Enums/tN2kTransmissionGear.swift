//
//  tN2kTransmissionGear.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kTransmissionGear
 * Enumeration of transmission state according to PGN 127493
 */
enum tN2kTransmissionGear: Int {
    case N2kTG_Forward=0,  ///< transmission state is forward
         N2kTG_Neutral=1,  ///< transmission state is neutral
         N2kTG_Reverse=2,  ///< transmission state is reverse
         N2kTG_Unknown=3  ///< transmission state is unknown
}

extension tN2kTransmissionGear: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2kTG_Forward:
            return "forward"
        case .N2kTG_Neutral:
            return "neutral"
        case .N2kTG_Reverse:
            return "reverse"
        case .N2kTG_Unknown:
            return "unknown"
        }
    }
}
