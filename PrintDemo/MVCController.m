//
//  MVCController.m
//  PrintDemo
//
//  Created by lisa on 2017/6/11.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "Paper.h"
@interface MVCController ()<MVCViewDelegate>

// controller 持有两个对象引用 可控制操作他们
@property (nonatomic, strong) MVCView *myView;
@property (nonatomic, strong) Paper *paper;
@end

@implementation MVCController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
   
    //对两个持有的对象 进行初始化操作
    self.myView = [[MVCView alloc]init];
    _myView.delegate = self;
    _myView.frame = self.view.bounds;
    [self.view addSubview:self.myView];
    
    
    self.paper = [Paper new];
    self.paper.content = @"line 0";
    
    
    [self printPaper]; //执行一个打印任务
}

//controller上 打印的操作
- (void)printPaper{
    [self.myView printOnView:self.paper];
}

//在controller 中 实现view上的代理方法
- (void)onPrintBtnClick
{
    //view 上的点击事件传到controller 之后   我们的controller 改变model  把model 在传到view 上展示
    
    int rand = arc4random()%10; //生成0---9 的随机数
    
    _paper.content = [NSString stringWithFormat:@"line  %d",rand];
    
    [_myView printOnView:_paper];
    
}
@end
