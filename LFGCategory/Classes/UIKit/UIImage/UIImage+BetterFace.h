//
//  UIImage+BetterFace.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, Accuracy) {
    AccuracyLow = 0,
    AccuracyHigh,
};

@interface UIImage (BetterFace)

- (UIImage *)betterFaceImageForSize:(CGSize)size
accuracy:(Accuracy)accurary;

@end

NS_ASSUME_NONNULL_END
