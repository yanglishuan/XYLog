/*
 * XYLog.h
 *
 * version 1.0-beta create 29-June-2013
 *
 * https://github.com/yanglishuan/XYLog
 *
 * BSD license follows (http://www.opensource.org/licenses/bsd-license.php)
 *
 * Copyright (c) 2013-2015 lishuan yang All Rights Reserved.
 *
 * if u find anything wrong or bug, please email to 2008.yls@163.com
 * or contact me on QQ 603291699, i will appreciate it.
 *
 * update 28-July-2013
 */

#import <Foundation/Foundation.h>

void XYLog_s(NSString *format, ...);

#if DEBUG == 1
#define XYLog( format, ... ) XYLog_s( @"<%@, %@, line: %d>\n%@",  \
    [[NSString stringWithUTF8String:__FILE__] lastPathComponent], \
    [NSString stringWithUTF8String:__func__], __LINE__,           \
    [NSString stringWithFormat:(format), ##__VA_ARGS__] )
#else
#define XYLog do{} while(0);
#define XYLog_s do{} while(0);
#endif
