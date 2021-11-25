//
//  UIButton+ClickEdgeInsets.m
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UIButton+ClickEdgeInsets.h"
#import <objc/runtime.h>

@implementation UIButton (ClickEdgeInsets)

- (UIEdgeInsets)clickEdgeInsets{
    return [objc_getAssociatedObject(self, @selector(clickEdgeInsets)) UIEdgeInsetsValue];
}

- (void)setClickEdgeInsets:(UIEdgeInsets)clickEdgeInsets{
    objc_setAssociatedObject(self, @selector(clickEdgeInsets), [NSValue valueWithUIEdgeInsets:clickEdgeInsets], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    UIEdgeInsets clickEdgeInsets = UIEdgeInsetsMake(-self.clickEdgeInsets.top, -self.clickEdgeInsets.left, -self.clickEdgeInsets.bottom, -self.clickEdgeInsets.right);
    
    if (UIEdgeInsetsEqualToEdgeInsets(clickEdgeInsets, UIEdgeInsetsZero)){
        return [super pointInside:point withEvent:event];
    }else{
        CGRect large = UIEdgeInsetsInsetRect(self.bounds, clickEdgeInsets);
        return CGRectContainsPoint(large, point) ? YES : NO;
    }
}

@end
