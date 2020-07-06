//
//  UIImage+Tint.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Tint)

- (UIImage*)tintedImageWithColor:(UIColor*)color;
- (UIImage*)tintedImageWithColor:(UIColor*)color level:(CGFloat)level;
- (UIImage*)tintedImageWithColor:(UIColor*)color rect:(CGRect)rect;
- (UIImage*)tintedImageWithColor:(UIColor*)color rect:(CGRect)rect level:(CGFloat)level;
- (UIImage*)tintedImageWithColor:(UIColor*)color insets:(UIEdgeInsets)insets;
- (UIImage*)tintedImageWithColor:(UIColor*)color insets:(UIEdgeInsets)insets level:(CGFloat)level;

- (UIImage*)lightenWithLevel:(CGFloat)level;
- (UIImage*)lightenWithLevel:(CGFloat)level insets:(UIEdgeInsets)insets;
- (UIImage*)lightenRect:(CGRect)rect withLevel:(CGFloat)level;

- (UIImage*)darkenWithLevel:(CGFloat)level;
- (UIImage*)darkenWithLevel:(CGFloat)level insets:(UIEdgeInsets)insets;
- (UIImage*)darkenRect:(CGRect)rect withLevel:(CGFloat)level;

@end

NS_ASSUME_NONNULL_END
