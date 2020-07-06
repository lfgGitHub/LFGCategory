//
//  NSString+URLEncode.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (URLEncode)

/**
 URL编码

 @return urlEncode
 */
- (NSString *)urlEncode;

/**
 URL解码

 @return urlDecode
 */
- (NSString *)urlDecode;

/**
 参数字典

 @return 参数字典
 */
- (NSDictionary *)dictionaryFromURLParameters;

@end

NS_ASSUME_NONNULL_END
