//
//  NSFileManager+Hash.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSFileManager (Hash)

/**
    指定路径文件的MD5值

    @param filePath 文件路径
    @return 文件MD5
 */
+ (NSString *)md5HashOfFileAtPath:(NSString *)filePath;


/**
    指定路径文件的SHA1值

    @param filePath 文件路径
    @return 文件SHA1
 */
+ (NSString *)sha1HashOfFileAtPath:(NSString *)filePath;


/**
    指定路径文件的SHA512值

    @param filePath 文件路径
    @return 文件SHA512
 */
+ (NSString *)sha512HashOfFileAtPath:(NSString *)filePath;

@end

NS_ASSUME_NONNULL_END
