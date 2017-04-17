//
//  SqliteTool.h
//  MeiTuan
//
//  Created by 何凯楠 on 16/6/20.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XTSqliteUtils : NSObject

/**
 插入数据

 @param datas 数组
 */
+ (void)xt_insetDataWithArray:(NSArray *)datas;

/**
 查询数据

 @return 数组
 */
+ (NSArray *)xt_qeuryData;

@end
