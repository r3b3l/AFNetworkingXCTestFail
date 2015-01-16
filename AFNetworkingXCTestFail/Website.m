//
//  Website.m
//  AFNetworkingXCTestFail
//
//  Created by Harold on 16/01/15.
//  Copyright (c) 2015 hd-apps.com. All rights reserved.
//

#import "Website.h"
#import "AFNetworking.h"

@interface Website ()
@end

@implementation Website

- (void)dealloc {
    NSLog(@"-- Website dealloc --");
    self.httpRequestManager = nil;
}

- (AFHTTPRequestOperationManager *)httpRequestManager {
    if (!_httpRequestManager) {
        NSLog(@"-- Initializing AFHTTPRequestOperationManager --");
        _httpRequestManager =  [[AFHTTPRequestOperationManager alloc] initWithBaseURL:
                                [NSURL URLWithString:@"http://google.com"]];
    }
    return _httpRequestManager;
}

@end
