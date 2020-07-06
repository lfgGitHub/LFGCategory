//
//  NSString+XML.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (XML)

/**
 *  xml字符串转换成NSDictionary
 *
 *  @return NSDictionary
 */
-(NSDictionary *)XMLDictionary;

@end

NS_ASSUME_NONNULL_END
