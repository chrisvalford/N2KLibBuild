//
//  tN2kGNSSmethod.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kGNSSmethod
 * Enumeration of GNSS working methods according to PGN129029
 *
 * These working methods of the GNSS determine the precision of the GNSS position
 *
 */
enum tN2kGNSSmethod: Int {
    case N2kGNSSm_noGNSS=0,        ///< no GNSS available
         N2kGNSSm_GNSSfix=1,       ///< GNSS is fixed and available
         N2kGNSSm_DGNSS=2,         ///< differential GNSS is available
         N2kGNSSm_PreciseGNSS=3,   ///< precise GNSS is available
         N2kGNSSm_RTKFixed=4,      ///< GNSS with RealTimeKinematic (fixed) is available
         N2kGNSSm_RTKFloat=5,      ///< GNSS with RealTimeKinematic (float) is available
         N2kGNSSm_Error=14,        ///< error occurred
         N2kGNSSm_Unavailable=15   ///< GNSS is unavailable
}

extension tN2kGNSSmethod: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2kGNSSm_noGNSS:
            return "no GNSS"
        case .N2kGNSSm_GNSSfix:
            return "GNSS fix"
        case .N2kGNSSm_DGNSS:
            return "DGNSS"
        case .N2kGNSSm_PreciseGNSS:
            return "precise GNSS"
        case .N2kGNSSm_RTKFixed:
            return "RTKFixed"
        case .N2kGNSSm_RTKFloat:
            return "RTKFloat"
        case .N2kGNSSm_Error:
            return "error"
        case .N2kGNSSm_Unavailable:
            return "unavailable"
        }
    }
}
