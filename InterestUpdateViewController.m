//
//  InterestUpdateViewController.m
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "InterestUpdateViewController.h"

@interface InterestUpdateViewController ()

@end

@implementation InterestUpdateViewController
@synthesize intdb,btnSave,txtSource,txtRate,txtBalance,txtPayments,jan,feb,mar,apr,may,jun, jul, aug, sep, oct, nov, dec, Scrollview;
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
    if (self.intdb) {
        [self.txtSource setText:[self.intdb valueForKey:@"source"]];
        [self.txtPayments setText:[self.intdb valueForKey:@"paymentsperyear"]];
        [self.txtBalance setText:[self.intdb valueForKey:@"balance"]];
          [self.txtRate setText:[self.intdb valueForKey:@"rate"]];
        if ([[self.intdb valueForKey:@"jan"]  isEqual: @"1"])
        {
            [self.jan setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"feb"]  isEqual: @"1"])
        {
            [self.feb setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"mar"]  isEqual: @"1"])
        {
            [self.mar setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"apr"]  isEqual: @"1"])
        {
            [self.apr setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"may"]  isEqual: @"1"])
        {
            [self.may setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"jun"]  isEqual: @"1"])
        {
            [self.jun setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"jul"]  isEqual: @"1"])
        {
            [self.jul setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"aug"]  isEqual: @"1"])
        {
            [self.aug setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"sep"]  isEqual: @"1"])
        {
            [self.sep setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"oct"]  isEqual: @"1"])
        {
            [self.oct setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"nov"]  isEqual: @"1"])
        {
            [self.nov setOn:YES animated:YES];
        }
        if ([[self.intdb valueForKey:@"dec"]  isEqual: @"1"])
        {
            [self.dec setOn:YES animated:YES];
        }
        
        [btnSave setTitle:@"Update" forState:UIControlStateNormal];
        double dbalanceinput = [txtBalance.text doubleValue];
        double dannualpercentagerate = [txtRate.text doubleValue];
        double dpaymentsperyear = [txtPayments.text doubleValue];
        double total = dbalanceinput * ((dannualpercentagerate/100)/dpaymentsperyear);
        NSString *totalbalance = [[NSString alloc] initWithFormat:@"%.2f", total];
        [self.intdb setValue:totalbalance forKey:@"totalinterest"];

    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];

}
-(void)dismissKeyboard {
    [txtSource resignFirstResponder];
    [txtBalance resignFirstResponder];
      [txtPayments resignFirstResponder];
    [jan resignFirstResponder];
    [feb resignFirstResponder];
    [mar resignFirstResponder];
    [apr resignFirstResponder];
    [may resignFirstResponder];
    [jun resignFirstResponder];
    [jul resignFirstResponder];
    [aug resignFirstResponder];
    [sep resignFirstResponder];
    [oct resignFirstResponder];
    [nov resignFirstResponder];
    [dec resignFirstResponder];
}
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
    
}
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    if (self.intdb) {
        // Update existing device
      
        [self.intdb setValue:self.txtSource.text forKey:@"source"];
        [self.intdb setValue:self.txtPayments.text forKey:@"paymentsperyear"];
        [self.intdb setValue:self.txtBalance.text forKey:@"balance"];
           [self.intdb setValue:self.txtRate.text forKey:@"rate"];
        if (jan.on)
        {
            [self.intdb setValue:@"1" forKey:@"jan"];
        }
        else
        {
             [self.intdb setValue:@"0" forKey:@"jan"];
        }
        if (feb.on)
        {
            [self.intdb setValue:@"1" forKey:@"feb"];
        }
        else
        {
             [self.intdb setValue:@"0" forKey:@"feb"];
        }
        if (mar.on)
        {
            [self.intdb setValue:@"1" forKey:@"mar"];
        }
        else{
             [self.intdb setValue:@"0" forKey:@"mar"];
        }
        if (apr.on)
        {
            [self.intdb setValue:@"1" forKey:@"apr"];
        }
        else
        {
            [self.intdb setValue:@"0" forKey:@"apr"];
        }
        if (may.on)
        {
            [self.intdb setValue:@"1" forKey:@"may"];
        }
        else
        {
             [self.intdb setValue:@"0" forKey:@"may"];
        }
        if (jun.on)
        {
            [self.intdb setValue:@"1" forKey:@"jun"];
        }
        else
        {
            [self.intdb setValue:@"0" forKey:@"jun"];

        }
        if (jul.on)
        {
            [self.intdb setValue:@"1" forKey:@"jul"];
        }
        else
        {
            [self.intdb setValue:@"0" forKey:@"jul"];
        }
        if (aug.on)
        {
            [self.intdb setValue:@"1" forKey:@"aug"];
        }
        else
        {
            [self.intdb setValue:@"0" forKey:@"aug"];

        }
        if (sep.on)
        {
            [self.intdb setValue:@"1" forKey:@"sep"];
        }
        else{
            [self.intdb setValue:@"0" forKey:@"sep"];

        }
        if (oct.on)
        {
            [self.intdb setValue:@"1" forKey:@"oct"];
        }
        else
        {
            [self.intdb setValue:@"0" forKey:@"oct"];
        }
        if (nov.on)
        {
            [self.intdb setValue:@"1" forKey:@"nov"];
        }
        else
        {
            [self.intdb setValue:@"0" forKey:@"nov"];
        }
        if (dec.on)
        {
            [self.intdb setValue:@"1" forKey:@"dec"];
        }
        else
        {
            [self.intdb setValue:@"0" forKey:@"dec"];
        }
        double dbalanceinput = [txtBalance.text doubleValue];
        double dannualpercentagerate = [txtRate.text doubleValue];
        double dpaymentsperyear = [txtPayments.text doubleValue];
        double total = dbalanceinput * ((dannualpercentagerate/100)/dpaymentsperyear);
        NSString *totalbalance = [[NSString alloc] initWithFormat:@"%.2f", total];
        [self.intdb setValue:totalbalance forKey:@"totalinterest"];

        //interestrate.text=[[NSString alloc] initWithFormat:@"@%f", total];
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Tblinterest" inManagedObjectContext:context];
        [newDevice setValue:self.txtSource.text forKey:@"source"];
        [newDevice setValue:self.txtPayments.text forKey:@"paymentsperyear"];
         [newDevice setValue:self.txtBalance.text forKey:@"balance"];
        if (jan.on)
        {
            [newDevice setValue:@"1" forKey:@"jan"];
        }
        if (feb.on)
        {
               [newDevice setValue:@"1" forKey:@"feb"];
        }
        if (mar.on)
        {
             [newDevice setValue:@"1" forKey:@"mar"];
        }
        if (apr.on)
        {
               [newDevice setValue:@"1" forKey:@"apr"];
        }
        if (may.on)
        {
              [newDevice setValue:@"1" forKey:@"may"];
        }
        if (jun.on)
        {
               [newDevice setValue:@"1" forKey:@"jun"];        }
        if (jul.on)
        {
                [newDevice setValue:@"1" forKey:@"jul"];
        }
        if (aug.on)
        {
               [newDevice setValue:@"1" forKey:@"aug"];
        }
        if (sep.on)
        {
              [newDevice setValue:@"1" forKey:@"sep"];
        }
        if (oct.on)
        {
               [newDevice setValue:@"1" forKey:@"oct"];
        }
        if (nov.on)
        {
                [newDevice setValue:@"1" forKey:@"noc"];
        }
        if (dec.on)
        {
               [newDevice setValue:@"1" forKey:@"dec"];
        }
        double dbalanceinput = [txtBalance.text doubleValue];
        double dannualpercentagerate = [txtRate.text doubleValue];
        double dpaymentsperyear = [txtPayments.text doubleValue];
        double total = dbalanceinput * ((dannualpercentagerate/100)/dpaymentsperyear);
        NSString *totalbalance = [[NSString alloc] initWithFormat:@"%.2f", total];
        [self.intdb setValue:totalbalance forKey:@"totalinterest"];

    }
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (IBAction)btnReport:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [Scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [Scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [Scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [Scrollview setContentOffset:CGPointZero animated:YES];
}
@end
