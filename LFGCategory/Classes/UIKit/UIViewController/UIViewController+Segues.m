//
//  UIViewController+Segues.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UIViewController+Segues.h"
#import <objc/runtime.h>

@implementation UIViewController (Segues)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        Method targetMethod = class_getInstanceMethod(class, @selector(prepareForSegue:sender:));
        Method redirectMethod = class_getInstanceMethod(class, @selector(_prepareForSegue:sender:));
        method_exchangeImplementations(targetMethod, redirectMethod);
    });
}

- (void)performSegueWithIdentifier:(NSString *)identifier prepareCallback:(UIViewControllerSeguesPrepareCallback)callback {
    [self performSegueWithIdentifier:identifier sender:callback];
}

- (void)_prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([sender isKindOfClass: NSClassFromString(@"NSBlock")]) {
        UIViewControllerSeguesPrepareCallback callback = sender;
        callback(segue.destinationViewController);
    }
    [self _prepareForSegue:segue sender:self];
}

@end
