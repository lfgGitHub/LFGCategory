//
//  NSTimer+Block.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (Block)

/**
 scheduledTimerWithBlocl

 @param seconds 时间
 @param block Block
 @param repeats 是否重复
 @return 返回Timer
 */
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)seconds withBlock:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats;


/**
 timerWithTimeBlock

 @param seconds 时间
 @param block Block
 @param repeats 是否重复
 @return 返回Timer
 */
+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)seconds withBlock:(void (^)(NSTimer *timer))block repeats:(BOOL)repeats;

@end

NS_ASSUME_NONNULL_END
