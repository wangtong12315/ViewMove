//
//  GFAddLoadView.m
//  ViewMove
//
//  Created by wangtong on 2017/2/17.
//  Copyright © 2017年 wangtong. All rights reserved.
//

#import "GFAddLoadView.h"
#import "GFLoadVIew.h"

#define MoveTime 0.01
@interface GFAddLoadView ()
{
    NSTimer * timer;
}
@property (nonatomic,weak)GFLoadVIew *loadView;
@property (nonatomic,assign)float alpher;
@end

@implementation GFAddLoadView

- (void)awakeFromNib{
    [super awakeFromNib];
}

//设置UI
- (void)setLoadUI{
    GFLoadVIew *loadView = [[GFLoadVIew alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.width)];
    
    self.loadView = loadView;
    [self addSubview:loadView];
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width * 0.7, self.frame.size.width * 0.7)];
    imageView.image = [UIImage imageNamed:@"fgn_llustration"];
    imageView.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    [self addSubview:imageView];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        GFLoadVIew *loadView = [[GFLoadVIew alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.width)];
        
        self.loadView = loadView;
        [self addSubview:loadView];
        
        UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, self.frame.size.width - 100, self.frame.size.height - 100)];
        imageView.image = [UIImage imageNamed:@"fgn_llustration"];
        [self addSubview:imageView];
        
    }
    return self;
}

- (void)startMove{
    
    [timer invalidate];
    
    [self.loadView startShow];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:MoveTime target:self selector:@selector(timerView) userInfo:nil repeats:YES];
}

- (void)stopMove{
    [timer invalidate];
}

- (void)timerView{
    [UIView animateWithDuration:MoveTime animations:^{
        self.loadView.transform = CGAffineTransformRotate(self.loadView.transform, 0.1);
    }];
}

- (void)showError{
    self.loadView.transform = CGAffineTransformIdentity;
    [self stopMove];
    [self.loadView errorShow];
}

@end

