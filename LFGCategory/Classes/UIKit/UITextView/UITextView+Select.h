//
//  UITextView+Select.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (Select)

/// 当前选中的字符串范围
- (NSRange)selectedRange;

/// 选中所有文字
- (void)selectAllText;

/// 选中指定范围的文字
- (void)setSelectedRange:(NSRange)range;

/// 用于计算textview输入情况下的字符数，解决实现限制字符数时，计算不准的问题
- (NSInteger)getInputLengthWithText:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
