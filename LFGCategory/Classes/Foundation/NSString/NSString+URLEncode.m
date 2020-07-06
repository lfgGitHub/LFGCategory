//
//  NSString+URLEncode.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSString+URLEncode.h"

@implementation NSString (URLEncode)

- (NSString *)urlEncode {
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}


- (NSString *)urlDecode {
    return [self stringByRemovingPercentEncoding];
}


- (NSDictionary *)dictionaryFromURLParameters{
    NSArray *pairs = [self componentsSeparatedByString:@"&"];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    for (NSString *pair in pairs) {
        NSArray *kv = [pair componentsSeparatedByString:@"="];
        NSString *val = [[kv objectAtIndex:1] urlDecode];
        [params setObject:val forKey:[kv objectAtIndex:0]];
    }
    return params;
}

@end
