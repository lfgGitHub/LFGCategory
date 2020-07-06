//
//  UINavigationBar+Common.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (Common)

/**
跟随滚动慢慢变颜色
*/
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setElementsAlpha:(CGFloat)alpha;
- (void)setTranslationY:(CGFloat)translationY;
- (void)reset;

@end

NS_ASSUME_NONNULL_END
