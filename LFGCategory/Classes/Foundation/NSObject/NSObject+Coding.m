//
//  NSObject+Coding.m
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSObject+Coding.h"
#import <objc/runtime.h>

@implementation NSObject (Coding)

- (void)lfg_decode:(NSCoder *)aDecoder
{
    Class cls = [self class];
    while (cls != [NSObject class]) {
        /*判断是自身类还是父类*/
        BOOL isSelfClass = (cls == [self class]);
        unsigned int iVarCount = 0;
        unsigned int propVarCount = 0;
        unsigned int sharedVarCount = 0;
        Ivar *ivarList = isSelfClass ? class_copyIvarList([cls class], &iVarCount) : NULL;/*变量列表，含属性以及私有变量*/
        objc_property_t *propList = isSelfClass ? NULL : class_copyPropertyList(cls, &propVarCount);/*属性列表*/
        sharedVarCount = isSelfClass ? iVarCount : propVarCount;
        
        for (int i = 0; i < sharedVarCount; i++) {
            const char *varName = isSelfClass ? ivar_getName(*(ivarList + i)) : property_getName(*(propList + i));
            NSString *key = [NSString stringWithUTF8String:varName];
            id varValue = [aDecoder decodeObjectForKey:key];
            NSArray *filters = @[@"superclass", @"description", @"debugDescription", @"hash"];
            if (varValue && [filters containsObject:key] == NO) {
                [self setValue:varValue forKey:key];
            }
        }
        free(ivarList);
        free(propList);
        cls = class_getSuperclass(cls);
    }
}

- (void)lfg_encode:(NSCoder *)aCoder
{
    Class cls = [self class];
    while (cls != [NSObject class]) {
        /*判断是自身类还是父类*/
        BOOL isSelfClass = (cls == [self class]);
        unsigned int iVarCount = 0;
        unsigned int propVarCount = 0;
        unsigned int sharedVarCount = 0;
        Ivar *ivarList = isSelfClass ? class_copyIvarList([cls class], &iVarCount) : NULL;/*变量列表，含属性以及私有变量*/
        objc_property_t *propList = isSelfClass ? NULL : class_copyPropertyList(cls, &propVarCount);/*属性列表*/
        sharedVarCount = isSelfClass ? iVarCount : propVarCount;
        
        for (int i = 0; i < sharedVarCount; i++) {
            const char *varName = isSelfClass ? ivar_getName(*(ivarList + i)) : property_getName(*(propList + i));
            NSString *key = [NSString stringWithUTF8String:varName];
            /*valueForKey只能获取本类所有变量以及所有层级父类的属性，不包含任何父类的私有变量(会崩溃)*/
            id varValue = [self valueForKey:key];
            NSArray *filters = @[@"superclass", @"description", @"debugDescription", @"hash"];
            if (varValue && [filters containsObject:key] == NO) {
                [aCoder encodeObject:varValue forKey:key];
            }
        }
        free(ivarList);
        free(propList);
        cls = class_getSuperclass(cls);
    }
}


- (id)lfg_copyWithZone:(NSZone *)zone {
    
    id model = [[[self class] allocWithZone:zone] init];
    
    Class cls = [self class];
    while (cls != [NSObject class]) {
        /*判断是自身类还是父类*/
        BOOL isSelfClass = (cls == [self class]);
        unsigned int iVarCount = 0;
        unsigned int propVarCount = 0;
        unsigned int sharedVarCount = 0;
        Ivar *ivarList = isSelfClass ? class_copyIvarList([cls class], &iVarCount) : NULL;/*变量列表，含属性以及私有变量*/
        objc_property_t *propList = isSelfClass ? NULL : class_copyPropertyList(cls, &propVarCount);/*属性列表*/
        sharedVarCount = isSelfClass ? iVarCount : propVarCount;
        
        for (int i = 0; i < sharedVarCount; i++) {
            const char *varName = isSelfClass ? ivar_getName(*(ivarList + i)) : property_getName(*(propList + i));
            NSString *key = [NSString stringWithUTF8String:varName];
            /*valueForKey只能获取本类所有变量以及所有层级父类的属性，不包含任何父类的私有变量(会崩溃)*/
            id varValue = [self valueForKey:key];
            NSArray *filters = @[@"superclass", @"description", @"debugDescription", @"hash"];
            if (varValue && [filters containsObject:key] == NO) {
                [model setValue:varValue forKey:key];
            }
        }
        free(ivarList);
        free(propList);
        cls = class_getSuperclass(cls);
    }
    return  model;
}

#pragma mark =========Private Methods==========

/* 获取对象的所有属性 */
-(NSArray *)getAllProperties
{
    u_int count;
    // 传递count的地址过去 &count
    objc_property_t *properties  =class_copyPropertyList([self class], &count);
    //arrayWithCapacity的效率稍微高那么一丢丢
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    
    for (int i = 0; i < count ; i++)
    {
        //此刻得到的propertyName为c语言的字符串
        const char* propertyName =property_getName(properties[i]);
        //此步骤把c语言的字符串转换为OC的NSString
        [propertiesArray addObject: [NSString stringWithUTF8String: propertyName]];
    }
    //class_copyPropertyList底层为C语言，所以我们一定要记得释放properties
    // You must free the array with free().
    free(properties);
    
    return propertiesArray;
}

/* 获取对象的所有方法 */
-(NSArray *)getAllMethods
{
    unsigned int methodCount =0;
    Method* methodList = class_copyMethodList([self class],&methodCount);
    NSMutableArray *methodsArray = [NSMutableArray arrayWithCapacity:methodCount];
    
    for(int i=0;i<methodCount;i++)
    {
        Method temp = methodList[i];
        const char* name_s =sel_getName(method_getName(temp));
        int arguments = method_getNumberOfArguments(temp);
        const char* encoding =method_getTypeEncoding(temp);
        NSLog(@"方法名：%@,参数个数：%d,编码方式：%@",[NSString stringWithUTF8String:name_s],
              arguments,
              [NSString stringWithUTF8String:encoding]);
        [methodsArray addObject:[NSString stringWithUTF8String:name_s]];
    }
    free(methodList);
    return methodsArray;
}


/* 获取对象的所有属性和属性内容 */
-(NSDictionary *)getAllPropertiesAndVaules
{
    NSMutableDictionary *propsDic = [NSMutableDictionary dictionary];
    unsigned int outCount;
    objc_property_t *properties =class_copyPropertyList([self class], &outCount);
    for ( int i = 0; i<outCount; i++)
    {
        objc_property_t property = properties[i];
        const char* char_f =property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (propertyValue) {
            [propsDic setObject:propertyValue forKey:propertyName];
        }
    }
    free(properties);
    return propsDic;
}

@end
