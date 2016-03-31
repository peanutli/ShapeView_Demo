//
//  LDCView.m
//  UIBezierPath_CAShapeLayer
//
//  Created by 花生 on 16/3/30.
//  Copyright © 2016年 sourcecode. All rights reserved.
//

#import "LDCView.h"

@interface LDCView (){
    CALayer      *_contentLayer;
    CAShapeLayer *_maskLayer;
}
@end

@implementation LDCView

- (instancetype)initWithFrame:(CGRect)frame location:(LDCViewLocation)ldcLocation{
    self = [super initWithFrame:frame];
    if (self) {
        //[self setup];
        [self setupLocation:ldcLocation];
    };
    return self;
}

- (void)setupLocation:(LDCViewLocation)ldcLocation{
    CGFloat topOffset = 0.0f;
    CGFloat centerOffset = 0.0f;
    CGFloat bottomOffset = 0.0f;
    switch (ldcLocation) {
        case LDCViewLocationTop:{
            topOffset = 7.f;
        }
        break;
        case LDCViewLocationCenter:{
            centerOffset = 7.f;
        }
        break;
        case LDCViewLocationBottom:{
            bottomOffset = 7.f;
        }
        break;
        default:
            break;
    }
    CGMutablePathRef path = CGPathCreateMutable();
    CGPoint origin = self.bounds.origin;
    
    //设置的起点
    CGPathMoveToPoint(path, NULL, origin.x, origin.y + bottomOffset);
    CGPathAddLineToPoint(path, NULL, origin.x + self.bounds.size.width, origin.y+centerOffset);
    CGPathAddLineToPoint(path, NULL, origin.x + self.bounds.size.width, origin.y + self.bounds.size.height-centerOffset);
    CGPathAddLineToPoint(path, NULL, origin.x, origin.y + self.bounds.size.height-topOffset);
    
    _maskLayer = [CAShapeLayer layer];
    _maskLayer.path = path;
    _maskLayer.fillColor = [UIColor orangeColor].CGColor;
    _maskLayer.strokeColor = [UIColor clearColor].CGColor;
    _maskLayer.frame = self.bounds;
    _maskLayer.contentsCenter = CGRectMake(0.5, 0.5, 0.1, 0.1);
    _maskLayer.contentsScale = [UIScreen mainScreen].scale;                 //非常关键设置自动拉伸的效果且不变形
    
    _contentLayer = [CALayer layer];
    _contentLayer.mask = _maskLayer;
    _contentLayer.frame = self.bounds;
    [self.layer addSublayer:_contentLayer];

}

- (void)setImage:(UIImage *)image{
    _contentLayer.contents = (id)image.CGImage;
}


@end
