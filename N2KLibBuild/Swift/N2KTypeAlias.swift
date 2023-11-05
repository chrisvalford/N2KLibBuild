//
//  N2KTypeAlias.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation
//import "NMEA2000StdTypes.h"

//*****************************************************************************
// Aliases for N2K standard types.
//*****************************************************************************

/** Alias easier for humans to read for \ref tN2kDD206*/
typealias tN2kEngineDiscreteStatus1 = tN2kDD206;
/** Alias easier for humans to read for \ref tN2kDD223*/
typealias tN2kEngineDiscreteStatus2 = tN2kDD223;

/** Alias easier for humans to read for \ref tN2kDD471*/
typealias tN2kThrusterMotorEvents = tN2kDD471;
    // .Event.MotorOverTemperatureCutout = 0 | 1
    // .Event.MotorOverCurrentCutout = 0 | 1
    // .Event.LowOilLevelWarning = 0 | 1
    // .Event.OilOverTemperatureWarning = 0 | 1
    // .Event.ControllerUnderVoltageCutout = 0 | 1
    // .Event.ManufacturerDefined = 0 | 1
    // .Event.DataNotAvailable = 0 | 1

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

/** Alias easier for humans to read for \ref tN2kDD483*/
typealias tN2kWindlassOperatingEvents = tN2kDD483;
                // Union type with fields:
                            // .Event.SystemError =  0 | 1
                            // .Event.SensorError = 0 | 1
                            // .Event.NoWindlassMotionDetected = 0 | 1
                            // .Event.RetrievalDockingDistanceReached = 0 | 1
                            // .Event.EndOfRodeReached = 0 | 1
