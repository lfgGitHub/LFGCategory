//
//  UIImage+Color.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Color)

/**
 生成纯色图片

 @param color Color
 @param size Size
 @return 纯色图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color withSize:(CGSize)size;

/**
 在某个点的颜色

 @param point 点
 @return 颜色
 */
- (UIColor *)colorAtPoint:(CGPoint )point ;

/**
 某个像素的颜色

 @param point 像素点
 @return 颜色
 */
- (UIColor *)colorAtPixel:(CGPoint)point ;


/**
 是否含有透明通道

 @return 是否含有透明信息
 */
- (BOOL)hasAlphaChannel ;

@end

NS_ASSUME_NONNULL_END
