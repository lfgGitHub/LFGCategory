//
//  UIImageView+CornerRadius.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (CornerRadius)

- (instancetype)initWithCornerRadiusAdvance:(CGFloat)cornerRadius
                             rectCornerType:(UIRectCorner)rectCornerType;

- (void)cornerRadiusAdvance:(CGFloat)cornerRadius
             rectCornerType:(UIRectCorner)rectCornerType;

- (instancetype)initWithRoundingRectImageView;

- (void)cornerRadiusRoundingRect;

- (void)attachBorderWidth:(CGFloat)width color:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
