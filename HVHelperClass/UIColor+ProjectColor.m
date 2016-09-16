//
//  UIColor+ProjectColor.m
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import "UIColor+ProjectColor.h"


@implementation UIColor (ProjectColor)


//+(UIColor *)themeColor
//{
//    return [UIColor colorWithRed:2/255.0f green:245/255.0f blue:30/255.0f alpha:1];
//}
//
//+(UIColor *)titleColor
//{
//    return [UIColor colorWithRed:2/255.0f green:245/255.0f blue:30/255.0f alpha:1];
//}
//
//+(UIColor *)subtitleColor
//{
//    return [UIColor colorWithRed:2/255.0f green:245/255.0f blue:30/255.0f alpha:1];
//}
//
//+(UIColor *)appBgColor
//{
//    return [UIColor colorWithRed:2/255.0f green:245/255.0f blue:30/255.0f alpha:1];
//}
//
+(UIColor *)colorWithHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}
@end
