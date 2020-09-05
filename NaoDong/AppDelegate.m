//
//  AppDelegate.m
//  NaoDong
//
//  Created by WangPengfei on 2020/9/2.
//  Copyright © 2020 WangPengfei. All rights reserved.
//

#import "AppDelegate.h"
#import "NDMainEntryViewViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    NDMainEntryViewViewController *VC = [[NDMainEntryViewViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:VC];
//    nav.navigationBarHidden = YES;
    [self.window setRootViewController:nav];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
