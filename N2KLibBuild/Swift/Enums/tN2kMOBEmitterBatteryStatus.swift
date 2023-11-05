//
//  tN2kMOBEmitterBatteryStatus.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kMOBEmitterBatteryStatus
 * Enumeration of MOB emitter battery status  according to PGN127233
 */
enum tN2kMOBEmitterBatteryStatus: Int {
    case Good=0,    ///< Battery status of the MOB emitter is good
         Low=1     ///< Battery status of the MOB emitter is low
}
