//
//  TimeEntryCellTableViewCell.h
//  FishionPro
//
//  Created by srikanth cuddapah on 8/8/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeEntryCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dayLabel;
@property (weak, nonatomic) IBOutlet UIView *progressLabel;
@property (weak, nonatomic) IBOutlet UIView *progressContainer;

@end
