//
//  Presenter.h
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import <Foundation/Foundation.h>
//因为 所有的耦合 都是在 Presenter 中 实现的  所以要把view  model 引入
#import "MVPView.h"
#import "MVPModel.h"

@interface Presenter : NSObject <MVPViewDelegate>

@property (nonatomic, strong)  MVPModel *model;
@property (nonatomic, strong)  MVPView  *view;
// Presenter类 是我们业务逻辑的一个入口

- (void)printTask;  //打印任务

@end
