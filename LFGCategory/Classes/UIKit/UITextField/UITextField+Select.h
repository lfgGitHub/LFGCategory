//
//  UITextField+Select.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (Select)

/**
 *  当前选中的字符串范围
 *
 *  @return NSRange
 */
- (NSRange)selectedRange;
/**
 *  选中所有文字
 */
- (void)selectAllText;
/**
 *  选中指定范围的文字
 *
 *  @param range NSRange范围
 */
- (void)setSelectedRange:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
