//
//  MBProgressHUD+Category.m
//  weidian
//
//  Created by YoungShook on 14-1-22.
//  Copyright (c) 2014年 folse. All rights reserved.
//

#import "MBProgressHUD+Category.h"

@implementation MBProgressHUD (Category)

#pragma mark 显示错误信息
+ (void)showError:(NSString *)error toView:(UIView *)view{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = error;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    hud.mode = MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:1];
}

#pragma mark 显示一些信息
+ (instancetype)showMessag:(NSString *)message toView:(UIView *)view {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    hud.removeFromSuperViewOnHide = YES;
    hud.dimBackground = YES;
    return hud;
}
@end
