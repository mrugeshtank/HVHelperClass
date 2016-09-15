//
//  UIActivityIndicatorView+ActivityView.m
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import "UIActivityIndicatorView+ActivityView.h"

UIActivityIndicatorView *activity;

@implementation UIActivityIndicatorView (ActivityView)

+(void)startActivity:(UIViewController *)vc
{
    activity = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    activity.frame = vc.view.frame;
    activity.backgroundColor = [UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:0.6];
    [activity hidesWhenStopped];
    [activity startAnimating];
    [vc.view addSubview:activity];
}
+(void)stopActivity;
{
    [activity stopAnimating];
    [activity removeFromSuperview];
}
@end
