//
//  ViewController.m
//  DynamicAcquisitionLableH
//
//  Created by app on 16/6/4.
//  Copyright © 2016年 app. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addLabel];
}

#pragma mark ----addLabel

-(void)addLabel
{
    
    NSString *str=@"adjakdfnafn一生会遇见很多人。总有一些人在和我们挥手说再见。那些给过你欢笑的人，在下一个路口，可能就会成为再也不见的人。那些给过你伤痛的人，在离开的时候，也许就成了一个后会无期。那些给过你美好的人，有一天只能拿来回忆asdfhadsfjadfasf;aksdfnlkasdsdj";
    
    UILabel *label=[UILabel new];
    [label setTextColor:[UIColor whiteColor]];
    [label setBackgroundColor:[UIColor blackColor]];
    [label setText:str];
    [label setFont:[UIFont systemFontOfSize:15]];
    [label setNumberOfLines:0];
    
    CGFloat h=[label getSpaceLabelHeight:label.text withWidh:300 ];
    [label setFrame:CGRectMake(50, 200, 300, h)];
    [self.view addSubview:label];
    
}

@end
