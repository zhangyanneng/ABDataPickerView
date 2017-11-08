//
//  NSDate+DatePicker.h
//  ABDataPickerView
//
//  Created by 张艳能 on 2017/8/31.
//  Copyright © 2017年 张艳能. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DatePicker)

//当前时间字符串  时间格式 yyyy-MM-dd HH:mm:ss
+ (NSString *)currentDateString;
//指定时间格式字符串
+ (NSString *)dateStringWithFormat:(NSString *)format;


@end
