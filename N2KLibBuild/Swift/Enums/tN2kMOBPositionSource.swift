//
//  tN2kMOBPositionSource.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kMOBPositionSource
 * Enumeration of ManOverBoard position source according to PGN127233
 */
enum tN2kMOBPositionSource: Int {
    case PositionEstimatedByVessel=0,           ///< MOB position is estimated by the vessel
         PositionReportedByMOBEmitter=1        ///< MOB position is peported by MOB emitter
}
