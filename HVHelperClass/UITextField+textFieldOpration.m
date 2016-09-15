//
//  UITextField+textFieldOpration.m
//  FIREBASE DEMO
//
//  Created by eheuristic on 04/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import "UITextField+textFieldOpration.h"

@implementation UITextField (textFieldOpration)

-(UITextField *)borderWithColor:(UIColor *)color
{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 1;
    return self;
}
-(UITextField *)bottomLayerWithColor:(UIColor *)color
{
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0.0, self.frame.size.height - 1, self.frame.size.width, 1);
    layer.backgroundColor = color.CGColor;
    [self.layer addSublayer:layer];
    return self;
}
-(UITextField *)leftLayerWithColor:(UIColor *)color
{
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0.0, 0.0, 1, self.frame.size.height);
    layer.backgroundColor = color.CGColor;
    [self.layer addSublayer:layer];
    return self;
}
-(UITextField *)rightLayerWithColor:(UIColor *)color
{
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(self.frame.size.width - 1,0.0, 1, self.frame.size.height);
    layer.backgroundColor = color.CGColor;
    [self.layer addSublayer:layer];
    return self;

}
-(UITextField *)placeholdeColor:(UIColor *)color
{
    [self setValue:color forKeyPath:@"_placeholderLabel.textColor"];
    return self;
}

-(void)leftviewWithImage:(UIImage *)image
{
    UIView *leftview = [[UIView alloc]initWithFrame:CGRectMake(5, 0, 30, self.frame.size.height)];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(5, self.frame.size.height/2 - 10, 20, 20)];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [leftview addSubview:imageView];
    self.leftViewMode = UITextFieldViewModeAlways;
    self.leftView = leftview;
}

@end
