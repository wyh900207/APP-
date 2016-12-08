//
//  ViewController.m
//  TheSecondAPP
//
//  Created by 王源鸿 on 16/12/8.
//  Copyright © 2016年 HomerIce. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"hometopageone"]) {
        FirstViewController *vc = segue.destinationViewController;
        vc.urlString = self.urlString;
    } else if ([segue.identifier isEqualToString:@"hometopagetwo"]) {
        SecondViewController *vc = segue.destinationViewController;
        vc.urlString = self.urlString;
    }
}

@end
