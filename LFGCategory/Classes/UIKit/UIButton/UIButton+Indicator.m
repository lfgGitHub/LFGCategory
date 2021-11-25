//
//  UIButton+Indicator.m
//  CF_GTS2
//
//  Created by Mr.Li on 2020/1/7.
//  Copyright © 2020 gw. All rights reserved.
//

#import "UIButton+Indicator.h"
#import <objc/runtime.h>

static NSString *const KLoadingViewKey = @"indicatorView";
static NSString *const kButtonTextKey = @"kButtonTextKey";
static NSString *const kButtonDisabledImageKey = @"kButtonDisabledImageKey";

static UIImageView *loadingImageView;
static CABasicAnimation *animation;

@interface UIButton ()

@end

@implementation UIButton (Indicator)

///设置加载图片
+ (void)setLoadingImage:(UIImage *)image {
    
    if (!loadingImageView) {
        UIImageView *loadingImageV = [[UIImageView alloc] initWithImage:image];
        loadingImageView = loadingImageV;
    }else {
        loadingImageView.image = image;
    }
}

/// 显示加载器
- (void)showIndicator {

    if (!loadingImageView) {
        UIImageView *loadingImageV = [[UIImageView alloc] init];
        loadingImageView = loadingImageV;
    }
    if (!animation) {
        CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        anim.toValue = [NSNumber numberWithFloat:M_PI*2.0];
        anim.duration = 1.0;
        anim.repeatCount = HUGE_VALF;
        animation = anim;
    }
    
    [loadingImageView.layer addAnimation:animation forKey:@"rotationAnimation"];

    NSString *currentButtonText = self.titleLabel.text;
    UIImage *normalBgImage = [self backgroundImageForState:UIControlStateNormal];
    UIImage *disabledImage = [self backgroundImageForState:UIControlStateDisabled];
    
    objc_setAssociatedObject(self, &kButtonTextKey, currentButtonText, OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &kButtonDisabledImageKey, disabledImage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self setTitle:@"" forState:UIControlStateNormal];
    [self setBackgroundImage:normalBgImage forState:UIControlStateDisabled];
    
    
    [self addSubview:loadingImageView];
    loadingImageView.center = self.center;

}

/// 隐藏加载器
- (void)hideIndicator {
    
    NSString *currentButtonText = (NSString *)objc_getAssociatedObject(self, &kButtonTextKey);

    UIImage *disabledImage = (UIImage *)objc_getAssociatedObject(self, &kButtonDisabledImageKey);
    
    [loadingImageView removeFromSuperview];
    
    [self setTitle:currentButtonText forState:UIControlStateNormal];
    [self setBackgroundImage:disabledImage forState:UIControlStateDisabled];
}

@end
