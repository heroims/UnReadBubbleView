//
//  ViewController.m
//  BubbleViewDemo
//
//  Created by Zhao Yiqi on 15/3/18.
//  Copyright (c) 2015年 Zhao Yiqi. All rights reserved.
//

#import "ViewController.h"
#import "UnReadBubbleView.h"

@interface ViewController ()

@end

@implementation ViewController{
    UnReadBubbleView *bv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bv=[[UnReadBubbleView alloc] initWithFrame:CGRectMake(60, 60, 25, 25)];
    [self.view addSubview:bv];
    bv.viscosity=20;
    bv.bubbleLabel.text=@"20";

    UIButton *btnAdd=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnAdd.frame=CGRectMake(50, [UIScreen mainScreen].bounds.size.height-100, [UIScreen mainScreen].bounds.size.width-100, 60);
    [btnAdd setTitle:@"添加" forState:UIControlStateNormal];
    [btnAdd addTarget:self action:@selector(btnAddClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAdd];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)btnAddClick{
    [self.view addSubview:bv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
