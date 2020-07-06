//
//  NSDate+Format.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSDate+Format.h"

static NSDateFormatter *dtfm = nil;

@implementation NSDate (Format)

/**
 *  日期转字符串,stringStyle,字符串的样式，如yyyy-MM-dd
 *
 *  @param date        日期
 *  @param stringStyle 字符串样式
 *
 *  @return 返回日期字符串
 */
+ (NSString *)convertDateToString:(NSDate *)date stringStyle:(NSString *)stringStyle
{
    @autoreleasepool {
        if(!dtfm){dtfm = [[NSDateFormatter alloc]init];}
        [dtfm setDateFormat:stringStyle];
        NSString *dateString=[dtfm stringFromDate:date];
        return dateString;
    }
}

/**
 *  字符串转时间,dateString日期字符串
 *
 *  @param dateString 日期字符串
 *
 *  @return 返回日期
 */
+ (NSDate *)convertStringToDate:(NSString *)dateString stringStyle:(NSString *)stringStyle
{
    @autoreleasepool {
        if(!dtfm){dtfm = [[NSDateFormatter alloc]init];}
        [dtfm setDateFormat:stringStyle];
        NSDate *date=[dtfm dateFromString:dateString];
        //date = [self getCurRealTime:date];
        return date;
    }
}

/**
 *  时间戳转化为时间字符串
 *
 *  @param timestamp 时间戳
 *  @param formatStyle 格式化的样式
 *
 *  @return 时间字符串
 */
+ (NSString *)convertTimeStampToTimeString:(NSTimeInterval)timestamp formatStyle:(NSString *)formatStyle
{
    @autoreleasepool {

        long time = (long)timestamp;
        time = [NSString stringWithFormat:@"%ld",time].length > 10 ? time/1000 : time;
        // 格式化时间
        if(!dtfm){dtfm = [[NSDateFormatter alloc]init];}
        dtfm.timeZone = [NSTimeZone systemTimeZone];
        [dtfm setDateStyle:NSDateFormatterMediumStyle];
        [dtfm setTimeStyle:NSDateFormatterShortStyle];
        [dtfm setDateFormat:formatStyle];
        
        // 毫秒值转化为秒
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
        NSString *dateString = [dtfm stringFromDate:date];
        return dateString;
    }
}

@end
