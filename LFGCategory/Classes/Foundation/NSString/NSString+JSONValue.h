//
//  NSString+JSONValue.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (JSONValue)

/// JSON String 转换为字典
- (NSDictionary *)JSONDictionaryValue ;

/// JSON String 转换为数组
- (NSArray *)JSONArrayValue ;

@end

NS_ASSUME_NONNULL_END
