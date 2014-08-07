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
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"content" ofType:@"plist"];
    contentArray = [NSMutableArray arrayWithArray:[[NSArray alloc] initWithContentsOfFile:plistPath]];
    
    
    
    
    if ([_workoutName isEqualToString:@"00"]) {
        
        //NSArray
        
        content = contentArray[0][@"content"];
        
        NSLog(@"%@",content);
        
    }else if ([_workoutName isEqualToString:@"01"]) {
        
        content = contentArray[1][@"content"];
        
        NSLog(@"%@",content);
        
    }else if ([_workoutName isEqualToString:@"02"]) {
        
        content = contentArray[2][@"content"];
        
        NSLog(@"%@",content);
        
        
    }else if ([_workoutName isEqualToString:@"10"]) {
        
        
    }else if ([_workoutName isEqualToString:@"11"]) {
        
        
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
