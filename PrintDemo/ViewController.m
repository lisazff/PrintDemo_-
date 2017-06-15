//
//  ViewController.m
//  PrintDemo
//
//  Created by lisa on 2017/6/11.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPController.h"
#import "MVVMController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (2.0*NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
//        [self showMVC];
        
//        [self showMVP];
        
        [self showMVVM];
        
    });
}
- (void)showMVC
{
    MVCController *mvc = [[MVCController alloc]init];
    [self presentViewController:mvc animated:YES completion:^{
        
    }];
}

- (void)showMVP
{
    MVPController *mvp = [MVPController new];
    [self presentViewController:mvp animated:YES completion:^{
        
    }];
}

-(void)showMVVM
{
    MVVMController *mvvm = [MVVMController new];
    [self presentViewController:mvvm animated:YES completion:^{
        
    }];
}
















@end
