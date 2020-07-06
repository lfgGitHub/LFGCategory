//
//  NSObject+Swizzle.m
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSObject+Swizzle.h"
#import <objc/runtime.h>

@implementation NSObject (Swizzle)

+ (BOOL)swizzleClassMethod:(SEL)originalSel with:(SEL)newSel{
    Class class = object_getClass(self) ;
    Method originalMethod = class_getInstanceMethod(class, originalSel);
    Method newMethod = class_getInstanceMethod(class, newSel);
    if (!originalMethod || !newMethod) return NO;
    method_exchangeImplementations(originalMethod, newMethod);
    return YES;
}

+ (BOOL)swizzleInstanceMethod:(SEL)originalSel with:(SEL)newSel{
    Method originalMethod = class_getInstanceMethod(self, originalSel);
    Method newMethod = class_getInstanceMethod(self, newSel);
    if (!originalMethod || !newMethod) return NO;
    
    class_addMethod(self,
                    originalSel,
                    class_getMethodImplementation(self, originalSel),
                    method_getTypeEncoding(originalMethod));
    class_addMethod(self,
                    newSel,
                    class_getMethodImplementation(self, newSel),
                    method_getTypeEncoding(newMethod));
    
    method_exchangeImplementations(class_getInstanceMethod(self, originalSel),
                                   class_getInstanceMethod(self, newSel));
    return YES;
}

+ (BOOL)swizzleClassMethod:(SEL)originalSelector withBlock:(id)block {
    Class class = object_getClass(self) ;
    Method originalMethod = class_getInstanceMethod(class, originalSelector) ;
    if(!originalMethod) return NO ;
    
    IMP implementation = imp_implementationWithBlock(block) ;
    SEL swizzledSelector = [self tempSel:method_getNumberOfArguments(originalMethod)] ;
    class_addMethod(class, swizzledSelector, implementation, method_getTypeEncoding(originalMethod)) ;
    Method  newMethod = class_getInstanceMethod(class, swizzledSelector) ;
    method_exchangeImplementations(originalMethod, newMethod) ;
    return YES ;
}

+ (SEL)tempSel:(NSInteger)count{
    NSTimeInterval timeInterval = [[NSDate alloc] timeIntervalSince1970];
    NSString *timeString = [NSString stringWithFormat:@"%.0f",timeInterval];
    NSMutableString *str = [NSMutableString stringWithFormat:@"_tmp_swizzle_%@",timeString] ;
    for (NSInteger i = 0 ; i < count; i++) {
        [str appendString:@":"] ;
    }
    return  NSSelectorFromString([NSString stringWithFormat:@"_tmp_swizzle_%@",str]) ;
}

@end
