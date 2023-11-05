//
//  tN2kDD488.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD488
 * DD488 - Speed Control Type according to PGN 128776
 * - 0 = Single Speed
 * - 1 = Dual Speed
 * - 2 = Proportional Speed
 * - 3 = Data Not Available
 */
enum tN2kDD488: Int {
    case N2kDD488_SingleSpeed=0,         ///< Single Speed
         N2kDD488_DualSpeed=1,           ///< Dual Speed
         N2kDD488_ProportionalSpeed=2,   ///< Proportional Speed
         N2kDD488_DataNotAvailable=3     ///< Data Not Available
}

typealias tN2kSpeedType = tN2kDD488
