//
//  NSDictionary+JSONValue.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (JSONValue)

/**
 JSON String Encoded

 @return JSON String
 */
- (nullable NSString *)jsonStringEncoded;


/**
 JSON PrettyString Encoded

 @return JSON Pretty String
 */
- (nullable NSString *)jsonPrettyStringEncoded;

@end

NS_ASSUME_NONNULL_END
