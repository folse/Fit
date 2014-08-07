//
//  FTCaloriesController.m
//  Fit
//
//  Created by folse on 7/28/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTCaloriesController.h"
#import "FTCalculationResult.h"

@interface FTCaloriesController ()<UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate>
{
    int gender;
    float active;
    int pickerTag;
    int goal;
    int counter;
    int caloriesbmr;
    int caloriesbmrj;
}

@end


@implementation FTCaloriesController


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.genderPickerData = [NSArray arrayWithObjects:@"男", @"女", nil];
    
    self.activenessPickerData = [NSArray arrayWithObjects:@"不运动", @"适度的运动", @"非常活跃", nil];
    
    self.goalPickerData = [NSArray arrayWithObjects:@"保持体重", @"一星期减0.5公斤", @"一星期减1公斤", @"一星期增加0.5公斤", @"一星期增加1公斤", nil];
    
    [_ageTextField setDelegate:self];
    [_weightTextField setDelegate:self];
    [_heightTextField setDelegate:self];
 
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([textField isEqual:_ageTextField] && range.location > 0) {
        
        [textField setText:[NSString stringWithFormat:@"%@%@",textField.text,string]];
        [textField resignFirstResponder];
        
//        pickerTag = 1;
//        [self showGenderPicker];
    }
    
    if ([textField isEqual:_weightTextField] && range.location > 0) {
        
        [textField setText:[NSString stringWithFormat:@"%@%@",textField.text,string]];
        [textField resignFirstResponder];
        
        //        pickerTag = 1;
        //        [self showGenderPicker];
    }
    
    if ([textField isEqual:_heightTextField] && range.location > 1) {
        
        [textField setText:[NSString stringWithFormat:@"%@%@",textField.text,string]];
        [textField resignFirstResponder];
        
        //        pickerTag = 1;
        //        [self showGenderPicker];
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ageDoneAction:(id)sender
{
    [_ageTextField resignFirstResponder];
}
- (IBAction)weightDoneAction:(id)sender
{
    [_weightTextField resignFirstResponder];
}
- (IBAction)heightDoneAction:(id)sender
{
    [_heightTextField resignFirstResponder];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 1:
            
            pickerTag = 1;
            
            [self showGenderPicker];
            
            break;
            
        case 4:
            
            pickerTag = 4;
            
            [self showActivenessPicker];
            
            break;
            
        case 5:
            
            pickerTag = 5;
            
            [self showGoalPicker];
            
            break;
            
        default:
            break;
    }
}


-(void)showActivenessPicker
{
    self.pickerViewPopup = [[UIActionSheet alloc] init];
    
    self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 44, 0, 0)];
    self.pickerView.delegate = self;
    self.pickerView.showsSelectionIndicator = YES;
    
    UIToolbar *pickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    
    [pickerToolbar sizeToFit];
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    
    UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelBtnPressed)];
    [barItems addObject:cancelBtn];
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithTitle:@"OK" style:UIBarButtonItemStyleDone target:self action:@selector(activeBtnPressed)];
    [barItems addObject:doneBtn];
    
    NSArray *itemArray = [[NSArray alloc] initWithObjects:cancelBtn, flexSpace, flexSpace, doneBtn, nil];
    
    [pickerToolbar setItems:itemArray animated:YES];
    
    [self.pickerViewPopup addSubview:pickerToolbar];
    [self.pickerViewPopup addSubview:self.pickerView];
    [self.pickerViewPopup showInView:self.view.superview];
    [self.pickerViewPopup setBounds:CGRectMake(0,0,self.view.frame.size.width, 464)];
}

-(void)showGenderPicker
{
    self.pickerViewPopup = [[UIActionSheet alloc] init];
    
    self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 44, 0, 0)];
    self.pickerView.delegate = self;
    self.pickerView.showsSelectionIndicator = YES;
    
    UIToolbar *pickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    [pickerToolbar sizeToFit];
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    
    UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelBtnPressed)];
    [barItems addObject:cancelBtn];
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithTitle:@"OK" style:UIBarButtonItemStyleDone target:self action:@selector(genderBtnPressed)];
    [barItems addObject:doneBtn];
    
    NSArray *itemArray = [[NSArray alloc] initWithObjects:cancelBtn, flexSpace, flexSpace, doneBtn, nil];
    
    [pickerToolbar setItems:itemArray animated:YES];
    
    [self.pickerViewPopup addSubview:pickerToolbar];
    [self.pickerViewPopup addSubview:self.pickerView];
    [self.pickerViewPopup showInView:self.view.superview];
    [self.pickerViewPopup setBounds:CGRectMake(0,0,self.view.frame.size.width, 464)];
}

-(void)showGoalPicker
{
    self.pickerViewPopup = [[UIActionSheet alloc] init];
    
    self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 44, 0, 0)];
    self.pickerView.delegate = self;
    self.pickerView.showsSelectionIndicator = YES;
    
    UIToolbar *pickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    [pickerToolbar sizeToFit];
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    
    UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelBtnPressed)];
    [barItems addObject:cancelBtn];
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithTitle:@"OK" style:UIBarButtonItemStyleDone target:self action:@selector(goalBtnPressed)];
    [barItems addObject:doneBtn];
    
    NSArray *itemArray = [[NSArray alloc] initWithObjects:cancelBtn, flexSpace, flexSpace, doneBtn, nil];
    
    [pickerToolbar setItems:itemArray animated:YES];
    
    [self.pickerViewPopup addSubview:pickerToolbar];
    [self.pickerViewPopup addSubview:self.pickerView];
    [self.pickerViewPopup showInView:self.view.superview];
    [self.pickerViewPopup setBounds:CGRectMake(0,0,self.view.frame.size.width, 464)];
}

-(void)genderBtnPressed
{
    NSInteger row =[self.pickerView selectedRowInComponent:0];
    NSLog(@"%@",[self.genderPickerData objectAtIndex:row]);
    
    [self.genderLabel setText:[self.genderPickerData objectAtIndex:row]];
    
    [self.pickerViewPopup dismissWithClickedButtonIndex:1 animated:YES];
    if ([[self.genderPickerData objectAtIndex:row] isEqualToString:@"男"]){
        gender = 0;
    }
    else{
        gender = 1;
    }
}

-(void)activeBtnPressed
{
    NSInteger row =[self.pickerView selectedRowInComponent:0];
    NSLog(@"%@",[self.activenessPickerData objectAtIndex:row]);
    
    [self.activeLabel setText:[self.activenessPickerData objectAtIndex:row]];
    
    [self.pickerViewPopup dismissWithClickedButtonIndex:1 animated:YES];
    
    if ([[self.activenessPickerData objectAtIndex:row] isEqualToString:@"不运动"]){
        active = 1.2;
    }
    else if ([[self.activenessPickerData objectAtIndex:row] isEqualToString:@"适度的运动"]){
        active = 1.53;
    }
    else{
        active = 1.9;
    }
    
    [self.view endEditing:YES];
}

-(void)goalBtnPressed
{
    NSInteger row =[self.pickerView selectedRowInComponent:0];
    NSLog(@"%@",[self.goalPickerData objectAtIndex:row]);
    
    [self.goalLabel setText:[self.goalPickerData objectAtIndex:row]];
    
    [self.pickerViewPopup dismissWithClickedButtonIndex:1 animated:YES];
    
    if ([[self.goalPickerData objectAtIndex:row] isEqualToString:@"保持体重"]){
        counter = 0;
    }
    else if ([[self.goalPickerData objectAtIndex:row] isEqualToString:@"一星期减0.5公斤"]){
        counter = 1;
    }
    else if ([[self.goalPickerData objectAtIndex:row] isEqualToString:@"一星期减1公斤"]){
        counter = 2;
    }
    else if ([[self.goalPickerData objectAtIndex:row] isEqualToString:@"一星期增加0.5公斤"]){
        counter = 3;
    }
    else{
        counter = 4;
    }
}


-(void)cancelBtnPressed
{
    [self.pickerViewPopup dismissWithClickedButtonIndex:1 animated:YES];
}

#pragma mark -
#pragma mark Picker Date Source Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (pickerTag) {
            
        case 1:
            
            return [self.genderPickerData count];
            
            break;
            
        case 4:
            
            return [self.activenessPickerData count];
            
            break;
        case 5:
            
            return [self.goalPickerData count];
            
            break;
            
            
            
    }
    
    return 0;
}

#pragma mark Picker Delegate Methods

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (pickerTag) {
            
        case 1:
            
            return [self.genderPickerData objectAtIndex:row];
            
            break;
            
        case 4:
            
            return [self.activenessPickerData objectAtIndex:row];
            
            break;
        
        case 5:
            
            return [self.goalPickerData objectAtIndex:row];
            
            break;
            
            
        default:
            break;
    }
    
    return 0;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FTCalculationResult *calculationResultController = segue.destinationViewController;
   
    calculationResultController.caloriesNeeded = self.caloriesNeeded;
    
    calculationResultController.explanationContent = self.explanationContent;
}

- (IBAction)calculatedBtnPressed:(id)sender {
    
    if (self.ageTextField.text.length == 0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"请填写年龄" message:@"" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
        
        return ;
    }
    if (self.genderLabel.text.length == 3) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"请填写性别" message:@"" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
        
        return ;
    }
    
    if (self.weightTextField.text.length == 0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"请填写体重" message:@"" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
        
        return ;
    }
    
    if (self.heightTextField.text.length == 0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"请填写身高" message:@"" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
        
        return ;
    }
    
    if (self.activeLabel.text.length == 2) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"请填写华丽" message:@"" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
        
        return ;
    }
    if (self.goalLabel.text.length == 2) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"请填写目标" message:@"" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
        
        return ;
    }
    
    int b = [self.weightTextField.text intValue] * 10;
    float m = ([self.heightTextField.text intValue] * 6.25);
    int r;
    
    if (gender == 0) {
        r = (5 * [self.ageTextField.text intValue]) + 5;
    }else{
        r = (5 * [self.ageTextField.text intValue]) - 161;
    }
    
    
    int bmr = ((b + m - r)* active) ;
    
    if (counter == 0){
        caloriesbmr = bmr;
        caloriesbmrj = bmr * 4;
        self.goalTypeName = @"保持体重";
        self.explanationContent = @"test1";
    }
    else if (counter == 1){
        caloriesbmr = bmr - 500;
        caloriesbmrj = bmr * 4;
        self.goalTypeName = @"一星期减0.5公斤";
        self.explanationContent = @"test2";
    }
    else if (counter == 2){
        caloriesbmr = bmr - 1000;
        caloriesbmrj = bmr * 4;
        self.goalTypeName = @"一星期减1公斤";
        self.explanationContent = @"test3";
    }
    else if (counter == 3){
        caloriesbmr = bmr + 500;
        caloriesbmrj = bmr * 4;
        self.goalTypeName = @"一星期增加0.5公斤";
        self.explanationContent = @"test4";
    }
    else {
        caloriesbmr = bmr + 1000;
        caloriesbmrj = bmr * 4;
        self.goalTypeName = @"一星期增加1公斤";
        self.explanationContent = @"test5";
    }
    
    self.caloriesNeeded = [NSString stringWithFormat:@"%@你每天需要 %i 卡路里 / %i 千焦 ",self.goalTypeName,caloriesbmr, caloriesbmrj];
    
    self.explanationContent = [NSString stringWithFormat:@"%@",self.explanationContent];
    
    [self.view endEditing:YES];
    
    [self performSegueWithIdentifier:@"CalculationResultController" sender:self];
}


@end
