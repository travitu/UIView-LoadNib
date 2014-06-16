//
//  UIView+LoadNib.h
//
//  Created by Toshikazu Fukuoka on 2014/06/16.
//  Copyright (c) 2014年 福岡 稔員. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LoadNib)
- (UIView *)tra_loadViewFromNibNamed:(NSString *)nibName;
- (UIView *)tra_loadViewFromNib;
@end
