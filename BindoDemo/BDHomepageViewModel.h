//
//  BDHomepageViewModel.h
//  BindoDemo
//
//  Created by 尹晓宇 on 16/8/7.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import "BDBaseViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface BDHomepageViewModel : BDBaseViewModel

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *rightButtonTitle;
@property (nonatomic, strong) RACCommand *executedNewOrder;

@end
