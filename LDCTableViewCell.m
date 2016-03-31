//
//  LDCTableViewCell.m
//  ShapeViewDemo
//
//  Created by 花生 on 16/3/31.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "LDCTableViewCell.h"

@implementation LDCTableViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setLdcViewWithloctaion:(LDCViewLocation)ldcLocation imageName:(NSString *)ldcImageName{
    CGRect frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150);
   // frame = self.frame;
    _ldcView = [[LDCView alloc] initWithFrame:frame location:ldcLocation];
    [self.contentView addSubview:_ldcView];
     _ldcView.image = [UIImage imageNamed:ldcImageName];
    
    _ldcLabel = [[UILabel alloc]init];
    _ldcLabel.frame = frame;
    _ldcLabel.text = ldcImageName;
    [self.contentView addSubview:_ldcLabel];
}


@end
