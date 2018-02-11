//
//  NSString+category.m
//  MQIAPDemo
//
//  Created by Aidy.Bao on 2018/02/11.
//  Copyright © 2018年 com.Aidy. All rights reserved.
//

#import "NSString+category.h"

@implementation NSString (category)

+ (NSString *)uuid{
    // create a new UUID which you own
    CFUUIDRef uuidref = CFUUIDCreate(kCFAllocatorDefault);
    
    // create a new CFStringRef (toll-free bridged to NSString)
    // that you own
    CFStringRef uuid = CFUUIDCreateString(kCFAllocatorDefault, uuidref);
    
    NSString *result = (__bridge NSString *)uuid;
    //release the uuidref
    CFRelease(uuidref);
    // release the UUID
    CFRelease(uuid);
    
    return result;
}

@end
