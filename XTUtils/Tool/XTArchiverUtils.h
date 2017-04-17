//
//  YZAccountViewModel.h
//  YiZhongShop
//
//  Created by 何凯楠 on 16/7/21.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XTArchiverUtils : NSObject

/**
 获取数据

 @return 数据
 */
+ (id)xt_model;

/**
 保存数据

 @param model model
 */
+ (void)xt_saveDataWithModel:(id)model;

/**
 删除数据
 */
+ (void)xt_deleteData;


NS_ASSUME_NONNULL_END
@end
