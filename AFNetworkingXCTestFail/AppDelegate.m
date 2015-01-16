//
//  AppDelegate.m
//  AFNetworkingXCTestFail
//
//  Created by Harold on 16/01/15.
//  Copyright (c) 2015 hd-apps.com. All rights reserved.
//

#import "AppDelegate.h"
#import "AFNetworking.h"

#import "Website.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self test];
    [self test1];
    NSLog(@"But no crash when running the App with same code used for tesing");
    return YES;
}

- (void)test {
    Website *website = [[Website alloc] init];
    
    AFHTTPRequestOperationManager *firstHTTPRequestManager;
    firstHTTPRequestManager = website.httpRequestManager;
}

- (void)test1 {
    NSLog(@"!!! - Initializing a Second HttpRequestManager which will cause EXC_BAD_ACCESS on AFHTTPRequestSerializer - addObserver keyPath:allowsCellularAccess");
    AFHTTPRequestOperationManager *secondHTTPRequestManager;
    secondHTTPRequestManager =  [[AFHTTPRequestOperationManager alloc] initWithBaseURL:
                                 [NSURL URLWithString:@"http://http://www.example.com/"]];
}

@end
