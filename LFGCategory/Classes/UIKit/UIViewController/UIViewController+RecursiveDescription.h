//
//  UIViewController+RecursiveDescription.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (RecursiveDescription)

/**
 *  @brief  视图层级
 *
 *  @return 视图层级字符串
 */
-(NSString*)recursiveDescription;

@end

NS_ASSUME_NONNULL_END
