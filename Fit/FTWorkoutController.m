//
//  FTWorkoutController.m
//  Livefit
//
//  Created by folse on 8/7/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTWorkoutController.h"
#import "FTWorkoutDetailController.h"

@interface FTWorkoutController ()
{
    NSString *workoutName;
}

@end

@implementation FTWorkoutController

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
    
    [self performSegueWithIdentifier:@"WorkoutDetailController" sender:self];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
     FTWorkoutDetailController *workoutDetailController = segue.destinationViewController;
     workoutDetailController.workoutName = workoutName;
 }

@end
