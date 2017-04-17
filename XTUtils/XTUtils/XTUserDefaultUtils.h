//
//  XTUserDefaultUtils.h
//  XTUtils
//
//  Created by 何凯楠 on 2017/4/17.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XTUserDefaultUtils : NSObject

/**
 set object for key

 @param object object
 @param key key
 @return value
 */
+ (BOOL)xt_setObject:(id)object forKey:(NSString *)key;

/**
 get object

 @param key key
 @return object
 */
+ (id)xt_objectForKey:(NSString *)key;


@end
