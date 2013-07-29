XYLog
=====

XYLog 可以替代NSLog,实现常用格式的控制台输出,目前支持%d,%c,%s,%f,%@格式.

XYLog优点:
 1. 去掉了NSLog的不常使用的时间戳，如果需要时间戳或调试多线程工程，建议还是用NSLog;
 2. 加入调用的文件名和方法名,并输出调用的行号;
 3. 加入😃输出,给调试带来好心情.

输出样式:
 😃 <MainViewController.m, -[MainViewController viewDidLoad], line: 32>
nu = 2013
 😃 <MainViewController.m, -[MainViewController viewDidLoad], line: 35>
hello, this is XYLog!
 😃 <MainViewController.m, -[MainViewController viewDidLoad], line: 38>
(
    1,
    2,
    3
)
 😃 <MainViewController.m, -[MainViewController viewDidLoad], line: 41>
{
    author = "xue zhang";
}
 😃 <MainViewController.m, -[MainViewController viewDidLoad], line: 44>
today = 2013-07-29 00:42:18 +0000

重要声明:
由于作者水平限制,因使用XYLog带来的一切问题,本作者不承担任何责任.
