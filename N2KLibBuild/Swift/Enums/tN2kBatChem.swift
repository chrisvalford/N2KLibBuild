//
//  tN2kBatChem.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kBatChem
 * Enumeration of battery chemistries according to PGN 127513
 *
 * «Battery Chemistry» parameter in PGN 127513 «Battery Configuration Status».
 * Used for reporting, to choose default values of settings and for
 * calculations.
 */
enum tN2kBatChem: Int {
    case N2kDCbc_LeadAcid=0,   ///< battery chemistry is lead acid
         N2kDCbc_LiIon=1,      ///< battery chemistry is lithium ion
         N2kDCbc_NiCad=2,      ///< battery chemistry is nickel cadmium
         N2kDCbc_ZnO=3,          ///< battery chemistry is zink oxide
         N2kDCbc_NiMh=4        ///< battery chemistry is nickel metal hydride
}
