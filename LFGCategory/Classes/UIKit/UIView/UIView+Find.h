//
//  UIView+Find.h
//  LFGCategory
//
//  Created by handsome on 2020/7/1.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Find)

/// 找到指定类名的第一个subView
- (UIView *)findSubViewWithClass:(Class)clazz;

/// 找到指定类名的所有subview
- (NSArray *)findAllSubViewsWithClass:(Class)clazz;

/// 找到当前view所在的viewcontroler
- (UIViewController *)viewController;

/// 所有的子控件,包括子控件的子控件
- (NSArray *)allSubviews;

/// 移除所有的子控件
- (void)removeAllSubviews;

/// 找到view上的第一响应者
- (UIView *)findFirstResponder;

@end

NS_ASSUME_NONNULL_END
