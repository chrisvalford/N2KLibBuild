//
//  tN2kAISMode.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kAISMode
 * Enumeration of AIS mode type according to PGN 129039
 *
 * https://www.marineteacher.com/ais
 *
 * There are 3 modes of operation of AIS:
 * Autonomous and continuous mode: In this mode AIS automatically defines its
 * own reporting rate in accordance with its navigational mode, speed and
 * course. The unit also selects its own time slots. This is normal mode for
 * operation in all areas but the mode may be switched from/to Assigned or
 * Polled/Controlled mode by a competent authority via a base station on shore.
 * Assigned/ Controlled Mode: A competent authority responsible for traffic
 * monitoring may remotely set transmissions intervals and/or time slots for
 * the vessel mobile stations. In Assigned mode the mobile station does not
 * change its reporting rate when changing course and speed. Polled Mode: In
 * this mode, mobile station will automatically respond to interrogation
 * (polling) messages from a ship or competent authority. The response is
 * transmitted on the channel where the interrogation message was received.
 * Operation in Polled mode does not conflict with the operation in other two
 * modes.
 *
 */
enum tN2kAISMode: Int {
    case N2kaismode_Autonomous=0,    ///< AIS is in Autonomous mode
         N2kaismode_Assigned=1      ///< AIS is in assigned mode
}
