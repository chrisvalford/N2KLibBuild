//
//  tN2kDD482.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD482
 * DD482 - Anchor Docking States according to PGN 128777
 *
 * DD482 - Anchor Docking States      DF52      2bit
 * - 0 = Not docked
 * - 1 = Fully docked
 * - 2 = Error
 * - 3 = Data not available
 */
enum tN2kDD482: Int {
    case N2kDD482_NotDocked=0,         ///< Not docked
         N2kDD482_FullyDocked=1,       ///< Fully docked
         N2kDD482_Error=2,             ///< Error
         N2kDD482_DataNotAvailable=3   ///< Data not available
}

typealias tN2kAnchorDockingStates = tN2kDD482
