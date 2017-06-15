//
//  MVVMViewModel.h
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MVVMPaper.h"
@interface MVVMViewModel : NSObject

//viewModel 和 view 有一个一一 对应 绑定的关系  因为view 上要展示一个字符串  所以我们要在此 声明一个字符串

@property (nonatomic, strong) NSString *contentStr;  //用来和 view做一个双向绑定的作用

- (void)onPrintClick;

- (void)setWithModel:(MVVMPaper *)paper;

@end
