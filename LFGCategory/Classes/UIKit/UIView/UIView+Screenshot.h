//
//  UIView+Screenshot.h
//  LFGCategory
//
//  Created by handsome on 2020/7/1.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Screenshot)

/// View截图
- (UIImage *)screenshot;

/// ScrollView截图 contentOffset
- (UIImage *)screenshotForScrollViewWithContentOffset:(CGPoint)contentOffset;

/// View按Rect截图
- (UIImage *)screenshotInFrame:(CGRect)frame;

- (nullable UIImage *)snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;

/// 截取当前View为PDF
- (nullable NSData *)snapshotPDF;

@end

NS_ASSUME_NONNULL_END
