//
//  UIImage+QRCode.h
//  LFGCategory
//
//  Created by handsome on 2020/7/6.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (QRCode)

///生成二维码
+ (UIImage *)imageOfQRCodeWithURL:(NSString *)data size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
