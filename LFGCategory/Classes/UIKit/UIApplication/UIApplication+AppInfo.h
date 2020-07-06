//
//  UIApplication+AppInfo.h
//  LFGCategory
//
//  Created by handsome on 2020/7/2.
//  Copyright © 2020 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (AppInfo)

@property (nonatomic,readonly) NSString *appName ;
@property (nonatomic,readonly) NSString *appVersion ;
@property (nonatomic,readonly) NSString *appBuild ;
@property (nonatomic,readonly) NSString *appBundleID ;

/// applicationSize
- (NSString *)applicationSizeAsString;
- (int)applicationSizeSizeInBytes ;

/// documentsFolderSize
- (NSString *)documentsFolderSizeAsString;
- (int)documentsFolderSizeInBytes;

/// cacheFolderSize
- (NSString *)cacheFolderSizeAsString;
- (int)cacheFolderSizeInBytes;

/// libraryFolderSize
- (NSString *)libraryFolderSizeAsString;
- (int)libraryFolderSizeInBytes;

+ (BOOL)isAppExtension;
+ (UIApplication *)sharedExtensionApplication;

@end

NS_ASSUME_NONNULL_END
