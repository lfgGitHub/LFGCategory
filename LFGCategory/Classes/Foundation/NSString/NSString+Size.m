//
//  NSString+Size.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)sizeWithFont:(UIFont *)font andMaxSize:(CGSize)maxSize{
    NSDictionary *arrts = @{NSFontAttributeName:font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:arrts context:nil].size;
}

+ (CGSize)sizeWithText:(NSString *)text andFont:(UIFont *)font andMaxSize:(CGSize)maxSize{
    return [text sizeWithFont:font andMaxSize:maxSize];
}


@end
