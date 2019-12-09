//
//  UIButton+EnlargeEdge.h
//  JCCategory
//
//  Created by monda on 2019/12/9.
//  Copyright © 2019 monda. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (EnlargeEdge)

- (void)setEnlargeEdge:(CGFloat)size;
- (void)setEnlargeEdgeWithTop:(CGFloat)top
                        right:(CGFloat)right
                       bottom:(CGFloat)bottom
                         left:(CGFloat)left;

@end

NS_ASSUME_NONNULL_END
