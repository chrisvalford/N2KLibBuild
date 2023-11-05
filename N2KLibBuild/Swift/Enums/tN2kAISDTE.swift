//
//  tN2kAISDTE.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kAISDTE
 * Enumeration of Data Terminal Equipment according to PNG 129794
 */
enum tN2kAISDTE: Int {
    case N2kaisdte_Ready=0,      ///< equiment is ready
         N2kaisdte_NotReady=1   ///< equiment is not ready
}
