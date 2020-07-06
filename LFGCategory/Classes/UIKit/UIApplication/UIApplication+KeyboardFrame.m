//
//  UIApplication+KeyboardFrame.m
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "UIApplication+KeyboardFrame.h"

static CGRect _keyboardFrame = (CGRect){ (CGPoint){ 0.0f, 0.0f }, (CGSize){ 0.0f, 0.0f } };

@implementation UIApplication (KeyboardFrame)

- (CGRect)keyboardFrame{
    return _keyboardFrame ;
}

+ (void)load{
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidShowNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        _keyboardFrame = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    }] ;
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidChangeFrameNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        _keyboardFrame = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    }] ;
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidHideNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        _keyboardFrame = CGRectZero;
    }] ;

}

@end
