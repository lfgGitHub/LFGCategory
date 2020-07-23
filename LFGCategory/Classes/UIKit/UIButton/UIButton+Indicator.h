//
//  UIButton+Indicator.h
//  CF_GTS2
//
//  Created by Mr.Li on 2020/1/7.
//  Copyright © 2020 gw. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Indicator)

///设置加载图片
- (void)setLoadingImage:(UIImage *)image;

/// 显示加载器
- (void)showIndicator;

/// 隐藏加载器
- (void)hideIndicator;

@end

NS_ASSUME_NONNULL_END
