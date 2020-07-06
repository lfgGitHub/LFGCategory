//
//  NSKeyedArchiver+Key.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSKeyedArchiver (Key)

/**
 归档对象

 @param rootObject 对象
 @param key Key
 @param path 自定义路径,需要全路径信息
 @return 是否归档成功
 */
+ (BOOL)archiveRootObject:(id <NSCoding>)rootObject forKey:(NSString*)key WithFolderPath:(NSString *)path ;

/**
 归档对象,默认保存到Document/DefaultArchive目录中

 @param rootObject 对象
 @param key Key
 @return 是否归档成功
 */
+ (BOOL)archiveRootObject:(id <NSCoding>)rootObject forKey:(NSString*)key;

/**
 移除归档对象

 @param key Key
 @param path 自定义路径信息,全路径信息
 @return 是否移除成功
 */
+ (BOOL)removeArchiveForKey:(NSString *)key WithFolderPath:(NSString *)path;

/**
 移除归档对象,默认移除到Document/DefaultArchive目录中

 @param key Key
 @return 是否移除成功
 */
+ (BOOL)removeArchiveForKey:(NSString *)key ;


/**
 是否存在归档信息

 @param key Key
 @param path 自定义路径
 @return 是否存在归档
 */
+ (BOOL)archiveExistsForKey:(NSString *)key WithFolderPath:(NSString *)path;

/**
 是否存在归档信息,默认读取到Document/DefaultArchive目录中

 @param key Key
 @return 是否存在归档
 */
+ (BOOL)archiveExistsForKey:(NSString *)key ;

@end

NS_ASSUME_NONNULL_END
