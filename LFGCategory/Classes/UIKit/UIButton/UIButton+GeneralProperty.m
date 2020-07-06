//
//  UIButton+GeneralProperty.m
//  GW_GTS2_iOS
//
//  Created by mr.li on 2020/2/26.
//  Copyright © 2020 gw. All rights reserved.
//

#import "UIButton+GeneralProperty.h"

@implementation UIButton (GeneralProperty)

- (NSString *)titleForNormal
{
    return [self titleForState:UIControlStateNormal];
}

- (void)setTitleForNormal:(NSString *)titleForNormal
{
    [self setTitle:titleForNormal forState:UIControlStateNormal];
}

- (NSString *)titleForHighlighted
{
    return [self titleForState:UIControlStateHighlighted];
}

- (void)setTitleForHighlighted:(NSString *)titleForHighlighted
{
    [self setTitle:titleForHighlighted forState:UIControlStateHighlighted];
}

- (NSString *)titleForDisabled
{
    return [self titleForState:UIControlStateDisabled];
}

- (void)setTitleForDisabled:(NSString *)titleForDisabled
{
    [self setTitle:titleForDisabled forState:UIControlStateDisabled];
}

- (NSString *)titleForSelected
{
    return [self titleForState:UIControlStateSelected];
}

- (void)setTitleForSelected:(NSString *)titleForSelected
{
    [self setTitle:titleForSelected forState:UIControlStateSelected];
}

- (UIColor *)titleColorForNormal
{
    return [self titleColorForState:UIControlStateNormal];
}

- (void)setTitleColorForNormal:(UIColor *)titleColorForNormal
{
    [self setTitleColor:titleColorForNormal forState:UIControlStateNormal];
}

- (UIColor *)titleColorForHighlighted
{
    return [self titleColorForState:UIControlStateHighlighted];
}

- (void)setTitleColorForHighlighted:(UIColor *)titleColorForHighlighted
{
    [self setTitleColor:titleColorForHighlighted forState:UIControlStateHighlighted];
}

- (UIColor *)titleColorForDisabled
{
    return [self titleColorForState:UIControlStateDisabled];
}

- (void)setTitleColorForDisabled:(UIColor *)titleColorForDisabled
{
    [self setTitleColor:titleColorForDisabled forState:UIControlStateDisabled];
}

- (UIColor *)titleColorForSelected
{
    return [self titleColorForState:UIControlStateSelected];
}

- (void)setTitleColorForSelected:(UIColor *)titleColorForSelected
{
    [self setTitleColor:titleColorForSelected forState:UIControlStateSelected];
}

- (UIImage *)imageForNormal
{
    return [self imageForState:UIControlStateNormal];
}

- (void)setImageForNormal:(UIImage *)imageForNormal
{
    [self setImage:imageForNormal forState:UIControlStateNormal];
}

- (UIImage *)imageForHighlighted
{
    return [self imageForState:UIControlStateHighlighted];
}

- (void)setImageForHighlighted:(UIImage *)imageForHighlighted
{
    [self setImage:imageForHighlighted forState:UIControlStateHighlighted];
}

- (UIImage *)imageForDisabled
{
    return [self imageForState:UIControlStateDisabled];
}

- (void)setImageForDisabled:(UIImage *)imageForDisabled
{
    [self setImage:imageForDisabled forState:UIControlStateDisabled];
}

- (UIImage *)imageForSelected
{
    return [self imageForState:UIControlStateSelected];
}

- (void)setImageForSelected:(UIImage *)imageForSelected
{
    [self setImage:imageForSelected forState:UIControlStateSelected];
}

- (UIImage *)bgImageForNormal {
    
    return [self backgroundImageForState:UIControlStateNormal];
}

- (void)setBgImageForNormal:(UIImage *)bgImageForNormal {

    [self setBackgroundImage:bgImageForNormal forState:UIControlStateNormal];
}

- (UIImage *)bgImageForDisabled {
    
    return [self backgroundImageForState:UIControlStateDisabled];
}

- (void)setBgImageForDisabled:(UIImage *)bgImageForDisabled {

    [self setBackgroundImage:bgImageForDisabled forState:UIControlStateDisabled];
}

- (UIImage *)bgImageForSelected {

    return [self backgroundImageForState:UIControlStateSelected];
}

- (void)setBgImageForSelected:(UIImage *)bgImageForSelected {

    [self setBackgroundImage:bgImageForSelected forState:UIControlStateSelected];
}

- (UIImage *)bgImageForHighlighted {

    return [self backgroundImageForState:UIControlStateHighlighted];
}

- (void)setBgImageForHighlighted:(UIImage *)bgImageForHighlighted {

    [self setBackgroundImage:bgImageForHighlighted forState:UIControlStateHighlighted];
}

- (UIFont *)fontt
{
    return self.titleLabel.font;
}

- (void)setFontt:(UIFont *)fontt
{
    self.titleLabel.font = fontt;
}


@end
