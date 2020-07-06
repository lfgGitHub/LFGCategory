//
//  UIViewController+Swizzle.m
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UIViewController+Swizzle.h"
#import "NSObject+Swizzle.h"

@implementation UIViewController (Swizzle)

+ (void)load {

    [self swizzleInstanceMethod:NSSelectorFromString(@"dealloc") with:@selector(deallocSwizzle)];
}

- (void)deallocSwizzle {
    NSLog(@"♻️dealloc======%@===",[self class]);
}

@end
