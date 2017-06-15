//
//  Presenter.m
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "Presenter.h"



@interface Presenter ()

@end

@implementation Presenter

/**
  printTask 的任务 就是 调用view  并把model 传给它
 */
- (void)printTask
{
    NSString *printContent = self.model.content;
    [self.view printOnView:printContent];
}


- (void)onPrintBtnClick
{
    //view 上的点击事件传到 presenter 之后   我们的 presenter 改变model  把model 在传到view 上展示
    
    int rand = arc4random()%10; //生成0---9 的随机数
    
    _model.content = [NSString stringWithFormat:@"line  %d",rand];
    
    [_view printOnView:_model.content];
    
}

@end
