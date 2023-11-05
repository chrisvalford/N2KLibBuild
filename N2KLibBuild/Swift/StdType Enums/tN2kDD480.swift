//
//  tN2kDD480.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kDD480
 * DD480 - Windlass Motion States according to PGN 128777
 *
 * DD480 - Windlass Motion States   DF52      2bit
 * - 0 = Windlass stopped
 * - 1 = Deployment occurring
 * - 2 = Retrieval occurring
 * - 3 = Unavailable
 *
 */
enum tN2kDD480: Int {
    case N2kDD480_WindlassStopped=0,       ///< Windlass stopped
         N2kDD480_DeploymentOccurring=1,   ///< Deployment occurring
         N2kDD480_RetrievalOccurring=2,    ///< Retrieval occurring
         N2kDD480_Unavailable=3            ///< Unavailable
}

typealias tN2kWindlassMotionStates = tN2kDD480
