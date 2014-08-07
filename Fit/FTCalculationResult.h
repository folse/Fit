//
//  FTCalculationResult.h
//  Fit
//
//  Created by D on 7/28/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTCalculationResult : UIViewController

@property (strong,nonatomic) NSString *caloriesNeeded;

@property (strong,nonatomic) NSString *explanationContent;

@property (strong, nonatomic) IBOutlet UILabel *caloriesNeededLabel;

@property (strong, nonatomic) IBOutlet UITextView *explanationContentTextView;


@end
