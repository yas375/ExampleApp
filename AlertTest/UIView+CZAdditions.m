//
//  UIView+CZAdditions.m
//  AlertTest
//
//  Created by Victor Ilyukevich on 4/3/14.
//  Copyright (c) 2014 Victor Ilyukevich. All rights reserved.
//

#import "UIView+CZAdditions.h"

@implementation UIView (CZAdditions)

- (void)dismissAlertViewsAndActionSheets
{
  for (UIView *subview in self.subviews) {
    if ([subview isKindOfClass:[UIActionSheet class]]) {
      UIActionSheet *actionSheet = (UIActionSheet *)subview;
      [actionSheet dismissWithClickedButtonIndex:actionSheet.cancelButtonIndex animated:NO];
    }
    else if ([subview isKindOfClass:[UIAlertView class]]) {
      UIAlertView *alertView = (UIAlertView *)subview;
      [alertView dismissWithClickedButtonIndex:alertView.cancelButtonIndex animated:NO];
    }
    else {
      [subview dismissAlertViewsAndActionSheets];
    }
  }
}

@end
