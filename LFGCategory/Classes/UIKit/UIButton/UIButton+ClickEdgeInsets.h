//
//  UIButton+ClickEdgeInsets.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (ClickEdgeInsets)

/// 上左下右分别增加或减小多少  正数为增加 负数为减小
@property (nonatomic, assign) UIEdgeInsets clickEdgeInsets;

@end

NS_ASSUME_NONNULL_END
