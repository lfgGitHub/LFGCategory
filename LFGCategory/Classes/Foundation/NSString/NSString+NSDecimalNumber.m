//
//  NSString+NSDecimalNumber.m
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSString+NSDecimalNumber.h"
#import <objc/runtime.h>

#define ErrorResult @""
#define IsNotANumber(num) [num isEqual:[NSDecimalNumber notANumber]]
#define IsZero(num) [num isEqual:[NSDecimalNumber zero]]

@interface NSString ()

@property (nonatomic, strong) NSDecimalNumber *firstNum;/**< 第一个值*/
@property (nonatomic, strong) NSDecimalNumber *secondNum;/**< 第二个值*/
@property (nonatomic, strong) NSDecimalNumber *result;/**< 结果*/

@end

@implementation NSString (NSDecimalNumber)

- (void)setFirstNum:(NSDecimalNumber *)firstNum {
    
    objc_setAssociatedObject(self, @selector(firstNum), firstNum, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDecimalNumber *)firstNum {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setSecondNum:(NSDecimalNumber *)secondNum {
    
    objc_setAssociatedObject(self, @selector(secondNum), secondNum, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDecimalNumber *)secondNum {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setResult:(NSDecimalNumber *)result {
    
    objc_setAssociatedObject(self, @selector(result), result, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDecimalNumber *)result {
    
    return objc_getAssociatedObject(self, _cmd);
}

#pragma mark =========Getter Methods==========

- (NSString * _Nonnull (^)(id _Nonnull))add {
    
    return ^NSString *(id num) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        self.secondNum = [self decimalNumberWithNum:num];
        
        if (IsNotANumber(self.firstNum) || IsNotANumber(self.secondNum)) {
            return ErrorResult;
        }
        
        self.result = [self.firstNum decimalNumberByAdding:self.secondNum];
        
        return [self.result stringValue];
    };
}

- (NSString * _Nonnull (^)(id _Nonnull))sub {
    
    return ^NSString *(id num) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        self.secondNum = [self decimalNumberWithNum:num];
        
        if (IsNotANumber(self.firstNum) || IsNotANumber(self.secondNum)) {
            return ErrorResult;
        }
        
        self.result = [self.firstNum decimalNumberBySubtracting:self.secondNum];
        
        return [self.result stringValue];
    };
}

- (NSString * _Nonnull (^)(id _Nonnull))mul {
    
    return ^NSString *(id num) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        self.secondNum = [self decimalNumberWithNum:num];
        
        if (IsNotANumber(self.firstNum) || IsNotANumber(self.secondNum)) {
            return ErrorResult;
        }
        
        self.result = [self.firstNum decimalNumberByMultiplyingBy:self.secondNum];
        
        return [self.result stringValue];
    };
}

- (NSString * _Nonnull (^)(id _Nonnull))div {
    
    return ^NSString *(id num) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        self.secondNum = [self decimalNumberWithNum:num];
        
        if (IsNotANumber(self.firstNum) || IsNotANumber(self.secondNum) || IsZero(self.secondNum)) {
            return ErrorResult;
        }
        
        self.result = [self.firstNum decimalNumberByDividingBy:self.secondNum];
        
        return [self.result stringValue];
    };
}

- (NSString * _Nonnull (^)(NSUInteger))power {
    
    return ^NSString *(NSUInteger num) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        self.result = [self.firstNum decimalNumberByRaisingToPower:num];
        
        return [self.result stringValue];
    };
}

- (NSString * _Nonnull (^)(short))powerOf10 {
    
    return ^NSString *(short num) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        self.result = [self.firstNum decimalNumberByMultiplyingByPowerOf10:num];
        
        return [self.result stringValue];
    };
}

- (NSString * _Nonnull (^)(short))roundPlain {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingWithMode:NSRoundPlain scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundPlainWithZeroFill {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingZeroFillWithMode:NSRoundPlain scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundDown {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingWithMode:NSRoundDown scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundDownWithZeroFill {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingZeroFillWithMode:NSRoundDown scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundUp {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingWithMode:NSRoundUp scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundUpWithZeroFill {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingZeroFillWithMode:NSRoundUp scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundPlainWithZeroFillFormat {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingZeroFillFormatWithMode:NSRoundPlain scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundDownWithZeroFillFormat {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingZeroFillFormatWithMode:NSRoundDown scale:scale];
    };
}

- (NSString * _Nonnull (^)(short))roundUpWithZeroFillFormat {
    
    return ^NSString *(short scale) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        
        if (IsNotANumber(self.firstNum)) {
            return ErrorResult;
        }
        
        return [self.firstNum roundingZeroFillFormatWithMode:NSRoundUp scale:scale];
    };
}

- (LFGComparisonResult (^)(id _Nonnull))compare {
    
    return ^LFGComparisonResult (id num) {
        
        self.firstNum = [self decimalNumberWithNum:self];
        self.secondNum = [self decimalNumberWithNum:num];
        
        if (IsNotANumber(self.firstNum) || IsNotANumber(self.secondNum)) {
            return LFGComparisonResult_Error;
        }
        
        return (NSInteger)[self.firstNum compare:self.secondNum];
    };
}

#pragma mark =========Private Methods==========

- (NSDecimalNumber *)decimalNumberWithNum:(id)num {
    
    if ([num isKindOfClass:[NSString class]]) {
        if (!(nil == num || [num isEqualToString:ErrorResult])) {
           return [NSDecimalNumber decimalNumberWithString:num];
        }
    }else if ([num isKindOfClass:[NSNumber class]]) {
        return [NSDecimalNumber decimalNumberWithDecimal:[num decimalValue]];
    }
    return [NSDecimalNumber notANumber];
}

@end

@implementation NSDecimalNumber (Round)

- (NSString *)roundingWithMode:(NSRoundingMode)mode scale:(short)scale {
    
    NSDecimalNumberHandler *handel = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:mode scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    return [self decimalNumberByRoundingAccordingToBehavior:handel].stringValue;//小数末尾有零自动省略
}
- (NSString *)roundingZeroFillWithMode:(NSRoundingMode)mode scale:(short)scale {
    
    NSString *result = [self roundingWithMode:mode scale:scale];
    NSString *format = [NSString stringWithFormat:@"%%.%df", scale];
    [NSString stringWithFormat:format, result.doubleValue];
    return [NSString stringWithFormat:format, result.doubleValue];//小数末尾有零的话会补零
}

- (NSString *)roundingZeroFillFormatWithMode:(NSRoundingMode)mode scale:(short)scale
{
    NSString *formatterStr = nil;
    if (scale > 0) {
        NSString *str = @".";
        for (int i = scale; i > 0; i --) {
            str = [str stringByAppendingString:@"0"];//小数末尾有零的话会补零
//            str = [str stringByAppendingString:@"#"];//小数末尾有零自动省略
        }
        formatterStr = [NSString stringWithFormat:@"###,##0%@;", str];
    } else {
        formatterStr = @"###,##0;";
    }
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;//四舍五入的小数
    if (mode == NSRoundDown) numberFormatter.roundingMode = kCFNumberFormatterRoundDown;
    if (mode == NSRoundUp) numberFormatter.roundingMode = kCFNumberFormatterRoundUp;
    [numberFormatter setPositiveFormat:formatterStr];
    
    return [numberFormatter stringFromNumber:self];
}

@end
