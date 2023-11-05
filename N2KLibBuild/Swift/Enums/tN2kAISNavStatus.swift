//
//  tN2kAISNavStatus.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kAISNavStatus
 * Enumeration of navigational status of an ship sending out an AIS
 * signal according to PGN 129038
 */
enum tN2kAISNavStatus: Int {
    case N2kaisns_Under_Way_Motoring=0,                  ///< Ship is under way and motoring
         N2kaisns_At_Anchor=1,                           ///< Ship is at anchor
         N2kaisns_Not_Under_Command=2,                   ///< Ship is not under command
         N2kaisns_Restricted_Manoeuverability=3,         ///< Ship has a restricted manoeuverability
         N2kaisns_Constrained_By_Draught=4,              ///< Ship has constrains by drought
         N2kaisns_Moored=5,                              ///< Ship is moored
         N2kaisns_Aground=6,                             ///< Ship is aground
         N2kaisns_Fishing=7,                             ///< Ship is fishing
         N2kaisns_Under_Way_Sailing=8,                   ///< Ship is under way and sailing
         N2kaisns_Hazardous_Material_High_Speed=9,       ///< Hazardous material in the water and moving with high speed
         N2kaisns_Hazardous_Material_Wing_In_Ground=10,  ///< Hazardous material in the water and wing in ground
         N2kaisns_AIS_SART=14                           ///< AIS Search And Rescue Transmission
}
