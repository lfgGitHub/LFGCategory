//
//  UITextView+PlaceHolder.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT double UITextView_PlaceholderVersionNumber;
FOUNDATION_EXPORT const unsigned char UITextView_PlaceholderVersionString[];

@interface UITextView (PlaceHolder)

@property (nonatomic, readonly) UILabel *placeholderLabel;

@property (nonatomic, strong) NSAttributedString *attributedPlaceholder;

@property (nonatomic, strong) IBInspectable NSString *placeholder;
@property (nonatomic, strong) IBInspectable UIFont *placeholderFont;
@property (nonatomic, strong) IBInspectable UIColor *placeholderColor;

+ (UIColor *)defaultPlaceholderColor;

@end

NS_ASSUME_NONNULL_END
