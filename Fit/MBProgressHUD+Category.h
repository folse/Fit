//
//  MBProgressHUD+Category.h
//  weidian
//
//  Created by YoungShook on 14-1-22.
//  Copyright (c) 2014年 folse. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Category)
+ (void)showError:(NSString *)error toView:(UIView *)view;
+ (instancetype)showMessag:(NSString *)message toView:(UIView *)view;
@end
