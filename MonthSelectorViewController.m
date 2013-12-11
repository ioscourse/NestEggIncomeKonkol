//
//  MonthSelectorViewController.m
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MonthSelectorViewController.h"

@interface MonthSelectorViewController ()

@end

@implementation MonthSelectorViewController
@synthesize picker;
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

-(void)viewWillAppear:(BOOL)animated
{
    [self Loaddatabase];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) Loaddatabase
{
   
    listOfMonthTitles = [[NSMutableArray alloc] init];
    listOfMonthAbbrev= [[NSMutableArray alloc] init];
    // Add Month Titles.
    [listOfMonthTitles addObject:@"January"];
    [listOfMonthTitles addObject:@"February"];
    [listOfMonthTitles addObject:@"March"];
    [listOfMonthTitles addObject:@"April"];
    [listOfMonthTitles addObject:@"May"];
    [listOfMonthTitles addObject:@"June"];
    [listOfMonthTitles addObject:@"July"];
    [listOfMonthTitles addObject:@"August"];
    [listOfMonthTitles addObject:@"September"];
    [listOfMonthTitles addObject:@"October"];
    [listOfMonthTitles addObject:@"November"];
    [listOfMonthTitles addObject:@"December"];
    
    // Add Month ID
    [listOfMonthAbbrev addObject:@"jan"];
    [listOfMonthAbbrev addObject:@"feb"];
    [listOfMonthAbbrev addObject:@"mar"];
    [listOfMonthAbbrev addObject:@"apr"];
    [listOfMonthAbbrev addObject:@"may"];
    [listOfMonthAbbrev addObject:@"jun"];
    [listOfMonthAbbrev addObject:@"jul"];
    [listOfMonthAbbrev addObject:@"aug"];
    [listOfMonthAbbrev addObject:@"sep"];
    [listOfMonthAbbrev addObject:@"oct"];
    [listOfMonthAbbrev addObject:@"nov"];
    [listOfMonthAbbrev addObject:@"dec"];
    //if first time select current month
    if (FixedID==0)
    {
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:[NSDate date]];
        
        NSInteger month = [components month];
        FixedID=month-1;
        strMonthTitle=[listOfMonthTitles objectAtIndex:month-1];
        strMonthAbbrev=[listOfMonthAbbrev objectAtIndex:month-1];
    }

    
    [picker reloadAllComponents];
    [picker selectRow:FixedID inComponent:0 animated:YES];

  
}
//PickerViewController.m
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    
    return 1;
}
//PickerViewController.m
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [listOfMonthTitles count];
}
//PickerViewController.m
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [listOfMonthTitles objectAtIndex:row];
}
//PickerViewController.m
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    strMonthTitle=[listOfMonthTitles objectAtIndex:row];
    strMonthAbbrev=[listOfMonthAbbrev objectAtIndex:row];
   FixedID=row;
}
- (IBAction)btnSummary:(id)sender {
}
@end
