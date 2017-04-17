//
//  YZAccountViewModel.m
//  YiZhongShop
//
//  Created by 何凯楠 on 16/7/21.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import "XTArchiverUtils.h"

@interface XTArchiverUtils()

@end

static NSString *filePath;
@implementation XTArchiverUtils

+ (void)initialize {
    NSString *path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    filePath = [path stringByAppendingPathComponent:@"xtdata.archiver"];
}

+ (id)xt_model {
    
    id model = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    return model;
}

+ (void)xt_saveDataWithModel:(id)model {

    BOOL success = [NSKeyedArchiver archiveRootObject:model toFile:filePath];
    if(success){
        NSLog(@"归档成功");
    }
}

+ (void)xt_deleteData {
    NSError *error = nil;
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        BOOL success = [[NSFileManager defaultManager] removeItemAtPath:filePath error:&error];
        if (!success) {
            NSLog(@"%@", error.localizedDescription);
        }
    }
}

@end
