//
//  MVPView.m
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "MVPView.h"


@interface MVPView ()

@property (nonatomic,strong)  UILabel *lbContent;

@property (nonatomic, strong) UIButton *btnPrint;

@end

@implementation MVPView
//在 init 中 进行 初始化

- (instancetype)init
{
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        
        _lbContent = [UILabel new];
        _lbContent.frame = CGRectMake(0, 100, 300, 30);
        _lbContent.textAlignment = NSTextAlignmentCenter;
        [self addSubview: self.lbContent];
        
        self.btnPrint = [UIButton new];
        self.btnPrint.frame = CGRectMake(100, 200, 100, 50);
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

- (void)printOnView:(NSString *)content
{
   //接下来 通过一个label  将content 展示出来
    self.lbContent.text = content;
}
@end
