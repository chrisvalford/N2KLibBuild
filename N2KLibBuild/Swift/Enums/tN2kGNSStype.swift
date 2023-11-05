//
//  tN2kGNSStype.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 *  tN2kGNSStype
 * Enumeration of the GPS system which is in use according to PGN129029,
 * PGN129041 and PGN129794
 */
enum tN2kGNSStype: Int {
    case N2kGNSSt_GPS=0,                   ///< only GPS satellite network
         N2kGNSSt_GLONASS=1,               ///< only the GLONASS satellite network
         N2kGNSSt_GPSGLONASS=2,            ///< GPS + GLONASS satellite network
         N2kGNSSt_GPSSBASWAAS=3,           ///< GPS + WAAS correction satellite network
         N2kGNSSt_GPSSBASWAASGLONASS=4,    ///< GPS + GLONASS + WAAS correction satellite network
         N2kGNSSt_Chayka=5,                ///< Russia's Chayka system is like the erstwhile LORAN-C radio navigation architecture
         N2kGNSSt_integrated=6,            ///< integrated mode
         N2kGNSSt_surveyed=7,              ///< surveyed mode
         N2kGNSSt_Galileo=8                ///< european galileo satellite network
}
