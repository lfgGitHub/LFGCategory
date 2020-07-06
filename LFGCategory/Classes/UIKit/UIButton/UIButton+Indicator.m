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

///不会缓存在内存中,使用次数较少时候使用
static inline UIImage* GTIMGBundleName(NSString *imageName){
    CGFloat scale = UIScreen.mainScreen.scale;
    NSString *imgName = [NSString stringWithFormat:@"%@@%dx",imageName,(int)scale];
    NSString *type = [imageName containsString:@"png"] ? @"png" : @"jpg";
    NSString *path = [[NSBundle mainBundle] pathForResource:imgName ofType:type];
    if(!path)
    {
        imgName = [imgName stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%d",(int)scale] withString:[NSString stringWithFormat:@"%d",scale == 3 ? 2 : 3]];
        path = [[NSBundle mainBundle] pathForResource:imgName ofType:type];
    }
    return [[UIImage imageWithContentsOfFile:path] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@interface UIButton ()

@end

@implementation UIButton (Indicator)


/// 显示加载器
- (void)showIndicator {

    if (!loadingImageView) {
        UIImageView *loadingImageV = [[UIImageView alloc] initWithImage:GTIMGBundleName(@"general_loading_white")];
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
    
//    objc_setAssociatedObject(self, &KLoadingViewKey, loadingImageView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kButtonTextKey, currentButtonText, OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &kButtonDisabledImageKey, disabledImage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self setTitle:@"" forState:UIControlStateNormal];
    [self setBackgroundImage:normalBgImage forState:UIControlStateDisabled];
    
    
    [self addSubview:loadingImageView];
    loadingImageView.center = self.center;
//    [loadingImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(self);
//    }];
}

/// 隐藏加载器
- (void)hideIndicator {
    
    NSString *currentButtonText = (NSString *)objc_getAssociatedObject(self, &kButtonTextKey);
//    UIImageView *loadingImageView = (UIImageView *)objc_getAssociatedObject(self, &KLoadingViewKey);
    UIImage *disabledImage = (UIImage *)objc_getAssociatedObject(self, &kButtonDisabledImageKey);
    
    [loadingImageView removeFromSuperview];
    
    [self setTitle:currentButtonText forState:UIControlStateNormal];
    [self setBackgroundImage:disabledImage forState:UIControlStateDisabled];
}

@end
