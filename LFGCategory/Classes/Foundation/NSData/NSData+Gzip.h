//
//  NSData+Gzip.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <zlib.h>
#import <dlfcn.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Gzip)

/**
 *  GZIP压缩
 *
 *  @param level 压缩级别
 *
 *  @return 压缩后的数据
 */
- (NSData *)gzippedDataWithCompressionLevel:(float)level;

/**
 *  GZIP压缩 压缩级别 默认-1
 *
 *  @return 压缩后的数据
 */
- (NSData *)gzippedData;

/**
 *  GZIP解压
 *
 *  @return 解压后数据
 */
- (NSData *)gunzippedData;


/**
 *  是否为GZIP数据
 *
 *  @return 是否为GZIp数据
 */
- (BOOL)isGzippedData;

@end

NS_ASSUME_NONNULL_END
