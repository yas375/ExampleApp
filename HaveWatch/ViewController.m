//
//  ViewController.m
//  HaveWatch
//
//  Created by Victor Ilyukevich on 4/29/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "ViewController.h"
@import WatchKit;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  WKInterfaceDevice *device = [WKInterfaceDevice currentDevice];
  if (device) {
    self.resultsLabel.text = [NSString stringWithFormat:@"Yes, you have!\n\nScreen size: %@\nScale: %f", NSStringFromCGSize(device.screenBounds.size), device.screenScale];
  }
  else {
    self.resultsLabel.text = @"You don't have :(";
  }
}

@end
