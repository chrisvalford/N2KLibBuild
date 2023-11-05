//
//  tN2kTimeSource.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 *  tN2kTimeSource
 * Enumeration of sources for the system time according to PGN126992
 */
enum tN2kTimeSource: Int {
    case N2ktimes_GPS=0,                 ///< Source is Global Positioning System GPS
         N2ktimes_GLONASS=1,             ///< Source is Glonass
         N2ktimes_RadioStation=2,        ///< Source is a radio station
         N2ktimes_LocalCesiumClock=3,    ///< Source is a local cesium clock
         N2ktimes_LocalRubidiumClock=4,  ///< Source is a local rubidium clock
         N2ktimes_LocalCrystalClock=5    ///< Source is a local crystal clock
}
