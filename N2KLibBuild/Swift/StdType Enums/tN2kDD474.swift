//
//  tN2kDD474.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD474
 * DD474 - Thruster Retraction according to PGN 128006
 *
 * DD474 - Thruster Retraction    DF52   2bit
 * - 0 = OFF
 * - 1 = Extend
 * - 2 = Retract
 * - 3 = Reserved
 *
 */
enum tN2kDD474: Int {
    case N2kDD474_OFF=0,             ///< Thruster retraction Off
         N2kDD474_Extend=1,          ///< Thruster retraction Extend
         N2kDD474_Retract=2,         ///< Thruster retraction Retract
         N2kDD474_Reserved=3         ///< Thruster retraction  Reserved
}

typealias tN2kThrusterRetraction = tN2kDD474
