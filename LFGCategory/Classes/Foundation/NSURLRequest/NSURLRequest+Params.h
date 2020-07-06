//
//  NSURLRequest+Params.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURLRequest (Params)

- (id)initWithURL:(NSURL *)URL parameters:(NSDictionary *)params;

+(NSURLRequest *)requestGETWithURL:(NSURL *)url parameters:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
