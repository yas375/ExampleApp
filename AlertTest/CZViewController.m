//
//  CZViewController.m
//  AlertTest
//
//  Created by Victor Ilyukevich on 4/3/14.
//  Copyright (c) 2014 Victor Ilyukevich. All rights reserved.
//

#import "CZViewController.h"

@interface CZViewController ()

@end

@implementation CZViewController

- (IBAction)showAlert:(id)sender {
  [[[UIAlertView alloc] initWithTitle:@"test" message:@"aaa" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil] show];
}

@end
