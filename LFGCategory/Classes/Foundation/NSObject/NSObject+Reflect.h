//
//  NSObject+Reflect.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Reflect)

/**类名*/
- (NSString *)className;
/**类名*/
+ (NSString *)className;

/**父类名称*/
- (NSString *)superClassName;
/**父类名称*/
+ (NSString *)superClassName;

/**实例属性字典*/
-(NSDictionary *)propertyDictionary;

/**属性名称列表*/
- (NSArray*)propertyKeys;
/**属性名称列表*/
+ (NSArray *)propertyKeys;

/**属性详细信息列表*/
- (NSArray *)propertiesInfo;
/**属性详细信息列表*/
+ (NSArray *)propertiesInfo;

/**格式化后的属性列表*/
+ (NSArray *)propertiesWithCodeFormat;

/**方法列表*/
-(NSArray*)methodList;
/**方法列表*/
+(NSArray*)methodList;
-(NSArray*)methodListInfo;

/**创建并返回一个指向所有已注册类的指针列表*/
+ (NSArray *)registedClassList;

/**实例变量*/
+ (NSArray *)instanceVariable;

/**协议列表*/
- (NSDictionary *)protocolList;
/**协议列表*/
+ (NSDictionary *)protocolList;

/**是否包含某个属性*/
- (BOOL)hasPropertyForKey:(NSString*)key;
/**是否包含某个变量*/
- (BOOL)hasIvarForKey:(NSString*)key;

+ (BOOL)isSystemClass;
- (BOOL)isSystemClass;

@end

NS_ASSUME_NONNULL_END
