//
//  tN2kMagneticVariation.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kMagneticVariation
 * Enumeration of magnetic variation according to PGN 127258
 *
 * The World Magnetic Modell (WMM) can be found under
 * https://www.ngdc.noaa.gov/geomag/WMM/WMM_old_reports.shtml
 */
enum tN2kMagneticVariation: Int {
    case N2kmagvar_Manual=0,     ///< manuel enterd magnetic deviation
         N2kmagvar_Chart=1,      ///< magnetic deviation derived from the charts
         N2kmagvar_Table=2,      ///< magnetic deviation derived from a table
         N2kmagvar_Calc=3,       ///< magnetic deviation calculated
         N2kmagvar_WMM2000=4,    ///< magnetic deviation derived from the WMM 2000 report
         N2kmagvar_WMM2005=5,    ///< magnetic deviation derived from the WMM 2005 report
         N2kmagvar_WMM2010=6,    ///< magnetic deviation derived from the WMM 2010 report
         N2kmagvar_WMM2015=7,    ///< magnetic deviation derived from the WMM 2015 report
         N2kmagvar_WMM2020=8    ///< magnetic deviation derived from the WMM 2020 report
}
