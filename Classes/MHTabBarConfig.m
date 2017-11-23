//
//  MHTabBarConfig.m
//  MHDefaultTabBarVC
//
//  Created by J on 2017/11/23.
//

#import "MHTabBarConfig.h"
#import "UIFont+MHJFont.h"
#import "UIColor+Extend.h"
@implementation MHTabBarConfig
+(instancetype)defaultConfig
{
    MHTabBarConfig *config = [[MHTabBarConfig alloc]init];
    config.MHTabBarFont([UIFont MHFont:11]).MHTabBarNormalColor([UIColor redColor]).MHTabBarSelectColor([UIColor whiteColor]);
    
    return config;
}
-(void)setFont:(UIFont *)font
{
    _font = font;
}
-(void)setNormalColor:(UIColor *)normalColor
{
    _normalColor = normalColor;
}
-(void)setSelectColor:(UIColor *)selectColor
{
    _selectColor = selectColor;
}
-(void)setBgImage:(UIImage *)bgImage
{
    _bgImage = bgImage;
}
-(MHTabBarConfig *(^)(UIFont *))MHTabBarFont
{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}
-(MHTabBarConfig *(^)(UIColor *))MHTabBarNormalColor
{
    return ^(UIColor *color){
        self.normalColor = color;
        return self;
    };
}
-(MHTabBarConfig *(^)(UIColor *))MHTabBarSelectColor{
    return ^(UIColor *color){
        self.selectColor = color;
        return self;
    };
}
-(MHTabBarConfig *(^)(UIImage *))MHTabBarBgImage
{
    return ^(UIImage *image){
        self.bgImage = image;
        return self;
    };
}

@end

