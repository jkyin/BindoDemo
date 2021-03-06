//
//  BDHomepageViewModel.m
//  BindoDemo
//
//  Created by 尹晓宇 on 16/8/7.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import "BDHomepageViewModel.h"

@implementation BDHomepageViewModel

- (void)initialize {
    [super initialize];
    
    self.title = @"Bindo Order Demo";
    self.rightButtonTitle = @"New Order";
    
    self.executedNewOrder = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        return [self executedNewOrderSignal];
    }];
}

- (RACSignal *)executedNewOrderSignal {
    return [RACSignal empty];
}

@end
