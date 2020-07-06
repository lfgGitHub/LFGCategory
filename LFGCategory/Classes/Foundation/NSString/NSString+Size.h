//
//  NSString+Size.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Size)

/**
 文字的Size

 @param font 字体
 @param maxSize MaxSize
 @return 文字的Size
 */
- (CGSize)sizeWithFont:(UIFont *)font andMaxSize:(CGSize)maxSize ;

/**
 文字的Size

 @param text 文字
 @param font 字体
 @param maxSize MaxSize
 @return 文字的Size
 */
+ (CGSize)sizeWithText:(NSString *)text andFont:(UIFont *)font andMaxSize:(CGSize)maxSize ;

@end

NS_ASSUME_NONNULL_END
