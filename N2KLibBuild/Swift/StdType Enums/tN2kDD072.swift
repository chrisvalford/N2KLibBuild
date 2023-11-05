//
//  tN2kDD072.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD072
 * DD072 - Range Residual Mode
 *
 * DD072 Range Residual Mode     DF52       2bits
 * Range Residual used in position calculation or range residuals were calculated after the position.
 * - 0=range residuals were used to calculate data
 * - 1=range residuals were calculated after the position.
 * - 2=Error
 * - 3=Null
 */
enum tN2kDD072: Int {
    case N2kDD072_RangeResidualsWereUsedToCalculateData=0,       ///< range residuals were used to calculate data
         N2kDD072_RangeResidualsWereCalculatedAfterPosition=1,   ///< range residuals were calculated after the position
         N2kDD072_Error=2,                                       ///< error occurred
         N2kDD072_Unavailable=3                                  ///< data not available
}

typealias tN2kRangeResidualMode = tN2kDD072
