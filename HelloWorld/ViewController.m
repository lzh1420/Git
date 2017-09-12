//
//  ViewController.m
//  HelloWorld
//
//  Created by 嚼华先森 on 2017/9/6.
//  Copyright © 2017年 嚼华. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"HelloWorld");
    
    [self.view addSubview:({
        UILabel *label = [[UILabel alloc]initWithFrame:(CGRect){0,64,self.view.bounds.size.width,50}];
        label.backgroundColor = UIColor.redColor;
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = UIColor.whiteColor;
        label.text = @"Hello World";
        label.layer.cornerRadius = 10.0;
        label.layer.masksToBounds = YES;
        label.layer.borderColor = UIColor.greenColor.CGColor;
        label.layer.borderWidth = 5.0;
        label;
    })];
    
    [self.view addSubview:({
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = (CGRect){0,150,self.view.bounds.size.width,50};
        btn.backgroundColor = UIColor.greenColor;
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setTitle:@"你敢动我试试?" forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:30];
        btn.layer.borderWidth = 10.0;
        btn.layer.borderColor = UIColor.redColor.CGColor;
        btn.layer.cornerRadius = 10.0;
        btn.layer.masksToBounds = YES;
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        btn;
    })];
    
    [self.view addSubview:({
        UIView *view = [[UIView alloc]initWithFrame:(CGRect){(self.view.bounds.size.width-200)/2,300,200,200}];
        view.backgroundColor = [UIColor orangeColor];
        view.layer.cornerRadius = 100.0;
        view.layer.masksToBounds = YES;
        view.layer.borderWidth = 10.0;
        view.layer.borderColor = [UIColor lightGrayColor].CGColor;
        view;
    })];
    
}

-(void)btnAction:(UIButton *)sender{
    
    NSLog(@"你敢动我试试?");
}


@end
