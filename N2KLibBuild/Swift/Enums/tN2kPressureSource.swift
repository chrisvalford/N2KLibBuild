//
//  tN2kPressureSource.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kPressureSource
 * Enumeration of sources for a pressure value  according to PGN130314
 * and PGN130315
 */
enum tN2kPressureSource: Int {
    case N2kps_Atmospheric = 0,        ///< value is representing an atmospheric air pressure
         N2kps_Water = 1,              ///< value is representing a water pressure
         N2kps_Steam = 2,              ///< value is representing a steam pressure
         N2kps_CompressedAir = 3,      ///< value is representing a compressed air pressure
         N2kps_Hydraulic = 4,          ///< value is representing a hydraulic pressure
         N2kps_Filter = 5,             ///< value is representing a filter pressure
         N2kps_AltimeterSetting = 6,   ///< value is representing an altimeter setting
         N2kps_Oil = 7,                ///< value is representing an oil pressure
         N2kps_Fuel = 8,               ///< value is representing a fuel pressure
         N2kps_Reserved = 253,         ///< reserved
         N2kps_Error = 254,            ///< error occurred
         N2kps_Unavailable = 255       ///< source is unavailable
}

extension tN2kPressureSource: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2kps_Atmospheric:
            return "atmospheric"
        case .N2kps_Water:
            return "water"
        case .N2kps_Steam:
            return "steam"
        case .N2kps_CompressedAir:
            return "compressed air"
        case .N2kps_Hydraulic:
            return "hydraulic"
        case .N2kps_Filter:
            return "filter"
        case .N2kps_AltimeterSetting:
            return "altimeter setting"
        case .N2kps_Oil:
            return "oil"
        case .N2kps_Fuel:
            return "fuel"
        case .N2kps_Reserved:
            return "reserved"
        case .N2kps_Error:
            return "error"
        case .N2kps_Unavailable:
            return "unavailable"
        }
    }
}
