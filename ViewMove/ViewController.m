//
//  ViewController.m
//  ViewMove
//
//  Created by wangtong on 2017/2/17.
//  Copyright © 2017年 wangtong. All rights reserved.
//

#import "ViewController.h"
#import "GFAddLoadView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet GFAddLoadView *moveView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_moveView setLoadUI];
}

- (IBAction)start:(id)sender {
    
    [_moveView startMove];
    
}

- (IBAction)pause:(id)sender {
    
    [_moveView stopMove];
    
}

@end
