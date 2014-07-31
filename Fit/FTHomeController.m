//
//  FTHomeController.m
//  Fit
//
//  Created by folse on 7/23/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTHomeController.h"
#import <objc/runtime.h>
#import "Reachability.h"

@interface FTHomeController ()

@end

@implementation FTHomeController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    Reachability *reachability = [Reachability reachabilityWithHostName:@"www.baidu.com"];
    if ([reachability currentReachabilityStatus] == 0){
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"网络连接好像有问题？" message:@"请检查网络" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
