//
//  SummaryViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NestEggIncome2AppDelegate.h"

@interface SummaryViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtFixed;
@property (strong, nonatomic) IBOutlet UITextField *txtInterestIncome;
@property (strong, nonatomic) IBOutlet UITextField *txtInterestBalance;

@property (strong, nonatomic) IBOutlet UITextField *txtDivIncome;
@property (strong, nonatomic) IBOutlet UITextField *txtDivValue;
@property (strong, nonatomic) IBOutlet UITextField *txtTotIncome;
@property (strong, nonatomic) IBOutlet UITextField *txtTotalBalance;
@property (strong, nonatomic) IBOutlet UITextField *txtSummary;

@end
