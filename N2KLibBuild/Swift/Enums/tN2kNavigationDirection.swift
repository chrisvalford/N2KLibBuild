//
//  tN2kNavigationDirection.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kNavigationDirection
 * Enumeration of the navigation direction according to PGN129285
 */
enum tN2kNavigationDirection: Int {
    case N2kdir_forward=0,     ///< navigating forward
         N2kdir_reverse=1,     ///< navigating reverse
         N2kdir_reserved1=2,   ///< reserved 1
         N2kdir_reserved2=3,   ///< reserved 2
         N2kdir_reserved3=4,   ///< reserved 3
         N2kdir_reserved4=5,   ///< reserved 4
         N2kdir_error=6,       ///< error occurred
         N2kdir_unknown=7      ///< unknown
}
