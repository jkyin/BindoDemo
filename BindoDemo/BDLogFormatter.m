//
//  BDLogFormatter.m
//  BindoDemo
//
//  Created by 尹晓宇 on 16/8/7.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import "BDLogFormatter.h"

@implementation BDLogFormatter

#pragma mark - DDLogFormatter

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *prefix;
    switch (logMessage.flag) {
        case DDLogFlagError    : prefix = @"!!错误!!"; break;
        case DDLogFlagWarning  : prefix = @"!!警告!!"; break;
        case DDLogFlagInfo     : prefix = @""; break;
        case DDLogFlagDebug    : prefix = @""; break;
        default                : prefix = @""; break;
    }
    
    return [NSString stringWithFormat:@"%@ %@[line %lu] ==> %@", prefix, logMessage.function, (unsigned long)logMessage.line, logMessage.message];
}

@end
