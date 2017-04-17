//
//  BlankPageTool.h
//  YiZhongShop
//
//  Created by 何凯楠 on 16/9/9.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XTBlankPageUtils : UIView


/**
 初始化方法

 @param view 目标view
 @param hasData 是否有数据，来判断是否要显示提示
 @param image 要显示的图片
 @param title 要显示的文字
 @param yOffset y坐标的偏移量
 */
+ (void)xt_showView:(UIView *)view hasData:(BOOL)hasData image:(UIImage *)image title:(NSString *)title yOffset:(CGFloat)yOffset;

/**
 网络加载错误显示方法

 @param view 要显示的view
 */
+ (void)xt_networkConnectionErrorShowView:(UIView *)view;

@end
