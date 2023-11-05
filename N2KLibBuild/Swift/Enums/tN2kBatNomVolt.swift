//
//  tN2kBatNomVolt.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kBatNomVolt
 * Enumeration of nominal battery voltage according to PGN 127513
 *
 * Nominal voltage in PGN 127513 «Battery Configuration Status».
 */
enum tN2kBatNomVolt: Int {
    case N2kDCbnv_6v=0,    ///< nominal voltage is 6V
         N2kDCbnv_12v=1,   ///< nominal voltage is 12V
         N2kDCbnv_24v=2,   ///< nominal voltage is 24V
         N2kDCbnv_32v=3,   ///< nominal voltage is 32V
         N2kDCbnv_62v=4,   ///< nominal voltage is 62V
         N2kDCbnv_42v=5,   ///< nominal voltage is 42V
         N2kDCbnv_48v=6    ///< nominal voltage is 48V
}

extension tN2kBatNomVolt: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2kDCbnv_6v:
            return "6V"
        case .N2kDCbnv_12v:
            return "12V"
        case .N2kDCbnv_24v:
            return "24V"
        case .N2kDCbnv_32v:
            return "32V"
        case .N2kDCbnv_62v:
            return "62V"
        case .N2kDCbnv_42v:
            return "42V"
        case .N2kDCbnv_48v:
            return "48V"
        }
    }
}
