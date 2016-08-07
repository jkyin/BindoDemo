//
//  BDBaseViewModel.m
//  BindoDemo
//
//  Created by 尹晓宇 on 16/8/7.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import "BDBaseViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation BDBaseViewModel

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    BDBaseViewModel *viewModel = [super allocWithZone:zone];
    
    @weakify(viewModel)
    [[viewModel
      rac_signalForSelector:@selector(init)]
    	subscribeNext:^(id x) {
            @strongify(viewModel)
            [viewModel initialize];
        }];
    
    return viewModel;
}

- (void)initialize {
}

@end
