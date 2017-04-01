//
//  ViewController.m
//  CALayerFoundationDemo
//
//  Created by yaoqi on 17/4/1.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

#import "ViewController.h"
#import "YQCustomeLayer.h"
@interface ViewController ()<CALayerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //    UIView *teView = [[UIView alloc] initWithFrame:CGRectMake(90, 90, 90, 90)];
    //    teView.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.3];//这种方法设置透明度的时候就不会影响子视图的透明度了
    //    teView.layer.masksToBounds = YES;
    //    teView.layer.contentsCenter = CGRectMake(0,0,1,1);
    //    [self.view addSubview:teView];
    //    UIView *ss = [[UIView alloc] initWithFrame:CGRectMake(10, 20, 40, 30)];
    //    ss.backgroundColor = [UIColor greenColor];
    //    ss.layer.transform = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);//旋转
    //    [teView addSubview:ss];
    //
    //
    //    CALayer *myLayer = [CALayer layer];
    //    //设置层的宽度和高度（100x100）
    ////    myLayer.bounds = CGRectMake(0, 0, 100, 100);
    //    myLayer.frame = CGRectMake(150, 150, 100, 100);
    //    //设置层的位置
    ////    myLayer.position = CGPointMake(250, 250);
    //    //设置层的背景颜色：红色
    //    myLayer.backgroundColor = [UIColor redColor].CGColor;
    //    //设置层的圆角半径为10
    //    myLayer.cornerRadius = 10;
    //    //添加myLayer到控制器的view的layer中
    //    [self.view.layer addSublayer:myLayer];
    //
    //    CALayer *myLayer2 = [CALayer layer];
    //    // 设置层的宽度和高度（100x100）
    //    myLayer2.bounds = CGRectMake(0, 0, 100, 100);
    //    // 设置层的位置
    //    myLayer2.position = CGPointMake(100, 300);
    //    // 设置需要显示的图片
    //    myLayer2.contents = (id)[UIImage imageNamed:@"lufy.jpg"].CGImage;
    //    // 设置层的圆角半径为10
    //    myLayer2.cornerRadius = 10;
    //    // 如果设置了图片，需要设置这个属性为YES才有圆角效果
    //    myLayer2.masksToBounds = YES;
    //    // 添加myLayer到控制器的view的layer中
    //    [self.view.layer addSublayer:myLayer2];
    
    
    //第一种：自定义图层显示
    //    YQCustomeLayer *layer = [YQCustomeLayer layer];
    //    //设置层的宽高
    //    layer.bounds = CGRectMake(0, 0, 100, 100);
    //    //设置层的位置
    //    layer.position = CGPointMake(100, 100);
    //    // 开始绘制图层
    //    [layer setNeedsDisplay];//需要调用setNeedsDisplay这个方法，才会触发drawInContext:方法的调用，然后进行绘图
    //    [self.view.layer addSublayer:layer];
    //
    //第二种：在controller中显示
    CALayer *layer1 = [CALayer layer];
    // 设置delegate
    layer1.delegate = self;
    // 设置层的宽高
    layer1.bounds = CGRectMake(0, 0, 100, 100);
    // 设置层的位置
    layer1.position = CGPointMake(100, 100);
    // 开始绘制图层
    [layer1 setNeedsDisplay];
    [self.view.layer addSublayer:layer1];
    
}

#pragma mark 画一个矩形框
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    // 设置蓝色
    CGContextSetRGBStrokeColor(ctx, 0, 0, 1, 1);
    // 设置边框宽度
    CGContextSetLineWidth(ctx, 10);
    // 添加一个跟层一样大的矩形到路径中
    CGContextAddRect(ctx, layer.bounds);
    // 绘制路径
    CGContextStrokePath(ctx);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
