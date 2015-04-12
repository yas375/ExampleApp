//
//  AppDelegate.m
//  FoobarMobile
//
//  Created by Victor Ilyukevich on 4/12/15.
//  Copyright (c) 2015 home. All rights reserved.
//

#import "AppDelegate.h"
#import <ReactiveCocoa/RACSignal.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [RACSignal never]; // it compiles? ;)

  return YES;
}


@end
