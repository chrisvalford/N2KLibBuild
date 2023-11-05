//
//  tN2kXTEMode.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 *  tN2kXTEMode
 * Enumeration of Cross Track Error modes according to PGN129283
 *
 * Cross-track error (XTE) is an essential at-a-glance indication of your
 * distance to port or starboard of your intended straight track between two
 * waypoints.
 */
enum tN2kXTEMode: Int  {
    case N2kxtem_Autonomous=0,     ///< autonomous mode
         N2kxtem_Differential=1,   ///< differential mode
         N2kxtem_Estimated=2,      ///< estimated mode
         N2kxtem_Simulator=3,      ///< simulator mode
         N2kxtem_Manual=4          ///< manual mode
}
