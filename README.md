项目名称：
    豆瓣图书

AppID(小程序ID)	wxc66a2b8989f31ea4

技术栈：
    Vue
    Mpvue
    Node
    Koa2
    Mysql
    Webpack
    Nginx
    Eslint
    Sass
    async + await
    百度地图api
    腾讯云Wafer2

小程序的生命周期
    onLaunch：小程序启动执行，初始化配置
    onShow：小程序显示执行
    onHide：小程序隐藏执行
    onError：小程序报错执行

小程序的缺点
    1. 不能使用 npm，使用第三方包的方式太原始
    2. 需要为小程序单独开发代码，不能和 web 系统重用
    3. 开发效率和学习成本（小程序特有的语法）

mysql 本地安装方式
    https://blog.csdn.net/chic_data/article/details/72286329

mysql 执行命令（切记记得分号）
    net start <mysql名称>   启动请求服务
    mysql -u root -p ******       启动mysql数据库后 root 为用户名，*** 为密码
    show databases;         查看数据库
    create database <数据库名>;  新建数据库
    use <数据库名>;          进入数据库
    show tables;            查看表格
    desc <表格名>;           查看表格结构
    select * from <表格名>;   查看表格全部具体数据
    select <数据名，数据名> from <表格名>;    查看表格中某一条/多条具体数据
    drop table <表格名>;      删除表格
    source <路径>    导入数据库

查询表格时，报错信息解决方案
1.  Error: ER_CANT_AGGREGATE_2COLLATIONS
    http://www.php.cn/mysql-tutorials-382958.html



上线开发流程
1. 修改前端的密码
    src/config.js 中，路径切换成小程序线上路径
    可在开发者工具中 详情/腾讯云状态 查看开发环境 request 域名

2. 修改服务端mysql密码：
    server/config.js 中，注释本地开发环境，填写线上开发密码（初值值为app id）

3. 上传测试代码
    通过开发者工具/腾讯云上传测试代码
    首次上传应选择模块上传，勾选 3个 所有属性

4. 刷新腾讯云开发页面，点击mysql，进行登录（账号密码可在）

5. 创立表格，表格类型可根据 server/tools/snail.sql 规格进行创建
   创建时，应在cauth数据库中选用sql语句创建表格，
   也可以直接导入 snail.sql 文件，进行创建新的表格



