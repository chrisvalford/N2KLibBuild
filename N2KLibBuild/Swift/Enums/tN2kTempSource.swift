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
