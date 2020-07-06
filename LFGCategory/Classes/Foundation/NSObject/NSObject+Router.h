//
//  NSObject+Router.h
//  LFGCategory
//
//  Created by handsome on 2020/7/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Router)

- (void)setObject:(id)object completion:(void(^)(id value))completion;

@end

NS_ASSUME_NONNULL_END
