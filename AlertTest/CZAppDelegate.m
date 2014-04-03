//
//  CZAppDelegate.m
//  AlertTest
//
//  Created by Victor Ilyukevich on 4/3/14.
//  Copyright (c) 2014 Victor Ilyukevich. All rights reserved.
//

#import "CZAppDelegate.h"
#import "UIView+CZAdditions.h"

@implementation CZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}
							
- (void)applicationDidEnterBackground:(UIApplication *)application
{
  [application.windows enumerateObjectsUsingBlock:^(UIWindow *aWindow, NSUInteger idx, BOOL *stop) {
    [aWindow dismissAlertViewsAndActionSheets];
  }];
}

@end
