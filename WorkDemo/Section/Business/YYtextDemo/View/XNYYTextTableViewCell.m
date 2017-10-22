//
//  XNYYTextTableViewCell.m
//  WorkDemo
//
//  Created by ning on 2017/10/22.
//  Copyright © 2017年 ning. All rights reserved.
//

#import "XNYYTextTableViewCell.h"

#import "Masonry.h"
#import "YYText.h"

@implementation XNYYTextTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    self.backgroundColor = [UIColor whiteColor];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    YYLabel *titleLabel = [YYLabel new];
    titleLabel.backgroundColor = [UIColor redColor];
    titleLabel.font = [UIFont systemFontOfSize:15];
    titleLabel.textColor = [UIColor greenColor];
    titleLabel.displaysAsynchronously = YES;
    titleLabel.numberOfLines = 0;
    titleLabel.fadeOnHighlight = NO;
    titleLabel.fadeOnAsynchronouslyDisplay = NO;
    titleLabel.text = @"我们是是刚开始就好了环境好了环境好了环境好了回家回老家互利互惠就很厉害就很厉害环境好了和交互";
    [self.contentView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(18);
        make.right.mas_equalTo(-18);
        make.top.mas_equalTo(18);
        make.bottom.mas_equalTo(-5);
    }];
}

@end
