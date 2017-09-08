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
}


@end
