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
    if ([string isExist]) {
        return string;
    }
    return @"";
}

+ (UIColor *)colorOfState:(NSString *)readyStateNa{
    UIColor *color = nil;
    if ([readyStateNa isEqualToString:@"未委托"]) {
        color = hex(0xfd7b2d);
    }else if ([readyStateNa isEqualToString:@"已代理"] ||
              [readyStateNa isEqualToString:@"已开通续期业务"] ||
              [readyStateNa isEqualToString:@"审核通过"] ||
              [readyStateNa isEqualToString:@"已完成订单"]){
        color = hex(0x43cfa6);
    }else if ([readyStateNa isEqualToString:@"已结束"]) {
        color = hex(0x999999);
    }else if ([readyStateNa isEqualToString:@"审核未通过"] ||
              [readyStateNa isEqualToString:@"匹配失败"]){
        color = hex(0xfd2d2d);
    }else{
        color = hex(0x2976f4);
    }
    return color;
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
    CGFloat vaule = self.floatValue;
    if(self.floatValue <= 0) return @"0.00";
    return [NSString stringWithFormat:@"%.2f", vaule];
}

- (NSString*)marketUnitCount{
    if(self.floatValue <= 0) return @"0.000";
    
    NSString* s;
    NSString* _s;
    
    NSRange range = [self rangeOfString:@"."];
    
    if(range.location != NSNotFound && range.location != self.length - 1)
    {
        NSArray* a = [self componentsSeparatedByString:@"."];
        s = a[0];
        _s = a[1];
    }
    else
        s = self;
    
    NSInteger length = s.length;
    
    
    
    for(int i =0; i <  length; i++)
    {
        NSRange range = [s rangeOfString:@"0"];
        
        if(range.location == NSNotFound || range.location != 0) break;
        
        s = [s substringFromIndex:range.location + 1];
    }
    
    NSMutableString* s1 = [[NSMutableString alloc] initWithString:s];
    
    NSInteger count = 0;
    length = s.length;
    
    while(true)
    {
        length -= 3;
        if(length > 0)
            count++;
        else
            break;
    }
    
    length = s.length;
    for(int i = 0; i < count; i++)
        [s1 insertString:@"," atIndex:(length - 3 - 3 * i)];
    
    s = [s1 copy];
    
    if(_s.length > 3)
        _s = [_s substringToIndex:3];
    
    if(![s isExist])
        s = @"0";
    
    if(![_s isExist])
        s = [NSString stringWithFormat:@"%@.000",s];
    else if(_s.length == 1)
        s = [NSString stringWithFormat:@"%@.%@00",s,_s];
    else
        s = [NSString stringWithFormat:@"%@.%@",s,_s];
    
    
    
    return s;
}

@end
