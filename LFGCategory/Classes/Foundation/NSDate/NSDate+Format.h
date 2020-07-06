//
//  NSDate+Format.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Format)

/**
 *  日期转字符串,stringStyle,字符串的样式，如yyyy-MM-dd
 *
 *  @param date        日期
 *  @param stringStyle 字符串样式
 *
 *  @return 返回日期字符串
 */
+ (NSString *)convertDateToString:(NSDate *)date stringStyle:(NSString *)stringStyle;

/**
 *  字符串转时间,dateString日期字符串
 *
 *  @param dateString 日期字符串
 *
 *  @return 返回日期
 */
+ (NSDate *)convertStringToDate:(NSString *)dateString stringStyle:(NSString *)stringStyle;

/**
 *  时间戳转化为时间字符串
 *
 *  @param timestamp 时间戳
 *  @param formatStyle 格式化的样式
 *
 *  @return 时间字符串
 */
+ (NSString *)convertTimeStampToTimeString:(NSTimeInterval)timestamp formatStyle:(NSString *)formatStyle;

@end

NS_ASSUME_NONNULL_END
