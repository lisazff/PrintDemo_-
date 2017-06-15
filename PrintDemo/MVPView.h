//
//  MVPView.h
//  PrintDemo
//
//  Created by lisa on 2017/6/12.
//  Copyright © 2017年 lisa. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

- (void)onPrintBtnClick;
@end

@interface MVPView : UIView

- (void)printOnView:(NSString *)content;  //在view上面的打印方法

@property (nonatomic, weak) id<MVPViewDelegate>  delegate;
@end
