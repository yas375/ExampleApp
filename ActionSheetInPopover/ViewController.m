//
//  ViewController.m
//  ActionSheetInPopover
//
//  Created by Victor Ilyukevich on 10/7/15.
//  Copyright © 2015 Victor Ilyukevich. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (IBAction)presentPopover:(UIButton *)sender {

  DetailsViewController *details = [DetailsViewController new];
  UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:details];

  navigation.modalPresentationStyle = UIModalPresentationPopover;
  navigation.popoverPresentationController.sourceRect = sender.bounds;
  navigation.popoverPresentationController.sourceView = sender;
  [self presentViewController:navigation animated:YES completion:nil];
}


@end
