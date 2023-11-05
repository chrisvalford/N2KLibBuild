//
//  tN2kDD484.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD484
 * DD484 - Windlass Direction Control according to PGN 128776
 *
 * DD484 - Windlass Direction Control
 * - 0 = OFF (Status Only / cannot command)
 * - 1 = DOWN
 * - 2 = UP
 * - 3 = Reserved
 */
enum tN2kDD484: Int {
    case N2kDD484_Off=0,       ///< Status only / cannot command
         N2kDD484_Down=1,      ///< Windlass DOWN
         N2kDD484_Up=2,        ///< Windlass UP
         N2kDD484_Reserved=3   ///< Reserved
}

typealias tN2kWindlassDirectionControl = tN2kDD484
