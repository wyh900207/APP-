//
//  AppDelegate.m
//  TheSecondAPP
//
//  Created by 王源鸿 on 16/12/8.
//  Copyright © 2016年 HomerIce. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {

    UINavigationController *rootNAV = (UINavigationController *)self.window.rootViewController;

    ViewController *mainVC = [rootNAV.childViewControllers firstObject];
    mainVC.urlString = url.absoluteString;

    [rootNAV popToRootViewControllerAnimated:NO];

    if ([url.absoluteString containsString:@"page1"]) {
        [mainVC performSegueWithIdentifier:@"hometopageone" sender:nil];
    } else if ([url.absoluteString containsString:@"page2"]) {
        [mainVC performSegueWithIdentifier:@"hometopagetwo" sender:nil];
    }

    return YES;
}

@end
