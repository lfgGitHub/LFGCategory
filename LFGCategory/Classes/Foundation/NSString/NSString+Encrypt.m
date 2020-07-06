//
//  NSString+Encrypt.m
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import "NSString+Encrypt.h"
#import "NSData+Encrypt.h"
#import <Security/Security.h>

@implementation NSString (Encrypt)

static NSString *base64_encode_data(NSData *data){
    data = [data base64EncodedDataWithOptions:0];
    NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return ret;
}


/**
 RSA 加密公钥
 
 @param  pubKey 公钥
 @return base64 encoded string
 */
- (NSString *)encryptWithRSAUsingPublicKey:(NSString *)pubKey;
{
    NSData *data = [[self dataUsingEncoding:NSUTF8StringEncoding] encryptWithRSAUsingPublicKey:pubKey];
    NSString *ret = base64_encode_data(data);
    return ret;
}

/**
 RSA 加密私钥
 
 @param  privKey 私钥
 @return base64 encoded string
 */
- (NSString *)encryptWithRSAUsingPrivateKey:(NSString *)privKey;
{
    NSData *data = [[self dataUsingEncoding:NSUTF8StringEncoding]encryptWithRSAUsingPrivateKey:privKey];
    NSString *ret = base64_encode_data(data);
    return ret;
}

/**
 RSA 解密公钥
 
 @param  pubKey 公钥
 @return base64 encoded string
 */
- (NSString *)decryptWithRSAUsingPublicKey:(NSString *)pubKey;
{
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
    data = [data decryptWithRSAUsingPublicKey:pubKey];
    NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return ret;
}

/**
 RSA 解密私钥
 
 @param  privKey 私钥
 @return base64 encoded string
 */
- (NSString *)decryptWithRSAUsingPrivateKey:(NSString *)privKey;
{
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
    data = [data decryptWithRSAUsingPrivateKey:privKey];
    NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return ret;
}

/**********************AES128加解密*************************************/

//加密
+ (NSString *)AES128CBC_PKCS5Padding_EncryptStrig:(NSString *)string keyAndIv:(NSString *)keyAndIv
{
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *encryptData = [data AES128EncryptWithKey:keyAndIv iv:keyAndIv];
    NSString *encryptring =  [encryptData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return encryptring;
    
}
//加密
+ (NSString *)AES128CBC_PKCS5Padding_EncryptStrig:(NSString *)string key:(NSString*)key iv:(NSString *)iv
{
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *encryptData = [data AES128EncryptWithKey:key iv:iv];
    NSString *encryptring =  [encryptData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return encryptring;
    
}
//解密
+ (NSString *)AES128CBC_PKCS5Padding_DecryptString:(NSString *)string keyAndIv:(NSString *)keyAndIv
{
    
    NSData *decryptBase64data = [[NSData alloc]initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSData *decryptData = [decryptBase64data AES128DecryptWithKey:keyAndIv iv:keyAndIv];
    NSString *decryptString = [[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return decryptString;
    
}
//解密
+ (NSString *)AES128CBC_PKCS5Padding_DecryptString:(NSString *)string key:(NSString *)key iv:(NSString *)iv
{
    
    NSData *decryptBase64data = [[NSData alloc]initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSData *decryptData = [decryptBase64data AES128DecryptWithKey:key iv:iv];
    NSString *decryptString = [[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return decryptString;
    
}

@end
