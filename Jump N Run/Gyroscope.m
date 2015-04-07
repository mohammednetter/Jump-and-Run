//
//  Gyroscope.m
//  testSensorTag
//
//  Created by Admin on 11/23/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Gyroscope.h"

@implementation Gyroscope

//@synthesize lastX,lastY,lastZ;
//@synthesize calX,calY,calZ;

-(id) init {
    self = [super init];
    if (self) {
        calX = 0.0f;
        calY = 0.0f;
        calZ = 0.0f;
    }
    return self;
}

-(void) calibrate {
    calX = lastX;
    calY = lastY;
    calZ = lastZ;
    
}

+(float) calcXValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap X (multiplying with -1)
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawX = (scratchVal[0] & 0xff) | ((scratchVal[1] << 8) & 0xff00);
    //NSLog(@"Test");
    lastX = (((float)rawX * 1.0) / ( 65536 / IMU3000_RANGE )) * -1;
    return (lastX - calX);
}
+(float) calcYValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap Y (multiplying with -1)
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawY = ((scratchVal[2] & 0xff) | ((scratchVal[3] << 8) & 0xff00));
    lastY = (((float)rawY * 1.0) / ( 65536 / IMU3000_RANGE )) * -1;
    return (lastY - calY);
}
+(float) calcZValue:(NSData *)data {
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawZ = (scratchVal[4] & 0xff) | ((scratchVal[5] << 8) & 0xff00);
    lastZ = ((float)rawZ * 1.0) / ( 65536 / IMU3000_RANGE );
    return (lastZ - calZ);
}
+(float) getRange {
    return IMU3000_RANGE;
}

@end
