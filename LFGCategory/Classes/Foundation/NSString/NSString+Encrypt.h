//
//  NSString+Encrypt.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Encrypt)

/**
 RSA 加密公钥

 @param  pubKey 公钥
 @return base64 encoded string
 */
- (NSString *)encryptWithRSAUsingPublicKey:(NSString *)pubKey;

/**
 RSA 加密私钥
 
 @param  privKey 私钥
 @return base64 encoded string
 */
- (NSString *)encryptWithRSAUsingPrivateKey:(NSString *)privKey;

/**
 RSA 解密公钥
 
 @param  pubKey 公钥
 @return base64 encoded string
 */
- (NSString *)decryptWithRSAUsingPublicKey:(NSString *)pubKey;

/**
 RSA 解密私钥
 
 @param  privKey 私钥
 @return base64 encoded string
 */
- (NSString *)decryptWithRSAUsingPrivateKey:(NSString *)privKey;

/**********************AES128加解密*************************************/

/**
 *  加密
 *
 *  @param string   需要加密的String
 *  @param keyAndIv key和iv都用同一的16位 （服务器商量，必须是16位  例如"1234567812345678"）
 *                  key是公钥，iv是偏移量
 *  @return 加密后的字符串
 */
+ (NSString *)AES128CBC_PKCS5Padding_EncryptStrig:(NSString *)string keyAndIv:(NSString *)keyAndIv;

/**
 *  加密
 *
 *  @param string 需要加密的string
 *  @param key    公钥
 *  @param iv     偏移量
 *
 *  @return 加密后的字符串
 */
+ (NSString *)AES128CBC_PKCS5Padding_EncryptStrig:(NSString *)string key:(NSString*)key iv:(NSString *)iv;

/**
 *  解密
 *
 *  @param string   加密的string
 *  @param keyAndIv key和iv
 *
 *  @return  解密后的内容
 */
+ (NSString *)AES128CBC_PKCS5Padding_DecryptString:(NSString *)string keyAndIv:(NSString *)keyAndIv;

/**
 *  解密
 *
 *  @param string 加密的字符串
 *  @param key    钥匙（公钥）
 *  @param iv     偏移量
 *
 *  @return 解密后的内容
 */
+ (NSString *)AES128CBC_PKCS5Padding_DecryptString:(NSString *)string key:(NSString *)key iv:(NSString *)iv;

@end

NS_ASSUME_NONNULL_END
