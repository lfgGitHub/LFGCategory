//
//  UITextField+InputLimit.m
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UITextField+InputLimit.h"
#import <objc/runtime.h>

static const void *KTextFieldInputLimitMaxLength = &KTextFieldInputLimitMaxLength;

@implementation UITextField (InputLimit)

- (NSInteger)maxLength {
    return [objc_getAssociatedObject(self, KTextFieldInputLimitMaxLength) integerValue];
}
- (void)setMaxLength:(NSInteger)maxLength {
    objc_setAssociatedObject(self, KTextFieldInputLimitMaxLength, @(maxLength), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addTarget:self action:@selector(textFieldTextDidChange) forControlEvents:UIControlEventEditingChanged];
}
- (void)textFieldTextDidChange {
    NSString *toBeString = self.text;
    //获取高亮部分
    UITextRange *selectedRange = [self markedTextRange];
    UITextPosition *position = [self positionFromPosition:selectedRange.start offset:0];
    
    //没有高亮选择的字，则对已输入的文字进行字数统计和限制
    //在iOS7下,position对象总是不为nil
    if ( (!position ||!selectedRange) && (self.maxLength > 0 && toBeString.length > self.maxLength))
    {
        NSRange rangeIndex = [toBeString rangeOfComposedCharacterSequenceAtIndex:self.maxLength];
        if (rangeIndex.length == 1)
        {
            self.text = [toBeString substringToIndex:self.maxLength];
        }
        else
        {
            NSRange rangeRange = [toBeString rangeOfComposedCharacterSequencesForRange:NSMakeRange(0, self.maxLength)];
            NSInteger tmpLength;
            if (rangeRange.length > self.maxLength) {
                tmpLength = rangeRange.length - rangeIndex.length;
            }else{
                tmpLength = rangeRange.length;
            }
            self.text = [toBeString substringWithRange:NSMakeRange(0, tmpLength)];
        }
    }
}


- (BOOL)shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string maxIntegerNum:(NSUInteger)maxIntegerNum maxDecimalNum:(NSUInteger)maxDecimalNum
{
    UITextField *textField = self;
    //判断是否有小数点
    BOOL isHavePoint = [textField.text containsString:@"."];
    
    if (string.length > 0) {
        
        //当前输入的字符
        unichar single = [string characterAtIndex:0];
        NSLog(@"single = %c",single);
        
        //不能输入.0~9以外的字符
        if (!((single >= '0' && single <= '9') || (maxDecimalNum > 0 && single == '.'))){
            NSLog(@"您输入的格式不正确");
            return NO;
        }
        
        //只能有一个小数点
        if (isHavePoint && single == '.') {
            NSLog(@"只能输入一个小数点");
            return NO;
        }
        
        if (maxDecimalNum <= 0 && [textField.text isEqualToString:@"0"]) {
            return NO;
        }
        
        //如果第一位是.则前面加上0
        if ((textField.text.length == 0) && (single == '.')) {
            textField.text = @"0";
        }
        /*
         //如果第一位是0则后面必须输入.
         if ([textField.text hasPrefix:@"0"]) {
         if (textField.text.length > 1) {
         NSString *secondStr = [textField.text substringWithRange:NSMakeRange(1, 1)];
         if (![secondStr isEqualToString:@"."]) {
         NSLog(@"第二个字符必须是小数点");
         return NO;
         }
         }else{
         if (![string isEqualToString:@"."]) {
         NSLog(@"第二个字符必须是小数点");
         return NO;
         }
         }
         }
         */
        //小数点后最多能输入两位
        if (isHavePoint) {
            NSRange ran = [textField.text rangeOfString:@"."];
            //由于range.location是NSUInteger类型的，所以不能通过(range.location - ran.location) > 2来判断
            if (range.location > ran.location) {
                if ([textField.text pathExtension].length > (maxDecimalNum - 1)) {
                    NSLog(@"小数点后最多有两位小数");
                    return NO;
                }
            }else {
                return ran.location < maxIntegerNum;//整数位最多maxIntegerNum位
            }
        }else {//整数位最多maxIntegerNum位
            if(textField.text.length < maxIntegerNum) {
                return YES;
            }
            if([string isEqualToString:@"."]) {
                return YES;
            }
            return NO;
        }
    }else {
        //删除后，第一位是小数点，前面补0
        if (range.location == 0 && (textField.text.length > 1) && ([[textField.text substringWithRange:(NSRange){1,1}] isEqualToString:@"."])) {
            NSString *tempString = [NSString stringWithFormat:@"0%@",[textField.text substringFromIndex:1]];
            textField.text = nil;
            textField.text = tempString;
            return NO;
        }
    }
    return YES;
}

@end
