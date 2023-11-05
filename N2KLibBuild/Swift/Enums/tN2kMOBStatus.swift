//
//  tN2kMOBStatus.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kMOBStatus
 * Enumeration of ManOverBoard state according to PGN127233
 */
enum tN2kMOBStatus: Int {
    case MOBEmitterActivated=0,                ///< MOB emitter has triggerd the status
         ManualOnBoardMOBButtonActivation=1,   ///< MOB was triggerd manually
         TestMode=2,                           ///< MOB in test mode
         MOBNotActive=3                        ///< MOB not active
}
