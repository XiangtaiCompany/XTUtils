//
//  MJRefreshTool.m
//  YiXingTravel
//
//  Created by 何凯楠 on 2017/2/9.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "XTMJRefreshUtils.h"

@implementation XTMJRefreshUtils

+ (MJRefreshNormalHeader *)xt_headerWithRefreshingBlock:(MJRefreshComponentRefreshingBlock)refreshingBlock
{
    MJRefreshNormalHeader *cmp = [MJRefreshNormalHeader headerWithRefreshingBlock:refreshingBlock];
    cmp.lastUpdatedTimeLabel.hidden = YES;
    
    return cmp;
}

/** 创建footer */
+ (MJRefreshAutoNormalFooter *)xt_footerWithRefreshingBlock:(MJRefreshComponentRefreshingBlock)refreshingBlock {
    MJRefreshAutoNormalFooter *footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:refreshingBlock];
    footer.automaticallyHidden = YES;
    return footer;
}

@end
