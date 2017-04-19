//
//  ViewController.m
//  DTCoreText-Crash
//
//  Created by Victor Ilyukevich on 4/18/17.
//  Copyright © 2017 Care Zone Inc. All rights reserved.
//

#import "ViewController.h"
#import <DTCoreText/DTCoreText.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  NSString *htmlString = @"<img src=\"http://cdn-img.carezone.com/mail/first_delivery/banner_v1.jpg\" />Hello";

  NSData *data = [htmlString dataUsingEncoding:NSUTF8StringEncoding];

  NSDictionary *options = @{ DTUseiOS6Attributes : @YES };
  DTHTMLAttributedStringBuilder *builder = [[DTHTMLAttributedStringBuilder alloc] initWithHTML:data options:options documentAttributes:nil];

  NSAttributedString *result = builder.generatedAttributedString;
  NSMutableAttributedString *mutableCopy = [result mutableCopy];

  [mutableCopy beginEditing];
  [mutableCopy enumerateAttribute:NSAttachmentAttributeName inRange:NSMakeRange(0, mutableCopy.length) options:0 usingBlock:^(id _Nullable value, NSRange range, BOOL *_Nonnull stop) {
    [mutableCopy removeAttribute:NSAttachmentAttributeName range:range]; // crash

    // This is how we can avoid crashing:
    // if ([value isKindOfClass:[DTTextAttachment class]]) {
    //   [mutableCopy replaceCharactersInRange:range withString:@""];
    // }
  }];
  [mutableCopy endEditing];

  self.label.attributedText = mutableCopy;
}

@end
