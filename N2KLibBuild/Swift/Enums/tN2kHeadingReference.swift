//
//  tN2kHeadingReference.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kHeadingReference
 * Enumeration of the heading type according to PGN129233, PGN129237 ,
 * PGN129250, PGN129026 and PGN129284
 */
enum tN2kHeadingReference: Int {
    case N2khr_true=0,         ///< heading true (eg. GNSS) direction
         N2khr_magnetic=1,     ///< heading magnetic compass direction
         N2khr_error=2,        ///< error occurred
         N2khr_Unavailable=3   ///< unavailable
}
