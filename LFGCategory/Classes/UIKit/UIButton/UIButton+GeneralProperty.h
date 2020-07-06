//
//  UIButton+GeneralProperty.h
//  GW_GTS2_iOS
//
//  Created by mr.li on 2020/2/26.
//  Copyright © 2020 gw. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (GeneralProperty)

@property (nonatomic, copy) NSString *titleForNormal;

@property (nonatomic, copy) NSString *titleForHighlighted;

@property (nonatomic, copy) NSString *titleForDisabled;

@property (nonatomic, copy) NSString *titleForSelected;

@property (nonatomic, strong) UIColor *titleColorForNormal;

@property (nonatomic, strong) UIColor *titleColorForHighlighted;

@property (nonatomic, strong) UIColor *titleColorForDisabled;

@property (nonatomic, strong) UIColor *titleColorForSelected;

@property (nonatomic, strong) UIImage *imageForNormal;

@property (nonatomic, strong) UIImage *imageForHighlighted;

@property (nonatomic, strong) UIImage *imageForDisabled;

@property (nonatomic, strong) UIImage *imageForSelected;

@property (nonatomic, strong) UIImage *bgImageForNormal;

@property (nonatomic, strong) UIImage *bgImageForHighlighted;

@property (nonatomic, strong) UIImage *bgImageForDisabled;

@property (nonatomic, strong) UIImage *bgImageForSelected;

@property (nonatomic, strong) UIFont *fontt;

@end

NS_ASSUME_NONNULL_END
