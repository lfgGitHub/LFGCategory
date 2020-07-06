//
//  UINavigationController+Appear.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UINavigationController+Appear.h"

@implementation UINavigationController (Appear)

- (void)setNavigationBarColor:(UIColor *)color {
    UIImage *backgroundImage = [self imageWithColor:color size:CGSizeMake(1, 1)];
    [self.navigationBar setBackgroundImage:backgroundImage
                             forBarMetrics:UIBarMetricsDefault];
}

- (void)setNavigationSeparatorLineHidden:(BOOL)hidden{
    
    if(hidden){
        self.navigationBar.shadowImage = [[UIImage alloc] init];
    }else {
        self.navigationBar.shadowImage = [UITabBar appearance].shadowImage;
    }
}

- (UIImage *)imageWithColor:(UIColor*)color size:(CGSize)size{
    CGRect imgRect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(imgRect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, imgRect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

@end
