//
//  BDHomepageViewController.m
//  BindoDemo
//
//  Created by 尹晓宇 on 16/8/7.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import "BDHomepageViewController.h"
#import "BDHomepageViewModel.h"

@interface BDHomepageViewController ()
@property (nonatomic, weak) BDHomepageViewModel *viewModel;
@end

@implementation BDHomepageViewController

- (instancetype)initWithViewModel:(BDHomepageViewModel *)viewModel {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _viewModel = viewModel;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self bindViewModel];
}

- (void)bindViewModel {
    [super bindViewModel];
    
    self.title = self.viewModel.title;
}

@end
