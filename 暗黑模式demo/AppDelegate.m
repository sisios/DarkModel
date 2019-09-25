//
//  AppDelegate.m
//  暗黑模式demo
//
//  Created by 未思语 on 2019/9/25.
//  Copyright © 2019 未思语. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ViewController *vc = [[ViewController alloc]init];
    UINavigationController *navc = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = navc;
    [self.window makeKeyAndVisible];
    return YES;
}




@end
