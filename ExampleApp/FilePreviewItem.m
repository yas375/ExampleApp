//
//  FilePreviewItem.m
//  ExampleApp
//
//  Created by Victor Ilyukevich on 11/13/13.
//  Copyright (c) 2013 Victor Ilyukevich. All rights reserved.
//

#import "FilePreviewItem.h"

@implementation FilePreviewItem

#pragma mark - QLPreviewItem

- (NSURL *)previewItemURL
{
  NSURL *url = [[NSBundle mainBundle] URLForResource:@"earth" withExtension:@"jpg"];
  return url;
}

- (NSString *)previewItemTitle
{
  return @"earth";
}

@end
