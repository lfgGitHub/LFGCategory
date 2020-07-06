//
//  UITextField+InputLimit.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (InputLimit)

@property (assign, nonatomic)  NSInteger maxLength ; // <= 0无限制


/// 限制位数
/// @param range range
/// @param string string
/// @param maxIntegerNum 最大整数位
/// @param maxDecimalNum 最大小数位
- (BOOL)shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string maxIntegerNum:(NSUInteger)maxIntegerNum maxDecimalNum:(NSUInteger)maxDecimalNum;

@end

NS_ASSUME_NONNULL_END
