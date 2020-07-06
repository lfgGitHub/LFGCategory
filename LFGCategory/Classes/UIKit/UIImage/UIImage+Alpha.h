//
//  UIImage+Alpha.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Alpha)

/**
 *  @brief  是否有alpha通道
 *
 *  @return 是否有alpha通道
 */
- (BOOL)hasAlpha;
/**
 *  @brief  如果没有alpha通道 增加alpha通道
 *
 *  @return 如果没有alpha通道 增加alpha通道
 */
- (UIImage *)imageWithAlpha;
/**
 *  @brief  增加透明边框
 *
 *  @param borderSize 边框尺寸
 *
 *  @return 增加透明边框后的图片
 */
- (UIImage *)transparentBorderImage:(NSUInteger)borderSize;


/**
 *  @brief  裁切含透明图片为最小大小
 *
 *  @return 裁切后的图片
 */
- (UIImage *)trimmedBetterSize;


@end

NS_ASSUME_NONNULL_END
