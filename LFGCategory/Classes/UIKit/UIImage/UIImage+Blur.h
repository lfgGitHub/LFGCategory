//
//  UIImage+Blur.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Blur)

- (UIImage *)imageByTintColor:(UIColor *)color;

- (UIImage *)imageByGrayscale;
- (UIImage *)imageByBlurSoft;
- (UIImage *)imageByBlurLight;
- (UIImage *)imageByBlurExtraLight;
- (UIImage *)imageByBlurDark;
- (UIImage *)imageByBlurWithTint:(UIColor *)tintColor;

- (UIImage *)imageByBlurRadius:(CGFloat)blurRadius
                     tintColor:(UIColor *)tintColor
                      tintMode:(CGBlendMode)tintBlendMode
                    saturation:(CGFloat)saturation
                     maskImage:(UIImage *)maskImage;

@end

NS_ASSUME_NONNULL_END
