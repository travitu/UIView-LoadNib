//
//  UIView+LoadNib.m
//
//  Created by Toshikazu Fukuoka on 2014/06/16.
//  Copyright (c) 2014年 福岡 稔員. All rights reserved.
//

#import "UIView+LoadNib.h"

@implementation UIView (LoadNib)
- (UIView *)tra_loadViewFromNibNamed:(NSString *)nibName
{
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil] objectAtIndex:0];
    view.frame = self.bounds;
    // Default is YES. Must be NO if you programmatically constraints of AutoLayout.
    view.translatesAutoresizingMaskIntoConstraints = YES;
    return view;
}

- (UIView *)tra_loadViewFromNib
{
    NSString *nibName = NSStringFromClass([self class]);
    UIView *view = [self tra_loadViewFromNibNamed:nibName];
    return view;
}
@end
