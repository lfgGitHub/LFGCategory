//
//  UIImage+Merge.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Merge)


/// 合并图片
/// @param firstImage 第一张图片
/// @param secondImage 第二张图片
+ (UIImage *)mergeImage:(UIImage *)firstImage withImage:(UIImage *)secondImage;

+ (UIImage *)mergeImage:(UIImage *)firstImage firstFrame:(CGRect)firstFrame withImage:(UIImage *)secondImage  secondFrame:(CGRect)secondFrame;

@end

NS_ASSUME_NONNULL_END
