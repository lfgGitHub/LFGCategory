//
//  UIViewController+Common.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Common)

/// 设置导航栏标题样式
- (void)setTitleColor:(UIColor *)color font:(UIFont *)font;

/**
 设置导航栏透明
 */
- (void)setNavigationTransparent;


@end

NS_ASSUME_NONNULL_END
