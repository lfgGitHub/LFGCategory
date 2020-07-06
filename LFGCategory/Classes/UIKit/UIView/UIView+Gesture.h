//
//  UIView+Gesture.h
//  LFGCategory
//
//  Created by handsome on 2020/7/1.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^GestureActionBlock)(UIGestureRecognizer *gestureRecoginzer);

@interface UIView (Gesture)

/// 添加点击手势
- (void)addTapActionWithBlock:(GestureActionBlock)block;

/// 添加长按手势
- (void)addLongPressActionWithBlock:(GestureActionBlock)block;

@end

