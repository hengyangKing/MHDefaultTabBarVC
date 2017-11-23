//
//  MHTabBarItemConfig.m
//  MHDefaultTabBarVC
//
//  Created by J on 2017/11/23.
//

#import "MHTabBarItemConfig.h"
@interface MHTabBarItemConfig()
@property(nonatomic,strong)UIImage *normalImage;
@property(nonatomic,strong)UIImage *pressedImage;

@end
@implementation MHTabBarItemConfig
+(instancetype)createTabbarItemModelWithChild:(UIViewController *)child andImage:(NSString *)image andTitle:(NSString *)title{
    
    MHTabBarItemConfig *config = [[MHTabBarItemConfig alloc]init];
    config.childVC = child;
    config.normalImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal",image]];
    config.pressedImage =[UIImage imageNamed:[NSString stringWithFormat:@"%@_pressed",image]];
    
    config.childVC.tabBarItem.title = title;
    config.childVC.tabBarItem.image = config.normalImage;
    config.childVC.tabBarItem.selectedImage = config.pressedImage;
    return config;
}
-(void)setChildVC:(UIViewController *)childVC
{
    _childVC = childVC;
}

@end
