//
//  MasterViewController.h
//  FishionPro
//
//  Created by srikanth cuddapah on 8/4/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
