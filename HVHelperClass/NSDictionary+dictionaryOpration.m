//
//  NSDictionary+dictionaryOpration.m
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import "NSDictionary+dictionaryOpration.h"

@implementation NSDictionary (dictionaryOpration)

-(NSMutableDictionary *)removeNullValue
{
    NSMutableDictionary *prunedDictionary = [NSMutableDictionary dictionary];
    for (NSString * key in [self allKeys])
    {
        if ([[self objectForKey:key] isKindOfClass:[NSNull class]])
        {
            [prunedDictionary setObject:@"" forKey:key];
        }
        else if ([[self objectForKey:key] isEqualToString:@"<null>"])
        {
            [prunedDictionary setObject:@"" forKey:key];
        }
        else
        {
            [prunedDictionary setObject:[self objectForKey:key] forKey:key];
        }
    }
    
    return prunedDictionary;
}

@end
