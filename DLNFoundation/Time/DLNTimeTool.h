//
//  DLNTimeTool.h
//  DLNFoundation
//
//  Created by Linzh on 12/22/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLNTimeTool : NSObject
/**
 *  获取当前系统的时间戳(ms)
 *
 *  @return
 */
+(long long)getCurrentTimeSp;

/**
 *  将时间戳转换成NSDate
 *
 *  @param spString
 *
 *  @return
 */
+(NSDate *)timeSpToNSDate:(long long)timeSp;

/**
 *  将NSDate转换成时间戳
 *
 *  @param date
 *
 *  @return
 */
+ (long long)nsdateToTimeSp:(NSDate *)date;

/**
 *  将NSDate按指定格式时间输出
 *
 *  @param date
 *  @param format
 *
 *  @return
 */
+(NSString *)nsdateToString:(NSDate *)date withDateFormat:(NSString *)format;

/**
 *  将时间戳转换成指定格式时间
 *
 *  @param timeSp
 *  @param format
 *
 *  @return 
 */
+ (NSString *)timeSpToString:(long long)timeSp withDateFormat:(NSString *)format;

/**
 *  将指定格式时间转换成时间戳
 *
 *  @param timeStr
 *  @param format
 *
 *  @return
 */
+(long long)stringToTimeSp:(NSString *)timeStr fromDateFormat:(NSString *)format;

/**
 *  获取指定格式的当前系统时间
 *
 *  @param format
 *
 *  @return
 */
+(NSString *)getCurrentTimewithFormat:(NSString *)format;

/**
 *  比较给定NSDate与当前时间的时间差，返回相差的秒数
 *
 *  @param date
 *
 *  @return
 */
+(long)timeDifference:(NSDate *)date;
@end
