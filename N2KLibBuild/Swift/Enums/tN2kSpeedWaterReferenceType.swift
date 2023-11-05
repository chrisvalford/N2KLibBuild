//
//  tN2kSpeedWaterReferenceType.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kSpeedWaterReferenceType
 * Enumeration of speed thru water sensors types according to PGN128259
 */
enum tN2kSpeedWaterReferenceType: Int {
    case N2kSWRT_Paddle_wheel=0,     ///< paddle wheel sensor is used
         N2kSWRT_Pitot_tube=1,       ///< pitot tube sensor is used
         N2kSWRT_Doppler_log=2,      ///< doppler sensor is used
         N2kSWRT_Ultra_Sound=3,      ///< ultra sound sensor is used
         N2kSWRT_Electro_magnetic=4, ///< electro magnetic sensor is used
         N2kSWRT_Error=254,          ///< error occurred
         N2kSWRT_Unavailable=255     ///< unavailable
}

extension tN2kSpeedWaterReferenceType: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2kSWRT_Paddle_wheel:
            return "Paddle wheel"
        case .N2kSWRT_Pitot_tube:
            return "Pitot tube"
        case .N2kSWRT_Doppler_log:
            return "Doppler"
        case .N2kSWRT_Ultra_Sound:
            return "Correlation (ultra sound)"
        case .N2kSWRT_Electro_magnetic:
            return "Electro Magnetic"
        case .N2kSWRT_Error:
            return "error"
        case .N2kSWRT_Unavailable:
            return "unavailable"
        }
    }
}
