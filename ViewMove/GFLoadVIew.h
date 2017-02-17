//
//  GFLoadVIew.h
//  ViewMove
//
//  Created by wangtong on 2017/2/17.
//  Copyright © 2017年 wangtong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFLoadVIew : UIView

@property (nonatomic,strong)UIColor *color;
@property (nonatomic,assign)float lineWidth;

- (void)startShow;

- (void)errorShow;

@end
