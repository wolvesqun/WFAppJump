//
//  ViewController.m
//  testAppJump2
//
//  Created by mba on 16/3/17.
//  Copyright © 2016年 ibmlib. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lbTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, 50)];
    lbTitle.text = @"自己app";
    lbTitle.textColor = [UIColor whiteColor];
    lbTitle.textAlignment = NSTextAlignmentCenter;
    lbTitle.backgroundColor = [UIColor blackColor];
    [self.view addSubview:lbTitle];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 200, 50);
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"跳转微信应用" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(actionToTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)actionToTap
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"myApp://open/WXSceneSession/share?text=good"]];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
