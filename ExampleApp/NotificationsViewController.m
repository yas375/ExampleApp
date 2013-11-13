//
//  NotificationsViewController.m
//  ExampleApp
//
//  Created by Victor Ilyukevich on 11/12/13.
//  Copyright (c) 2013 Victor Ilyukevich. All rights reserved.
//

#import "NotificationsViewController.h"
#import "FilePreviewItem.h"
#import "CZSomeViewController.h"

@interface NotificationsViewController ()
<QLPreviewControllerDataSource,QLPreviewControllerDelegate>
@property(nonatomic,strong) FilePreviewItem *filePreviewItem;
@property(nonatomic,strong) QLPreviewController *previewController;
@end

@implementation NotificationsViewController


- (void)dealloc
{
  _previewController.delegate = nil;
  _previewController.dataSource = nil;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      self.filePreviewItem = [[FilePreviewItem alloc] init];

      _previewController = [[QLPreviewController alloc] init];
      _previewController.dataSource = self;
      _previewController.delegate = self;
      _previewController.modalPresentationStyle = UIModalPresentationFullScreen;
      _previewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;

    }
    return self;
}

- (IBAction)openItem:(id)sender
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [self.previewController refreshCurrentPreviewItem];
    [self presentViewController:self.previewController animated:YES completion:nil];
  });
}

- (IBAction)presentOtheViewController:(id)sender
{
  CZSomeViewController *a = [[CZSomeViewController alloc] initWithNibName:@"CZSomeViewController" bundle:nil];
  a.modalPresentationStyle = UIModalPresentationFullScreen;
  a.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;

  [self presentViewController:a animated:YES completion:nil];
}


#pragma mark - QLPreviewControllerDataSource

- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller
{
  return 1;
}

- (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index
{
  return self.filePreviewItem;
}

#pragma mark - QLPreviewControllerDelegate

- (void)previewControllerDidDismiss:(QLPreviewController *)controller
{
}



@end
