//
//  tN2kBatEqSupport.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kBatEqSupport
 * Enumeration of Supports Equalization according to PGN 127513
 *
 * «Supports Equalization» parameter in PGN 127513 «Battery Configuration
 * Status» (used for reporting only,not for calculations).
 */
enum tN2kBatEqSupport: Int  {
    case N2kDCES_No=0,         ///< No, Off, Disabled
         N2kDCES_Yes=1,        ///< Yes, On, Enabled
         N2kDCES_Error=2,      ///< Error
         N2kDCES_Unavailable=3 ///< Unavailable
}
