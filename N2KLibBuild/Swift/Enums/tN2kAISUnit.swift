//
//  tN2kAISUnit.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kAISUnit
 * Enumeration of AIS unit (transmission) type according to PGN 129039
 */
enum tN2kAISUnit: Int {
    case N2kaisunit_ClassB_SOTDMA=0,   ///< AIS Unit uses SOTDMA (Self Organizing Time Division Multiple Access)
         N2kaisunit_ClassB_CS=1       ///< AIS unit uses CSTDMA (Carrier Sense Time Division Multiple Access)
}
