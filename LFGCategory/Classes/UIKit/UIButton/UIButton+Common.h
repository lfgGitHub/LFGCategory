//
//  UIButton+Common.h
//  GW_GTS2_iOS
//
//  Created by mr.li on 2020/2/26.
//  Copyright © 2020 gw. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^OnClickBlock)(UIButton *btn);


@interface UIButton (Common)

/**
 按钮点击事件
 
 */
- (void)addTargetWithActionBlock:(OnClickBlock)block;

@end

NS_ASSUME_NONNULL_END
