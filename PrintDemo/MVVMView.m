//
//  MVVMView.m
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "MVVMView.h"
#import "NSObject+FBKVOController.h"
@interface MVVMView ()

@property (nonatomic, strong) UILabel *lbContent;
@property (nonatomic, strong) UIButton *btnPrint;

//在 view中 也要 持有一个viewModel的引用
@property (nonatomic, strong) MVVMViewModel *vm;

@end
@implementation MVVMView

- (instancetype) init
{
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        
        self.lbContent = [UILabel new];
        _lbContent.frame = CGRectMake(0, 100, 300, 30);
        _lbContent.textAlignment = NSTextAlignmentCenter;
        [self addSubview: _lbContent];
        
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
    //我们需要把该事件 传递到viewModel 中  所以 我们还要在 viewModel 中 定义一个方法
    
    [_vm onPrintClick];  // 把该事件 传递到viewModel 中
}

- (void)setWithViewModel:(MVVMViewModel *)vm
{
    self.vm = vm;
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        
        //在block 回调里 change里面包含了我们新的值
        
        if ([change objectForKey:NSKeyValueChangeNewKey]) {
            NSString *newContent = change[NSKeyValueChangeNewKey];
//            self.lbContent.text = newContent;  //把新的值 赋值到 view上的 label
            
            _lbContent.text = [NSString stringWithFormat:@"%@",newContent];
        }
        
        
        //这样就完成了一个 view到 viewModel 的绑定  每次viewModel 的 contentStr 发生改变的话  就是自动赋值给view 上的 view   这样做 有什么好处呢  一旦我们的view 建立完成之后 我们的展示逻辑跟 我们model 的改变逻辑 就隔离开来  不用再操心view 的值 是怎么展示的  我们只要把注意力 和重点放在业务逻辑上  怎么去改变我们的model 上
        
    }];
}
















@end
