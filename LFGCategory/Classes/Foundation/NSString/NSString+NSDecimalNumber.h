//
//  NSString+NSDecimalNumber.h
//  LFGCatgory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, LFGComparisonResult) {
    LFGComparisonResult_Error = INT_MIN,
    LFGComparisonResult_Asc = -1L,
    LFGComparisonResult_Same,
    LFGComparisonResult_Desc
};

@interface NSString (NSDecimalNumber)

/**
 加法
 */
@property (nonatomic, copy, readonly) NSString *(^add)(id num);
/**
 减法（
 */
@property (nonatomic, copy, readonly) NSString *(^sub)(id num);
/**
 乘法
 */
@property (nonatomic, copy, readonly) NSString *(^mul)(id num);
/**
 除法
 */
@property (nonatomic, copy, readonly) NSString *(^div)(id num);
/**
次方
*/
@property (nonatomic, copy, readonly) NSString *(^power)(NSUInteger num);
/**
以10为底的乘方运算，调用者乘以10的num次方
*/
@property (nonatomic, copy, readonly) NSString *(^powerOf10)(short num);

/**
 四舍五入（小数位数）
 */
@property (nonatomic, copy, readonly) NSString *(^roundPlain)(short scale);
/**
 四舍五入（小数位数）末尾有0补位
 */
@property (nonatomic, copy, readonly) NSString *(^roundPlainWithZeroFill)(short scale);
/**
 只舍不入（小数位数）
 */
@property (nonatomic, copy, readonly) NSString *(^roundDown)(short scale);
/**
 只舍不入（小数位数）末尾有0补位
 */
@property (nonatomic, copy, readonly) NSString *(^roundDownWithZeroFill)(short scale);
/**
 只入不舍（小数位数）
 */
@property (nonatomic, copy, readonly) NSString *(^roundUp)(short scale);
/**
 只入不舍（小数位数）末尾有0补位
 */
@property (nonatomic, copy, readonly) NSString *(^roundUpWithZeroFill)(short scale);

/**
 四舍五入（小数位数）千分位格式化输出（逗号分割），小数末尾有0补位
 */
@property (nonatomic, copy, readonly) NSString *(^roundPlainWithZeroFillFormat)(short scale);
/**
 只舍不入（小数位数）千分位格式化输出（逗号分割），小数末尾有0补位
 */
@property (nonatomic, copy, readonly) NSString *(^roundDownWithZeroFillFormat)(short scale);
/**
 只入不舍（小数位数）千分位格式化输出（逗号分割），小数末尾有0补位
 */
@property (nonatomic, copy, readonly) NSString *(^roundUpWithZeroFillFormat)(short scale);

/**
比较大小
*/
@property (nonatomic, assign, readonly) LFGComparisonResult (^compare)(id num);

@end


@interface NSDecimalNumber (Round)

- (NSString *)roundingWithMode:(NSRoundingMode)mode scale:(short)scale;
- (NSString *)roundingZeroFillWithMode:(NSRoundingMode)mode scale:(short)scale;
- (NSString *)roundingZeroFillFormatWithMode:(NSRoundingMode)mode scale:(short)scale;

@end

NS_ASSUME_NONNULL_END
