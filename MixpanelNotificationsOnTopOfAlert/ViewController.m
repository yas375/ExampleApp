//
//  ViewController.m
//  MixpanelNotificationsOnTopOfAlert
//
//  Created by Victor Ilyukevich on 8/28/15.
//  Copyright (c) 2015 Victor Ilyukevich. All rights reserved.
//

#import "ViewController.h"
#import "MixpanelNotificationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)showAlertController:(id)sender
{
  UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"This is UIAlertController" preferredStyle:UIAlertControllerStyleAlert];

  [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
  [alert addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil]];

  [self presentViewController:alert animated:YES completion:^{
    [self showMixpanelWithADelay];
  }];
}

- (IBAction)showAlertView:(id)sender
{
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"This is UIAlertView" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];

  [alert show];

  [self showMixpanelWithADelay];
}

- (void)showMixpanelWithADelay
{
  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    MixpanelNotificationViewController *controller = [MixpanelNotificationViewController new];
    [[MixpanelNotificationViewController topPresentedViewController] presentViewController:controller animated:YES completion:nil];
  });
}

@end
