//
//  UIImage+Gradient.m
//  LFGCategory
//
//  Created by handsome on 2020/7/6.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UIImage+Gradient.h"

@implementation UIImage (Gradient)

+ (UIImage *)imageWithSize:(CGSize)imageSize
                  gradientColors:(NSArray<UIColor *> *)colors
                      percentage:(NSArray<NSNumber *> *)percents
                    gradientType:(GradientType)gradientType
{
    NSAssert(colors.count != 0, @"colors不能为空");
    
    if (imageSize.width == 0 || imageSize.height == 0 || colors.count == 0) {
        return nil;
    }
    
    NSMutableArray *ar = [NSMutableArray array];
    for(UIColor *c in colors) {
        [ar addObject:(id)c.CGColor];
    }
    
    CGFloat locations[percents.count];
    for (int i = 0; i < percents.count; i++) {
        locations[i] = percents[i].floatValue;
    }
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 1);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorGetColorSpace([[colors lastObject] CGColor]);
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)ar, locations);
    CGPoint start;
    CGPoint end;
    switch (gradientType) {
        case GradientTopToBottom:
            start = CGPointMake(imageSize.width/2, 0.0);
            end = CGPointMake(imageSize.width/2, imageSize.height);
            break;
        case GradientLeftToRight:
            start = CGPointMake(0.0, imageSize.height/2);
            end = CGPointMake(imageSize.width, imageSize.height/2);
            break;
        case GradientLeftTopToRightBottom:
            start = CGPointZero;
            end = CGPointMake(imageSize.width, imageSize.height);
            break;
        case GradientLeftBottomToRightTop:
            start = CGPointMake(0.0, imageSize.height);
            end = CGPointMake(imageSize.width, 0.0);
            break;
        default:
            break;
    }
    CGContextDrawLinearGradient(context, gradient, start, end, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return image;
}


+ (UIImage *)imageWithSize:(CGSize)imageSize
                  gradientColors:(NSArray<UIColor *> *)colors
                  percentage:(NSArray<NSNumber *> *)percents
                  startPoint:(CGPoint)startPoint
                  endPoint:(CGPoint)endPoint
{
    NSAssert(colors.count != 0, @"colors不能为空");
    
    if (imageSize.width == 0 || imageSize.height == 0 || colors.count == 0) {
        return nil;
    }
    
    NSMutableArray *ar = [NSMutableArray array];
    for(UIColor *c in colors) {
        [ar addObject:(id)c.CGColor];
    }
    
    CGFloat locations[percents.count];
    for (int i = 0; i < percents.count; i++) {
        locations[i] = percents[i].floatValue;
    }
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 1);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorGetColorSpace([[colors lastObject] CGColor]);
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)ar, locations);
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return image;
}

@end
