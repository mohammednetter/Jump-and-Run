//
//  Accelerometer.h
//  testSensorTag
//
//  Created by Admin on 11/23/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SENSORTAG_ACCEL_SERVICE_UUID    @"F000AA10-0451-4000-B000-000000000000"
#define SENSORTAG_ACCEL_DATA_UUID       @"F000AA11-0451-4000-B000-000000000000"
#define SENSORTAG_ACCEL_CONFIG_UUID     @"F000AA12-0451-4000-B000-000000000000"
#define SENSORTAG_ACCEL_PERIOD_UUID     @"F000AA13-0451-4000-B000-000000000000"


#define SENSORTAG_ACCEL_PERIOD          @"100" // Sampling rate: 100ms
#define ACCEL_RANGE 16.0 // Acceleration range: -8G ~ 8G

@interface Accelerometer : NSObject

+(float) calcXValue:(NSData *)data;
+(float) calcYValue:(NSData *)data;
+(float) calcZValue:(NSData *)data;

@end
