//
//  XTUserDefaultUtils.m
//  XTUtils
//
//  Created by 何凯楠 on 2017/4/17.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "XTUserDefaultUtils.h"

@implementation XTUserDefaultUtils

+ (BOOL)xt_setObject:(id)object forKey:(NSString *)key {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:object forKey:key];
    return [userDefaults synchronize];
}

+ (id)xt_objectForKey:(NSString *)key {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    return [userDefaults objectForKey:key];
}

@end
