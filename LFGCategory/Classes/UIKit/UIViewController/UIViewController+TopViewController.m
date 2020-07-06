//
//  UIViewController+TopViewController.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UIViewController+TopViewController.h"

@implementation UIViewController (TopViewController)

/**
 获取上一个视图控制器
 
 @return 上一个视图控制器
 */
- (UIViewController *)topViewController {
    NSInteger index = [self.navigationController.viewControllers indexOfObject:self];
    if(index >= 1)
    {
        return self.navigationController.viewControllers[index - 1];
    }
    if (self.presentingViewController) {
        return self.presentingViewController;
    }
    return nil;
}

/**
 获取模态根vc
 */
- (UIViewController *)presentRootVC {
    UIViewController *rootVC = self;
    while (!rootVC.navigationController) {
        rootVC = rootVC.presentingViewController;
    }
    return rootVC;
}

@end
