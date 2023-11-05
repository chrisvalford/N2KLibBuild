//
//  tN2kRudderDirectionOrder.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kRudderDirectionOrder
 * Enumeration of Rudder Direction Order according to PGN127237, 127245
 */
enum tN2kRudderDirectionOrder: Int {
    case N2kRDO_NoDirectionOrder=0,  ///< no direction order
         N2kRDO_MoveToStarboard=1,   ///< move to starboard
         N2kRDO_MoveToPort=2,        ///< move to port
         N2kRDO_Unavailable=7        ///< unavailable
}
