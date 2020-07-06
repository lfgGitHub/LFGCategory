//
//  NSArray+JSONValue.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (JSONValue)

/**
 转换为JSON

 @return JSON Sting
 */
- (NSString *)jsonStringEncoded;

/**
 返回格式化后JSON

 @return 格式化后的JSON String
 */
- (NSString *)jsonPrettyStringEncoded;

@end

NS_ASSUME_NONNULL_END
