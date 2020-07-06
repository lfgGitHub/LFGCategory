//
//  UITextView+InputLimit.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (InputLimit)

@property (assign, nonatomic)  NSInteger maxLength;//if <=0, no limit

@end

NS_ASSUME_NONNULL_END
