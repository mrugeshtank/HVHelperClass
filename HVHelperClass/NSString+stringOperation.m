//
//  NSString+stringOperation.m
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import "NSString+stringOperation.h"

@implementation NSString (stringOperation)


-(BOOL)isValidEmailAddress
{
    BOOL stricterFilter = NO; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
    NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

#pragma mark AttributedString Opration

-(NSString *)HTMLStringtoPlainString
{
    NSAttributedString *attr = [[NSAttributedString alloc] initWithData:[self dataUsingEncoding:NSUTF8StringEncoding]
        options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
        NSCharacterEncodingDocumentAttribute:@(NSUTF8StringEncoding)}
        documentAttributes:nil
        error:nil];
    NSString *finalString = [attr string];
    return finalString;
}

#pragma mark DateString Opration

+(NSString *)stringFromDate:(NSDate *)date formatterString:(NSString *)formatterString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:formatterString];
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
    
    // yyyy-MM-dd'T'HH:mm:ssZZZZZ
    // yyyy-MM-dd HH:mm:ss
    // dd-MM-yyyy
    // mmm,dd,yyyy
}
+(NSString *)getTwoDateDifferance:(NSDate *)date1 andDate2:(NSDate *)date2
{
    NSTimeInterval secondsBetweenTwoDate = [date2 timeIntervalSinceDate:date1];
    
    int day = secondsBetweenTwoDate/86400;
    double hourSecond = fmod(secondsBetweenTwoDate, 86400);
    int hour = hourSecond/3600;
    double miniteSecond = fmod(hourSecond, 3600);
    int minite = miniteSecond/60;
    double Secondvalue = fmod(minite, 60);
    int second = Secondvalue/1;
    int milisecond = fmod(second, 60) * 1000;
    
    NSString *differentString = [NSString stringWithFormat:@"%d:%d:%d:%d:%d",day,minite,hour,second,milisecond];
    
    return differentString;
}
@end
