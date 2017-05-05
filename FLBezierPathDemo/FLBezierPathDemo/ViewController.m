//
//  ViewController.m
//  FLBezierPathDemo
//
//  Created by clarence on 17/2/18.
//  Copyright © 2017年 gitKong. All rights reserved.
//

#import "ViewController.h"
#import "FLBezierView.h"
#import "UIBezierPath+FLUnits.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    FLBezierView *beView = [[FLBezierView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    beView.backgroundColor = [UIColor lightTextColor];
//    [self.view addSubview:beView];
    
    self.view.backgroundColor = [UIColor grayColor];
    UIView *alertView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    [self drawBackViewWithView:alertView cornerRadius:5 triangleCenterX:150 triangleSize:CGSizeMake(10, 10) backColor:[UIColor whiteColor] text:@"hello gitKong"];
    [self.view addSubview:alertView];
    
}

- (void)drawBackViewWithView:(UIView *)view cornerRadius:(CGFloat)cornerRadius triangleCenterX:(CGFloat)triangleCenterX triangleSize:(CGSize)triangleSize backColor:(UIColor *) color text:(NSString *)string{
    CGSize finalSize = CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(view.bounds));
    CAShapeLayer *layer = [CAShapeLayer layer];
    
    layer.path = UIBezierPath.fl_path.maker
    .moveTo(cornerRadius, 0)
    .addArcWith(CGPointMake(cornerRadius, cornerRadius),5,0,180,NO)
    .addLineTo(0, finalSize.height - cornerRadius)
    .addArcWith(CGPointMake(cornerRadius, finalSize.height - cornerRadius),5,180,90,NO)
    .addLineTo(finalSize.width - cornerRadius, finalSize.height)
    .addArcWith(CGPointMake(finalSize.width - cornerRadius, finalSize.height - cornerRadius),5,270,0,NO)
    .addLineTo(finalSize.width, cornerRadius)
    .addArcWith(CGPointMake(finalSize.width - cornerRadius, cornerRadius),5,360,-90,NO)
    .addLineTo(triangleCenterX + triangleSize.width / 2,0)
    .addLineTo(triangleCenterX,-triangleSize.height)
    .addLineTo(triangleCenterX - triangleSize.width / 2,0)
    .addLineTo(0, 0)
    .lineJoinStyle(kCGLineJoinRound)
    .fill().CGPath;
    
    layer.fillColor = color.CGColor;
    [view.layer addSublayer:layer];
    UILabel *label = [[UILabel alloc] initWithFrame:view.bounds];
    label.text = string;
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:15];
    [view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
