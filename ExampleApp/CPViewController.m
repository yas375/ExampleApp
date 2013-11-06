//
//  CPViewController.m
//  ExampleApp
//
//  Created by Victor Ilyukevich on 11/6/13.
//  Copyright (c) 2013 Victor Ilyukevich. All rights reserved.
//

#import <CSNotificationView/CSNotificationView.h>
#import "CPViewController.h"

@interface CPViewController ()

@end

@implementation CPViewController


- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  [CSNotificationView showInViewController:self
                                     style:CSNotificationViewStyleError
                                   message:@"A critical error happened."];
}

@end
