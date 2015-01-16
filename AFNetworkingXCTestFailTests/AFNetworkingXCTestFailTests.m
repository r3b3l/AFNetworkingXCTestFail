//
//  AFNetworkingXCTestFailTests.m
//  AFNetworkingXCTestFailTests
//
//  Created by Harold on 16/01/15.
//  Copyright (c) 2015 hd-apps.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AFNetworking.h"

#import "Website.h"

@interface AFNetworkingXCTestFailTests : XCTestCase
@end

@implementation AFNetworkingXCTestFailTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
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
