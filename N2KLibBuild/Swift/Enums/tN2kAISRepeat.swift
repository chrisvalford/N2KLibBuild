//
//  tN2kAISRepeat.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kAISRepeat
 * Enumeration of AIS repeat indicator according to  PGN129802, PGN129809, PGN129810, PGN129038, PGN129041,PGN129794
 */
enum tN2kAISRepeat: Int {
    case N2kaisr_Initial=0,  ///< initial AIS repeat
         N2kaisr_First=1,    ///< first AIS repeat
         N2kaisr_Second=2,   ///< second AIS repeat
         N2kaisr_Final=3    ///< final AIS repeat
}
