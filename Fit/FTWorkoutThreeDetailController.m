//
//  FTWorkoutThreeDetailViewController.m
//  Livefit
//
//  Created by D on 9/17/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTWorkoutThreeDetailController.h"

@interface FTWorkoutThreeDetailController ()
{
    NSString *content;
    NSString *headerScrollViewImagePrefixName;
    int totalPageNumber;
}

@property (strong, nonatomic) IBOutlet UIScrollView *headerScrollView;
@property (strong, nonatomic) IBOutlet UITextView *contentTextView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation FTWorkoutThreeDetailController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@",_workoutName);
    
    // NSMutableArray *contentArray = [NSMutableArray new];
    
    // NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"content" ofType:@"plist"];
    // contentArray = [NSMutableArray arrayWithArray:[[NSArray alloc] initWithContentsOfFile:plistPath]];
    
    if ([_workoutName isEqualToString:@"01"]) {
        
        content = @"content";
        self.title = @"波比";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s1_";
        
    }else if ([_workoutName isEqualToString:@"02"]) {
        
        content = @"content";
        self.title = @"铃壶大风车";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"kettle_";
        
    }else if ([_workoutName isEqualToString:@"03"]) {
        
        content = @"content";
        self.title = @"箭步蹲";
        
        totalPageNumber = 6;
        headerScrollViewImagePrefixName = @"lunge_";
        
    }else if ([_workoutName isEqualToString:@"04"]) {
        
        content = @"content";
        self.title = @"平板支撑";
        
        totalPageNumber = 1;
        headerScrollViewImagePrefixName = @"s16_";
        
    }else if ([_workoutName isEqualToString:@"06"]) {
        
        content = @"content";
        self.title = @"史密斯架深蹲";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s9_";
        
    }else if ([_workoutName isEqualToString:@"07"]) {
        
        content = @"content";
        self.title = @"平板杠铃卧推";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s1_";
        
    }else if ([_workoutName isEqualToString:@"09"]) {
        
        content = @"content";
        self.title = @"台阶支撑俯卧撑";
        
        totalPageNumber = 6;
        headerScrollViewImagePrefixName = @"stair_";
        
    }else if ([_workoutName isEqualToString:@"10"]) {
        
        content = @"content";
        self.title = @"动感单车";
        
        totalPageNumber = 1;
        headerScrollViewImagePrefixName = @"sprint_";
        
    }else if ([_workoutName isEqualToString:@"11"]) {
        
        content = @"content";
        self.title = @"弹跳箭步蹲";
        
        totalPageNumber = 5;
        headerScrollViewImagePrefixName = @"jump_";
        
    }else if ([_workoutName isEqualToString:@"12"]) {
        
        content = @"content";
        self.title = @"高抬腿";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"high_";
        
    }else if ([_workoutName isEqualToString:@"13"]) {
        
        content = @"content";
        self.title = @"铃壶大风车";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"kettle_";
        
    }else if ([_workoutName isEqualToString:@"14"]) {
        
        content = @"content";
        self.title = @"俯卧登山";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s23_";
        
    }else if ([_workoutName isEqualToString:@"16"]) {
        
        content = @"content";
        self.title = @"史密斯架硬拉";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s12_";
        
    }else if ([_workoutName isEqualToString:@"17"]) {
        
        content = @"content";
        self.title = @"引体向上";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s5_";
        
    }else if ([_workoutName isEqualToString:@"18"]) {
        
        content = @"content";
        self.title = @"史密斯架反握引体";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s15_";
        
    }else if ([_workoutName isEqualToString:@"110"]) {
        
        content = @"content";
        self.title = @"跳绳";
        
        totalPageNumber = 1;
        headerScrollViewImagePrefixName = @"jumpr_";
        
    }else if ([_workoutName isEqualToString:@"111"]) {
        
        content = @"content";
        self.title = @"平板支撑";
        
        totalPageNumber = 1;
        headerScrollViewImagePrefixName = @"s16_";
        
    }else if ([_workoutName isEqualToString:@"21"]) {
        
        content = @"content";
        self.title = @"波比";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s18_";
        
    }else if ([_workoutName isEqualToString:@"22"]) {
        
        content = @"content";
        self.title = @"铃壶大风车";
        
        totalPageNumber = 6;
        headerScrollViewImagePrefixName = @"lunge_";
        
    }else if ([_workoutName isEqualToString:@"23"]) {
        
        content = @"content";
        self.title = @"箭步蹲";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"kettle_";
        
    }else if ([_workoutName isEqualToString:@"24"]) {
        
        content = @"content";
        self.title = @"平板支撑";
        
        totalPageNumber = 1;
        headerScrollViewImagePrefixName = @"s16_";
        
    }else if ([_workoutName isEqualToString:@"26"]) {
        
        content = @"content";
        self.title = @"哑铃深蹲";
        
        totalPageNumber = 5;
        headerScrollViewImagePrefixName = @"clean_";
        
    }else if ([_workoutName isEqualToString:@"27"]) {
        
        content = @"content";
        self.title = @"哑铃肩上推举";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s17_";
    
    }else if ([_workoutName isEqualToString:@"28"]) {
        content = @"content";
        self.title = @"铃壶海盗船";
        
        totalPageNumber = 6;
        headerScrollViewImagePrefixName = @"pirate_";
    }else if ([_workoutName isEqualToString:@"29"]) {
        content = @"content";
        self.title = @"交替哑铃前平甩";
        
        totalPageNumber = 5;
        headerScrollViewImagePrefixName = @"s19_";
    }else {
        content = @"content";
        self.title = @"动感单车";
        
        totalPageNumber = 1;
        headerScrollViewImagePrefixName = @"sprint_";
    }
    
    [_contentTextView setText:content];
    
    [_headerScrollView setDelegate:self];
    [_headerScrollView setPagingEnabled:YES];
    [_headerScrollView setContentSize:CGSizeMake(320*totalPageNumber, 250)];
    
    for ( int i = 1; i < totalPageNumber+1; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"%@%d", headerScrollViewImagePrefixName, i];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(320*i-320, 0, 320, 250)];
        [imageView setImage:[UIImage imageNamed:imageName]];
        
        [_headerScrollView addSubview:imageView];
    }
    
    _pageControl.numberOfPages = totalPageNumber;
    _pageControl.currentPage = 0;
    
}

//pagecontrol的点跟着页数改变
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGPoint offset = scrollView.contentOffset;
    CGRect bounds = scrollView.frame;
    [_pageControl setCurrentPage:offset.x/bounds.size.width];
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

