//
//  UIView+ViewPath.h
//  LFGCategory
//
//  Created by handsome on 2020/7/1.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ViewPath)

@property (nonatomic, copy, readonly) NSString *viewPath;

@property (nonatomic, copy, readonly) NSString *viewID;

@end

NS_ASSUME_NONNULL_END
