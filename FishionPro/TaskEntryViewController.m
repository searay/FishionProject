//
//  TaskEntryViewController.m
//  FishionPro
//
//  Created by srikanth cuddapah on 8/19/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import "TaskEntryViewController.h"

@interface TaskEntryViewController ()

@end

@implementation TaskEntryViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)addNewTask:(id)sender {
    
    NSArray* tasks = [[NSArray alloc] initWithObjects:@"Policy Center Maintainance", @"Agency EDMS Maint",
    @"Bulkloader Maint", @"Agency Near Real time upload",nil];
    
    UIActionSheet* taskSheet = [[UIActionSheet alloc] initWithTitle:@"Select Task"
                    delegate:nil
                    cancelButtonTitle:@"OK"
                    destructiveButtonTitle:@"Cancel"
                    otherButtonTitles:nil, nil];
    
    for(int i=0; i < [tasks count]; i++) {
        UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(0.0, i*40+10, 160.0, 40.0)];
        [button setTitle:[tasks objectAtIndex:i] forState:UIControlStateNormal];
        [taskSheet addSubview:button];
        
    }
    
    [taskSheet showInView:self.view];

}


@end
