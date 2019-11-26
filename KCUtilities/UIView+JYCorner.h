//
//  UIView+JYCorner.h
//  MCKit
//
//  Created by monda on 2018/9/4.
//  Copyright © 2018年 monda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JYCorner)

//设置view的圆角
- (void)jy_setCorner:(UIRectCorner)corner cornerRadii:(CGSize)size;

@end
