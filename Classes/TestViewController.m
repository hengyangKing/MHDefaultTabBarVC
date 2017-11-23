//
//  TestViewController.m
//  KingBaseCategory
//
//  Created by J on 2017/11/24.
//

#import "TestViewController.h"
#import "UIColor+Extend.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = randomColor;
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
   TestViewController *test= [[TestViewController alloc]init];
    test.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:(UIBarButtonSystemItemCancel) target:self action:@selector(back)];
    [self.navigationController pushViewController:test animated:YES];
    test.hidesBottomBarWhenPushed =YES;
}
-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
