//
//  MVVMViewModel.m
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "MVVMViewModel.h"
#import "FBKVOController.h"

#import "MVVMPaper.h"  //因为viewModel 还要和我们的model 关联   因此 我们导入 MVVMPaper

@interface MVVMViewModel ()

@property (nonatomic, strong) MVVMPaper *model;

@end

@implementation MVVMViewModel

//接下来 建立一个双向绑定的关系  这是MVVM架构 一个核心的地方 接下来 采用 KVO 的方式实现

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)setWithModel:(MVVMPaper *)paper
{
    self.model = paper;
    
    self.contentStr = paper.content;
}

- (void)onPrintClick
{
   self.model.content = @"line 1";
    self.contentStr = self.model.content;
}















@end
