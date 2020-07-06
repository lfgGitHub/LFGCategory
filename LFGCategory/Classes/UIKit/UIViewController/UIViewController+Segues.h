//
//  UIViewController+Segues.h
//  LFGCategory
//
//  Created by handsome on 2020/6/10.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^UIViewControllerSeguesPrepareCallback)(UIViewController* target);

@interface UIViewController (Segues)

- (void)performSegueWithIdentifier:(NSString *)identifier prepareCallback:(UIViewControllerSeguesPrepareCallback)callback;

@end

NS_ASSUME_NONNULL_END
