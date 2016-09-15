//
//  UIAlertController+DefaultAlert.m
//  FIREBASE DEMO
//
//  Created by eheuristic on 03/08/16.
//  Copyright © 2016 eheuristic. All rights reserved.
//

#import "UIAlertController+DefaultAlert.h"

@implementation UIAlertController (DefaultAlert)

+(void)presentAlert:(NSString *)title msg:(NSString *)msg vc:(UIViewController *)vc CancleAction:(void(^)())complete
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:complete];
    [alert addAction:ok];
    [vc presentViewController:alert animated:YES completion:nil];
}

@end
