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
    
    NSArray* dayArray = [[NSArray alloc] initWithObjects:@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",nil];
    NSArray* timeArray = [[NSArray alloc] initWithObjects:@"12",@"8",@"2",@"21",@"13", nil];
    NSMutableArray* colorArr = [[NSMutableArray alloc] init];
    
    [colorArr addObject:[UIColor colorWithRed:178/255.0 green:197/255.0 blue:253/255.0 alpha:1]];
    [colorArr addObject:[UIColor colorWithRed:255/255.0 green:163/255.0 blue:192/255.0 alpha:1]];
    [colorArr addObject:[UIColor colorWithRed:255/255.0 green:205/255.0 blue:108/255.0 alpha:1]];
    [colorArr addObject:[UIColor colorWithRed:254/255.0 green:251/255.0 blue:180/255.0 alpha:1]];
    [colorArr addObject:[UIColor colorWithRed:186/255.0 green:246/255.0 blue:192/255.0 alpha:1]];
    
    TimeEntryCell* cell = [tableView dequeueReusableCellWithIdentifier:@"TimeEntryCell"];
    
    if(cell == nil) {
        NSArray* nibs = [[NSBundle mainBundle] loadNibNamed:@"TimeEntryCell" owner:self options:nil];
        cell = [nibs objectAtIndex:0];
    }
    
    [cell.dayLabel setText:[dayArray objectAtIndex:indexPath.row]];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell.accessoryView setBackgroundColor:[UIColor lightGrayColor]];

    NSString* str = (NSString*) [timeArray objectAtIndex:indexPath.row];
    int width = [str intValue];
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(120, 20, (width*9),40
                                                            )];
    
    view.backgroundColor = [colorArr objectAtIndex:indexPath.row];
    [view.layer setBorderColor: [UIColor grayColor].CGColor];
    
    view.tintColor = [UIColor colorWithRed:178 green:197 blue:253 alpha:1];
    view.layer.shadowColor = [UIColor grayColor].CGColor;
    [view.layer setShadowOffset:CGSizeMake(0, 5)];
    [view.layer setShadowOpacity:0.5];
    [view.layer setShadowRadius:1.5];
    

    [cell.contentView addSubview:view];
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(125  ,27, 200, 30)];
    
    NSString* text =[ NSString stringWithFormat:@"%d hrs",width];
    [label setText:text];
    [label setFont:[UIFont fontWithName:@"Hiragino Mincho ProN" size:14.0]];
    
    [cell.contentView addSubview:label];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 76;
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
