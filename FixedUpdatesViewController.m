//
//  FixedUpdatesViewController.m
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "FixedUpdatesViewController.h"

@interface FixedUpdatesViewController ()

@end

@implementation FixedUpdatesViewController
@synthesize loandb,Source,PayAmount,jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec,scrollview,btnSave;
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
	 if (self.loandb) {
        [self.Source setText:[self.loandb valueForKey:@"source"]];
        [self.PayAmount setText:[self.loandb valueForKey:@"paymentamount"]];
        [self.jan setText:[self.loandb valueForKey:@"jan"]];
        [self.feb setText:[self.loandb valueForKey:@"feb"]];
        [self.mar setText:[self.loandb valueForKey:@"mar"]];
        [self.apr setText:[self.loandb valueForKey:@"apr"]];
        [self.may setText:[self.loandb valueForKey:@"may"]];
        [self.jun setText:[self.loandb valueForKey:@"jun"]];
        [self.jul setText:[self.loandb valueForKey:@"jul"]];
        [self.aug setText:[self.loandb valueForKey:@"aug"]];
        [self.sep setText:[self.loandb valueForKey:@"sep"]];
        [self.oct setText:[self.loandb valueForKey:@"oct"]];
        [self.nov setText:[self.loandb valueForKey:@"nov"]];
        [self.dec setText:[self.loandb valueForKey:@"dec"]];
         [btnSave setTitle:@"Update" forState:UIControlStateNormal];
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    // Do any additional setup after loading the view.
    // Do any additional setup after loading the view.
   

    
}
-(void)dismissKeyboard {
    [Source resignFirstResponder];
    [PayAmount resignFirstResponder];
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
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    int mo;
    NSString *OnorOff;
    if (self.loandb) {
        // Update existing device
       
        [self.loandb setValue:self.Source.text forKey:@"source"];
        [self.loandb setValue:self.PayAmount.text forKey:@"paymentamount"];
        mo = [self.jan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jan"];
        mo = [self.feb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"feb"];
        mo = [self.mar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"mar"];
        mo = [self.apr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"apr"];
        mo = [self.may.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"may"];
        mo = [self.jun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jun"];
        mo = [self.jul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jul"];
        mo = [self.aug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"aug"];
        mo = [self.sep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"sep"];
        mo = [self.oct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"oct"];  mo = [self.PayAmount.text doubleValue];
        mo = [self.nov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"nov"];
        mo = [self.dec.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"dec"];
        
               //interestrate.text=[[NSString alloc] initWithFormat:@"@%f", total];
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Tblfix" inManagedObjectContext:context];
        [newDevice setValue:self.Source.text forKey:@"source"];
        [newDevice setValue:self.PayAmount.text forKey:@"paymentamount"];
        [newDevice setValue:self.jan.text forKey:@"jan"];
        [newDevice setValue:self.feb.text forKey:@"feb"];
        [newDevice setValue:self.mar.text forKey:@"mar"];
        [newDevice setValue:self.apr.text forKey:@"apr"];
        [newDevice setValue:self.may.text forKey:@"may"];
        [newDevice setValue:self.jun.text forKey:@"jun"];
        [newDevice setValue:self.jul.text forKey:@"jul"];
        [newDevice setValue:self.aug.text forKey:@"aug"];
        [newDevice setValue:self.sep.text forKey:@"sep"];
        [newDevice setValue:self.oct.text forKey:@"oct"];
        [newDevice setValue:self.nov.text forKey:@"nov"];
        [newDevice setValue:self.dec.text forKey:@"dec"];
        mo = [self.jan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jan"];
        mo = [self.feb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"feb"];
        mo = [self.mar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"mar"];
        mo = [self.apr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"apr"];
        mo = [self.may.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"may"];
        mo = [self.jun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jun"];
        mo = [self.jul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jul"];
        mo = [self.aug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"aug"];
        mo = [self.sep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"sep"];
        mo = [self.oct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"oct"];  mo = [self.PayAmount.text doubleValue];
        mo = [self.nov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"nov"];
        mo = [self.dec.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"dec"];
    
        
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
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [scrollview setContentOffset:CGPointZero animated:YES];
}

@end
