//
//  MyCustomView.m
//  UIView+LoadNib_Demo
//
//  Created by Toshikazu Fukuoka on 2014/06/17.
//  Copyright (c) 2014年 Toshikazu Fukuoka. All rights reserved.
//

#import "MyCustomView.h"
#import "UIView+LoadNib.h"

@implementation MyCustomView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customViewInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customViewInit];
    }
    return self;
}

- (void)customViewInit
{
    UIView *view = [self tra_loadViewFromNibNamed:@"MyCustomView"];
    [self addSubview:view];
}

@end
