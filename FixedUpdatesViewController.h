//
//  FixedUpdatesViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FixedUpdatesViewController : UIViewController
@property (strong) NSManagedObject *loandb;

- (IBAction)btnSave:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnSave;
@property (strong, nonatomic) IBOutlet UITextField *Source;
@property (strong, nonatomic) IBOutlet UITextField *PayAmount;
@property (strong, nonatomic) IBOutlet UITextField *jan;
@property (strong, nonatomic) IBOutlet UITextField *feb;
@property (strong, nonatomic) IBOutlet UITextField *mar;
@property (strong, nonatomic) IBOutlet UITextField *apr;
@property (strong, nonatomic) IBOutlet UITextField *may;
@property (strong, nonatomic) IBOutlet UITextField *jun;
@property (strong, nonatomic) IBOutlet UITextField *jul;
@property (strong, nonatomic) IBOutlet UITextField *aug;
@property (strong, nonatomic) IBOutlet UITextField *sep;
@property (strong, nonatomic) IBOutlet UITextField *oct;
@property (strong, nonatomic) IBOutlet UITextField *nov;
@property (strong, nonatomic) IBOutlet UITextField *dec;
- (IBAction)btnReport:(id)sender;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
-(IBAction) doneEditing:(id) sender;
@end
