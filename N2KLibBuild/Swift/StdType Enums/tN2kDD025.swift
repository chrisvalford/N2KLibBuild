//
//  tN2kDD025.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * DD025 - Mode, Data
 *
 * DD025 - Mode, Data          DF52          4bits
 * - 0x0 = Autonomous mode
 * - 0x1 = Differential, enhanced mode
 * - 0x2 = Estimated mode
 * - 0x3 = Simulator mode
 * - 0x4 = Manual mode
 * - 0x5 to 0xD = Reserved,
 * - 0xE = Error
 * - 0xF = Data not available
 */
enum tN2kDD025: Int {
    case N2kDD025_Autonomous=0,    ///< autonomous mode
         N2kDD025_Differential=1,  ///< differential mode
         N2kDD025_Estimated=2,     ///< estimated mode
         N2kDD025_Simulator=3,     ///< simulator mode
         N2kDD025_Manual=4,        ///< manual mode
         N2kDD025_Error=0xe,       ///< error occurred
         N2kDD025_Unavailable=0xf  ///< data not available
}

typealias tN2kDataMode = tN2kDD025

