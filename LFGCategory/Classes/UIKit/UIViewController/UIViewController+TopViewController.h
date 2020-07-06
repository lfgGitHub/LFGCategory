//
//  UIViewController+TopViewController.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (TopViewController)

/**
 获取上一个视图控制器
 
 @return 上一个视图控制器
 */
- (UIViewController *)topViewController;

/**
 获取模态根vc
 */
- (UIViewController *)presentRootVC;

@end

NS_ASSUME_NONNULL_END
