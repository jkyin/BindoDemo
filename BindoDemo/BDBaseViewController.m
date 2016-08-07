//
//  BDBaseViewController.m
//  BindoDemo
//
//  Created by 尹晓宇 on 16/8/7.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import "BDBaseViewController.h"

@implementation BDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
    [self bindViewModel];
}

- (void)setup {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)bindViewModel {
    
}

@end
