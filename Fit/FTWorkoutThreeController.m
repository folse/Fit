//
//  FTWorkoutThreeViewController.m
//  
//
//  Created by D on 9/17/14.
//
//

#import "FTWorkoutThreeController.h"
#import "FTWorkoutThreeDetailController.h"

@interface FTWorkoutThreeController ()

{
    NSString *workoutName;
}

@end

@implementation FTWorkoutThreeController

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
    
    [self performSegueWithIdentifier:@"WorkoutThreeDetailController" sender:self];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FTWorkoutThreeDetailController *workoutThreeDetailController = segue.destinationViewController;
    workoutThreeDetailController.workoutName = workoutName;
}

@end
