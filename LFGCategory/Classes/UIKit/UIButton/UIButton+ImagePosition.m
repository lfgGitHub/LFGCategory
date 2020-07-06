//
//  UIButton+ImagePosition.m
//  GW_GTS2_iOS
//
//  Created by mr.li on 2020/2/26.
//  Copyright © 2020 gw. All rights reserved.
//

#import "UIButton+ImagePosition.h"

@implementation UIButton (ImagePosition)


- (void)setImagePosition:(ImagePosition)postion spacing:(CGFloat)spacing {

    CGFloat imageWith = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    CGFloat labelWidth = [self.titleLabel.text sizeWithFont:self.titleLabel.font].width;
    CGFloat labelHeight = [self.titleLabel.text sizeWithFont:self.titleLabel.font].height;
#pragma clang diagnostic pop
    
    CGFloat imageOffsetX = (imageWith + labelWidth) / 2 - imageWith / 2;//image中心移动的x距离
    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;//image中心移动的y距离
    CGFloat labelOffsetX = (imageWith + labelWidth / 2) - (imageWith + labelWidth) / 2;//label中心移动的x距离
    CGFloat labelOffsetY = labelHeight / 2 + spacing / 2;//label中心移动的y距离
    
    switch (postion) {
        case ImagePositionLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
            
        case ImagePositionRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing/2, 0, -(labelWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageHeight + spacing/2), 0, imageHeight + spacing/2);
            break;
            
        case ImagePositionTop:
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
            break;
            
        case ImagePositionBottom:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
            break;
            
        default:
            break;
    }
    
}

/**
 此方法只适用于： 按钮大小 = 图片大小 + 文字大小 + spacing
 
 @param postion 位置
 @param spacing 图片和文字的间距
 */

- (void)setImagePositionEqual:(ImagePosition)postion spacing:(CGFloat)spacing {
    
    CGFloat imageWidth = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    CGFloat labelWidth = self.titleLabel.intrinsicContentSize.width;
    CGFloat labelHeight = self.titleLabel.intrinsicContentSize.height;
    
    switch (postion) {
        case ImagePositionLeft:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, spacing, 0, -spacing);
        }
            break;
            
        case ImagePositionRight:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth, 0, imageWidth);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing, 0, -labelWidth - spacing);
            
        }
            break;
            
        case ImagePositionTop:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, labelHeight, -labelWidth);
            self.titleEdgeInsets = UIEdgeInsetsMake(imageHeight + spacing, -imageWidth,0, 0);
            
        }
            break;
            
        case ImagePositionBottom:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth, (imageHeight + spacing), 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(labelHeight + spacing, 0, 0, -labelWidth);
        }
            break;
            
        default:
            break;
    }
    
}

@end
