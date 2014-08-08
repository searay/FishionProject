//
//  FissionProApi.m
//  FishionPro
//
//  Created by srikanth cuddapah on 8/8/14.
//  Copyright (c) 2014 srikanth cuddapah. All rights reserved.
//

#import "FissionProApi.h"

@implementation FissionProApi

#define FISSIONPRO_API_LOGIN_URL @"https://app.fissionpro.com/api/login.json?email=%@&password=%@&remember_me=%@"

// LOGIN TO FISSION PRO

-(NSString*) login:(NSString *)userName withPassword:(NSString *)password rememberMe:(BOOL)remember {
    
    
    NSString* ans = (remember) ? @"1" : @"0";
    NSString* url = [NSString stringWithFormat:FISSIONPRO_API_LOGIN_URL,userName,password,ans];
    
    NSURL *fissionProURL=[NSURL URLWithString:url];
    
    NSURLRequest* request = [[NSURLRequest alloc] initWithURL:fissionProURL];
    NSURLResponse* response = nil;
    NSError* error = nil;
    
    NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    if (error == nil) {
        
        NSString* responseString = [NSString stringWithUTF8String:[data bytes]];
        
        return  responseString;
        
        
    } else {
        return @"NA";
    }
}


@end
