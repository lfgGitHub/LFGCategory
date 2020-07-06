//
//  NSString+OpenAndClose.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (OpenAndClose)

//获取用来展示的富文本（拼接上 “展开” “收起”）
- (NSMutableAttributedString *)getAttributeStrWithWidth:(CGFloat)lblWidth font:(UIFont *)textFont lineSpacing:(CGFloat)lineSpacing paragraphSpacing:(CGFloat)paragraphSpacing lineBreakMode:(NSLineBreakMode)lineBreakMode closeLineNum:(NSInteger)closeLineNum openState:(BOOL)isOpen openStr:(NSString *)openStr closeStr:(NSString *)closeStr normalColor:(UIColor *)normalColor openAndCloseColor:(UIColor *)openAndCloseColor;

@end

NS_ASSUME_NONNULL_END
