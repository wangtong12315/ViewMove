//
//  GFLoadVIew.m
//  ViewMove
//
//  Created by wangtong on 2017/2/17.
//  Copyright © 2017年 wangtong. All rights reserved.
//
#import "GFLoadVIew.h"

@implementation GFLoadVIew
{
    CALayer *greenlayer;
    CALayer *layerError;
}

- (void)drawRect:(CGRect)rect {
    
    CGFloat rabius1 = rect.size.width/2;
    CGFloat starAgle1 = 0;
    CGFloat endAngle1 = 2*M_PI;
    CGPoint point1 = CGPointMake(rect.size.width/2,rect.size.width/2);
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:point1 radius:rabius1 startAngle:starAgle1 endAngle:endAngle1 clockwise:YES];
    
    CAShapeLayer *layer1 = [[CAShapeLayer alloc]init];
    layer1.path = path1.CGPath;
    layer1.fillColor = [UIColor clearColor].CGColor;
    layer1.strokeColor = [UIColor greenColor].CGColor;
    layer1.lineWidth = 1;
    [self.layer addSublayer:layer1];
    
    greenlayer = [CALayer layer];
    greenlayer.bounds = CGRectMake(0, 0, 20,20);
    greenlayer.anchorPoint = CGPointMake(0.5, 0.5);
    greenlayer.position = CGPointMake(self.bounds.size.width * 0.5,0);
    greenlayer.backgroundColor = [UIColor greenColor].CGColor;
    greenlayer.cornerRadius = 10;
    [self.layer addSublayer:greenlayer];
}

- (void)startShow{
    
    if (layerError) {
        [layerError removeFromSuperlayer];
        layerError = nil;
    }
    
    if (!greenlayer) {
        greenlayer = [CALayer layer];
        greenlayer.bounds = CGRectMake(0, 0, 20,20);
        greenlayer.anchorPoint = CGPointMake(0.5, 0.5);
        greenlayer.position = CGPointMake(self.bounds.size.width * 0.5,0);
        greenlayer.backgroundColor = [UIColor greenColor].CGColor;
        greenlayer.cornerRadius = 10;
        [self.layer addSublayer:greenlayer];
    }
    
}

- (void)errorShow{
    
    if (greenlayer) {
        [greenlayer removeFromSuperlayer];
        greenlayer = nil;
    }
    
    if (!layerError) {
        layerError = [CALayer layer];
        layerError.bounds = CGRectMake(0, 0, 20,20);
        layerError.anchorPoint = CGPointMake(0.5, 0.5);
        layerError.position = CGPointMake(self.bounds.size.width * 0.5,0);
        layerError.backgroundColor = [UIColor redColor].CGColor;
        layerError.cornerRadius = 10;
        [self.layer addSublayer:layerError];
    }
    
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.backgroundColor = [UIColor clearColor];
}

@end
