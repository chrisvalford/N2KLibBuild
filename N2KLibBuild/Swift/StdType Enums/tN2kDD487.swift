//
//  tN2kDD487.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD487
 * DD487 - Motor Power Type according to PGN 128007
 *
 * DD487 - Motor Power Type          DF52     4bit
 * - 0 = 12VDC
 * - 1 = 24VDC
 * - 2 = 48VDC
 * - 3 = 24VAC
 * - 4 = Hydraulic
 * - 5-15 = Reserved for future assignment
 */
enum tN2kDD487: Int {
    case N2kDD487_12VDC=0,       ///< Motor Power Type is 12VDC
         N2kDD487_24VDC=1,       ///< Motor Power Type is 24VDC
         N2kDD487_48VDC=2,       ///< Motor Power Type is 48VDC
         N2kDD487_24VAC=3,       ///< Motor Power Type is 24VAC
         N2kDD487_Hydraulic=4    ///< Motor Power Type is hydraulic
}

typealias tN2kMotorPowerType = tN2kDD487
