/*
 * Copyright (c) 2015-2023 Timo Lappalainen, Kave Oy, www.kave.fi
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
*/
/*************************************************************************//**
 * \file  NMEA2000StdTypes.h
 * \brief NMEA2000 standard type definitions.
 * 
 *
 * This file contains (and must only contain) type definitions of data types
 * defined in the NMEA2000 standard.  These all have names of the form "DDnnn".
 * The language of the definitions should follow exactly that of the standard
 * document from which the information is drawn.  No abbreviated names. No
 * mangled capitalisation.

 * The entries here are mostly enums describing bit field types. Where an enum
 * member has multiple meanings, each meaning is aliased (see tN2kDD0002 for an
 * example).

 * This file is included by N2kTypes.h where the standard code names are aliased
 * into corresponding long names (once again, exactly as described by NMEA). 
 * 
 * 
 *  Ressources NMEA 2000 ®  Appendix B.2 -- Data Dictionary
 * 
 *  - https://hobbydocbox.com/Radio/106823300-Data-dictionary-report-by-number-national-marine-electronics-association-nmea-appendix-b-2-data-dictionary.html
 *  - https://www.nmea.org/Assets/20190613%20thruster%20amendment%20128006,%20128007,%20128008.pdf
 *  - https://www.nmea.org/Assets/20190613%20windlass%20amendment,%20128776,%20128777,%20128778.pdf 
 */

#ifndef _NMEA2000StdTypes_H_
#define _NMEA2000StdTypes_H_

#include <stdint.h>

/** @{ \ingroup  group_msgTypes */


/*************************************************************************//**
 * \union tN2kDD206
 * \brief DD206 - Engine Discrete Warning Status 
 * 
 * This status can be used to check the actual status of the boat engine.
 * 
 * DD206  Engine Discrete Warning Status DF52       16bit
 * - xxxx xxxx  xxxx xxx1 = Check Engine, 
 * - xxxx xxxx  xxxx xx1x = Over Temperature, 
 * - xxxx xxxx  xxxx x1xx = Low Oil Pressure,
 * - xxxx xxxx  xxxx 1xxx = Low Oil Level,
 * - xxxx xxxx  xxx1 xxxx = Low Fuel Pressure,
 * - xxxx xxxx  xx1x xxxx = Low System Voltage,
 * - xxxx xxxx  x1xx xxxx = Low Coolant Level,
 * - xxxx xxxx  1xxx xxxx = Water Flow,
 * - xxxx xxx1  xxxx xxxx = Water in Fuel,
 * - xxxx xx1x  xxxx xxxx = Charge Indicator,
 * - xxxx x1xx  xxxx xxxx = Preheat Indicator,
 * - xxxx 1xxx  xxxx xxxx = High Boost Pressure,
 * - xxx1 xxxx  xxxx xxxx = Rev Limit Exceeded, 
 * - xx1x xxxx  xxxx xxxx = EGR System,
 * - x1xx xxxx  xxxx xxxx = Throttle Position Sensor,
 * - 1xxx xxxx  xxxx xxxx = Engine Emergency Stop Mode
 * 
 * where x = don't care
 */
union tN2kDD206 {
          uint16_t Status;                                      ///< 2byte status with all individual status bits included
          struct {
              uint16_t CheckEngine:1;                           ///< check engine status bit
              uint16_t OverTemperature:1;                       ///< over temperature status bit
              uint16_t LowOilPressure:1;                        ///< low oil pressure status bit
              uint16_t LowOilLevel:1;                           ///< low oil level status bit
              uint16_t LowFuelPressure:1;                       ///< low fuel pressure status bit
              uint16_t LowSystemVoltage:1;                      ///< low system voltage status bit
              uint16_t LowCoolantLevel:1;                       ///< low coolant status bit
              uint16_t WaterFlow:1;                             ///< water flow status bit
              uint16_t WaterInFuel:1;                           ///< water in fuel status bit
              uint16_t ChargeIndicator:1;                       ///< charge indicator status bit
              uint16_t PreheatIndicator:1;                      ///< pre heat indicator status bit
              uint16_t HighBoostPressure:1;                     ///< high boost pressure status bit  
              uint16_t RevLimitExceeded:1;                      ///< rev limit exceeded status bit
              uint16_t EGRSystem:1;                             ///< egr system status bit
              uint16_t ThrottlePositionSensor:1;                ///< throttle position sensor status bit
              uint16_t EngineEmergencyStopMode:1;               ///< engine emergency stop mode status bit
          } Bits;
          tN2kDD206(uint16_t _Status=0): Status(_Status) {};
};

/*************************************************************************//**
 * \union tN2kDD223
 * \brief DD223 - Engine Discrete Warning Status
 * 
 * This status can be used to check the actual status of the boat engine.
 * 
 * DD223 - Engine Discrete Warning Status        DF52   16bit
 * - xxxx xxxx xxxx xxx1 = Warning Level 1, 
 * - xxxx xxxx xxxx xx1x = Warning Level 2,
 * - xxxx xxxx xxxx x1xx = Power Reduction,
 * - xxxx xxxx xxxx 1xxx = Maintenance Needed,
 * - xxxx xxxx xxx1 xxxx = Engine Comm Error,
 * - xxxx xxxx xx1x xxxx = Sub or Secondary Throttle,
 * - xxxx xxxx x1xx xxxx = Neutral Start Protect,
 * - xxxx xxxx 1xxx xxxx = Engine Shutting Down,
 * - xxxx xxx1 xxxx xxxx = reserved,
 * - xxxx xx1x xxxx xxxx = reserved,
 * - xxxx x1xx xxxx xxxx = reserved,
 * - xxxx 1xxx xxxx xxxx = reserved,
 * - xxx1 xxxx xxxx xxxx = reserved,
 * - xx1x xxxx xxxx xxxx = reserved,
 * - x1xx xxxx xxxx xxxx = reserved,
 * - 1xxx xxxx xxxx xxxx = reserved,
 *
 * where x = don't care
 */
union tN2kDD223 {
          uint16_t Status;                          ///< 2byte status with all individual status bits included
          struct {
              uint16_t WarningLevel1:1;             ///< engine warning level 1 status bit
              uint16_t WarningLevel2:1;             ///< engine warning level 2 status bit
              uint16_t LowOiPowerReduction:1;       ///< engine power reduction due to low oil pressure status bit
              uint16_t MaintenanceNeeded:1;         ///< engine maintenance needed status bit
              uint16_t EngineCommError:1;           ///< engine communication error status bit
              uint16_t SubOrSecondaryThrottle:1;    ///< sub or secondary throttle is used status bit
              uint16_t NeutralStartProtect:1;       ///< neutral start protection status bit
              uint16_t EngineShuttingDown:1;        ///< engine shuting down status bit
              uint16_t Manufacturer1:1;             ///< reserved
              uint16_t Manufacturer2:1;             ///< reserved
              uint16_t Manufacturer3:1;             ///< reserved
              uint16_t Manufacturer4:1;             ///< reserved
              uint16_t Manufacturer5:1;             ///< reserved
              uint16_t Manufacturer6:1;             ///< reserved
              uint16_t Manufacturer7:1;             ///< reserved
              uint16_t Manufacturer8:1;             ///< reserved
          } Bits;
          tN2kDD223(uint16_t _Status=0): Status(_Status) {};
          uint16_t operator= (uint16_t val) { Status=val & 0x00ff; return Status;}
};

/*************************************************************************//**
 * \union tN2kDD471
 * \brief DD471 - Thruster Motor Events according to PGN 128008
 * 
 * DD471 Thruster Motor Events     DF52 8bit
 * 
 * - 0b0000 0000 = No errors present
 * - 0bxxxx xxx1 = Motor over temperature cutout
 * - 0bxxxx xx1x = Motor over current cutout
 * - 0bxxxx x1xx = Low oil level warning
 * - 0bxxxx 1xxx = Oil over temperature warning
 * - 0bxxx1 xxxx = Controller under voltage cutout
 * - 0bxx1x xxxx = Manufacturer defined
 * - 0bx1xx xxxx = Reserved
 * - 0b1xxx xxxx = Data Not Available
 * 
 * 
 * Events are cleared when the condition is no longer true or by manually resetting using the Command Group Function
 */
union tN2kDD471 {
	unsigned char Events;                             ///< 1byte with all Thruster Motor Events, 0x00 -> No errors present
	struct {
		unsigned char MotorOverTemperatureCutout:1;     ///< status bit for Motor over temperature cutout
		unsigned char MotorOverCurrentCutout:1;         ///< status bit for Motor over current cutout
		unsigned char LowOilLevelWarning:1;             ///< status bit for Low oil level warning
		unsigned char OilOverTemperatureWarning:1;      ///< status bit for Oil over temperature warning
		unsigned char ControllerUnderVoltageCutout:1;   ///< status bit for Controller under voltage cutout
		unsigned char ManufacturerDefined:1;            ///< Manufacturer defined
		unsigned char Reserved:1;                       ///< Reserved 
		unsigned char DataNotAvailable:1;               ///< Data Not Available
	} Event;
	tN2kDD471(): Events(0) {};
	void SetEvents(unsigned char _Events) { Events = (_Events & 0xbf); }
};

/*************************************************************************//**
 * \union tN2kDD475
 * \brief DD475 - Thruster Control Events according to PGN 128006
 * 
 * DD475 - Thruster Control Events    DF52    8bit
 * - 0b00000000 = No errors /events present
 * - 0bxxxxxxx1 = Another device controlling thruster
 * - 0bxxxxxx1x = Boat speed too fast to safely use thruster
 * - 0bxxxxx1xx to 0b1xxxxxxx = Reserved
 
 */
union tN2kDD475 {
	unsigned char Events;               ///< 1byte of all Thruster Control Events, 0x00 would be NoErrors
	struct {
		unsigned char AnotherDeviceControllingThruster:1;   ///< Another device is controlling thruster
		unsigned char BoatSpeedTooFast:1;                   ///< Boat speed too fast to safely use thruster
	} Event;
	tN2kDD475(): Events(0) {};
	void SetEvents(unsigned char _Events) { Events = (_Events & 0x03); }
};

/*************************************************************************//**
 * \union tN2kDD477
 * \brief DD477 - Windlass Monitoring Events according to PGN 128778
 * 
 * DD477 - Windlass Monitoring Events   DF52    8bit
 * - 0b0000 0000 = No errors present
 * - 0bxxxx xxx1 = Controller under voltage cut-out
 * - 0bxxxx xx1x = Controller over current cut-out
 * - 0bxxxx x1xx = Controller over temperature cut-out
 * - 0bxxxx 1xxx = Manufacturer defined
 * 
 */
union tN2kDD477 {
          unsigned char Events;     ///< 1byte of all Windlass Monitoring Events, 0x00 would be NoErrors present
          struct {
            unsigned char ControllerUnderVoltageCutout:1;       ///< Controller under voltage cut-out
            unsigned char ControllerOverCurrentCutout:1;        ///< Controller over current cut-out
            unsigned char ControllerOverTemperatureCutout:1;    ///< Controller over temperature cut-out
          } Event;
          tN2kDD477(): Events(0) {};
          void SetEvents(unsigned char _Events) { Events = (_Events & 0x07); }
        };

/*************************************************************************//**
 * \union tN2kDD478
 * \brief DD478 - Windlass Control Events according to PGN 128776
 * 
 * DD478 - Windlass Control Events    DF52      4bit
 * - 0b0000 = No errors present
 * - 0bxxx1 = Another device controlling windlass
 * - 0bxx1x = Reserved
 * - 0bx1xx = Reserved
 * - 0b1xxx = Reserved
 */
union tN2kDD478 {
          unsigned char Events;     ///< 1byte of all Windlass Control Events, 0x00 would be NoErrors present
          struct {
            unsigned char AnotherDeviceControllingWindlass:1;     ///< Another device controlling windlass
          } Event;
          tN2kDD478(): Events(0) {};
          void SetEvents(unsigned char _Events) { Events = (_Events & 0x01); }
        };



/*************************************************************************//**
 * \union tN2kDD483
 * \brief DD483 - Windlass Operating Events according to PGN 128777
 * 
 * DD483 - Windlass Operating Events        DF52      6bit
 * - 0b000000 = No errors / events present
 * - 0bxxxxx1 = System error
 * - 0bxxxx1x = Sensor error
 * - 0bxxx1xx = No windlass motion detected
 * - 0bxx1xxx = Retrieval docking distance reached (retrieving anchor is nearing the boat, so more care can be taken to complete docking)
 * - 0bx1xxxx = End of rode reached (rode has been fully deployed)
 * - 0b1xxxxx = Reserved
 */
union tN2kDD483 {
          unsigned char Events;     ///< 1byte of all Windlass Operating Events, 0x00 would be NoErrors present
          struct {
            unsigned char SystemError:1;                        ///< System error
            unsigned char SensorError:1;                        ///< Sensor error
            unsigned char NoWindlassMotionDetected:1;           ///< No windlass motion detected
            unsigned char RetrievalDockingDistanceReached:1;    ///< Retrieval docking distance reached (retrieving anchor is nearing the boat, so more care can be taken to complete docking)
            unsigned char EndOfRodeReached:1;                   ///< End of rode reached (rode has been fully deployed)
          } Event;
          tN2kDD483(): Events(0) {};
          void SetEvents(unsigned char _Events) { Events = (_Events & 0x1F); }
        };                         

#endif

/** @} */
