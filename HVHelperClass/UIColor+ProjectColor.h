//
//  UIColor+ProjectColor.h
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ProjectColor)

+(UIColor *)themeColor;
+(UIColor *)titleColor;
+(UIColor *)subtitleColor;
+(UIColor *)appBgColor;
+(UIColor *)colorWithHexString:(NSString *)hexString;

@end
