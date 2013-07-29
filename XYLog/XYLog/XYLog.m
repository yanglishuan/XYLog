/*
 * XYLog.m
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

#include "XYLog.h"

void XYLog_s(NSString *format, ...)
{
#if DEBUG == 1
    va_list ap;
    char *p;
    int ival;
    float dval;
    char *sval;
    char cval;
    id objc;
    char tempval[10];
    char *tempvalp;
    
    tempval[0] = '\0';
    BOOL rc = YES;
    
    printf("😃 ");
    
    va_start(ap, format);
    for (p = (char *)[format UTF8String]; *p; p++) {
        if (*p != '%' && rc) {
            putchar(*p);
            continue;
        }
        switch (*++p) {
            case '0': case '1':case '2':case '3':case 4:case 5:
            case '6': case '7':case '8':case '9':case '.':
            {
                tempvalp = tempval;
                *tempvalp = *(p-1);
                *++tempvalp = *p;
                do {
                    *++tempvalp = *++p;
                    if (*p == 'd' || *p == 'f') {
                        break;
                    }
                } while (1);
                *++tempvalp = '\0';
                --p;
                --p;
                rc = NO;
                continue;
            }
            case 'd':
            {
                rc = YES;
                ival = va_arg(ap, int);
                if (tempval[0] == '\0') {
                    char *ss = "%d";
                    printf(ss, ival);
                } else {
                    printf(tempval, ival);
                }
                tempval[0] = '\0';
            }
                break;
            case 'f':
            {
                rc = YES;
                dval = va_arg(ap, double);
                if (tempval[0] == '\0') {
                    printf("%f", dval);
                } else {
                    printf(tempval, dval);
                }
                tempval[0] = '\0';
            }
                break;
            case 'c':
            {
                cval = va_arg(ap, int);
                putchar(cval);
            }
                break;
            case 's':
            {
                for (sval = va_arg(ap, char *); *sval; sval++) {
                    putchar(*sval);
                }
            }
                break;
            case '@':
            {
                objc = va_arg(ap, id);
                printf("%s", [[objc description] UTF8String]);
            }
                break;
            default:
                putchar(*p);
                break;
        }
    }
    putchar('\n');
    va_end(ap);
#endif
}