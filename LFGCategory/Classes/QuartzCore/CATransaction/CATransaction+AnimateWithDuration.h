//
//  CATransaction+AnimateWithDuration.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CATransaction (AnimateWithDuration)

/**
 *  @author Denys Telezhkin
 *
 *  @brief  CATransaction 动画执 block回调
 *
 *  @param duration   动画时间
 *  @param animations 动画块
 *  @param completion 动画结束回调
 */
+ (void)animateWithDuration:(NSTimeInterval)duration
                animations:(nullable void (^)(void))animations
                completion:(nullable void (^)(void))completion;

@end
