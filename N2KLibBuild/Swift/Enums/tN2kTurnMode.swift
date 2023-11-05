//
//  tN2kTurnMode.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kTurnMode
 * Enumeration of tunr control modes according to PGN127237
 */
enum tN2kTurnMode: Int {
    case N2kTM_RudderLimitControlled=0,      ///< The turning is controlled by the rudder limit
         N2kTM_TurnRateControlled=1,         ///< The turning is controlled by the turn rate
         N2kTM_RadiusControlled=2,           ///< The turning is controlled by the radius
         N2kTM_Unavailable=7                 ///< unavailable
}
