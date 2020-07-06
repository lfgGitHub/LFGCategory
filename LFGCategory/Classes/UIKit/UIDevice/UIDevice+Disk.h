//
//  UIImage+Disk.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Disk)

@property (nonatomic,readonly) int64_t diskSpace;   /// 硬盘空间
@property (nonatomic,readonly) int64_t diskSpaceFree;  /// 硬盘剩余空间
@property (nonatomic,readonly) int64_t diskSpaceUsed;   /// 硬盘使用空间

@property (nonatomic, readonly) int64_t memoryTotal;   /// 内存空间
@property (nonatomic, readonly) int64_t memoryUsed;    /// 内存使用空间
@property (nonatomic, readonly) int64_t memoryFree;   /// 内存剩余空间
@property (nonatomic, readonly) int64_t memoryActive;  /// 内存活动空间
@property (nonatomic, readonly) int64_t memoryInactive;  /// 内存非活动时间
@property (nonatomic, readonly) int64_t memoryWired;   /// 内存压缩空间
@property (nonatomic, readonly) int64_t memoryPurgable;   

@end
