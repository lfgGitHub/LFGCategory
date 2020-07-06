//
//  NSObject+Swizzle.h
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Swizzle)

/**
 交换实例方法

 @param originalSel 原始的SEL
 @param newSel 新的SEL
 @return 是否交换成功
 */
+ (BOOL)swizzleInstanceMethod:(SEL)originalSel with:(SEL)newSel;


/**
 交换类方法

 @param originalSel 原始的SEL
 @param newSel 新的SEL
 @return 是否交换成功
 */
+ (BOOL)swizzleClassMethod:(SEL)originalSel with:(SEL)newSel;

@end

NS_ASSUME_NONNULL_END
