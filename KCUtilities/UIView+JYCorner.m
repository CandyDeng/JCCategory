//
//  UIView+JYCorner.m
//  MCKit
//
//  Created by monda on 2018/9/4.
//  Copyright © 2018年 monda. All rights reserved.
//

#import "UIView+JYCorner.h"

@implementation UIView (JYCorner)

- (void)jy_setCorner:(UIRectCorner)corner cornerRadii:(CGSize)size{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:size];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}


@end
