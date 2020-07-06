//
//  NSDate+Lunar.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Lunar)

/** 是否是农历新年*/
@property (nonatomic,assign,readonly) BOOL isNewLunarYear;
/** 判断公历年是否是闰年*/
@property (nonatomic,assign,readonly) BOOL isLeapYear;

/** 获取干支纪年*/
@property (nonatomic,assign,readonly) NSString *lunarYearName;
/** 获得生肖*/
@property (nonatomic,assign,readonly) NSString *yearZodiac;

/** 日历数据*/
@property (nonatomic,assign,readonly) NSDictionary *calendarInfo;
/** 农历数据*/
@property (nonatomic,assign,readonly) NSDictionary *lunarInfo;

/// 获取指定年月的日历数据
+ (NSDictionary *)calendarInfo:(NSInteger)year month:(NSInteger)month;

/// 公历转换成农历
+ (NSDictionary *)solarToLunar:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

/// 农历转换成公历
+ (NSDictionary *)lunarToSolar:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

@end

NS_ASSUME_NONNULL_END
