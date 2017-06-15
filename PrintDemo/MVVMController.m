//
//  MVVMController.m
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "MVVMController.h"

#import "MVVMView.h"
#import "MVVMViewModel.h"
#import "MVVMPaper.h"
@interface MVVMController ()

@property (nonatomic, strong) MVVMView *mvvmView;
@property (nonatomic, strong) MVVMPaper *paper;
@property (nonatomic, strong) MVVMViewModel *viewModel;
@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.paper = [MVVMPaper new];
    self.paper.content = @"line 0";
    
    self.mvvmView = [MVVMView new];
    self.mvvmView.frame = self.view.bounds;
    [self.view addSubview:self.mvvmView];
    
    
    self.viewModel = [MVVMViewModel new];
    
    //接下来 我们来建立关系
    [_mvvmView setWithViewModel:_viewModel];  //view和viewModel 建立联系  把viewModel传到view中
    [_viewModel setWithModel:_paper]; // model 和viewModel 建立联系   把model传到viewModel中

}















@end
