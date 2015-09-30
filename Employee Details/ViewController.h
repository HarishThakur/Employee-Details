//
//  ViewController.h
//  Employee Details
//
//  Created by Harish Singh on 30/09/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/**
 *  Added Properties for to show employee details in label
 */
@property (weak, nonatomic) IBOutlet UILabel *labelForEmployeeName;
@property (weak, nonatomic) IBOutlet UILabel *labelForEmployeeID;
@property (weak, nonatomic) IBOutlet UILabel *labelForEmployeeDesignation;
@property (weak, nonatomic) IBOutlet UILabel *labelForEmployeeAddress;
@end

