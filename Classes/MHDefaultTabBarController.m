//
//  MHDefaultTabBarController.m
//  Pods-Example
//
//  Created by J on 2017/11/23.
//

#import "MHDefaultTabBarController.h"
#import "UIImage+KingExtension.h"
#import "WZLBadgeImport.h"
#import "TestViewController.h"
@interface MHDefaultTabBarController ()<UITabBarDelegate>
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
    [attSelect setObject:[UIColor greenColor] forKey:NSForegroundColorAttributeName];
    [item setTitleTextAttributes:attSelect forState:(UIControlStateSelected)];
    
}
+(instancetype)MusicHomeTabBar{
    
    MHDefaultTabBarController *tabbar = [[MHDefaultTabBarController alloc]init];
    return tabbar;
}

-(NSMutableArray *)items
{
    if (!_items) {
        
        _items = [NSMutableArray arrayWithCapacity:0];

        NSArray *titles = @[@"教学",@"资讯",@"乐器",@"动态",@"我的"];
        NSArray *images = @[@"tab_teaching",@"tab_news",@"v1_tab_Instrument",@"v1_tab_dynamic",@"v1_tab_my"];
        for(int i = 0 ;i<images.count;i++){
            UIViewController *vc=[[TestViewController alloc]init];
            MHTabBarItemConfig *item = [MHTabBarItemConfig createTabbarItemModelWithChild:[[UINavigationController alloc]initWithRootViewController:vc] andImage:images[i] andTitle:titles[i]];
            [_items addObject:item];
        }
    }
    return _items;
}
-(void)setDelegate:(id<UITabBarControllerDelegate>)delegate
{
    [super setDelegate:delegate];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabbar];
    [self createItems];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.selectedIndex = 3;
    });
    
}

-(void)setupTabbar{
    self.tabBar.backgroundImage =[UIImage stretchableImage:[UIImage imageNamed:@"tablebarBG"]];
}
-(void)createItems{
    NSMutableArray *arr = [NSMutableArray array];
    
    for (MHTabBarItemConfig *item in self.items) {
        [arr addObject:item.childVC];
//        [self addChildViewController:item.childVC];
    }
    self.viewControllers = arr;
    NSLog(@"%@",self.tabBar.items);

}

#pragma mark tabbarDelegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
}
@end
