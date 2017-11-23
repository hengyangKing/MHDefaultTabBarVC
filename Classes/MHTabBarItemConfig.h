//
//  MHTabBarItemConfig.h
//  MHDefaultTabBarVC
//
//  Created by J on 2017/11/23.
//

#import <Foundation/Foundation.h>

@interface MHTabBarItemConfig : NSObject
+(instancetype)createTabbarItemModelWithChild:(UIViewController *)child andImage:(NSString *)image andTitle:(NSString *)title;

@property(nonatomic,strong,readonly)UIViewController *childVC;




@end
