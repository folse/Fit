//
//  FTHomeController.m
//  Fit
//
//  Created by folse on 7/23/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTHomeController.h"

@interface FTHomeController () <EAIntroDelegate>
{
    EAIntroView *intro;
}

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
    
    EAIntroPage *page1 = [EAIntroPage page];
    page1.title = @"Hello world";
    page1.bgImage = [UIImage imageNamed:@"bg1"];
    page1.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title1"]];
    
    EAIntroPage *page2 = [EAIntroPage page];
    page2.title = @"This is page 2";
    page2.bgImage = [UIImage imageNamed:@"bg2"];
    page2.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title2"]];
    
    EAIntroPage *page3 = [EAIntroPage page];
    page3.title = @"This is page 3";
    page3.bgImage = [UIImage imageNamed:@"bg3"];
    page3.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title3"]];
    
    EAIntroPage *page4 = [EAIntroPage page];
    page4.title = @"This is page 4";
    page4.bgImage = [UIImage imageNamed:@"bg4"];
    page4.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title4"]];
    
    intro = [[EAIntroView alloc] initWithFrame:self.navigationController.view.bounds andPages:@[page1,page2,page3,page4]];
    [intro setSwipeToExit:NO];
    [intro setDelegate:self];
    [intro showInView:self.navigationController.view animateDuration:0.3];
    
    UITapGestureRecognizer *imageTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(openProgram)];
    [self.view addGestureRecognizer:imageTap];
}

-(void)openProgram
{
    NSLog(@"%ld",(long)intro.currentPageIndex);
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
