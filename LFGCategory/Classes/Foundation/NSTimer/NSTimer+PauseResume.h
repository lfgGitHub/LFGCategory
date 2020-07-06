//
//  NSTimer+PauseResume.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (PauseResume)

/// 暂停NSTimer
- (void)pauseTimer;

/// 开始NSTimer
- (void)resumeTimer;

/// 延迟开始NSTimer
- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval;

@end

NS_ASSUME_NONNULL_END
