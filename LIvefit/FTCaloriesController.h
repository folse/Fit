//
//  FTCaloriesController.h
//  Fit
//
//  Created by folse on 7/28/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTCaloriesController : UITableViewController

@property (strong, nonatomic) IBOutlet UILabel *genderLabel;
@property (strong, nonatomic) IBOutlet UILabel *activeLabel;
@property (strong, nonatomic) IBOutlet UILabel *goalLabel;


@property (strong, nonatomic) IBOutlet UITextField *weightTextField;
@property (strong, nonatomic) IBOutlet UITextField *heightTextField;
@property (strong, nonatomic) IBOutlet UITextField *ageTextField;

@property (strong,nonatomic) NSString *caloriesNeeded;
@property (strong,nonatomic) NSString *explanationContent;

@property (strong,nonatomic) UIPickerView *pickerView;
@property (strong,nonatomic) NSArray *timePickerData;
@property (strong,nonatomic) NSArray *genderPickerData;
@property (strong,nonatomic) NSArray *activenessPickerData;
@property (strong,nonatomic) NSArray *goalPickerData;
@property (strong,nonatomic) UIDatePicker *datePicker;
@property (strong,nonatomic) UIActionSheet *pickerViewPopup;
@property (weak,nonatomic) UIButton *calculateCalories;
@property (strong,nonatomic) NSString *goalTypeName;
- (IBAction)calculatedBtnPressed:(UIButton *)sender;

@end
