//
//  BlankPageTool.m
//  YiZhongShop
//
//  Created by 何凯楠 on 16/9/9.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import "XTBlankPageUtils.h"

@interface XTBlankPageUtils()

@end

@implementation XTBlankPageUtils


+ (void)xt_showView:(UIView *)view hasData:(BOOL)hasData image:(UIImage *)image title:(NSString *)title yOffset:(CGFloat)yOffset {
    
    if (!view) {
        return;
    }
    
    //先删除之前的
    for (UIView *temp in view.subviews) {
        if ([temp isKindOfClass:[BlankPageTool class]]) {
            [temp removeFromSuperview];
        }
    }
    
    //如果有数据，则不需要显示
    if (hasData) {
        return;
    }
    
    BlankPageTool *bgView = [[BlankPageTool alloc] init];
    bgView.frame = view.frame;
    [view addSubview:bgView];
    
    UIImageView *imgView = [[UIImageView alloc] init];
    CGFloat imageW = image.size.width;
    CGFloat imageH = image.size.height;
    CGFloat imageX = (bgView.frame.size.width - imageW) * 0.5;
    CGFloat imageY = (bgView.frame.size.height - imageH - 30) * 0.5 + yOffset;
    imgView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    imgView.image = image;
    [bgView addSubview:imgView];
    
    UILabel *label = [[UILabel alloc] init];
    CGFloat titlex = 0;
    CGFloat titley = CGRectGetMaxY(imgView.frame) + 10;
    CGFloat titlew = CGRectGetWidth(bgView.frame);
    CGFloat titleh = 20;
    label.frame = CGRectMake(titlex, titley, titlew, titleh);
    label.text = title;
    label.font = [UIFont systemFontOfSize:15.f];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor grayColor];
    [bgView addSubview:label];
}

+ (void)xt_networkConnectionErrorShowView:(UIView *)view {
    
    [BlankPageTool xb_showView:view hasData:NO image:[UIImage imageNamed:@"mine_orderlist_networkunproperly_icon"] title:@"您的网络连接不正常" yOffset:0];
}


@end
