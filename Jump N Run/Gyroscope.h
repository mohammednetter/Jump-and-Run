//
//  Gyroscope.h
//  testSensorTag
//
//  Created by Admin on 11/23/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SENSORTAG_GYRO_SERVICE_UUID    @"F000AA50-0451-4000-B000-000000000000"
#define SENSORTAG_GYRO_DATA_UUID       @"F000AA51-0451-4000-B000-000000000000"
#define SENSORTAG_GYRO_CONFIG_UUID     @"F000AA52-0451-4000-B000-000000000000"
#define SENSORTAG_GYRO_PERIOD_UUID     @"F000AA53-0451-4000-B000-000000000000"

#define SENSORTAG_GYRO_PERIOD          @"100" // Sampling rate: 100ms

float lastX,lastY,lastZ;
float calX,calY,calZ;


@interface Gyroscope : NSObject
{
    //float lastX,lastY,lastZ;
    //float calX,calY,calZ;
}

//@property float lastX,lastY,lastZ;
//@property float calX,calY,calZ;

#define IMU3000_RANGE 500.0

-(id) init;

-(void) calibrate;
+(float) calcXValue:(NSData *)data;
+(float) calcYValue:(NSData *)data;
+(float) calcZValue:(NSData *)data;
+(float) getRange;

@end
