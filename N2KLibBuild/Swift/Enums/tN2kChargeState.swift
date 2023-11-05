//
//  tN2kChargeState.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kChargeState
 * Enumeration of state of the battery charger operation according to
 * PGN127507
 */
enum tN2kChargeState: Int  {
    case N2kCS_Not_Charging=0,     ///< Charger operation state is not charging
         N2kCS_Bulk=1,             ///< Charger operation state is in bulk
         N2kCS_Absorption=2,       ///< Charger operation state is in absorption
         N2kCS_Overcharge=3,       ///< Charger operation state is in overcharge
         N2kCS_Equalise=4,         ///< Charger operation state is in equalise
         N2kCS_Float=5,            ///< Charger operation state is in float
         N2kCS_No_Float=6,         ///< Charger operation state is in no float
         N2kCS_Constant_VI=7,      ///< Charger operation state is in constant power
         N2kCS_Disabled=8,         ///< Charger operation state is disabled
         N2kCS_Fault=9,            ///< Charger operation state is in fault
         N2kCS_Unavailable=15      ///< Charger operation state unavailable
}
