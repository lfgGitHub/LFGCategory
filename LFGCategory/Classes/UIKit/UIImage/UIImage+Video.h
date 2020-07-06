//
//  UIImage+Video.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Video)

/// 获取视频的截图信息
+ (UIImage *)imageWithVideo:(NSString *)stringURL;

@end

NS_ASSUME_NONNULL_END
