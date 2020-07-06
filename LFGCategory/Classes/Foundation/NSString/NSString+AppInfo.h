//
//  NSString+AppInfo.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (AppInfo)

/**
 UUID

 @return UUID String
 */
+ (NSString *)UUID ;


/**
 version

 @return version
 */
+ (NSString *)appVersion;


/**
 build Version

 @return build Version
 */
+ (NSString *)build;


/**
 identifier

 @return identifier
 */
+ (NSString *)identifier;

/**
 displayName
 
 @return displayName
 */
+ (NSString *)displayName;

/**
 currentLanguage

 @return currentLanguage
 */
+ (NSString *)currentLanguage;


/**
 设备信息

 @return 设备信息String
 */
+ (NSString *)deviceModel;

@end

NS_ASSUME_NONNULL_END
