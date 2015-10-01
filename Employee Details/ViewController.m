//
//  ViewController.m
//  Employee Details
//
//  Created by Harish Singh on 30/09/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSMutableArray *arrayForEmployeeDetails;
    NSObject *data;
    int index;
    NSDictionary *tempDictionary;
}
@end

@implementation ViewController

/**
 *  Initialized index value to 0 to show first employee details at runtime
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.\[];
    [self addEmployeeDetails];
    index = 0;
    tempDictionary = [self getvalueAtIndex:index];
    
    _labelForEmployeeName.text = tempDictionary[@"name"];
    _labelForEmployeeID.text = tempDictionary[@"empId"];
    _labelForEmployeeDesignation.text = tempDictionary[@"designation"];
    _labelForEmployeeAddress.text = tempDictionary[@"address"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  Method implementation to get Next Employee details
 *
 *  @param sender is an object that sends message to buttonPressedToGetNextEmployeeDetail to pass the control
 */
- (IBAction)buttonPressedToGetNextEmployeeDetail:(id)sender {
    ++index;
    if (index > arrayForEmployeeDetails.count-1) {
        index = arrayForEmployeeDetails.count-1;
        return;
    }
    tempDictionary = [self getvalueAtIndex:index];
    
    _labelForEmployeeName.text = tempDictionary[@"name"];
    _labelForEmployeeID.text = tempDictionary[@"empId"];
    _labelForEmployeeDesignation.text = tempDictionary[@"designation"];
    _labelForEmployeeAddress.text = tempDictionary[@"address"];
}

/**
 *  Method implementation to get Previous Employee details
 *
 *  @param sender is an object that sends message to buttonPressedToGetPreviousEmployeeDetail to pass the control
 */
- (IBAction)buttonPressedToGetPreviousEmployeeDetail:(id)sender {
    --index;
    if (index<0) {
        index = 0;
        return;
    }
    tempDictionary = [self getvalueAtIndex:index];
    
    _labelForEmployeeName.text = tempDictionary[@"name"];
    _labelForEmployeeID.text = tempDictionary[@"empId"];
    _labelForEmployeeDesignation.text = tempDictionary[@"designation"];
    _labelForEmployeeAddress.text = tempDictionary[@"address"];
}

/**
 *  Method implementation return employee details stored in array at particular index
 *
 *  @param indexNumber is the index value of arrayForEmployeeDetails
 *
 *  @return employee details stored in array at particular index
 */
-(NSString*)getvalueAtIndex:(int)indexNumber
{
    return [arrayForEmployeeDetails objectAtIndex:indexNumber];
}

/**
 *  Method to add employee deatils in a dictionary and add it to an array
 */
-(void)addEmployeeDetails {
    NSDictionary *employee1 = @{ @"name": @"John", @"empId": @"001", @"designation":@"SSE", @"address":@"Bangalore"};
    NSDictionary *employee2 = @{ @"name": @"Shawn", @"empId": @"002", @"designation":@"SE", @"address":@"Noida"};
    NSDictionary *employee3 = @{ @"name": @"Peter", @"empId": @"003", @"designation":@"PM", @"address":@"Chennai"};
    NSDictionary *employee4 = @{ @"name": @"Bob", @"empId": @"004", @"designation":@"ASE", @"address":@"Bangalore"};
    NSDictionary *employee5 = @{ @"name": @"Ted", @"empId": @"005", @"designation":@"SSE", @"address":@"Mumbai"};
  
    arrayForEmployeeDetails = [NSMutableArray array];
    [arrayForEmployeeDetails addObject:employee1];
    [arrayForEmployeeDetails addObject:employee2];
    [arrayForEmployeeDetails addObject:employee3];
    [arrayForEmployeeDetails addObject:employee4];
    [arrayForEmployeeDetails addObject:employee5];
}

@end
