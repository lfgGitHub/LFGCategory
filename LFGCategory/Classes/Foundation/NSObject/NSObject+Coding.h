//
//  NSObject+Coding.h
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Coding)

- (void)lfg_encode:(NSCoder *)aCoder;
- (void)lfg_decode:(NSCoder *)aDecoder;
- (id)lfg_copyWithZone:(NSZone *)zone;


#define NSObjectCoding \
-(void)encodeWithCoder:(NSCoder *)aCoder\
{\
[self lfg_encode:aCoder];\
}\
-(instancetype)initWithCoder:(NSCoder *)aDecoder\
{\
if (self = [super init]) {\
[self lfg_decode:aDecoder];\
}return self; \
}

#define NSObjectCopying \
- (instancetype)copyWithZone:(NSZone *)zone {\
    return [self lfg_copyWithZone:zone];\
}\

@end

NS_ASSUME_NONNULL_END
