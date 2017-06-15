//
//  MVCView.h
//  PrintDemo
//
//  Created by lisa on 2017/6/11.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paper.h"

@protocol MVCViewDelegate <NSObject>
- (void)onPrintBtnClick;  //点击了打印按钮

@end
@interface MVCView : UIView
//view 里面需要执行一个操作  把paper 展示在view上

- (void)printOnView:(Paper *)paper;

// view 上也有个事件  告知我们的Controller (即 在controller 中 有个方法实现) 我们声明个协议

@property (nonatomic, weak) id<MVCViewDelegate>  delegate;
@end
