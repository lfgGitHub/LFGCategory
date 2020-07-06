//
//  UITextField+Common.m
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UITextField+Common.h"

@implementation UITextField (Common)

///设置自定义清除图片
- (void)setCustomClearImage:(UIImage *)image {
    
    UIButton *clearButton = [self valueForKey:@"_clearButton"];
    [clearButton setImage:image forState:UIControlStateNormal];
}

@end
