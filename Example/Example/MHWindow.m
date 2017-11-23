//
//  MHWindow.m
//  Example
//
//  Created by J on 2017/11/24.
//  Copyright © 2017年 J. All rights reserved.
//

#import "MHWindow.h"
@interface MHWindow()<UITabBarControllerDelegate>

@end
@implementation MHWindow

-(void)setRootViewController:(UIViewController *)rootViewController
{
    [super setRootViewController:rootViewController];
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabbar = (UITabBarController *)rootViewController;
        tabbar.delegate =self;
    }
}
#pragma mark delegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    
    if ([viewController.tabBarItem.title isEqualToString:@"我的"]) {
        [self.rootViewController presentViewController:[[UIViewController alloc]init] animated:YES completion:nil ];
        return NO;
    }else{
        return YES;
    }
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
}



@end
