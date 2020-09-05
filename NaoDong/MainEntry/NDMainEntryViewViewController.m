//
//  NDMainEntryViewViewController.m
//  NaoDong
//
//  Created by WangPengfei on 2020/9/4.
//  Copyright © 2020 WangPengfei. All rights reserved.
//

#import "NDMainEntryViewViewController.h"
#import "NDFunctionsTableViewController.h"


@interface NDMainEntryViewViewController ()

@end

@implementation NDMainEntryViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    title.text = @"脑洞大开";
    [title setTextAlignment:NSTextAlignmentCenter];
    title.textColor = [UIColor redColor];
    UIButton *btm = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    [btm addTarget:self action:@selector(showFunctionsList) forControlEvents:UIControlEventTouchUpInside];
    btm.backgroundColor  = [UIColor greenColor];
    [btm setTitle:@"点击进入" forState:UIControlStateNormal];
    [btm setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:title];
    [self.view addSubview:btm];
}

- (void)showFunctionsList
{
    NDFunctionsTableViewController *funcsVC = [[NDFunctionsTableViewController alloc] init];
    [self.navigationController pushViewController:funcsVC animated:YES];
}

@end
