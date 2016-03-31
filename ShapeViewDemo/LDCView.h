//
//  LDCView.h
//  UIBezierPath_CAShapeLayer
//
//  Created by 花生 on 16/3/30.
//  Copyright © 2016年 sourcecode. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,LDCViewLocation) {
    LDCViewLocationTop,
    LDCViewLocationCenter,
    LDCViewLocationBottom,
};

@interface LDCView : UIView
- (instancetype)initWithFrame:(CGRect)frame location:(LDCViewLocation)ldcLocation;
@property (nonatomic, strong) UIImage *image;

@end
