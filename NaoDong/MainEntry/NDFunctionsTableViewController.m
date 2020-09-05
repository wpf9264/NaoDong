//
//  NDFunctionsTableViewController.m
//  NaoDong
//
//  Created by WangPengfei on 2020/9/4.
//  Copyright © 2020 WangPengfei. All rights reserved.
//

#import "NDFunctionsTableViewController.h"
#import "NDFunctionsFactory.h"

static NSString *kFunctionItemCell = @"functionItemCell";

@interface NDFunctionsTableViewController () <UITableViewDelegate>

@end

@implementation NDFunctionsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:kFunctionItemCell];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[NDFunctionsFactory sharedInstance] functionCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFunctionItemCell forIndexPath:indexPath];
    cell.textLabel.text = @"title";
    return cell;
}

@end
