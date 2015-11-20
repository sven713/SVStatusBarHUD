//
//  SVOneTableViewController.m
//  11.20tabBar1
//
//  Created by sven on 15/11/20.
//  Copyright © 2015年 sven. All rights reserved.
//

#import "SVOneTableViewController.h"

@interface SVOneTableViewController ()

@end
@implementation SVOneTableViewController
static NSString *const ID = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    cell.textLabel.text = @"sss";
    return cell;
}


@end
