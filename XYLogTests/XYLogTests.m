//
//  XYLogTests.m
//  XYLogTests
//
//  Created by yls on 13-7-1.
//  Copyright (c) 2013年 yls. All rights reserved.
//

#import "XYLogTests.h"

@implementation XYLogTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testXYLog
{
    NSNumber *nu = @(2013);
    XYLog(@"nu = %@", nu);
    
    NSString *str = @"hello, this is XYLog!";
    XYLog(@"%@", str);
    
    NSArray *arr = @[@"1", @"2", @"3"];
    XYLog(@"%@", arr);
    
    NSDictionary *dict = @{@"作者": @"学长"};
    XYLog(@"%@", dict);
    
    NSDate *today = [NSDate date];
    XYLog(@"today = %@", today);
}

@end
