//
//  tN2kDD481.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD481
 * DD481 - Rode Type States according to PGN 128777
 *
 * DD481 - Rode Type States   Df52    2bit
 * - 0 = Chain presently detected
 * - 1 = Rope presently detected
 * - 2 = Error
 * - 3 = Unavailable
 */
enum tN2kDD481: Int {
    case N2kDD481_ChainPresentlyDetected=0,  ///< Chain presently detected
         N2kDD481_RopePresentlyDetected=1,   ///< Rope presently detected
         N2kDD481_Error=2,                   ///< Error
         N2kDD481_Unavailable=3              ///< Unavailable
}

typealias tN2kRodeTypeStates = tN2kDD481
