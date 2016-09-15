//
//  NSDate+DateOpration.h
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DateOpration)

-(NSDate *)addDays:(NSInteger)days;
-(NSDate *)addMonth:(NSInteger)month;
-(NSDate *)addYear:(NSInteger)Year;
-(NSDate *) toLocalTime;
-(NSDate *) toGlobalTime;

@end
