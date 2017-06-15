//
//  MVVMView.h
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBKVOController.h"

#import "MVVMViewModel.h" //因为view 需要和viewModel绑定
@interface MVVMView : UIView

- (void)setWithViewModel:(MVVMViewModel *)vm;
@end
