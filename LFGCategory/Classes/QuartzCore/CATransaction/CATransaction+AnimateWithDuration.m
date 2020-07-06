//
//  CATransaction+AnimateWithDuration.m
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "CATransaction+AnimateWithDuration.h"

@implementation CATransaction (AnimateWithDuration)

+ (void)animateWithDuration:(NSTimeInterval)duration
                animations:(void (^)(void))animations
                completion:(void (^)(void))completion{
    [CATransaction begin];
    [CATransaction setAnimationDuration:duration];
    if (completion){
        [CATransaction setCompletionBlock:completion];
    }
    if (animations){
        animations();
    }
    [CATransaction commit];
}

@end
