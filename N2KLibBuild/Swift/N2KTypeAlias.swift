//
//  N2KTypeAlias.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation
import "NMEA2000StdTypes.h"

//*****************************************************************************
// Aliases for N2K standard types.
//*****************************************************************************

/** Alias easier for humans to read for \ref tN2kDD206*/
typealias tN2kEngineDiscreteStatus1 = tN2kDD206;
/** Alias easier for humans to read for \ref tN2kDD223*/
typealias tN2kEngineDiscreteStatus2 = tN2kDD223;

/** Alias easier for humans to read for \ref tN2kDD002*/
typealias tN2kGenericStatusPair = tN2kDD002;
                // Enum type members:
                  // N2kDD002_No=0
                  // N2kDD002_Yes=1
                  // N2kDD002_Error=2
                  // N2kDD002_Unavailable=3
                  // N2kDD002_Off=N2kDD002_No
                  // N2kDD002_Disabled=N2kDD002_No
                  // N2kDD002_Reset=N2kDD002_No
                  // N2kDD002_0=N2kDD002_No
                  // N2kDD002_On=N2kDD002_Yes
                  // N2kDD002_Enabled=N2kDD002_Yes
                  // N2kDD002_Set=N2kDD002_Yes
                  // N2kDD002_1=N2kDD002_Yes
                  // N2kDD002_Unknown=N2kDD002_Unavailable

/** Alias easier for humans to read for \ref tN2kDD025*/
typealias tN2kDataMode = tN2kDD025;
            // Enum type members:
                  // N2kDD025_Autonomous=0,
                  // N2kDD025_Differential=1,
                  // N2kDD025_Estimated=2,
                  // N2kDD025_Simulator=3,
                  // N2kDD025_Manual=4,
                  // N2kDD025_Error=0xe,
                  // N2kDD025_Unavailable=0xf

/** Alias easier for humans to read for \ref tN2kDD072*/
typealias tN2kRangeResidualMode = tN2kDD072;
                  // N2kDD072_RangeResidualsWereUsedToCalculateData=0,
                  // N2kDD072_RangeResidualsWereCalculatedAfterPosition=1,
                  // N2kDD072_Error=2,
                  // N2kDD072_Unavailable=3

/** Alias easier for humans to read for \ref tN2kDD124*/
typealias tN2kPRNUsageStatus = tN2kDD124;
                  // N2kDD124_NotTracked=0,
                  // N2kDD124_TrackedButNotUsedInSolution=1,
                  // N2kDD124_UsedInSolutionWithoutDifferentialCorrections=2,
                  // N2kDD124_DifferentialCorrectionsAvailable=3,
                  // N2kDD124_TrackedWithDifferentialCorrections=4,
                  // N2kDD124_UsedWithDifferentialCorrections=5,
                  // N2kDD124_Error=14,
                  // N2kDD124_Unavailable=15,

/** Alias easier for humans to read for \ref tN2kDD305*/
typealias tN2kAISAtoNType = tN2kDD305;
                // Enum type members:
                // N2kAISAtoN_not_specified=0,
                // N2kAISAtoN_reference_point=1,
                // N2kAISAtoN_RACON=2,
                // N2kAISAtoN_fixed_structure=3,
                // N2kAISAtoN_emergency_wreck_marking_buoy=4,
                // N2kAISAtoN_light_without_sectors=5,
                // N2kAISAtoN_light_with_sectors=6,
                // N2kAISAtoN_leading_light_front=7,
                // N2kAISAtoN_leading_light_rear=8,
                // N2kAISAtoN_beacon_cardinal_N=9,
                // N2kAISAtoN_beacon_cardinal_E=10,
                // N2kAISAtoN_beacon_cardinal_S=11,
                // N2kAISAtoN_beacon_cardinal_W=12,
                // N2kAISAtoN_beacon_port_hand=13,
                // N2kAISAtoN_beacon_starboard_hand=14,
                // N2kAISAtoN_beacon_preferred_ch_port_hand=15,
                // N2kAISAtoN_beacon_preferred_ch_starboard_hand=16,
                // N2kAISAtoN_beacon_isolated_danger=17,
                // N2kAISAtoN_beacon_safe_water=18,
                // N2kAISAtoN_beacon_special_mark=19,
                // N2kAISAtoN_cardinal_mark_N=20,
                // N2kAISAtoN_cardinal_mark_E=21,
                // N2kAISAtoN_cardinal_mark_S=22,
                // N2kAISAtoN_cardinal_mark_W=23,
                // N2kAISAtoN_port_hand_mark=24,
                // N2kAISAtoN_starboard_hand_mark=25,
                // N2kAISAtoN_preferred_channel_port_hand=26,
                // N2kAISAtoN_preferred_channel_starboard_hand=27,
                // N2kAISAtoN_isolated_danger=28,
                // N2kAISAtoN_safe_water=29,
                // N2kAISAtoN_special_mark=30,
                // N2kAISAtoN_light_vessel_lanby_rigs=31,

/** Alias easier for humans to read for \ref tN2kDD374*/
typealias tN2kDelaySource = tN2kDD374;
    //        N2kDD374_UserDefined=0,
    //        N2kDD374_MinimumDefined=1,
    //        N2kDD374_FactoryDefault=2,
    //        N2kDD374_MaximumSupported=3,
    //        N2kDD374_OutOfRange=14,
    //        N2kDD374_DataNotAvailable=15

/** Alias easier for humans to read for \ref tN2kDD471*/
typealias tN2kThrusterMotorEvents = tN2kDD471;
    // .Event.MotorOverTemperatureCutout = 0 | 1
    // .Event.MotorOverCurrentCutout = 0 | 1
    // .Event.LowOilLevelWarning = 0 | 1
    // .Event.OilOverTemperatureWarning = 0 | 1
    // .Event.ControllerUnderVoltageCutout = 0 | 1
    // .Event.ManufacturerDefined = 0 | 1
    // .Event.DataNotAvailable = 0 | 1

/** Alias easier for humans to read for \ref tN2kDD473*/
typealias tN2kThrusterDirectionControl = tN2kDD473;
    // N2kDD473_OFF=0
    // N2kDD473_ThrusterReady=1
    // N2kDD473_ThrusterToPORT=2
    // N2kDD473_ThrusterToSTARBOARD=3

/** Alias easier for humans to read for \ref tN2kDD474*/
typealias tN2kThrusterRetraction = tN2kDD474;
    // N2kDD474_OFF=0
    // N2kDD474_Extend=1
    // N2kDD474_Retract=2

/** Alias easier for humans to read for \ref tN2kDD475*/
typealias tN2kThrusterControlEvents = tN2kDD475;
    // .Event.AnotherDeviceControllingThruster = 0 | 1
    // .Event.BoatSpeedTooFast = 0 | 1

/** Alias easier for humans to read for \ref tN2kDD477*/
typealias tN2kWindlassMonitoringEvents = tN2kDD477;
                // Union type with fields:
                            // .Event.ControllerUnderVoltageCutout = 0 | 1
                            // .Event.ControllerOverCurrentCutout = 0 | 1
                            // .Event.ControllerOverTemperatureCutout = 0 | 1

/** Alias easier for humans to read for \ref tN2kDD478*/
typealias tN2kWindlassControlEvents = tN2kDD478;
                // Union type with field:
                            // .Event.AnotherDeviceControllingWindlass = 0 | 1

/** Alias easier for humans to read for \ref tN2kDD480*/
typealias tN2kWindlassMotionStates = tN2kDD480;
                // Enum type members:
                            // N2kDD480_WindlassStopped=0
                            // N2kDD480_DeploymentOccurring=1
                            // N2kDD480_RetrievalOccurring=2
                            // N2kDD480_Unavailable=3

/** Alias easier for humans to read for \ref tN2kDD481*/
typealias tN2kRodeTypeStates = tN2kDD481;
                // Enum type members:
                            // N2kDD481_ChainPresentlyDetected=0
                            // N2kDD481_RopePresentlyDetected=1
                            // N2kDD481_Error=2
                            // N2kDD481_Unavailable=3

/** Alias easier for humans to read for \ref tN2kDD482*/
typealias tN2kAnchorDockingStates = tN2kDD482;
                // Enum type members:
                            // N2kDD482_NotDocked=0
                            // N2kDD482_FullyDocked=1
                            // N2kDD482_Error=2
                            // N2kDD482_DataNotAvailable=3

/** Alias easier for humans to read for \ref tN2kDD483*/
typealias tN2kWindlassOperatingEvents = tN2kDD483;
                // Union type with fields:
                            // .Event.SystemError =  0 | 1
                            // .Event.SensorError = 0 | 1
                            // .Event.NoWindlassMotionDetected = 0 | 1
                            // .Event.RetrievalDockingDistanceReached = 0 | 1
                            // .Event.EndOfRodeReached = 0 | 1

/** Alias easier for humans to read for \ref tN2kDD484*/
typealias tN2kWindlassDirectionControl = tN2kDD484;
                // Enum type members:
                            // N2kDD484_Off=0
                            // N2kDD484_Down=1
                            // N2kDD484_Up=2
                            // N2kDD484_Reserved=3

/** Alias easier for humans to read for \ref tN2kDD487*/
typealias tN2kMotorPowerType = tN2kDD487;
    // N2kDD487_12VDC=0
    // N2kDD487_24VDC=1
    // N2kDD487_48VDC=2
    // N2kDD487_12VAC=3
    // N2kDD487_Hydraulic=4

/** Alias easier for humans to read for \ref tN2kDD488*/
typealias tN2kSpeedType = tN2kDD488;
                // Enum type members:
                            // N2kDD488_SingleSpeed=0
                            // N2kDD488_DualSpeed=1
                            // N2kDD488_ProportionalSpeed=2
                            // N2kDD488_DataNotAvailable=3
