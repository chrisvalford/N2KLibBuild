//
//  tN2kDD473.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD473
 * DD473 - Thruster Direction Control according to PGN 128006
 *
 * DD473 - Thruster Direction Control   DF52    4bit
 * - 0 = OFF
 * - 1 = Thruster Ready
 * - 2 = Thruster to PORT
 * - 3 = Thruster to STARBOARD
 * - 4-15 = Reserved
 *
 */
enum tN2kDD473: Int {
    case N2kDD473_OFF=0,                     ///< Thruster is Off
         N2kDD473_ThrusterReady=1,           ///< Truster is Ready
         N2kDD473_ThrusterToPORT=2,          ///< Truster to port
         N2kDD473_ThrusterToSTARBOARD=3      ///< Thruster to starboard
}

typealias tN2kThrusterDirectionControl = tN2kDD473
