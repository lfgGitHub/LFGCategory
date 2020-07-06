//
//  UILabel+Space.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Space)

/// 设置字间距
- (void)setColumnSpace:(CGFloat)columnSpace;

/// 设置行距
- (void)setRowSpace:(CGFloat)rowSpace;

@end

NS_ASSUME_NONNULL_END
