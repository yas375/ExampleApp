//
//  ViewController.m
//  LinkAndNewLine
//
//  Created by Victor Ilyukevich on 1/28/16.
//  Copyright © 2016 Victor. All rights reserved.
//

#import <DTCoreText/DTCoreText.h>
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DTAttributedLabel *dtlabel;
@property (weak, nonatomic) IBOutlet DTAttributedLabel *dtlabel2;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController

- (NSAttributedString *)makeText
{
  NSString *htmlString = @"Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. <a href=\"example.com\">FedEx</a>.<br/>";

  NSData *data = [htmlString dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary *options = @{ DTUseiOS6Attributes : @YES };

  DTHTMLAttributedStringBuilder *builder = [[DTHTMLAttributedStringBuilder alloc] initWithHTML:data options:options documentAttributes:nil];

  NSAttributedString *result = builder.generatedAttributedString;

  if ([result.string hasSuffix:@"\n"]) {
    result = [result attributedSubstringFromRange:NSMakeRange(0, result.string.length - 1)];
  }

  return result;
}

#pragma mark - UIViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  NSMutableAttributedString *result = [self makeText].mutableCopy;
  NSMutableParagraphStyle *paragrahStyle = [[NSMutableParagraphStyle alloc] init];
  [paragrahStyle setLineBreakMode:NSLineBreakByTruncatingTail];
  [result addAttribute:NSParagraphStyleAttributeName value:paragrahStyle range:NSMakeRange(0, result.length)];
  self.label.attributedText = result;
//  self.label.lineBreakMode = NSLineBreakByTruncatingTail;


  // With same constraints as UILabel
  self.dtlabel.lineBreakMode = NSLineBreakByTruncatingTail;
  self.dtlabel.numberOfLines = 1;
  self.dtlabel.attributedString = [self makeText];


  // with different constraints
  self.dtlabel2.lineBreakMode = NSLineBreakByTruncatingTail;
  self.dtlabel2.numberOfLines = 1;
  self.dtlabel2.attributedString = [self makeText];

}

@end
