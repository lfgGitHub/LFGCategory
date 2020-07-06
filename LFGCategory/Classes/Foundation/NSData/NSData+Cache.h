//
//  NSData+Cache.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Cache)

/**
 根据key保存到磁盘里缓存起来

 @param key Key
 */
- (void)saveDataCacheWithKey:(NSString *)key;


/**
 根据key取出缓存data

 @param key Key
 @return 对象数据
 */
+ (NSData *)getDataCacheWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
