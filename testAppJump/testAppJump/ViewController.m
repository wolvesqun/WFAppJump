//
//  ViewController.m
//  testAppJump
//
//  Created by wolvesqun on 15/3/17.
//  Copyright © 2015年 ibmlib. All rights reserved.
//

#import "ViewController.h"
#import "WFServletActionContext.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lbTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, 50)];
    lbTitle.text = @"微信app";
    lbTitle.textColor = [UIColor whiteColor];
    lbTitle.textAlignment = NSTextAlignmentCenter;
    lbTitle.backgroundColor = [UIColor blackColor];
    [self.view addSubview:lbTitle];
    
    
}

- (UIButton *)createButtonWithFrame:(CGRect)frame andTitle:(NSString *)title
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    button.backgroundColor = [UIColor greenColor];
    button.frame = frame;
    [self.view addSubview:button];
    return button;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
