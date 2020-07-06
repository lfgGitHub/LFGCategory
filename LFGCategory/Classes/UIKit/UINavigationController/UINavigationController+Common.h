//
//  UINavigationController+Common.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (Common)

/**
 *  @brief  根视图控制器
 *
 *  @return RootViewController
 */
- (UIViewController *)rootViewController;
/**
 *  @brief  判断是否只有一个RootViewController
 *
 *  @return 是否只有一个RootViewController
 */
- (BOOL)isOnlyContainRootViewController;
/**
 压栈翻转动画

 @param controller 控制器
 @param transition 翻转动画样式
 */
- (void)pushViewController:(UIViewController *)controller withTransition:(UIViewAnimationTransition)transition;


/**
 出栈翻转动画

 @param transition 控制器
 @return 翻转动画样式
 */
- (UIViewController *)popViewControllerWithTransition:(UIViewAnimationTransition)transition;


/**
 pop到对应于的视图控制器

 @param className 类名
 @param animated 是否动画
 */
- (NSArray<UIViewController *> *)popToViewControllerName:(NSString *)className animated:(BOOL)animated;

/**
 pop到对应于的视图控制器
 
 @param viewControllerCalss 类名
 @param animated 是否动画
 @return         是否成功返回到控制器
 */
- (BOOL)popToViewColtrollerClass:(Class)viewControllerCalss animated:(BOOL)animated;

/**
 *  @brief  pop n层,从1开始
 *
 *  @param level  n层
 *  @param animated  是否动画
 *
 *  @return pop之后的viewcontrolers
 */
- (NSArray *)popToViewControllerWithLevel:(NSInteger)level animated:(BOOL)animated;

//根据类名查找视图控制器
- (UIViewController *)findVCByClassName:(NSString *)className;

@end

NS_ASSUME_NONNULL_END
