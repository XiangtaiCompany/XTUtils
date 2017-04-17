//
//  DateFormatterTool.h
//  YiCaiCommunity
//
//  Created by 何凯楠 on 2016/12/21.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XTDateFormatUtils : NSObject

/**
 把日期格式化成字符串（默认格式为yyyy-MM-dd）

 @param date 日期
 @return 字符串
 */
+ (NSString *)xt_stringFromDate:(NSDate *)date;
/**
 把日期格式化成字符串

 @param date 日期
 @param format 格式化的样式 如 yyyy-MM-dd
 @return 字符串
 */
+ (NSString *)xt_stringFromDate:(NSDate *)date dateFormat:(NSString *)format;

/**
 把字符串格式化成日期（默认格式为yyyy-MM-dd）

 @param string 字符串
 @return 日期
 */
+ (NSDate *)xt_dateFromString:(NSString *)string;
/**
 把字符串格式化成日期

 @param string 字符串
 @param format 格式化的样式 如 yyyy-MM-dd HH:mm:ss
 @return 日期
 */
+ (NSDate *)xt_dateFromString:(NSString *)string dateFormat:(NSString *)format;

/**
 获得两个日期之间相差的天数

 @param fromDate 开始日期
 @param toDate 结束日期
 @return 天数
 */
+ (NSInteger)xt_getDaysBetweenFromDate:(NSDate *)fromDate toDate:(NSDate *)toDate;
/**
 获得两个日期之间相差的时间戳 (天为最大单位)

 @param fromDate 开始日期
 @param toDate 结束日期
 @return 时间戳
 */
+ (NSTimeInterval)xt_getTimeIntervalFromData:(NSDate *)fromDate toDate:(NSDate *)toDate;

@end
