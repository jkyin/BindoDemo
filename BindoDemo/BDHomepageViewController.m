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
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [rightButton setTitle:self.viewModel.rightButtonTitle forState:UIControlStateNormal];
    [rightButton sizeToFit];
    rightButton.rac_command = self.viewModel.executedNewOrder;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    
}

#pragma mark - UITableView Delegate

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return <#expression#>
//}

//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//}
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//}

#pragma mark - UITableView DataSource

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//}
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    
//}

@end
