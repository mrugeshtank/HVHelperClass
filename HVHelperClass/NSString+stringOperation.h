//
//  NSString+stringOperation.h
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (stringOperation)


-(BOOL)isValidEmailAddress;

#pragma mark AttributedString Opration

-(NSString *)HTMLStringtoPlainString;

#pragma mark DateString Opration

+(NSString *)stringFromDate:(NSDate *)date formatterString:(NSString *)formatterString;

+(NSString *)getTwoDateDifferance:(NSDate *)date1 andDate2:(NSDate *)date2;

@end
