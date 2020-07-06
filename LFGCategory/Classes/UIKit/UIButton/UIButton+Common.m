//
//  UIButton+Common.m
//  GW_GTS2_iOS
//
//  Created by mr.li on 2020/2/26.
//  Copyright © 2020 gw. All rights reserved.
//

#import "UIButton+Common.h"
#import <objc/runtime.h>

static char KOnClickBlockKey;

@interface UIButton ()

@property (nonatomic, copy) OnClickBlock onClickBlock;


@end

@implementation UIButton (Common)

/**
 按钮点击事件

 */
- (void)addTargetWithActionBlock:(OnClickBlock)block
{
    [self addTarget:self action:@selector(btnClickEvent:) forControlEvents:UIControlEventTouchUpInside];
    self.onClickBlock = block;
}

- (void)btnClickEvent:(UIButton *)sender
{
    if(self.onClickBlock)
    {
        self.onClickBlock(sender);
    }
}

- (void)setOnClickBlock:(OnClickBlock)onClickBlock
{
    objc_setAssociatedObject(self, &KOnClickBlockKey, onClickBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (OnClickBlock)onClickBlock
{
    return objc_getAssociatedObject(self, &KOnClickBlockKey);
}

@end
