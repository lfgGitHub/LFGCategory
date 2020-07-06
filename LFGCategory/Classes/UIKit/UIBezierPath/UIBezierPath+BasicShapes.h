//
//  UIBezierPath+BasicShapes.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBezierPath (BasicShapes)

///心形
+ (UIBezierPath *)heartShape:(CGRect)originalFrame;
///头像
+ (UIBezierPath *)userShape:(CGRect)originalFrame;
///马天尼
+ (UIBezierPath *)martiniShape:(CGRect)originalFrame;
///烧杯
+ (UIBezierPath *)beakerShape:(CGRect)originalFrame;
///五角星
+ (UIBezierPath *)starShape:(CGRect)originalFrame;
///星星
+ (UIBezierPath *)stars:(NSUInteger)numberOfStars shapeInFrame:(CGRect)originalFrame;

@end

NS_ASSUME_NONNULL_END
