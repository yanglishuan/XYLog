XYLog
=====

XYLog 可以替代NSLog,实现常用格式的控制台输出,目前支持%d,%c,%s,%f,%@格式.

XYLog优点:
  1. 去掉了NSLog的不常使用的时间戳，如果需要时间戳或调试多线程工程，建议还是用NSLog;
  2. 加入调用的文件名和方法名,并输出调用的行号;
  3. 加入😃输出,给调试带来好心情.

重要声明:
由于作者水平有限,因使用XYLog带来的一切后果,本作者不承担任何责任.
