//
//  MVCView.m
//  PrintDemo
//
//  Created by lisa on 2017/6/11.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "MVCView.h"

@interface MVCView ()

@property (nonatomic, strong) UIButton *btnPrint;
@end
@implementation MVCView

- (void)printOnView:(Paper *)paper
{
    NSLog(@"print paper content:%@",paper.content);
}

//我们要在view 上生成一个button 来采集用户的事件
- (instancetype)init
{
    if (self = [super init]) {
        self.backgroundColor = [UIColor yellowColor];
        
        self.btnPrint = [UIButton new];
        self.btnPrint.frame = CGRectMake(100, 100, 100, 50);
        [self.btnPrint setTitle:@"Print" forState:UIControlStateNormal];
        [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.btnPrint];
    }
    return self;
}

- (void)onPrintClick
{
    NSLog(@"view上按钮点击");
    //通过delegate 传到controller 中
    
    if (_delegate) {
        [_delegate onPrintBtnClick];
    }
    
}


















@end
