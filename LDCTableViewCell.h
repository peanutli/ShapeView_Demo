//
//  LDCTableViewCell.h
//  ShapeViewDemo
//
//  Created by 花生 on 16/3/31.
//  Copyright © 2016年 花生. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LDCView.h"

@interface LDCTableViewCell : UITableViewCell

@property (nonatomic,strong)LDCView *ldcView;
@property (nonatomic,retain)UILabel *ldcLabel;

- (void)setLdcViewWithloctaion:(LDCViewLocation)ldcLocation imageName:(NSString *)ldcImageName;

@end
