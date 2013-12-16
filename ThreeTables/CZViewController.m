//
//  CZViewController.m
//  ThreeTables
//
//  Created by Victor Ilyukevich on 12/17/13.
//  Copyright (c) 2013 Victor Ilyukevich. All rights reserved.
//

#import "CZViewController.h"

@interface CZViewController ()
<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *firstTable;
@property (weak, nonatomic) IBOutlet UITableView *secondTable;
@property (weak, nonatomic) IBOutlet UITableView *thirdTable;

@end

@implementation CZViewController


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *CellIdentifier = @"Cell";

  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (!cell) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
  }

  cell.textLabel.text = [NSString stringWithFormat:@"Row %d", indexPath.row];
  cell.detailTextLabel.text = [NSString stringWithFormat:@"Table: %p", tableView];

  return cell;
}

@end
