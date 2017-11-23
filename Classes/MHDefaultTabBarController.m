//
//  MHDefaultTabBarController.m
//  Pods-Example
//
//  Created by J on 2017/11/23.
//

#import "MHDefaultTabBarController.h"
#import "UIImage+KingExtension.h"

@interface MHDefaultTabBarController ()
@property(nonatomic,strong)MHTabBarConfig *config;
@property(nonatomic,strong)NSMutableArray *items;

@end

@implementation MHDefaultTabBarController
//第一次使用本类时调用,这样既实现了全局设置tabbar的外观，尤其是其颜色这种相同而繁琐的事情
+(void)initialize
{
    UITabBarItem *item=[UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    
    NSMutableDictionary *attNormal=[NSMutableDictionary dictionary];
    [attNormal setObject:[UIColor lightGrayColor] forKey:NSForegroundColorAttributeName];
    [item setTitleTextAttributes:attNormal forState:(UIControlStateNormal)];
    NSMutableDictionary *attSelect=[NSMutableDictionary dictionary];
    [attSelect setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    [item setTitleTextAttributes:attSelect forState:(UIControlStateSelected)];
}



//+(instancetype)createTabBarWithConfig:(void (^)(MHTabBarConfig *config))config andItems:(void (^)(NSMutableArray <MHTabBarItemConfig *>*array))items{
//    MHDefaultTabBarController *controller = [[MHDefaultTabBarController alloc]init];
//    controller.config = [MHTabBarConfig defaultConfig];
//    if (config) {
//        config(controller.config);
//    }
//    if (items) {
//        items(controller.items);
//    }
//    [controller setupTabbar];
//    [controller createItems];
//    return controller;
//}
+(instancetype)MusicHomeTabBar{
    
    MHDefaultTabBarController *tabbar = [[MHDefaultTabBarController alloc]init];
    return tabbar;
//    MHDefaultTabBarController *tabbar = [MHDefaultTabBarController createTabBarWithConfig:^(MHTabBarConfig *config) {
//
//
//    } andItems:^(NSMutableArray <MHTabBarItemConfig *>*array) {
//        for (int i=0;i<5;i++) {
//            UIViewController *vc = [[UIViewController alloc]init];
//            UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
//            MHTabBarItemConfig *config = [MHTabBarItemConfig createTabbarItemModelWithChild:nav andImage:@"" andTitle:[NSString stringWithFormat:@"%@",@(i)]];
//            [array addObject:config];
//        }
//    }];
//    return tabbar;
}

-(NSMutableArray *)items
{
    if (!_items) {
        _items = [NSMutableArray arrayWithCapacity:0];
    }
    return _items;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabbar];
    
}
-(void)setupTabbar{
    self.tabBar.backgroundImage =[UIImage stretchableImage:[UIImage imageNamed:@"tablebarBG"]];
}
-(void)createItems{
    for (MHTabBarItemConfig *item in self.items) {
        [self addChildViewController:item.childVC];
    }
}



@end
