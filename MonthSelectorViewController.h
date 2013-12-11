//
//  MonthSelectorViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NestEggIncome2AppDelegate.h"

@interface MonthSelectorViewController : UIViewController
{
    NSMutableArray *listOfMonthTitles;
    NSMutableArray *listOfMonthAbbrev;
}
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
- (IBAction)btnSummary:(id)sender;

@end
