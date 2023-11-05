///*
// * Copyright (c) 2019-2023 Timo Lappalainen, Kave Oy, www.kave.fi
// * 
// * Permission is hereby granted, free of charge, to any person obtaining a
// * copy of this software and associated documentation files (the "Software"),
// * to deal in the Software without restriction, including without limitation
// * the rights to use, copy, modify, merge, publish, distribute, sublicense,
// * and/or sell copies of the Software, and to permit persons to whom the
// * Software is furnished to do so, subject to the following conditions:
// * The above copyright notice and this permission notice shall be included in
// * all copies or substantial portions of the Software.
// * 
// * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
// * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// * SOFTWARE.
//*/
//
///*************************************************************************//**
// * \file  N2kTypes.h
// * \brief This File contains all specific Enumerations to make NMEA2000 
// *        Messages easier for humans to read.
// * 
// * Each NMEA2000 message has a specific CanID (address) which consists a
// * PGN Number (eg. PGN127802) and carries 8byte of raw data. For every PGN
// * exists a detailed description how these 8 bytes transfer into usable values.
// * To save bandwidth not all of values have the size of 1byte. All sizes from
// * 1bit to 64bits are allowed. The Enumerations of this file make these values
// * easier for humans to read, and are used in the corresponding SetXXX and
// * ParseXXX functions of \ref N2kMessages.h .
// */
//
///** @{ \ingroup  group_msgTypes */
//
//#ifndef _N2kTypes_H_
//#define _N2kTypes_H_
//
//#include "NMEA2000StdTypes.h"
//
////*****************************************************************************
//// Aliases for N2K standard types.
////*****************************************************************************
//
///** \brief Alias easier for humans to read for \ref tN2kDD206*/
//using tN2kEngineDiscreteStatus1 = tN2kDD206;
///** \brief Alias easier for humans to read for \ref tN2kDD223*/
//using tN2kEngineDiscreteStatus2 = tN2kDD223;
//
///** \brief Alias easier for humans to read for \ref tN2kDD072*/
//using tN2kRangeResidualMode = tN2kDD072;
//                  // N2kDD072_RangeResidualsWereUsedToCalculateData=0,
//                  // N2kDD072_RangeResidualsWereCalculatedAfterPosition=1,
//                  // N2kDD072_Error=2,
//                  // N2kDD072_Unavailable=3
//
///** \brief Alias easier for humans to read for \ref tN2kDD124*/
//using tN2kPRNUsageStatus = tN2kDD124;                           
//                  // N2kDD124_NotTracked=0,
//                  // N2kDD124_TrackedButNotUsedInSolution=1,
//                  // N2kDD124_UsedInSolutionWithoutDifferentialCorrections=2,
//                  // N2kDD124_DifferentialCorrectionsAvailable=3,
//                  // N2kDD124_TrackedWithDifferentialCorrections=4,
//                  // N2kDD124_UsedWithDifferentialCorrections=5,
//                  // N2kDD124_Error=14,
//                  // N2kDD124_Unavailable=15,
//
///** \brief Alias easier for humans to read for \ref tN2kDD305*/
//using tN2kAISAtoNType = tN2kDD305;
//			    // Enum type members:
//                // N2kAISAtoN_not_specified=0,
//                // N2kAISAtoN_reference_point=1,
//                // N2kAISAtoN_RACON=2,
//                // N2kAISAtoN_fixed_structure=3,
//                // N2kAISAtoN_emergency_wreck_marking_buoy=4,
//                // N2kAISAtoN_light_without_sectors=5,
//                // N2kAISAtoN_light_with_sectors=6,
//                // N2kAISAtoN_leading_light_front=7,
//                // N2kAISAtoN_leading_light_rear=8,
//                // N2kAISAtoN_beacon_cardinal_N=9,
//                // N2kAISAtoN_beacon_cardinal_E=10,
//                // N2kAISAtoN_beacon_cardinal_S=11,
//                // N2kAISAtoN_beacon_cardinal_W=12,
//                // N2kAISAtoN_beacon_port_hand=13,
//                // N2kAISAtoN_beacon_starboard_hand=14,
//                // N2kAISAtoN_beacon_preferred_ch_port_hand=15,
//                // N2kAISAtoN_beacon_preferred_ch_starboard_hand=16,
//                // N2kAISAtoN_beacon_isolated_danger=17,
//                // N2kAISAtoN_beacon_safe_water=18,
//                // N2kAISAtoN_beacon_special_mark=19,
//                // N2kAISAtoN_cardinal_mark_N=20,
//                // N2kAISAtoN_cardinal_mark_E=21,
//                // N2kAISAtoN_cardinal_mark_S=22,
//                // N2kAISAtoN_cardinal_mark_W=23,
//                // N2kAISAtoN_port_hand_mark=24,
//                // N2kAISAtoN_starboard_hand_mark=25,
//                // N2kAISAtoN_preferred_channel_port_hand=26,
//                // N2kAISAtoN_preferred_channel_starboard_hand=27,
//                // N2kAISAtoN_isolated_danger=28,
//                // N2kAISAtoN_safe_water=29,
//                // N2kAISAtoN_special_mark=30,
//                // N2kAISAtoN_light_vessel_lanby_rigs=31,
//
///** \brief Alias easier for humans to read for \ref tN2kDD374*/
//using tN2kDelaySource = tN2kDD374;
//    //        N2kDD374_UserDefined=0,
//    //        N2kDD374_MinimumDefined=1,
//    //        N2kDD374_FactoryDefault=2,
//    //        N2kDD374_MaximumSupported=3,
//    //        N2kDD374_OutOfRange=14,
//    //        N2kDD374_DataNotAvailable=15
//
///** \brief Alias easier for humans to read for \ref tN2kDD471*/
//using tN2kThrusterMotorEvents = tN2kDD471;
//	// .Event.MotorOverTemperatureCutout = 0 | 1
//	// .Event.MotorOverCurrentCutout = 0 | 1
//	// .Event.LowOilLevelWarning = 0 | 1
//	// .Event.OilOverTemperatureWarning = 0 | 1
//	// .Event.ControllerUnderVoltageCutout = 0 | 1
//	// .Event.ManufacturerDefined = 0 | 1
//	// .Event.DataNotAvailable = 0 | 1
//
///** \brief Alias easier for humans to read for \ref tN2kDD473*/
//using tN2kThrusterDirectionControl = tN2kDD473;
//	// N2kDD473_OFF=0
//	// N2kDD473_ThrusterReady=1
//	// N2kDD473_ThrusterToPORT=2
//	// N2kDD473_ThrusterToSTARBOARD=3
//
///** \brief Alias easier for humans to read for \ref tN2kDD474*/
//using tN2kThrusterRetraction = tN2kDD474;
//	// N2kDD474_OFF=0
//	// N2kDD474_Extend=1
//	// N2kDD474_Retract=2
//
///** \brief Alias easier for humans to read for \ref tN2kDD475*/
//using tN2kThrusterControlEvents = tN2kDD475;
//	// .Event.AnotherDeviceControllingThruster = 0 | 1
//	// .Event.BoatSpeedTooFast = 0 | 1
//
///** \brief Alias easier for humans to read for \ref tN2kDD477*/
//using tN2kWindlassMonitoringEvents = tN2kDD477;
//			    // Union type with fields:
//                            // .Event.ControllerUnderVoltageCutout = 0 | 1
//                            // .Event.ControllerOverCurrentCutout = 0 | 1
//                            // .Event.ControllerOverTemperatureCutout = 0 | 1
// 
///** \brief Alias easier for humans to read for \ref tN2kDD478*/
//using tN2kWindlassControlEvents = tN2kDD478;
//			    // Union type with field:
//                            // .Event.AnotherDeviceControllingWindlass = 0 | 1
//
///** \brief Alias easier for humans to read for \ref tN2kDD480*/
//using tN2kWindlassMotionStates = tN2kDD480;
//			    // Enum type members:
//                            // N2kDD480_WindlassStopped=0
//                            // N2kDD480_DeploymentOccurring=1
//                            // N2kDD480_RetrievalOccurring=2
//                            // N2kDD480_Unavailable=3
//
///** \brief Alias easier for humans to read for \ref tN2kDD481*/
//using tN2kRodeTypeStates = tN2kDD481;
//			    // Enum type members:
//                            // N2kDD481_ChainPresentlyDetected=0
//                            // N2kDD481_RopePresentlyDetected=1
//                            // N2kDD481_Error=2
//                            // N2kDD481_Unavailable=3
//
///** \brief Alias easier for humans to read for \ref tN2kDD482*/
//using tN2kAnchorDockingStates = tN2kDD482;
//			    // Enum type members:
//                            // N2kDD482_NotDocked=0
//                            // N2kDD482_FullyDocked=1
//                            // N2kDD482_Error=2
//                            // N2kDD482_DataNotAvailable=3
//
///** \brief Alias easier for humans to read for \ref tN2kDD483*/
//using tN2kWindlassOperatingEvents = tN2kDD483;
//			    // Union type with fields:
//                            // .Event.SystemError =  0 | 1
//                            // .Event.SensorError = 0 | 1
//                            // .Event.NoWindlassMotionDetected = 0 | 1
//                            // .Event.RetrievalDockingDistanceReached = 0 | 1
//                            // .Event.EndOfRodeReached = 0 | 1
//
///** \brief Alias easier for humans to read for \ref tN2kDD484*/
//using tN2kWindlassDirectionControl = tN2kDD484;
//			    // Enum type members:
//                            // N2kDD484_Off=0
//                            // N2kDD484_Down=1
//                            // N2kDD484_Up=2
//                            // N2kDD484_Reserved=3
//
//
//
//#endif
//
///** @} */
