//
//  CZDetailViewController.h
//  ExampleApp
//
//  Created by Victor Ilyukevich on 11/12/13.
//  Copyright (c) 2013 Victor Ilyukevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CZDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
