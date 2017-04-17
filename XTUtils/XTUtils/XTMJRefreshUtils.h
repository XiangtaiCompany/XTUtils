//
//  MJRefreshTool.h
//  YiXingTravel
//
//  Created by 何凯楠 on 2017/2/9.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//  简单对MJRefresh封装

#import <UIKit/UIKit.h>
#import "MJRefresh.h"

@interface XTMJRefreshUtils : UIView

/** 创建header */
+ (MJRefreshNormalHeader *)xt_headerWithRefreshingBlock:(MJRefreshComponentRefreshingBlock)refreshingBlock;

/** 创建footer */
+ (MJRefreshAutoNormalFooter *)xt_footerWithRefreshingBlock:(MJRefreshComponentRefreshingBlock)refreshingBlock;

@end
