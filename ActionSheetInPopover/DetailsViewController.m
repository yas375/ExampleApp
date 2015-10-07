//
//  DetailsViewController.m
//  ActionSheetInPopover
//
//  Created by Victor Ilyukevich on 10/7/15.
//  Copyright © 2015 Victor Ilyukevich. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@property(nonatomic,strong) UIAlertController *actionSheet;
@end

@implementation DetailsViewController

- (IBAction)presentActionSheet:(id)sender {
  [self presentViewController:self.actionSheet animated:YES completion:nil];
  // self.actionSheet = nil; // uncomment and it works fine
}

- (UIAlertController *)actionSheet
{
  if (_actionSheet == nil) {
    _actionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    [_actionSheet addAction:[UIAlertAction actionWithTitle:@"Edit" style:UIAlertActionStyleDefault handler:nil]];
    [_actionSheet addAction:[UIAlertAction actionWithTitle:@"Open in Maps" style:UIAlertActionStyleDefault handler:nil]];
    [_actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
  }
  return _actionSheet;
}

@end
