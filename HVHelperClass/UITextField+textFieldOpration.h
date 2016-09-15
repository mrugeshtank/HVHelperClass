//
//  UITextField+textFieldOpration.h
//  FIREBASE DEMO
//
//  Created by eheuristic on 04/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (textFieldOpration)

-(UITextField *)borderWithColor:(UIColor *)color;
-(UITextField *)bottomLayerWithColor:(UIColor *)color;
-(UITextField *)leftLayerWithColor:(UIColor *)color;
-(UITextField *)rightLayerWithColor:(UIColor *)color;
-(UITextField *)placeholdeColor:(UIColor *)color;
-(void)leftviewWithImage:(UIImage *)image;

@end
