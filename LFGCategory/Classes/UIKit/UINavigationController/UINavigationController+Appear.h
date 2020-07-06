//
//  UINavigationController+Appear.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (Appear)

/**
 设置导航栏颜色
 */
- (void)setNavigationBarColor:(UIColor *)color;

/**
 隐藏导航栏分割线
 */
- (void)setNavigationSeparatorLineHidden:(BOOL)hidden;

@end

NS_ASSUME_NONNULL_END
