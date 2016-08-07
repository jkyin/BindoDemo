//
//  UIApplication+BDVendor.m
//  BindoDemo
//
//  Created by 尹晓宇 on 16/8/7.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import "UIApplication+BDVendor.h"
#import "BDLogFormatter.h"

@implementation UIApplication (BDVendor)

+ (void)bd_setupDDLog {
    // DDLog
    BDLogFormatter *logFormatter = [BDLogFormatter new];
    [[DDASLLogger sharedInstance] setLogFormatter:logFormatter];
    [[DDTTYLogger sharedInstance] setLogFormatter:logFormatter];
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor colorWithRed:0.439 green:0.443 blue:0.439 alpha:1.000]
                                     backgroundColor:nil
                                             forFlag:DDLogFlagInfo];
}

@end
