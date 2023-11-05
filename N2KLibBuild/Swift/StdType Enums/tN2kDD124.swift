//
//  tN2kDD124.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD124
 * DD124 - PRN Usage Status
 *
 * DD124  PRN Usage Status       DF52       4bit
 * - 0 = Not Tracked
 * - 1 = Tracked but not used in solution
 * - 2 = Used in solution without Differential corrections
 * - 3 = Differential Corrections available
 * - 4 = Tracked with Differential Corrections
 * - 5 = used with Differential Corrections
 * - 6-13 =Reserved
 * - 14 = Error
 * - 15 = No Selection
 */
enum tN2kDD124: Int {
    case N2kDD124_NotTracked=0,                                      ///< Not Tracked
         N2kDD124_TrackedButNotUsedInSolution=1,                     ///< Tracked but not used in solution
         N2kDD124_UsedInSolutionWithoutDifferentialCorrections=2,    ///< Used in solution without Differential corrections
         N2kDD124_DifferentialCorrectionsAvailable=3,                ///< Differential Corrections available
         N2kDD124_TrackedWithDifferentialCorrections=4,              ///< Tracked with Differential Corrections
         N2kDD124_UsedWithDifferentialCorrections=5,                 ///< used with Differential Corrections
         N2kDD124_Error=14,                                          ///< error occurred
         N2kDD124_Unavailable=15                                   ///< no selection, unavailable
}

typealias tN2kPRNUsageStatus = tN2kDD124
