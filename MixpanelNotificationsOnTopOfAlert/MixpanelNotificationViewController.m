//
//  MixpanelNotificationViewController.m
//  MixpanelNotificationsOnTopOfAlert
//
//  Created by Victor Ilyukevich on 8/28/15.
//  Copyright (c) 2015 Victor Ilyukevich. All rights reserved.
//

#import "MixpanelNotificationViewController.h"

@interface MixpanelNotificationViewController ()

@end

@implementation MixpanelNotificationViewController

+ (UIViewController *)topPresentedViewController
{
  UIViewController *controller = [UIApplication sharedApplication].keyWindow.rootViewController;
  while (controller.presentedViewController) {
    controller = controller.presentedViewController;
  }
  return controller;
}

- (IBAction)didTap:(id)sender
{
  [self dismissViewControllerAnimated:YES completion:nil];
}

@end
