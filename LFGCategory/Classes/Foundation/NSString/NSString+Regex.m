//
//  NSString+Regex.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSString+Regex.h"

@implementation NSString (Regex)

- (NSArray<NSString *> *)matchWithRegex:(NSString *)regex{
    NSTextCheckingResult *result = [self firstMatchedResultWithRegex:regex];
    NSMutableArray *mArray = [[NSMutableArray alloc] initWithCapacity:[result numberOfRanges]];
    for (int i = 0 ; i < [result numberOfRanges]; i ++ ) {
        [mArray addObject:[self substringWithRange:[result rangeAtIndex:i]]];
    }
    return mArray;
}

- (NSString *)matchWithRegex:(NSString *)regex atIndex:(NSUInteger)index{
    NSTextCheckingResult *result = [self firstMatchedResultWithRegex:regex];
    return [self substringWithRange:[result rangeAtIndex:index]];
}

- (NSString *)firstMatchedGroupWithRegex:(NSString *)regex{
    NSTextCheckingResult *result = [self firstMatchedResultWithRegex:regex];
    return [self substringWithRange:[result rangeAtIndex:1]];
}

- (NSTextCheckingResult *)firstMatchedResultWithRegex:(NSString *)regex{
    NSRegularExpression *regexExpression = [NSRegularExpression regularExpressionWithPattern:regex options:(NSRegularExpressionOptions)0 error:NULL];
    NSRange range = {0, self.length};
    return [regexExpression firstMatchInString:self options:(NSMatchingOptions)0 range:range];
}

- (NSArray<NSTextCheckingResult *> *)matchedResultWithRegex:(NSString *)regex{
    NSRegularExpression *regexExpression = [NSRegularExpression regularExpressionWithPattern:regex options:(NSRegularExpressionOptions)0 error:NULL];
    NSRange range = {0, self.length};
    return [regexExpression matchesInString:self options:(NSMatchingOptions)0 range:range];
}


@end
