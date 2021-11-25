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

static NSString *const KBackViewKey = @"backView";

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
    if (self.center.x > self.bounds.size.width || self.center.y > self.bounds.size.height || self.center.y != self.bounds.size.height/2.0 || self.center.x != self.bounds.size.width/2.0) {
        CGFloat x = self.bounds.size.width/2.0;
        CGFloat y = self.bounds.size.height/2.0;
        loadingImageView.center = CGPointMake(x, y);
    }else {
       
        loadingImageView.center = self.center;
        
    }

}


-(void)showIndicatorBg{
    
    UIWindow * keyWindow = [UIApplication sharedApplication].keyWindow;
    UIView * view = [[UIView alloc] initWithFrame:keyWindow.bounds];
    view.backgroundColor = [UIColor clearColor];
    [keyWindow addSubview:view];
    objc_setAssociatedObject(self, &KBackViewKey,view, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self showIndicator];
    
}
/// 隐藏加载器
- (void)hideIndicator {
    
    NSString *currentButtonText = (NSString *)objc_getAssociatedObject(self, &kButtonTextKey);

    UIImage *disabledImage = (UIImage *)objc_getAssociatedObject(self, &kButtonDisabledImageKey);
    
    [loadingImageView removeFromSuperview];
    
    if (currentButtonText) {
        [self setTitle:currentButtonText forState:UIControlStateNormal];
    }
    if (disabledImage) {
        [self setBackgroundImage:disabledImage forState:UIControlStateDisabled];
    }
    UIView * bgView =  (UIView *)objc_getAssociatedObject(self, &KBackViewKey);
    if (bgView) {
        [bgView removeFromSuperview];
        bgView= nil;
    }
    
}

@end
