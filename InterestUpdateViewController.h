//
//  InterestUpdateViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InterestUpdateViewController : UIViewController
@property (strong) NSManagedObject *intdb;
-(IBAction) doneEditing:(id) sender;
@property (strong, nonatomic) IBOutlet UIScrollView *Scrollview;
- (IBAction)btnSave:(id)sender;
- (IBAction)btnReport:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtSource;
@property (strong, nonatomic) IBOutlet UITextField *txtPayments;
@property (strong, nonatomic) IBOutlet UITextField *txtBalance;
@property (strong, nonatomic) IBOutlet UITextField *txtRate;
@property (strong, nonatomic) IBOutlet UISwitch *jan;
@property (strong, nonatomic) IBOutlet UISwitch *feb;
@property (strong, nonatomic) IBOutlet UISwitch *mar;
@property (strong, nonatomic) IBOutlet UISwitch *apr;
@property (strong, nonatomic) IBOutlet UISwitch *may;
@property (strong, nonatomic) IBOutlet UISwitch *jun;
@property (strong, nonatomic) IBOutlet UISwitch *jul;
@property (strong, nonatomic) IBOutlet UISwitch *aug;
@property (strong, nonatomic) IBOutlet UISwitch *sep;
@property (strong, nonatomic) IBOutlet UISwitch *oct;
@property (strong, nonatomic) IBOutlet UISwitch *nov;
@property (strong, nonatomic) IBOutlet UISwitch *dec;
@property (strong, nonatomic) IBOutlet UIButton *btnSave;

@end
