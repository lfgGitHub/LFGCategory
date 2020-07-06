//
//  UIViewController+Common.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UIViewController+Common.h"
#import "UINavigationController+Appear.h"

@implementation UIViewController (Common)

/// 设置导航栏标题样式
- (void)setTitleColor:(UIColor *)color font:(UIFont *)font {
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName: font,NSForegroundColorAttributeName: color}];
}

/**
 设置导航栏透明
 */
- (void)setNavigationTransparent
{
    [self.navigationController setNavigationBarColor:[UIColor clearColor]];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
}

@end
