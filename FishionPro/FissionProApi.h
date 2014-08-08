//
//  FissionProApi.h
//  FishionPro
//
//  Created by srikanth cuddapah on 8/8/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FissionProApi : NSObject


-(NSString*) login : (NSString*) userName withPassword : (NSString*) password rememberMe : (BOOL) remember;
#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);

@end
