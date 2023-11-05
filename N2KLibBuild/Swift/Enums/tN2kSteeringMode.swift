//
//  tN2kSteeringMode.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kSteeringMode
 * Enumeration of the steering mode according to PGN127237
 */
enum tN2kSteeringMode: Int {
    case N2kSM_MainSteering=0,               ///< The device is the main steering
         N2kSM_NonFollowUpDevice=1,          ///< The device is a non followup device
         N2kSM_FollowUpDevice=2,             ///< The device is a follup device
         N2kSM_HeadingControlStandalone=3,   ///< The heading controlsystem is a standalone
         N2kSM_HeadingControl=4,             ///< The device is a HeadingControl
         N2kSM_TrackControl=5,               ///< The device is a TrackControl
         N2kSM_Unavailable=7                 ///< unavailable
}
