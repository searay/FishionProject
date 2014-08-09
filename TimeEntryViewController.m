//
//  TimeEntryViewController.m
//  FishionPro
//
//  Created by srikanth cuddapah on 8/8/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import "TimeEntryViewController.h"
#import "TimeEntryCell.h"


@interface TimeEntryViewController ()

@end

@implementation TimeEntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray* dayArray = [[NSArray alloc] initWithObjects:@"MON",@"TUE",@"WED",@"THU",@"FRI",@"SAT",@"SUN",nil];
    
    NSString* cellId = @"cellRowId";
    
    TimeEntryCell* cell = [tableView dequeueReusableCellWithIdentifier:@"TimeEntryCell"];
    
    if(cell == nil) {
        NSArray* nibs = [[NSBundle mainBundle] loadNibNamed:@"TimeEntryCell" owner:self options:nil];
        cell = [nibs objectAtIndex:0];
    }
    
    [cell.dayLabel setText:[dayArray objectAtIndex:indexPath.row]];

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self timeEntryTableView] setDelegate:self];
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

@end
