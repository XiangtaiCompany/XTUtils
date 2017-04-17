//
//  DateFormatterTool.m
//  YiCaiCommunity
//
//  Created by 何凯楠 on 2016/12/21.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import "XTDateFormatUtils.h"

@implementation XTDateFormatUtils

/**
 把日期格式化成字符串（默认格式为yyyy-MM-dd）
 */
+ (NSString *)xt_stringFromDate:(NSDate *)date {
    return [XTDateFormatUtils xt_stringFromDate:date dateFormat:@"yyyy-MM-dd"];
}

// 把日期格式化成字符串
+ (NSString *)xt_stringFromDate:(NSDate *)date dateFormat:(NSString *)format {

    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:format];
    return [dateformatter stringFromDate:date];
}

/**
 把字符串格式化成日期（默认格式为yyyy-MM-dd）
 */
+ (NSDate *)xt_dateFromString:(NSString *)string {
    return [XTDateFormatUtils xt_dateFromString:string dateFormat:@"yyyy-MM-dd"];
}

// 把字符串格式化成日期
+ (NSDate *)xt_dateFromString:(NSString *)string dateFormat:(NSString *)format {
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:format];
    return [dateformatter dateFromString:string];
}

// 获得两个日期之间的天数
+ (NSInteger)xt_getDaysBetweenFromDate:(NSDate *)fromDate toDate:(NSDate *)toDate {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDate *date1;
    NSDate *date2;
    
    //忽略不满24小时的情况
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&date1 interval:NULL forDate:fromDate];
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&date2 interval:NULL forDate:toDate];
    
    NSDateComponents *components = [calendar components:NSCalendarUnitDay | NSCalendarUnitHour fromDate:date1 toDate:date2 options:NSCalendarWrapComponents];
    
    return components.day;
}

// 获得两个日期之间相差的时间戳
+ (NSTimeInterval)xt_getTimeIntervalFromData:(NSDate *)fromDate toDate:(NSDate *)toDate {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *components = [calendar components:NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:fromDate toDate:toDate options:NSCalendarWrapComponents];
    
    NSTimeInterval time = components.second + components.minute * 60 + components.hour * 60 * 60 + components.day * 24 * 60 * 60;
    
    return time;
}

@end
