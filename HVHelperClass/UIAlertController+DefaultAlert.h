//
//  UIAlertController+DefaultAlert.h
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (DefaultAlert)

+(void)presentAlert:(NSString *)title msg:(NSString *)msg vc:(UIViewController *)vc CancleAction:(void(^)())complete;

@end
