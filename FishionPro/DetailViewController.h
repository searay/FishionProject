//
//  DetailViewController.h
//  FishionPro
//
//  Created by srikanth cuddapah on 8/4/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
