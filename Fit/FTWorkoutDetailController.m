//
//  FTWorkoutDetailController.m
//  Livefit
//
//  Created by folse on 8/7/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTWorkoutDetailController.h"

@interface FTWorkoutDetailController ()
{
    NSString *content;
    NSString *headerScrollViewImagePrefixName;
    int totalPageNumber;
}

@property (strong, nonatomic) IBOutlet UIScrollView *headerScrollView;
@property (strong, nonatomic) IBOutlet UITextView *contentTextView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation FTWorkoutDetailController

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
        self.title = @"杠铃平卧推举";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s1_";
        
    }else if ([_workoutName isEqualToString:@"02"]) {
        
        content = @"content";
        self.title = @"上斜杠铃卧推";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s2_";
        
    }else if ([_workoutName isEqualToString:@"03"]) {
        
        content = @"content";
        self.title = @"上斜哑铃飞鸟";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s3_";
        
    }else if ([_workoutName isEqualToString:@"04"]) {
        
        content = @"content";
        self.title = @"拉力器夹胸";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s4_";
        
    }else if ([_workoutName isEqualToString:@"05"]) {
        
        content = @"content";
        self.title = @"引体向上";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s5_";
        
    }else if ([_workoutName isEqualToString:@"06"]) {
        
        content = @"content";
        self.title = @"宽握下拉";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s6_";
        
    }else if ([_workoutName isEqualToString:@"07"]) {
        
        content = @"content";
        self.title = @"站姿胸前下拉";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s7_";
        
    }else if ([_workoutName isEqualToString:@"08"]) {
        
        content = @"content";
        self.title = @"直立站姿直臂下拉";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s8_";
        
    }else if ([_workoutName isEqualToString:@"11"]) {
        
        content = @"content";
        self.title = @"史密斯架深蹲";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s9_";
        
    }else if ([_workoutName isEqualToString:@"12"]) {
        
        content = @"content";
        self.title = @"哑铃深蹲";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s10_";
        
    }else if ([_workoutName isEqualToString:@"13"]) {
        
        content = @"content";
        self.title = @"腿屈伸";
        
        totalPageNumber = 2;
        headerScrollViewImagePrefixName = @"s11_";
        
    }else if ([_workoutName isEqualToString:@"14"]) {
        
        content = @"content";
        self.title = @"史密斯架硬拉";
        
        totalPageNumber = 2;
        headerScrollViewImagePrefixName = @"s12_";
        
    }else if ([_workoutName isEqualToString:@"15"]) {
        
        content = @"content";
        self.title = @"坐姿/俯卧腿弯举";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s13_";
        
    }else if ([_workoutName isEqualToString:@"16"]) {
        
        content = @"content";
        self.title = @"史密斯架举踵";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s14_";
        
    }else if ([_workoutName isEqualToString:@"17"]) {
        
        content = @"content";
        self.title = @"下斜仰卧起坐";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s15_";
        
    }else if ([_workoutName isEqualToString:@"18"]) {
        
        content = @"content";
        self.title = @"平板支撑";
        
        totalPageNumber = 1;
        headerScrollViewImagePrefixName = @"s16_";
        
    }else if ([_workoutName isEqualToString:@"21"]) {
        
        content = @"content";
        self.title = @"坐姿肩上推举";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s17_";
        
    }else if ([_workoutName isEqualToString:@"22"]) {
        
        content = @"content";
        self.title = @"哑铃侧平举";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s18_";
        
    }else if ([_workoutName isEqualToString:@"23"]) {
        
        content = @"content";
        self.title = @"哑铃前平举";
        
        totalPageNumber = 5;
        headerScrollViewImagePrefixName = @"s19_";
        
    }else if ([_workoutName isEqualToString:@"24"]) {
        
        content = @"content";
        self.title = @"正立划船";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s20_";
        
    }else if ([_workoutName isEqualToString:@"25"]) {
        
        content = @"content";
        self.title = @"拉力器交叉后飞鸟";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s21_";
        
    }else if ([_workoutName isEqualToString:@"26"]) {
        
        content = @"content";
        self.title = @"哑铃耸肩";
        
        totalPageNumber = 2;
        headerScrollViewImagePrefixName = @"s22_";
        
    }else if ([_workoutName isEqualToString:@"27"]) {
        
        content = @"content";
        self.title = @"山地蹬腿";
        
        totalPageNumber = 2;
        headerScrollViewImagePrefixName = @"s23_";
        
    }else {
        content = @"content";
        self.title = @"蜘蛛人平板";
        
        totalPageNumber = 3;
        headerScrollViewImagePrefixName = @"s24_";
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
