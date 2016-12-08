//
//  ViewController.m
//  TheFristAPP
//
//  Created by 王源鸿 on 16/12/8.
//  Copyright © 2016年 HomerIce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)jumpToItou:(id)sender {
    NSURL *iTouURL = [NSURL URLWithString:@"itou://?ifuli"];

    if ([[UIApplication sharedApplication] canOpenURL:iTouURL]) {
        [[UIApplication sharedApplication] openURL:iTouURL options:@{} completionHandler:nil];
    } else {
        NSLog(@"没有安装iTou");
    }
}

- (IBAction)jumpToPage1:(id)sender {
    NSURL *iTouURL = [NSURL URLWithString:@"itou://page1?ifuli"];

    if ([[UIApplication sharedApplication] canOpenURL:iTouURL]) {
        [[UIApplication sharedApplication] openURL:iTouURL options:@{} completionHandler:nil];
    } else {
        NSLog(@"没有安装iTou");
    }
}

- (IBAction)jumpToPage2:(id)sender {
    NSURL *iTouURL = [NSURL URLWithString:@"itou://page2?ifuli"];

    if ([[UIApplication sharedApplication] canOpenURL:iTouURL]) {
        [[UIApplication sharedApplication] openURL:iTouURL options:@{} completionHandler:nil];
    } else {
        NSLog(@"没有安装iTou");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
