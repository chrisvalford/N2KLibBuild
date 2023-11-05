//
//  tN2kDD002.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * DD002 - Generic Status Pair
 *
 * DD002     Generic status pair    DF52        2bit     MSB/LSB:
 * - 00 = [No, Off, Disabled, Reset, "0"]
 * - 01 = [Yes, On, Enabled, Set, "1"]
 * - 10 = Error
 * - 11= [Unavailable, Unknown]
 */
enum tN2kDD002: Int {
    case N2kDD002_No=0,                          ///< paired status is NO
         N2kDD002_Yes=1,                         ///< paired status is YES
         N2kDD002_Error=2,                       ///< paired status is Error
         N2kDD002_Unavailable=3,                 ///< paired status is UNKNOWN
    N2kDD002_Off=N2kDD002_No,               ///< paired status is NO
    N2kDD002_Disabled=N2kDD002_No,          ///< paired status is NO
    N2kDD002_Reset=N2kDD002_No,             ///< paired status is NO
    N2kDD002_0=N2kDD002_No,                 ///< paired status is NO
    N2kDD002_On=N2kDD002_Yes,               ///< paired status is YES
    N2kDD002_Enabled=N2kDD002_Yes,          ///< paired status is YES
    N2kDD002_Set=N2kDD002_Yes,              ///< paired status is YES
    N2kDD002_1=N2kDD002_Yes,                ///< paired status is YES
    N2kDD002_Unknown=N2kDD002_Unavailable   ///< paired status is UNKNOWN
}

/** Alias easier for humans to read for \ref tN2kDD002*/
typealias tN2kGenericStatusPair = tN2kDD002
                // Enum type members:
                  // N2kDD002_No=0
                  // N2kDD002_Yes=1
                  // N2kDD002_Error=2
                  // N2kDD002_Unavailable=3
                  // N2kDD002_Off=N2kDD002_No
                  // N2kDD002_Disabled=N2kDD002_No
                  // N2kDD002_Reset=N2kDD002_No
                  // N2kDD002_0=N2kDD002_No
                  // N2kDD002_On=N2kDD002_Yes
                  // N2kDD002_Enabled=N2kDD002_Yes
                  // N2kDD002_Set=N2kDD002_Yes
                  // N2kDD002_1=N2kDD002_Yes
                  // N2kDD002_Unknown=N2kDD002_Unavailable
