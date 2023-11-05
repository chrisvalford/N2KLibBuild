//
//  tN2kDD374.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD374
 * Enumeration of ....
 *
 *
 * TODO: Add proper documentation ...
 *
 */
enum tN2kDD374: Int {
    /** Data is user defined  */
    case N2kDD374_UserDefined=0,
         /** Data is a defined minimum */
         N2kDD374_MinimumDefined=1,
         /** Data is Factory Default */
         N2kDD374_FactoryDefault=2,
         /** Maximum  */
         N2kDD374_MaximumSupported=3,
         /** Data is out of range */
         N2kDD374_OutOfRange=14,
         /** Data is not available */
         N2kDD374_DataNotAvailable=15
}

typealias tN2kDelaySource = tN2kDD374
