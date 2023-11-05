//
//  tN2kTempSource.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kTempSource
 * Enumeration of sources for a temperature value according to
 * PGN130311, PGN130312 and PGN130316
 */
enum tN2kTempSource: Int {
    case N2kts_SeaTemperature=0,                         ///< value is representing a sea water temperature
         N2kts_OutsideTemperature=1,                     ///< value is representing an outside temperature
         N2kts_InsideTemperature=2,                      ///< value is representing an inside temperature
         N2kts_EngineRoomTemperature=3,                  ///< value is representing an engine room temperature
         N2kts_MainCabinTemperature=4,                   ///< value is representing a main cabin temperature
         N2kts_LiveWellTemperature=5,                    ///< value is representing a live well temperature
         N2kts_BaitWellTemperature=6,                    ///< value is representing a bait well temperature
         N2kts_RefridgerationTemperature=7,              ///< value is representing a refrigeration temperature
         N2kts_HeatingSystemTemperature=8,               ///< value is representing a heating system temperature
         N2kts_DewPointTemperature=9,                    ///< value is representing a dew point temperature
         N2kts_ApparentWindChillTemperature=10,          ///< value is representing an apparent wind chill temperature
         N2kts_TheoreticalWindChillTemperature=11,       ///< value is representing a theoretical wind chill temperature
         N2kts_HeatIndexTemperature=12,                  ///< value is representing a heat index temperature
         N2kts_FreezerTemperature=13,                    ///< value is representing a freezer temperature
         N2kts_ExhaustGasTemperature=14,                 ///< value is representing a exhaust gas temperature
         N2kts_ShaftSealTemperature=15                    ///< value is representing a shaft seal temparature
}

extension tN2kTempSource: CustomStringConvertible {
    var description: String {
        switch self {
        case .N2kts_SeaTemperature:
            return "sea"
        case .N2kts_OutsideTemperature:
            return "outside"
        case .N2kts_InsideTemperature:
            return "inside"
        case .N2kts_EngineRoomTemperature:
            return "engine room"
        case .N2kts_MainCabinTemperature:
            return "main cabin"
        case .N2kts_LiveWellTemperature:
            return "live well"
        case .N2kts_BaitWellTemperature:
            return "bait well"
        case .N2kts_RefridgerationTemperature:
            return "refridgeration"
        case .N2kts_HeatingSystemTemperature:
            return "heating system"
        case .N2kts_DewPointTemperature:
            return "dew point"
        case .N2kts_ApparentWindChillTemperature:
            return "apparent wind chill"
        case .N2kts_TheoreticalWindChillTemperature:
            return "theoretical wind chill"
        case .N2kts_HeatIndexTemperature:
            return "heat index"
        case .N2kts_FreezerTemperature:
            return "freezer"
        case .N2kts_ExhaustGasTemperature:
            return "exhaust gas"
        case .N2kts_ShaftSealTemperature:
            return "shaft seal"
        }
    }
}
