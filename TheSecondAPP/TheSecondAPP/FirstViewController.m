//
//  FirstViewController.m
//  TheSecondAPP
//
//  Created by 王源鸿 on 16/12/8.
//  Copyright © 2016年 HomerIce. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)jumpToIFuli:(id)sender {
    NSString *urlSchemeString = [[self.urlString componentsSeparatedByString:@"?"] lastObject];
    NSString *urlString = [urlSchemeString stringByAppendingString:@"://"];

    NSURL *url = [NSURL URLWithString:urlString];

    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
