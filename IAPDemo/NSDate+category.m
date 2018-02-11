//
//  NSDate+category.m
//  MQIAPDemo
//
//  Created by Aidy.Bao on 2018/02/11.
//  Copyright © 2018年 com.Aidy. All rights reserved.
//

#import "NSDate+category.h"

@implementation NSDate (category)

+ (NSString *)chindDateFormate:(NSDate *)update{
   
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *destDateString = [dateFormatter stringFromDate:update];
    return destDateString;
}

@end
