//
//  CZMasterViewController.h
//  ExampleApp
//
//  Created by Victor Ilyukevich on 11/12/13.
//  Copyright (c) 2013 Victor Ilyukevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CZDetailViewController;

@interface CZMasterViewController : UITableViewController

@property (strong, nonatomic) CZDetailViewController *detailViewController;

@end
