//
//  XNYYTextViewController.m
//  WorkDemo
//
//  Created by ning on 2017/10/22.
//  Copyright © 2017年 ning. All rights reserved.
//

#import "XNYYTextViewController.h"

#import "XNYYTextTableViewCell.h"

#import "UIColor+Hex.h"
#import "Masonry.h"

static NSString *const kXNYYTextTableViewCellIdentifier = @"kXNYYTextTableViewCellIdentifier";

@interface XNYYTextViewController () <
UITableViewDataSource,
UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation XNYYTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

- (void)setupView {
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark UITableViewDelegate && UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XNYYTextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kXNYYTextTableViewCellIdentifier];
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    ZCSWorkshopMembershipResDTO *model = self.dataArray[indexPath.row];
//    [TalkingData trackEvent:[NSString stringWithFormat:@"推荐用户-%@", model.username] label:nil parameters:nil];
//    ZBJWPersonalHomeViewController *personalHomeVC = [[ZBJWPersonalHomeViewController alloc] init];
//    personalHomeVC.userId = model.userId;
//    personalHomeVC.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:personalHomeVC animated:YES];
}

#pragma mark getter

- (UITableView *)tableView {
    if(!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        _tableView.backgroundColor = [UIColor zbj_colorFromHexValue:0xffffff];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.rowHeight = 100;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        [_tableView setShowsHorizontalScrollIndicator:NO];
        [_tableView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_tableView registerClass:[XNYYTextTableViewCell class] forCellReuseIdentifier:kXNYYTextTableViewCellIdentifier];
    }
    return  _tableView;
}

@end
