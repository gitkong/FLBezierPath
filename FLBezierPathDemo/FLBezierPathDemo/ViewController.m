//
//  ViewController.m
//  FLBezierPathDemo
//
//  Created by clarence on 17/2/18.
//  Copyright © 2017年 gitKong. All rights reserved.
//

#import "ViewController.h"
#import "FLBezierView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FLBezierView *beView = [[FLBezierView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    beView.backgroundColor = [UIColor lightTextColor];
    [self.view addSubview:beView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
