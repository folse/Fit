//
//  FTWorkoutTwoController.m
//  Livefit
//
//  Created by D on 9/17/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTWorkoutTwoController.h"
#import "FTWorkoutTwoDetailController.h"

@interface FTWorkoutTwoController ()
{
    NSString *workoutName;
}

@end

@implementation FTWorkoutTwoController

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
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    workoutName = [NSString stringWithFormat:@"%ld%ld",(long)indexPath.section,(long)indexPath.row];
    
    [self performSegueWithIdentifier:@"WorkoutTwoDetailController" sender:self];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FTWorkoutTwoDetailController *workoutTwoDetailController = segue.destinationViewController;
    workoutTwoDetailController.workoutName = workoutName;
}

@end
