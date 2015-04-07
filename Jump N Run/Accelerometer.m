//
//  Accelerometer.m
//  testSensorTag
//
//  Created by Admin on 11/23/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Accelerometer.h"

@implementation Accelerometer


+(float) calcXValue:(NSData *)data {
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:3];
    return ((scratchVal[0] * 1.0) / (256 / ACCEL_RANGE));
}

+(float) calcYValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap Y (multiplying with -1)
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:3];
    return ((scratchVal[1] * 1.0) / (256 / ACCEL_RANGE)) * -1;
}

+(float) calcZValue:(NSData *)data {
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:3];
    return ((scratchVal[2] * 1.0) / (256 / ACCEL_RANGE));
}




@end
