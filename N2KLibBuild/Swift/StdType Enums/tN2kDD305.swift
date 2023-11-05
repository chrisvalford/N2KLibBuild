//
//  tN2kDD305.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD305
 * Enumeration of Aid to Navigation (AtoN) Type according to PGN129041
 *
 * Type of AtoN.
 *
 * Message 21: Aids-to-navigation report (AtoN)
 * - https://www.itu.int/dms_pubrec/itu-r/rec/m/R-REC-M.1371-5-201402-I!!PDF-E.pdf (Table74 p.133)
 *
 * ITU-R M.1371-4
 * This message should be used by an AtoN AIS station. This station may be mounted on an
 * aid-to-navigation or this message may be transmitted by a fixed station when the functionality of an
 * AtoN station is integrated into the fixed station. This message should be transmitted
 * autonomously at a Rr of once every three (3) min or it may be assigned by an assigned mode
 * command (Message16) via the VHF data link, or by an external command. This message should
 * not occupy more than two slots
 */
enum tN2kDD305: Int {
    case N2kAISAtoN_not_specified=0,                       ///< Default, type of AtoN not specified
         N2kAISAtoN_reference_point=1,                     ///< AtoN type reference point
         N2kAISAtoN_RACON=2,                               ///< AtoN type RACON
         N2kAISAtoN_fixed_structure=3,                     ///< AtoN type Fixed structures off-shore, such as oil platforms, wind farms
         N2kAISAtoN_emergency_wreck_marking_buoy=4,        ///< AtoN type Emergency Wreck Marking Buoy
         N2kAISAtoN_light_without_sectors=5,               ///< Fixed AtoN type Light, without sectors
         N2kAISAtoN_light_with_sectors=6,                  ///< Fixed AtoN type Light, with sectors
         N2kAISAtoN_leading_light_front=7,                 ///< Fixed AtoN type Leading Light Front
         N2kAISAtoN_leading_light_rear=8,                  ///< Fixed AtoN type Leading Light Rear
         N2kAISAtoN_beacon_cardinal_N=9,                   ///< Fixed AtoN type Beacon, Cardinal N
         N2kAISAtoN_beacon_cardinal_E=10,                  ///< Fixed AtoN type Beacon, Cardinal E
         N2kAISAtoN_beacon_cardinal_S=11,                  ///< Fixed AtoN type Beacon, Cardinal S
         N2kAISAtoN_beacon_cardinal_W=12,                  ///< Fixed AtoN type Beacon, Cardinal W
         N2kAISAtoN_beacon_port_hand=13,                   ///< Fixed AtoN type Beacon, Port hand
         N2kAISAtoN_beacon_starboard_hand=14,              ///< Fixed AtoN type Beacon, starboard hand
         N2kAISAtoN_beacon_preferred_ch_port_hand=15,      ///< Fixed AtoN type Beacon, Preferred Channel port hand
         N2kAISAtoN_beacon_preferred_ch_starboard_hand=16, ///< Fixed AtoN type Beacon, Preferred Channel starboard hand
         N2kAISAtoN_beacon_isolated_danger=17,             ///< Fixed AtoN type Beacon, Isolated danger
         N2kAISAtoN_beacon_safe_water=18,                  ///< Fixed AtoN type Beacon, Safe water
         N2kAISAtoN_beacon_special_mark=19,                ///< Fixed AtoN type Beacon, Special mark
         N2kAISAtoN_cardinal_mark_N=20,                    ///< Floating AtoN type Cardinal Mark N
         N2kAISAtoN_cardinal_mark_E=21,                    ///< Floating AtoN type Cardinal Mark E
         N2kAISAtoN_cardinal_mark_S=22,                    ///< Floating AtoN type Cardinal Mark S
         N2kAISAtoN_cardinal_mark_W=23,                    ///< Floating AtoN type Cardinal Mark W
         N2kAISAtoN_port_hand_mark=24,                     ///< Floating AtoN type Port hand Mark
         N2kAISAtoN_starboard_hand_mark=25,                ///< Floating AtoN type Starboard hand Mark
         N2kAISAtoN_preferred_channel_port_hand=26,        ///< Floating AtoN type Preferred Channel Port hand
         N2kAISAtoN_preferred_channel_starboard_hand=27,   ///< Floating AtoN type Preferred Channel Starboard hand
         N2kAISAtoN_isolated_danger=28,                    ///< Floating AtoN type Isolated danger
         N2kAISAtoN_safe_water=29,                         ///< Floating AtoN type Safe Water
         N2kAISAtoN_special_mark=30,                       ///< Floating AtoN type Special Mark
         N2kAISAtoN_light_vessel_lanby_rigs=31            ///< Floating AtoN type Light Vessel/LANBY/Rigs
}

typealias tN2kAISAtoNType = tN2kDD305
