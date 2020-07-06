//
//  UIView+Radius.h
//  LFGCategory
//
//  Created by handsome on 2020/7/1.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Radius)

/// 给UIView 设置圆角
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign)BOOL  masksToBounds;


///设置 view的 边框颜色(选择器和Hex颜色)以及 边框的宽度
@property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, assign) UIColor  *borderColor;

- (void)setLayerShadow:(UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius;

@end

NS_ASSUME_NONNULL_END
