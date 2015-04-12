//
//  AppDelegate.m
//  Foobar
//
//  Created by Victor Ilyukevich on 4/12/15.
//  Copyright (c) 2015 home. All rights reserved.
//

#import "AppDelegate.h"
#import <ReactiveCocoa/RACSignal.h>

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  [RACSignal never]; // it compiles? ;)
}

@end
