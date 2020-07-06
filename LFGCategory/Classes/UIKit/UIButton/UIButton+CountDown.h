//
//  UIButton+CountDown.h
//  CF_GTS2
//
//  Created by Mr.Li on 2020/1/8.
//  Copyright © 2020 gw. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (CountDown)

/// 设置倒计时
/// @param timeout 超时时间
/// @param waitTittle 等待标题
/// @param waitTitleColor 等待标题颜色
-(void)setCountdown:(NSInteger )timeout waitTittle:(NSString *)waitTittle waitTitleColor:(UIColor *)waitTitleColor;

@end

NS_ASSUME_NONNULL_END
