//
//  tN2kBatType.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kBatType
 * Enumeration of Battery types according to PGN 127513
 *
 * Battery type in PGN 127513 «Battery Configuration Status» (for reporting
 * only).
 */
enum tN2kBatType: Int  {
    case N2kDCbt_Flooded=0,          ///< battery type is an flooded lead acid
         N2kDCbt_Gel=1,              ///< battery type is GEL
         N2kDCbt_AGM=2               ///< battery type is AGM
}

extension tN2kBatType: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2kDCbt_Flooded:
            return "flooded"
        case .N2kDCbt_Gel:
            return "gel"
        case .N2kDCbt_AGM:
            return "AGM"
        }
    }
}
