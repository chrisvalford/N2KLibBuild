//
//  tN2kFluidType.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kFluidType
 * Enumeration of fluid types according to PGN127505
 */
enum tN2kFluidType: Int {
    case N2kft_Fuel=0,             ///< fluid type is fuel
         N2kft_Water=1,            ///< fluid type is water
         N2kft_GrayWater=2,        ///< fluid type is gray water
         N2kft_LiveWell=3,         ///< fluid type is live well
         N2kft_Oil=4,              ///< fluid type is oil
         N2kft_BlackWater=5,       ///< fluid type is black water
         N2kft_FuelGasoline=6,     ///< fluid type is gasoline fuel
         N2kft_Error=14,           ///< error occurred
         N2kft_Unavailable=15      ///< unavailable
}
