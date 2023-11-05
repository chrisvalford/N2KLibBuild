//
//  tN2kGNSSDOPmode.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kGNSSDOPmode
 * Enumeration of GNSS DOP Mode according to PGN129539
 *
 * Dilution of precision (DOP), or geometric dilution of precision (GDOP), is
 * a term used in satellite navigation and geomatics engineering to specify the
 * error propagation as a mathematical effect of navigation satellite geometry
 * on positional measurement precision.
 *
 * DOP can be expressed as a number of separate measurements:
 *
 *   - HDOP horizontal (1D) dilution of precision
 *   - VDOP vertical (2D) dilution of precision
 *   - PDOP position (3D) dilution of precision
 *   - TDOP time dilution of precision
 *   - GDOP geometric dilution of precision
 *
 * https://en.wikipedia.org/wiki/Dilution_of_precision_(navigation)
 *
 */
enum tN2kGNSSDOPmode: Int {
    case N2kGNSSdm_1D=0,               ///< 1D dilution of precision
         N2kGNSSdm_2D=1,               ///< 2D dilution of precision
         N2kGNSSdm_3D=2,               ///< 3D dilution of precision
         N2kGNSSdm_Auto=3,             ///< automatic dilution of precision
         N2kGNSSdm_Reserved=4,         ///< reserved
         N2kGNSSdm_Reserved2=5,        ///< reserved
         N2kGNSSdm_Error=6,            ///< error occurred
         N2kGNSSdm_Unavailable=7       ///< unavailable
}
