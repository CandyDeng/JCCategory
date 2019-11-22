//
//  NSString+Extension.h
//  DaYiProject
//
//  Created by monda on 2018/9/21.
//  Copyright © 2018年 monda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

+ (NSString *)unBlank:(NSString *)string;

+ (UIColor *)colorOfState:(NSString *)readyStateNa;

+ (NSString *)dataFromTimeInterval:(NSTimeInterval)timeInterval;

+ (NSString *)timeFromTimeInterval:(NSTimeInterval)timeInterval;

- (NSString*)doubleValueString;

- (NSString*)marketUnitCount;

@end
