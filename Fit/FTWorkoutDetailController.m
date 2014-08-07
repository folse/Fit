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
}

@property (strong, nonatomic) IBOutlet UITextView *contentTextView;

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
    
    NSMutableArray *contentArray = [NSMutableArray new];
    
    //NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"content" ofType:@"plist"];
    //contentArray = [NSMutableArray arrayWithArray:[[NSArray alloc] initWithContentsOfFile:plistPath]];
    
    
    
    
    if ([_workoutName isEqualToString:@"00"]) {
        
        
        NSMutableArray *gifImageArray = [@[] mutableCopy];
        for (int i = 0; i < 8; i++) {
            UIImage *gifImage = [UIImage imageNamed:[NSString stringWithFormat:@"test.gif_%d", i]];
            [gifImageArray addObject:gifImage];
        }
        
        self.gifImageView.animationImages = gifImageArray;
        self.gifImageView.animationRepeatCount = 1;
        self.gifImageView.animationDuration = 0.267;
        self.gifImageView.image = gifImageArray[0];
        
       content = @"content";
       self.title = @"title";
        
    }else if ([_workoutName isEqualToString:@"01"]) {
        
        content = @"content";
        self.title = @"title";
        
   }else if ([_workoutName isEqualToString:@"02"]) {
       
       content = contentArray[2][@"content"];
       self.title = contentArray[2][@"title"];
       
    }else if ([_workoutName isEqualToString:@"03"]) {
        
        content = contentArray[3][@"content"];
        self.title = contentArray[3][@"title"];
        
    }else if ([_workoutName isEqualToString:@"04"]) {
        
        content = contentArray[4][@"content"];
        self.title = contentArray[4][@"title"];
   
    }else if ([_workoutName isEqualToString:@"05"]) {
        
        content = contentArray[5][@"content"];
        self.title = contentArray[5][@"title"];
        
    }else if ([_workoutName isEqualToString:@"06"]) {
        
        content = contentArray[6][@"content"];
        self.title = contentArray[6][@"title"];
        
    }else if ([_workoutName isEqualToString:@"07"]) {
        
        content = contentArray[7][@"content"];
        self.title = contentArray[7][@"title"];
    }else if ([_workoutName isEqualToString:@"10"]) {
        
        content = contentArray[8][@"content"];
        self.title = contentArray[8][@"title"];
    }else if ([_workoutName isEqualToString:@"11"]) {
        
        content = contentArray[9][@"content"];
        self.title = contentArray[9][@"title"];
        
    }else if ([_workoutName isEqualToString:@"12"]) {
        
        content = contentArray[10][@"content"];
        self.title = contentArray[10][@"title"];
        
    }else if ([_workoutName isEqualToString:@"13"]) {
        
        content = contentArray[11][@"content"];
        self.title = contentArray[11][@"title"];
        
    }else if ([_workoutName isEqualToString:@"14"]) {
        
        content = contentArray[12][@"content"];
        self.title = contentArray[12][@"title"];
        
    }else if ([_workoutName isEqualToString:@"15"]) {
        
        content = contentArray[13][@"content"];
        self.title = contentArray[13][@"title"];
        
    }else if ([_workoutName isEqualToString:@"16"]) {
        
        content = contentArray[14][@"content"];
        self.title = contentArray[14][@"title"];
        
    }else if ([_workoutName isEqualToString:@"17"]) {
        
        content = contentArray[15][@"content"];
        self.title = contentArray[15][@"title"];
    }else if ([_workoutName isEqualToString:@"20"]) {
        
        content = contentArray[16][@"content"];
        self.title = contentArray[16][@"title"];
    }else if ([_workoutName isEqualToString:@"21"]) {
        
        content = contentArray[17][@"content"];
        self.title = contentArray[17][@"title"];
    }else if ([_workoutName isEqualToString:@"22"]) {
        
        content = contentArray[18][@"content"];
        self.title = contentArray[18][@"title"];
        
    }else if ([_workoutName isEqualToString:@"23"]) {
        
        content = contentArray[19][@"content"];
        self.title = contentArray[19][@"title"];
        
    }else if ([_workoutName isEqualToString:@"24"]) {
        
        content = contentArray[20][@"content"];
        self.title = contentArray[20][@"title"];
        
    }else if ([_workoutName isEqualToString:@"25"]) {
        
        content = contentArray[21][@"content"];
        self.title = contentArray[21][@"title"];
        
    }else if ([_workoutName isEqualToString:@"26"]) {
        
        content = contentArray[22][@"content"];
        self.title = contentArray[22][@"title"];
        
    } else {
        content = contentArray[23][@"content"];
        self.title = contentArray[23][@"title"];
    }
    

    [_contentTextView setText:content];
    
    
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
