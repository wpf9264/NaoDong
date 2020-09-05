# 脑洞大开

2020.09.05
为兼容iOS13以下设备，并完全使用代码布局：
	删除info.plist中的Application Scene Manifest；
	删除项目中的Scenedelegate.h和Scenedelegate.m;
	删除掉APPdelegate.m中的#pragma mark - UISceneSession lifecycle代码;
	在APPdelegate.h中添加@property (strong, nonatomic) UIWindow * window;属性

初步构想：
	NDMainEntryViewViewController作为整个APP的主页面；
	NDFunctionsTableViewController列出所有的功能，具体就是自己的学习记录或者编程技巧或者一些想法实践。
	一个枚举代表一个功能。
