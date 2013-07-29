//
//  MainViewController.m
//  XYLog
//
//  Created by yanglishuan on 13-7-29.
//  Copyright (c) 2013年 yls. All rights reserved.
//

#import "MainViewController.h"
#import "XYLog.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSNumber *nu = @(2013);
    XYLog(@"nu = %@", nu);
    
    NSString *str = @"hello, this is XYLog!";
    XYLog(@"%@", str);
    
    NSArray *arr = @[@"1", @"2", @"3"];
    XYLog(@"%@", arr);
    
    NSDictionary *dict = @{@"author": @"xue zhang"};
    XYLog(@"%@", dict);
    
    NSDate *today = [NSDate date];
    XYLog(@"today = %@", today);
    
    XYLog_s(@"%@", today);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
