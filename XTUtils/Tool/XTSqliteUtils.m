//
//  SqliteTool.m
//  MeiTuan
//
//  Created by 何凯楠 on 16/6/20.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import "XTSqliteUtils.h"
#import "FMDB.h"
#import "YYModel.h"

@implementation XTSqliteUtils

static FMDatabase *_db;
+ (void)initialize {
    
    NSString *cachePath =  NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    
    NSString *filePath = [cachePath stringByAppendingPathComponent:@"meituan.sqlite"];
    
    _db = [FMDatabase databaseWithPath:filePath];
    
    if ([_db open]) {
        printf("打开数据库成功\n");
    } else {
        printf("打开数据库失败\n");
    }
    
    BOOL flag = [_db executeUpdate:@"create table if not exists t_meituan (id integer primary key autoincrement, idStr text, data blob);"];
    if (flag) {
        printf("创建表成功\n");
    } else {
        printf("创建表失败\n");
    }

}

+ (void)xt_insetDataWithArray:(NSArray *)datas {
    
    for (NSDictionary *data in datas) {
        
        NSString *mId = data[@"_id"];
        
        NSData *result = [NSKeyedArchiver archivedDataWithRootObject:data];
        
        [self insertDataWithidStr:mId data:result];
    }
}

+ (void)insertDataWithidStr:(NSString *)idStr data:(NSData *)data {
    
    dispatch_semaphore_t lock = dispatch_semaphore_create(1);
    dispatch_semaphore_wait(lock, DISPATCH_TIME_FOREVER);
    
    BOOL flag = [_db executeUpdate:@"insert into t_meituan (idStr, data) values (?, ?);", idStr, data];
    
    dispatch_semaphore_signal(lock);
    
    if (flag) {
        printf("插入数据成功\n");
    } else {
        printf("插入数据失败\n");
    }
}

+ (void)xt_deleteData {
    
    dispatch_semaphore_t lock = dispatch_semaphore_create(1);
    dispatch_semaphore_wait(lock, DISPATCH_TIME_FOREVER);
    
    BOOL flag = [_db executeUpdate:@"delete from t_meituan;"];
    
    dispatch_semaphore_signal(lock);
    
    if (flag) {
        printf("删除成功\n");
    } else {
        printf("删除失败\n");
    }
}


+ (NSArray *)xt_qeuryData {
    
    NSMutableArray *arr = [NSMutableArray array];
    
    FMResultSet *rs = [_db executeQuery:@"select * from t_meituan"];
    while ([rs next]) {
        
        NSData *data = [rs dataForColumn:@"data"];
        
        NSDictionary *dataDic = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        
        if (dataDic) {
            
//            MeiTuanData *meituan = [MeiTuanData yy_modelWithDictionary:dataDic];
//            [arr addObject:meituan];
        }
    }
    
    return [arr copy];
}




@end
