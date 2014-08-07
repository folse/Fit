//
//  FTCalculationResult.m
//  Fit
//
//  Created by D on 7/28/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTCalculationResult.h"
#import "FTCaloriesController.h"


@interface FTCalculationResult ()


@end

@implementation FTCalculationResult

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
    
    [self.caloriesNeededLabel setText:self.caloriesNeeded];
    
    [self.explanationContentTextView setText:self.explanationContent];
    
    
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
