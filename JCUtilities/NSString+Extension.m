//
//  NSString+Extension.m
//  DaYiProject
//
//  Created by monda on 2018/9/21.
//  Copyright © 2018年 monda. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)
+ (NSString *)unBlank:(NSString *)string{
 
    return @"";
}


+ (NSString *)dataFromTimeInterval:(NSTimeInterval)timeInterval{
    static NSDateFormatter *dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
        dateFormatter.dateFormat = @"yyyy-MM-dd";
    });
    return [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timeInterval/1000]];
}

+ (NSString *)timeFromTimeInterval:(NSTimeInterval)timeInterval{
    static NSDateFormatter *dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
        dateFormatter.dateFormat = @"yyyy-MM-dd hh:mm:ss";
    });
    return [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timeInterval/1000]];
}

- (NSString*)doubleValueString{
    return nil;
}

- (NSString*)marketUnitCount{
   
    return nil;
}

@end
