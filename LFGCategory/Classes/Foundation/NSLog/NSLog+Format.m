//
//  NSLog+Format.m
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSLog+Format.h"

#pragma mark -  NSLog打印辅助方法
id logExtension(id obj) {
    id tempObj = obj;
    // 遇到NSArray或NSDictionary的子类，内容后移\t
    if ([obj isKindOfClass:[NSDictionary class]] || [obj isKindOfClass:[NSArray class]]) {
        NSString *str = [NSString stringWithFormat:@"%@", obj];
        str = [str stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
        tempObj = str;
    }
    return tempObj;
}


#pragma mark - 数组NSLog打印扩展
@implementation NSArray (NSLogCategory)

#pragma mark 数组打印
#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale {
    NSMutableString *str = [NSMutableString stringWithString:@"(\n"];
    // 遍历数组的所有元素
    for (id obj in self) {
        [str appendFormat:@"\t%@,\n", logExtension(obj)];
    }
    [str appendString:@")"];
    return str;
}
#endif

@end



#pragma mark - 字典NSLog打印扩展
@implementation NSDictionary (NSLogCategory)

#pragma mark 字典打印
#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale {
    __block NSMutableString *str = [NSMutableString stringWithString:@"{\n"];
    // 遍历字典的所有键值对
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [str appendFormat:@"\t%@ = %@,\n", key, logExtension(obj)];
    }];
    [str appendString:@"}"];
    // 删掉最后一个,
    NSRange range = [str rangeOfString:@"," options:NSBackwardsSearch];
    // 保护机制找到才删除
    if (range.location > 0 && range.location < str.length) {
        [str deleteCharactersInRange:range];
    }
    return str;
}
#endif
@end
