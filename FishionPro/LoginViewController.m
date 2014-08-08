//
//  LoginViewController.m
//  FishionPro
//
//  Created by srikanth cuddapah on 8/8/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import "LoginViewController.h"
#import "FissionProApi.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize managedObjectContext;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
       
    }
    
    return self;
}

- (void) dismissKeyBoard {
    [self.view endEditing:YES];
}

- (IBAction)authenticate:(id)sender {
    
    if ([self.userNameTextField.text rangeOfString:@"@"].location == NSNotFound) {
        
        [self messageBox:@"Enter valid email address." withTile:@"Invalid username"];
    }
    else {
        
        FissionProApi* fissionApi = [[FissionProApi alloc] init];
        
        NSString* response =[fissionApi login:self.userNameTextField.text
                                 withPassword:self.passwordTextField.text
                                   rememberMe:YES];
        
    }
        
    return;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if([textField isEqual:self.userNameTextField]) {
        
        if(textField.text.length > 0)
            [self.loginActionButton setEnabled:YES];
            
        return (textField.text.length < 35);
    }
    else if([textField isEqual:self.passwordTextField]) {
        
        if(textField.text.length > 0)
            [self.loginActionButton setEnabled:YES];
        
        return (textField.text.length < 15);
    }
    else {
        return YES;
    }
}


- (void) messageBox : (NSString*) message withTile : (NSString*) title {
    UIAlertView* msgBox = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [msgBox show];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer* tapGestureRecognizer = [[UITapGestureRecognizer alloc]
                                                    initWithTarget:self
                                                    action:@selector(dismissKeyBoard)];
    tapGestureRecognizer.cancelsTouchesInView = NO;
    
    [self.view addGestureRecognizer:tapGestureRecognizer];
    [self.userNameTextField setDelegate:self];
    [self.passwordTextField setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
