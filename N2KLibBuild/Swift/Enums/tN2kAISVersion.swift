//
//  tN2kAISVersion.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kAISVersion
 * Enumeration of AIS version which is used in PGN 129794
 *
 * M.1371 : Technical characteristics for an automatic identification system
 * using time division multiple access in the VHF maritime mobile frequency
 * band.
 *
 * - https://www.itu.int/rec/R-REC-M.1371
 *
 * \note The newest standard available is 1371_5 (from 2014), maybe an update
 * is needed here
 */
enum tN2kAISVersion: Int {
    case N2kaisv_ITU_R_M_1371_1=0,   ///< version ITU-R M.1371_1
         N2kaisv_ITU_R_M_1371_3=1   ///< version ITU-R M.1371_3
}
