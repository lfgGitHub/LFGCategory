//
//  UIButton+CountDown.m
//  CF_GTS2
//
//  Created by Mr.Li on 2020/1/8.
//  Copyright © 2020 gw. All rights reserved.
//

#import "UIButton+CountDown.h"

@implementation UIButton (CountDown)



/// 设置倒计时
/// @param timeout 超时时间
/// @param waitTittle 等待标题
/// @param waitTitleColor 等待标题颜色
-(void)setCountdown:(NSInteger )timeout waitTittle:(NSString *)waitTittle waitTitleColor:(UIColor *)waitTitleColor {
    
    NSString *originTitle = [self titleForState:UIControlStateNormal];
    UIColor *originTitleColor = [self titleColorForState:UIControlStateNormal];
    
    __block NSInteger timeOut = timeout; //倒计时时间
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
    dispatch_source_set_event_handler(_timer, ^{
        if(timeOut<=0){ //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                [self setTitle:originTitle forState:UIControlStateNormal];
                [self setTitleColor:originTitleColor forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
            });
        }else{
            //            int minutes = timeout / 60;
            int seconds = timeOut % 60;
            NSString *strTime = [NSString stringWithFormat:@"%.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                //NSLog(@"____%@",strTime);
                [self setTitle:[NSString stringWithFormat:@"%@%@",strTime,waitTittle] forState:UIControlStateNormal];
                [self setTitleColor:waitTitleColor forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;
                
            });
            timeOut--;
            
        }
    });
    dispatch_resume(_timer);
    
}

@end
