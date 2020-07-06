//
//  UIImage+CPU.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (CPU)

@property (nonatomic,readonly) NSUInteger cpuNumber ; /// CPU核心数
@property (nonatomic,readonly) NSUInteger cpuFrequency ;  /// CPU频率
@property (nonatomic,readonly) NSUInteger busFrequency ;   /// BUS频率

@property (nonatomic,readonly) float cpuUsage ;  /// CPU利用率
@property (nonatomic,readonly) NSArray<NSNumber *> *cpuUsagePerProcessor ;  

@end
