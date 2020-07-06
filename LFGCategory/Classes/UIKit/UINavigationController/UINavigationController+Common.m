//
//  UINavigationController+Common.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UINavigationController+Common.h"

@implementation UINavigationController (Common)

/**
 *  @brief  根视图控制器
 *
 *  @return RootViewController
 */
- (UIViewController *)rootViewController
{
    if (self.viewControllers && [self.viewControllers count] >0) {
        return [self.viewControllers firstObject];
    }
    return nil;
}
/**
 *  @brief  判断是否只有一个RootViewController
 *
 *  @return 是否只有一个RootViewController
 */
- (BOOL)isOnlyContainRootViewController
{
    if (self.viewControllers &&
        self.viewControllers.count == 1) {
        return YES;
    }
    return NO;
}
/**
 压栈翻转动画
 
 @param controller 控制器
 @param transition 翻转动画样式
 */
- (void)pushViewController:(UIViewController *)controller withTransition:(UIViewAnimationTransition)transition {
    [UIView beginAnimations:nil context:NULL];
    [self pushViewController:controller animated:NO];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationTransition:transition forView:self.view cache:YES];
    [UIView commitAnimations];
}
/**
 出栈翻转动画
 
 @param transition 控制器
 @return 翻转动画样式
 */
- (UIViewController *)popViewControllerWithTransition:(UIViewAnimationTransition)transition {
    [UIView beginAnimations:nil context:NULL];
    UIViewController *controller = [self popViewControllerAnimated:NO];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationTransition:transition forView:self.view cache:YES];
    [UIView commitAnimations];
    return controller;
}

/**
 pop到对应于的视图控制器
 
 @param className 类名
 @param animated 是否动画
 @return         数组
 */
- (NSArray<UIViewController *> *)popToViewControllerName:(NSString *)className animated:(BOOL)animated
{
    UIViewController *curVC = [self findVCByClassName:className];
    if(!curVC)
    {
        [self popViewControllerAnimated:YES];
        return @[];
    }
    
    NSArray *curAry = [self popToViewController:curVC animated:animated];
    return curAry;
}

/**
 pop到对应于的视图控制器
 
 @param viewControllerCalss 类名
 @param animated 是否动画
 @return         是否成功返回到控制器
 */
- (BOOL)popToViewColtrollerClass:(Class)viewControllerCalss animated:(BOOL)animated {
    UIViewController *viewController = nil;
    for (UIViewController *ctr in self.viewControllers) {
        if ([ctr isKindOfClass:viewControllerCalss]) {
            viewController = ctr;
            break;
        }
    }
    if (viewController) {
        [self.navigationController popToViewController:viewController animated:animated];
    }
    return viewController != nil;
}

/**
 *  @brief  pop n层,从1开始
 *
 *  @param level  n层
 *  @param animated  是否动画
 *
 *  @return pop之后的viewcontrolers
 */
- (NSArray *)popToViewControllerWithLevel:(NSInteger)level animated:(BOOL)animated
{
    level = self.viewControllers.count - level;
    NSInteger viewControllersCount = self.viewControllers.count;
    if (viewControllersCount > level) {
        NSInteger idx = viewControllersCount - level - 1;
        UIViewController *viewController = self.viewControllers[idx];
        return [self popToViewController:viewController animated:animated];
    } else {
        return [self popToRootViewControllerAnimated:animated];
    }
}

//根据类名查找视图控制器
- (UIViewController *)findVCByClassName:(NSString *)className
{
    if(self.viewControllers.count == 0) return nil;
    
    __block UIViewController *vc = nil;
    [self.viewControllers enumerateObjectsUsingBlock:^(__kindof UIViewController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if([obj isKindOfClass:NSClassFromString(className)])
        {
            vc = obj;
            *stop = YES;
            return ;
        }
    }];
    
    return vc;
}

@end
