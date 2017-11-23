//
//  MHTabBarConfig.h
//  MHDefaultTabBarVC
//
//  Created by J on 2017/11/23.
//

#import <Foundation/Foundation.h>

@interface MHTabBarConfig : NSObject
+(instancetype)defaultConfig;

@property(nonatomic,strong,readonly)UIFont *font;
@property(nonatomic,strong,readonly)UIColor *normalColor;
@property(nonatomic,strong,readonly)UIColor *selectColor;
@property(nonatomic,strong,readonly)UIImage *bgImage;
@property(nonatomic,copy,readonly)MHTabBarConfig *(^MHTabBarFont)(UIFont *font);
@property(nonatomic,copy,readonly)MHTabBarConfig *(^MHTabBarNormalColor)(UIColor *color);
@property(nonatomic,copy,readonly)MHTabBarConfig *(^MHTabBarSelectColor)(UIColor *color);
@property(nonatomic,copy,readonly)MHTabBarConfig *(^MHTabBarBgImage)(UIImage *image);

@end
