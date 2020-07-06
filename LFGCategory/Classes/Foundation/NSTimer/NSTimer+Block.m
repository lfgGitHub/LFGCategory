//
//  NSTimer+Block.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSTimer+Block.h"

@implementation NSTimer (Block)

+ (void)exect:(NSTimer *)timer{
    if ([timer userInfo]) {
        void (^block)(NSTimer *timer) = (void (^)(NSTimer *timer))[timer userInfo];
        block(timer);
    }
}

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)seconds withBlock:(void (^)(NSTimer *))block repeats:(BOOL)repeats{
    return [NSTimer scheduledTimerWithTimeInterval:seconds target:self selector:@selector(exect:) userInfo:[block copy] repeats:repeats] ;
}

+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)seconds withBlock:(void (^)(NSTimer *))block repeats:(BOOL)repeats{
    return [NSTimer timerWithTimeInterval:seconds target:self selector:@selector(exect:) userInfo:[block copy] repeats:repeats];
}

@end
