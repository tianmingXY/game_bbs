# SSM做的游戏论坛（游戏贴吧），毕业设计时候做的，功能相对完善，重点界面美观，代码注释多

#### 介绍
SSM做的游戏论坛（游戏贴吧），毕业设计时候做的，功能相对完善，重点界面美观，代码注释多，具体功能看下面的运行效果截图，

#### 软件架构
软件架构说明


#### 安装使用教程

Game游戏贴吧

用户测试账号    test  123456

管理员测试账号  admin   123456

数据库每个表都有详细注释

代码也有详细注释（详细说明）

前段使用技术：html+JavaScript+css+layui+jQuery


网站功能：实现论坛帖子管理，论坛帖子分类管理，留言管理，用户登录注册，管理员管理，
验证码使用，ajax使用，分页查询，报表统计，友情链接，问卷提交，问卷添加修改，问卷结果查看等。



网站前端：http://localhost:8080/CommonWeb/pc/index

网站后台:http://localhost:8080/CommonWeb/manage/login

4.系统实现（基础代码，业务功能代码的编写）

com   项目包结构说明

└─module

    ├─controller  控制层，负责请求的处理，数据库的操作调用

    ├─mapper      数据库操作接口，sql文件在xml中的配置

    ├─pojo        数据库对应实体类，用来和数据库表实现映射关系

    └─util        java中常见工具类的存放


所有WEB-INF/view/pc文件夹中的都是前端相关jsp页面

    login.jsp 登录页面

    register.jsp   注册页面

    index.jsp 首页

    code.jsp 验证码生成页面

    liuyan.jsp 留言添加显示页面

    ....
所有WEB-INF/view/manage文件夹中的都是后台管理相关jsp页面，按照文件夹进行划分表，
    每一个文件夹对应一张表的操作，例如userinfo是用户表的所有管理操作。
###前端首页
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/104140_47cf6ccc_865419.png "首页.png")
###帖子详情
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/104204_c6d5eec8_865419.png "帖子详情.png")
###帖子列表
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/104219_e553b7df_865419.png "帖子列表.png")



#### 运行效果截图
### 后台运行效果部分截图
![发布帖子](https://images.gitee.com/uploads/images/2019/1021/102525_34f4db60_865419.png "发布帖子.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/102619_a6e7472c_865419.png "后台首页.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/102630_6eb6fe0c_865419.png "后台登录.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/102853_b9923bd0_865419.png "帖子分类管理.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/102902_26d36313_865419.png "帖子分类统计.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/102922_ce714a80_865419.png "问卷管理.png")


### 前台运行效果部分截图
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/103000_a0187f4d_865419.png "登录.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/103011_98accbd4_865419.png "个人中心.png")
![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/103025_7953aba7_865419.png "公告信息.png")

![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/103036_30ffba2d_865419.png "留言管理.png")

![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/103228_1e0385ab_865419.png "问卷调查.png")

![输入图片说明](https://images.gitee.com/uploads/images/2019/1021/103238_be8ad00a_865419.png "注册.png")

### 运行中有什么不明白的地方或者不会运行，可以加我扣扣联系1516993194

