//
//  NSNumber+NSDecimalNumber.m
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSNumber+NSDecimalNumber.h"

@implementation NSNumber (NSDecimalNumber)

#pragma mark =========Getter Methods==========

- (NSString * _Nonnull (^)(id _Nonnull))add {
    return self.stringValue.add;
}

- (NSString * _Nonnull (^)(id _Nonnull))sub {
    return self.stringValue.sub;
}

- (NSString * _Nonnull (^)(id _Nonnull))mul {
    return self.stringValue.mul;
}

- (NSString * _Nonnull (^)(id _Nonnull))div {
    return self.stringValue.div;
}

- (NSString * _Nonnull (^)(NSUInteger))power {
    return self.stringValue.power;
}

- (NSString * _Nonnull (^)(short))powerOf10 {
    return self.stringValue.powerOf10;
}

- (NSString * _Nonnull (^)(short))roundPlain {
    return self.stringValue.roundPlain;
}

- (NSString * _Nonnull (^)(short))roundPlainWithZeroFill {
    return self.stringValue.roundPlainWithZeroFill;
}

- (NSString * _Nonnull (^)(short))roundDown {
    return self.stringValue.roundDown;
}

- (NSString * _Nonnull (^)(short))roundDownWithZeroFill {
    return self.stringValue.roundDownWithZeroFill;
}

- (NSString * _Nonnull (^)(short))roundUp {
    return self.stringValue.roundUp;
}

- (NSString * _Nonnull (^)(short))roundUpWithZeroFill {
    return self.stringValue.roundUpWithZeroFill;
}


- (NSString * _Nonnull (^)(short))roundPlainWithZeroFillFormat {
    return self.stringValue.roundPlainWithZeroFillFormat;
}

- (NSString * _Nonnull (^)(short))roundDownWithZeroFillFormat {
    return self.stringValue.roundDownWithZeroFillFormat;
}

- (NSString * _Nonnull (^)(short))roundUpWithZeroFillFormat {
    return self.stringValue.roundUpWithZeroFillFormat;
}

- (LFGComparisonResult (^)(id _Nonnull))compare {
    return self.stringValue.compare;
}

@end
