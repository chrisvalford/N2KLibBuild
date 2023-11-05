//
//  tN2kAISTransceiverInformation.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 * tN2kAISTransceiverInformation
 * Enumeration of 129039, 129041, 129802
 */
enum tN2kAISTransceiverInformation: Int {
    case N2kaischannel_A_VDL_reception=0,         ///< Channel A VDL reception
         N2kaischannel_B_VDL_reception=1,         ///< Channel B VDL reception
         N2kaischannel_A_VDL_transmission=2,      ///< Channel A VDL transmission
         N2kaischannel_B_VDL_transmission=3,      ///< Channel B VDL transmission
         N2kaisown_information_not_broadcast=4    ///< Own information not broadcast
}
