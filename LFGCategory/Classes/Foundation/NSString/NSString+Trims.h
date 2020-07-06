//
//  NSString+Trims.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Trims)

/**
 *  清除html标签
 *
 *  @return 清除后的结果
 */
- (NSString *)stringByStrippingHTML;

/**
 *  清除js脚本
 *
 *  @return 清楚js后的结果
 */
- (NSString *)stringByRemovingScriptsAndStrippingHTML;

/**
 *  去除首尾空格
 *
 *  @return 去除首尾空格后的字符串
 */
- (NSString *)trimmingWhitespace;

/**
 *  去除首尾空格与空行
 *
 *  @return 去除首尾空格与空行的字符串
 */
- (NSString *)trimmingWhitespaceAndNewlines;

/**
 *  去除所有空格与空行
 *
 *  @return 去除所有空格与空行的字符串
 */
- (NSString *)trimmingAllWhitespaceAndNewlines;

@end

NS_ASSUME_NONNULL_END
