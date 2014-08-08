//
//  LoginViewController.h
//  FishionPro
//
//  Created by srikanth cuddapah on 8/8/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *userRoleSegmentControl;

@property (weak, nonatomic) IBOutlet UIButton *loginActionButton;

-(void) editCompletedEvent : (id) sender;

@end
