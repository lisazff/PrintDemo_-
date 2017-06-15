//
//  MVPController.m
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "MVPController.h"
#import "Presenter.h"
#import "MVPView.h"
#import "MVPModel.h"
@interface MVPController ()

//在controller  中 对3个角色串联

@property (nonatomic, strong) Presenter *presenter;
@property (nonatomic, strong) MVPModel *mvpModel;
@property (nonatomic, strong) MVPView *mvpView;

@end

@implementation MVPController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //对象的初始化
    
    self.presenter = [Presenter new];
    
    self.mvpView = [MVPView new];
    self.mvpView.frame = self.view.bounds;
    [self.view addSubview:self.mvpView];
    
    self.mvpModel = [MVPModel new];
    self.mvpModel.content = @"line 0";
    
    self.presenter.view = self.mvpView;
    self.presenter.model = self.mvpModel;
    
    [self.presenter printTask];
    
    self.mvpView.delegate = self.presenter;
    
}
























@end
