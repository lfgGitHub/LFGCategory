//
//  UIImage+Gradient.h
//  LFGCategory
//
//  Created by handsome on 2020/7/6.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, GradientType) {
    GradientTopToBottom,                /**< 从上到下 */
    GradientLeftToRight,                /**< 从左到右 */
    GradientLeftTopToRightBottom,       /**< 左上到右下 */
    GradientLeftBottomToRightTop,       /**< 左下到右上 */
};

@interface UIImage (Gradient)

/**
 *  渐变图片
 *  @param imageSize 图片大小
 *  @param colors 颜色集
 *  @param percents 渐变位置，元素值为0~1.f
 *  @param gradientType 渐变模式
 */
+ (UIImage *)imageWithSize:(CGSize)imageSize
                  gradientColors:(NSArray<UIColor *> *)colors
                      percentage:(NSArray<NSNumber *> *)percents
                    gradientType:(GradientType)gradientType;



/// 渐变图片
/// @param imageSize imageSize 图片大小
/// @param colors 颜色集
/// @param percents 渐变位置，元素值为0~1.f
/// @param startPoint 开始点
/// @param endPoint 结束点
+ (UIImage *)imageWithSize:(CGSize)imageSize
               gradientColors:(NSArray<UIColor *> *)colors
                   percentage:(NSArray<NSNumber *> *)percents
                   startPoint:(CGPoint)startPoint
                     endPoint:(CGPoint)endPoint;

@end

NS_ASSUME_NONNULL_END
