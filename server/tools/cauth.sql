-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cauth
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(500) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'9787519029401','oboLq4sRUddACV551tQLi-3BxRls','浮生六记','https://img3.doubanio.com/view/subject/m/public/s29670576.jpg','https://book.douban.com/subject/28525337/','中国文联出版社','','28.00',0,'中国文学 1','[清]沈复',0),(2,'9787501234233','oboLq4sRUddACV551tQLi-3BxRls','失传的营养学','https://img1.doubanio.com/view/subject/m/public/s24559937.jpg','https://book.douban.com/subject/3354804/','','《失传的营养学:远离疾病》是一部根在远古、利在当今全人类健康的伟大，《失传的营养学:远离疾病》是一部人人都应该读的营养医学书，一杨真正意义的医学和营养学革命将从此书开始。','32.00元',6.1,'营养学 112,失传的营养学 106,健康 65,养生 51,营养 32,医学 26,生活 21,不值得读的书 14','王涛',2),(3,'9787545528787','oboLq4sRUddACV551tQLi-3BxRls','反本能','https://img3.doubanio.com/view/subject/m/public/s29523763.jpg','https://book.douban.com/subject/27121054/','天地出版社','为什么改变很难发生？\n为什么我们经常重蹈覆辙？\n人为什么喜欢待在舒适区？\n我们为什么对很多事情习以为常？\n到底是什么阻碍了我们走向卓越？\n答案是：“本能！”\n“本能”来自基因的硬连接，它们对我们的生存有极为重要的意义。人类大脑约有八成神经元位于小脑，仅有不到两成在皮层区域，这意味着我们的大多数行为来自原始的本能，而非理性思考的结果。\n本能虽然可以让我们用极为微弱的线索觉知到危险，但是却无法让我们更好地看清自我和事物。而对自我和事物的探索，需要我们反抗本能的直觉和思维。\n本书正是以“反本能”作为着力点，对自我行为和思维的改变进行了深刻的阐述：\n当战胜潜意识里美化自己的本能时，我们才能更好地正视自己的不足；\n当战胜攻击的本能时，我们才能更好地理解他人；\n当战胜狭隘的本能时，我们才能看见更加真实的世界，洞悉事物本来的样子……\n只有通过反本能的思维方式，我们才能从已经习惯的表象中看到事情的真相，才能对抗阻碍我们提升的习以为常。                                                        越能够反本能的人，往往也越能从优秀进阶到卓越。','38',7,'心理学 175,好书，值得一读 99,我想读这本书 73,思维 73,很吸引人的书，想读！ 64,本能 58,想读，一定很精彩！ 53,自我管理 43','卫蓝',0),(4,'9787544257862','oboLq4sRUddACV551tQLi-3BxRls','时间的针脚','https://img3.doubanio.com/view/subject/m/public/s8941821.jpg','https://book.douban.com/subject/10512236/','南海出版公司','诺贝尔文学奖获得者略萨倾情推荐：\n一部充满阴谋、爱情、神秘和柔情的神奇小说。\n---------------------------------------------------------------\n历史未能留下这个女人的名字，但在时间的针脚中，她真实而隐形地活着。\n天真烂漫的裁缝姑娘在结婚前夕，和未婚夫走向一家打字机专卖店，一推开门廊，她早已确定的命运即被彻底改变：一笔巨额财产和从未谋面的父亲，都从天而降！\n这只是不朽的时间摹本的第一页，随着三十年代的一页一页边渐次翻开，整个地中海沿岸都成了她的舞台，政治、谍战、阴谋、冒险也竟与她呼吸相闻……','39.50元',8.4,'时间的针脚 3101,西班牙文学 3033,小说 2266,玛丽亚·杜埃尼亚斯 1531,西班牙 1510,外国文学 1446,文学 639,神秘 506','[西] 玛丽亚·杜埃尼亚斯',0),(5,'9789787112038','oboLq4sRUddACV551tQLi-3BxRls','建筑工程造价管理','https://img3.doubanio.com/view/subject/m/public/s23477522.jpg','https://book.douban.com/subject/20299932/','','建筑工程造价管理，ISBN：9789787112038，作者：','',0,'','',0),(6,'9787508355948','oboLq4sRUddACV551tQLi-3BxRls','CSS权威指南（第三版）','https://img3.doubanio.com/view/subject/m/public/s2921314.jpg','https://book.douban.com/subject/2308234/','中国电力出版社','你是否既想获得丰富复杂的网页样式，同时又想节省时间和精力？本书为你展示了如何遵循CSS最新规范（CSS2和CSS2.1）将层叠样式表的方方面面应用于实践。\n通过本书提供的诸多示例，你将了解如何做到仅在一处建立样式表就能创建或修改整个网站的外观，以及如何得到HTML力不能及的更丰富的表现效果。\n资深CSS专家Eric A.Meyer。利用他独有的睿智和丰富的经验对属性、标记、标记属性和实现做了深入的研究，另外在浏览器支持和设计原则等实际问题上也有独到的见解。你所需要的就是HTML 4.0的知识即可以为网站布局和分页创建简明而且易于维护的脚本，同时兼具桌面系统的美观性和可控性。在本书中你将学到以下内容：\n·用多种方式对文本应用样式\n·用户界面、表布局、列表和生成内容\n·浮动和定位的优缺点\n·字体系列和后路\n·框模型的工作原理\n·IE7、Firefox和其他浏览器支持的新CSS3选择器\n最新版《CSS权威指南》一书经过全面更新，涵盖了Internet Explorer 7，详细介绍了各个CSS属性以及属性之间的相互作用，并指导你如何避免一些常见的错误。不论你是一位经验丰富的web创作人员，还是一无所知的新手，都可以把它作为内容翔实的CSS参考资料放在手边。Eric A.Meyer。在HTML、CSS和web标准领域是国际上公认的专家，他从1993年就开始从事web方面的工作。他也是complex spiral consulting公司的奠基人，其客户包括美国在线、苹果计算机公司、富国银行和Macromedia等著名公司。','58.00',8.5,'css 505,CSS权威指南 221,CSS 192,网页设计 169,Web标准 130,Web 127,前端开发 117,计算机 105','[美] Eric A.Meyer',0),(7,'9787115226266','oboLq4sRUddACV551tQLi-3BxRls','鸟哥的Linux私房菜','https://img1.doubanio.com/view/subject/m/public/s4399937.jpg','https://book.douban.com/subject/4889838/','人民邮电出版社','本书是最具知名度的Linux入门书《鸟哥的Linux私房菜基础学习篇》的最新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口 shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。\n本书内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。','88.00元',9.1,'Linux 2461,操作系统 953,计算机 836,鸟哥 628,Linux/Unix 516,IT 291,linux 252,技术 233','鸟哥',0),(8,'9787302413387','oboLq4sRUddACV551tQLi-3BxRls','ASP.NET MVC 5 网站开发之美','https://img3.doubanio.com/view/subject/m/public/s29200482.jpg','https://book.douban.com/subject/26929930/','清华大学出版社','ASP.NET MVC是微软Web开发平台中*重要的一块拼图，其架构特性更适合用来开发大型的Web应用程序，且ASP.NET MVC的开发方式也越来越受到重视，因此学习MVC已是刻不容缓。\n《ASP.NET MVC5网站开发之美》以ASP.NET MVC 5为主，涉及MVC 5.2 RTM、Web API 2.2 RTM及Visual Studio 2013 Update 2等最新内容，应用范围可涵盖MVC 2-5。\n《ASP.NET MVC5网站开发之美》从快速学会Model的概念入手，讲述LmQ以及Entitv Framework开发技术；深度认识Controller以及如何灵活运用、使用Routing技术，让网站在搜寻引擎中拥有高排名；View+Bootstrap应用开发；丰富实用的网站安全性技术；详解Web API、ASP.NET Identity技术；完整的CMS范例分析；充分运用MVC的技术与特性；抢先预览ASENETvNext及MVC 6等；是一本内容丰富且扎实的教材与技术参考书。\n《ASP.NET MVC5网站开发之美》作者在ASENET MVC开发上均有丰富的实战经验，通过《ASP.NET MVC5网站开发之美》可以让读者快速进入ASP.NET MVC的开发领域，掌握实用的网站开发技术；对于需要学习MVC应用开发的初学者或是己经具备Web Forms开发经验的软件工程师来说，都是难得的经典之作。','128',0,'AAAAAAAAA 1','demo,小朱,陈传兴,王育民,陈仕杰',0),(9,'9787508690575','oboLq4sRUddACV551tQLi-3BxRls','抢占心智','https://img1.doubanio.com/view/subject/m/public/s29827208.jpg','https://book.douban.com/subject/30281784/','中信出版集团','江南春作为中国传媒教父，通过差异化定位、饱和式营销等方式成功抢占用户心智，帮助众多企业实现了产品与品牌的市场占领。\n本书是江南春首部将其引爆打法倾囊相授的作品，也是他在创业黑马学院开设的营销定位实验室课程的精华，不仅系统地总结了其15年的营销心法，更披露了很多江南春亲历的、鲜为人知的产品与品牌从无到有、从弱到强的打造历程，为创业者、品牌人、营销人提供了参考与借鉴。','58',8.6,'营销 17,好书，值得一读 17,江南春 16,广告 9,营销宝典 8,企业 6,商业运营 3,*北京·中信出版社* 3','江南春',0),(10,'9787550027510','oboLq4sRUddACV551tQLi-3BxRls','那不勒斯的萤火','https://img3.doubanio.com/view/subject/m/public/s29754502.jpg','https://book.douban.com/subject/30180821/','百花洲文艺出版社','在那不勒斯有这么一群人，他们代表着这片地区最强大的生命力，却默默无闻，被这座城市的黑暗淹没，迷失在无为的生活里。也有那么一些人，他们无视绚丽的霓虹，在这片黑暗中追寻着希望的萤火。\n马尔切罗是银行职员的儿子，性格乖顺温和，一次偶然，使他的人生与黑手党的儿子利奥有了交集。利奥桀骜、叛逆、无畏而又自由，他们彼此吸引着，一起度过了美好的童年。然而在利奥十六岁那年，父亲在一次追杀中丧命，利奥和马尔切罗也开始渐行渐远。马尔切罗逐渐成长为一个优秀的少年，利奥则开始了抢劫、贩毒的浑噩生活，仿佛在一步步沿着父亲的轨迹走下去。\n三年后，利奥离开了那不勒斯去往美国，在那里娶妻生子，生活渐渐恢复正常。此时的马尔切罗也一步步按照计划好的人生平顺地生活着，他们的人生好似再没了交集。然而一通电话，利奥再次回到那不勒斯，并意外开始了长达十二年的囚徒生活，而马尔切罗看似风光优秀的人生也是暗潮涌动……','42元',8.1,'外国文学 219,小说 152,意大利 66,想读，一定很精彩！ 66,经典 64,我想读这本书 61,人生 60,好书，值得一读 51','[意]马西米利亚诺·威尔吉利奥',0),(11,'9787010009230','oboLq4sRUddACV551tQLi-3BxRls','毛泽东选集 第二卷','https://img1.doubanio.com/view/subject/m/public/s23005817.jpg','https://book.douban.com/subject/1125026/','人民出版社','这部选集，包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。','23.00元',9.1,'毛泽东 341,政治 201,毛泽东选集 198,哲学 148,革命 88,历史 77,马克思主义 76,政经战略 69','毛泽东',0),(12,'9787010009247','oboLq4sRUddACV551tQLi-3BxRls','毛泽东选集 第三卷','https://img1.doubanio.com/view/subject/m/public/s1815767.jpg','https://book.douban.com/subject/1077621/','人民出版社','《毛泽东选集(第3卷)》包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。 \n下面有几点属于出版事务的声明：\n第一，现在出版的这个选集，还是不很完备的。由于国民党反动派对于革命文献的毁灭，由于在长期战争中革命文献的散失，我们现在还不能够找到毛泽东同志的全部著作，特别是毛泽东同志所写的许多书信和电报（这些在毛泽东同志著作中占很大的部分）。\n第二，有些曾经流行的著作，例如《农村调查》，遵照著者的意见，没有编入；又如《经济问题与财政问题》，也遵照著者的意见，只编进了其中的第一章（即《关于过去工作的基本总结》）。\n第三，选集中作了一些注释。其中一部分是属于题解的，附在各篇第一页的下面；其他部分，有属于政治性质的，有属于技术性质的，都附在文章的末尾。\n第四，本选集有两种装订的本子。一种是各时期的著作合订的一卷本，另一种是四卷本。四卷本的第一卷包括第一次国内革命战争时期和第二次国内革命战争时期的著作；第二卷和第三卷包括抗日战争时期的著作；第四卷包括第三次国内革命战争时期的著作。','18.00元',8.9,'毛泽东 296,政治 168,哲学 121,毛泽东选集 107,历史 75,革命 61,中国 61,马克思主义 60','毛泽东',0),(13,'9787115352460','oboLq4sRUddACV551tQLi-3BxRls','Node.js实战','https://img3.doubanio.com/view/subject/m/public/s27264241.jpg','https://book.douban.com/subject/25870705/','人民邮电出版社','服务器端JavaScript？没错。Node.js是一个JavaScript服务器，支持可伸缩的高性能Web应用。借助异步I/O，这个服务器可以同时做很多事情，能满足聊天、游戏和实时统计等应用的需求。并且既然是JavaScript，那你就可以全栈使用一种语言。\n本书向读者展示了如何构建产品级应用，对关键概念的介绍清晰明了，贴近实际的例子，涵盖从安装到部署的各个环节，是一部讲解与实践并重的优秀著作。通过学习本书，读者将深入异步编程、数据存储、输出模板、读写文件系统，掌握创建TCP/IP服务器和命令行工具等非HTTP程序的技术。本书同样非常适合熟悉Rails、Django或PHP开发的读者阅读学习。\n本书主要内容：\nNode.js及其扩展的安装配置；\n全面理解异步编程和事件循环；\n学会开发微博、聊天和游戏等热门应用。','69.00元',8.3,'Node.js 115,JavaScript 57,nodejs 48,web开发 38,node.js 38,前端开发 29,编程 28,node 18','',0),(14,'9787115437303','oboLq4sRUddACV551tQLi-3BxRls','深入React技术栈','https://img3.doubanio.com/view/subject/m/public/s29162154.jpg','https://book.douban.com/subject/26918038/','人民邮电出版社','全面讲述React技术栈的第一本原创图书，pure render专栏主创倾力打造\n覆盖React、Flux、Redux及可视化，帮助开发者在实践中深入理解技术和源码\n前端组件化主流解决方案，一本书玩转React“全家桶”\n本书讲解了非常多的内容，不仅介绍了面向普通用户的API、应用架构和周边工具，还深入介绍了底层实现。此外，本书非常重视实战，每一节都有实际的例子，细节丰富。我从这本书里学到了很多东西，强烈推荐！\n——阮一峰，蚂蚁金服技术专家，国内技术圈知名博主，《ES 6标准入门（第2版）》作者\nReact从诞生起就颠覆了诸多传统前端开发的“铁律”，这种破旧立新开启了前端开发全新的时代。它的用法和理念，代表了现在和未来几年前端技术的潮流风向。如果不想落伍，最好进行系统学习。实践出真知，从牛人的实践中收获自己的真知，恐怕是最好的捷径。这是我看到的第一本React中文原创著作，读来倍感亲切。\n——张克军，豆瓣前端专家，国内技术圈知名博主，前端布道师\n本书内容翔实，一扫“文档说明书”之风，有大量作者的实战经验。由浅入深，无论你是 React 初学者，还是进阶人士，本书都值得一读！\n——寸志，陆金所前端架构师，《前端外刊评论》发起人\n本书从几个维度去介绍 React。一是作为 View 库，它怎么实现组件化，以及它背后的实现原理。二是扩展到 Flux 应用架构及重要的衍生品 Redux，它们怎么与 React 结合做应用开发。三是对 React 与 server 的碰撞产生的一些思考。四是讲述它在可视化方面的优势与劣势。\n本书适合有一定经验的前端开发人员阅读。\n陈屹\n前端架构师，就职于阿里巴巴。热衷开源事业，长年专注于前端架构、数据可视化、Node.js等领域，知乎专栏pure render的创办人。','CNY 79.00',8.3,'React 123,Web前端 65,JavaScript 55,前端 24,前端开发 23,Web开发 20,编程 18,技术 16','陈屹',0),(15,'9787121331565','oboLq4sRUddACV551tQLi-3BxRls','Vue移动开发实战技巧','https://img3.doubanio.com/view/subject/m/public/s29662615.jpg','https://book.douban.com/subject/27662351/','电子工业出版社','内容简介\nVue.js是一个渐进式的JavaScript 框架，与其他重量级框架不同的是，Vue 采用自底向上增量开发的设计。Vue 的核心库只关注视图层，它不仅易于上手，还便于与第三方库或既有项目整合。作为2016年社区最火的前端框架，越来越多的公司都在尝试用Vue来开发自己的项目。本书主要以项目维度，站在实战的角度，从项目的搭建，项目开发，到项目的优化，结合实际，多维度介绍了Vue.js。本书从实战场景出发，结合各种实用demo，结合开发环境构建，从无到有，剖析原理，全面介绍Vue2.0的实用技巧。后面几章重点讲解Vue内部实现机制，针对各种业务形态的支持以及网站调优方等等，是Vue技术体系追随者不可多得的实战宝典。','58',0,'Vue 4,移动 3,开发 3,前端 3,软件开发 1,互联网 1','李利德',1),(16,'9787508051000','oboLq4sRUddACV551tQLi-3BxRls','非暴力沟通','https://img1.doubanio.com/view/subject/m/public/s9346487.jpg','https://book.douban.com/subject/3533221/','华夏出版社','作为一个遵纪守法的好人，也许我们从来没有想过和“暴力”扯上关系。不过如果稍微留意一下现实生活中的谈话方式，并且用心体会各种谈话方式给我们的不同感受，我们一定会发现，有些话的确伤人！言语上的职责、嘲讽、否定、说教以及任意打断、拒不回应、随意出口的评价和结论给我们带来的情感和精神上的创伤，甚至比肉体的伤害更加令人痛苦。这些无心或有意的语言暴力让人与人变得冷漠、隔阂、敌视','29.00元',8.5,'心理学 5128,沟通 4630,人际沟通 3320,非暴力沟通 2782,心理 1996,沟通术 1491,情感 1297,人际关系 1209','[美] 马歇尔·卢森堡',2),(17,'9787115275790','oboLq4sRUddACV551tQLi-3BxRls','JavaScript高级程序设计（第3版）','https://img3.doubanio.com/view/subject/m/public/s8958650.jpg','https://book.douban.com/subject/10546125/','人民邮电出版社','本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript 增添了很多适应未来发展的新特性。本书这一版除增加5 章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从JavaScript 语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax 与Comet 服务器端通信，HTML5 表单、媒体、Canvas（包括WebGL）及Web Workers、地理定位、跨文档传递消息、客户端存储（包括IndexedDB）等新API，还介绍了离线应用和与维护、性能、部署相关的最佳开发实践。本书附录展望了未来的API 和ECMAScript Harmony 规范。\n本书适合有一定编程经验的Web 应用开发人员阅读，也可作为高校及社会实用技术培训相关专业课程的教材。','99.00元',9.3,'JavaScript 2167,Web前端开发 983,前端开发 605,前端 459,javascript 458,编程 406,Web开发 368,计算机 358','[美] Nicholas C. Zakas',6),(18,'9787508665849','oboLq4sRUddACV551tQLi-3BxRls','区块链技术驱动金融','https://img1.doubanio.com/view/subject/m/public/s29487148.jpg','https://book.douban.com/subject/26860970/','中信出版社,中信出版集团','从数字货币及智能合约技术层面，解读了区块链技术在金融领域的运用。“如果你正在寻找一本在技术层面解释比特币是如何运作的，并且你有一定计算机科学和编程的基本知识，这本书应该很适合你。”\n《区块链：技术驱动金融》回答了一系列关于比特币如何运用区块链技术运作的问题，并且着重讲述了各种技术功能，以及未来会形成的网络。比特币是如何运作的？它因何而与众不同？你的比特币安全吗？比特币用户如何匿名？区块链如何帮助比特币实现没有身份的共识？我们可以在比特币这一平台上创建什么应用程序？加密数字货币可以被监管吗？创建一种新的数字货币将会带来什么样的变化？未来将会如何发展？\n读完这本书，你会了解到所有比特币和其他数字货币相关的知识，对区块链技术具备基础性认识，能够区别那些完全虚构的故事。你将会对于需要什么样的安全软件，如何与比特币网络进行交互有了基础概念，也可以将区块链的概念整合应用于自己的项目中。你，将会成为时代的引领者！','CNY 79.00',8.3,'区块链 868,金融科技 351,比特币 315,金融 284,互联网 236,计算机 187,技术 162,新经济 145','阿尔文德·纳拉亚南,约什·贝努,爱德华·费尔顿,安德鲁·米勒,史蒂文·戈德费德',1),(19,'9787121139512','oboLq4sRUddACV551tQLi-3BxRls','浪潮之巅','https://img3.doubanio.com/view/subject/m/public/s6807265.jpg','https://book.douban.com/subject/6709783/','电子工业出版社','近一百多年来，总有一些公司很幸运地、有意识或无意识地站在技术革命的浪尖之上。在这十几年间，它们代表着科技的浪潮，直到下一波浪潮的来临。\n从一百年前算起，AT&T 公司、IBM 公司、苹果公司、英特尔公司、微软公司、思科公司、雅虎公司和Google公司都先后被幸运地推到了浪尖。虽然，它们来自不同的领域，中间有些已经衰落或正在衰落，但是它们都极度辉煌过。本书系统地介绍了这些公司成功的本质原因及科技工业一百多年的发展。\n在极度商业化的今天，科技的进步和商机是分不开的。因此，本书也系统地介绍了影响到科技浪潮的风险投资公司，诸如 KPCB 和红杉资本，以及百年来为科技捧场的投资银行，例如高盛公司，等等。\n在这些公司兴衰的背后，有着它必然的规律。本书不仅讲述科技工业的历史，更重在揭示它的规律性。','55.00元',9.1,'互联网 12092,IT 8917,商业 6277,计算机 4493,浪潮之巅 4469,历史 3616,管理 1756,投资 1448','吴军',4),(20,'9787115282828','oboLq4sRUddACV551tQLi-3BxRls','数学之美','https://img3.doubanio.com/view/subject/m/public/s9114855.jpg','https://book.douban.com/subject/10750155/','人民邮电出版社','几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，得到读者高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔可夫链、矩阵计算，甚至余弦函数原来都如此亲切，并且栩栩如生，才发现自然语言和信息处理这么有趣。\n今年，作者吴军博士几乎把所有文章都重写了一遍，为的是把高深的数学原理讲得更加通俗易懂，让非专业读者也能领略数学的魅力。读者通过具体的例子学到的是思考问题的方式 —— 如何化繁为简，如何用数学去解决工程问题，如何跳出固有思维不断去思考创新。','45.00元',8.7,'数学 11423,计算机 4800,科普 3947,吴军 2978,计算机科学 2124,互联网 1896,科学 1259,Programming 734','吴军',2),(21,'9787115351531','oboLq4sRUddACV551tQLi-3BxRls','图解HTTP','https://img3.doubanio.com/view/subject/m/public/s27283822.jpg','https://book.douban.com/subject/25863515/','人民邮电出版社','本书对互联网基盘——HTTP协议进行了全面系统的介绍。作者由HTTP协议的发展历史娓娓道来，严谨细致地剖析了HTTP协议的结构，列举诸多常见通信场景及实战案例，最后延伸到Web安全、最新技术动向等方面。本书的特色为在讲解的同时，辅以大量生动形象的通信图例，更好地帮助读者深刻理解HTTP通信过程中客户端与服务器之间的交互情况。读者可通过本书快速了解并掌握HTTP协议的基础，前端工程师分析抓包数据，后端工程师实现REST API、实现自己的HTTP服务器等过程中所需的HTTP相关知识点本书均有介绍。\n本书适合Web开发工程师，以及对HTTP协议感兴趣的各层次读者。','49.00元',8.1,'HTTP 1098,网络 523,计算机 467,协议 319,互联网 284,web 191,Web 186,网络编程 157','【日】上野宣',13),(22,'9787115293800','oboLq4sRUddACV551tQLi-3BxRls','算法（第4版）','https://img3.doubanio.com/view/subject/m/public/s28322244.jpg','https://book.douban.com/subject/19952400/','人民邮电出版社','本书全面讲述算法和数据结构的必备知识，具有以下几大特色。\n     算法领域的经典参考书\nSedgewick畅销著作的最新版，反映了经过几十年演化而成的算法核心知识体系\n 内容全面\n全面论述排序、搜索、图处理和字符串处理的算法和数据结构，涵盖每位程序员应知应会的50种算法\n 全新修订的代码\n全新的Java实现代码，采用模块化的编程风格，所有代码均可供读者使用\n 与实际应用相结合\n在重要的科学、工程和商业应用环境下探讨算法，给出了算法的实际代码，而非同类著作常用的伪代码\n 富于智力趣味性\n简明扼要的内容，用丰富的视觉元素展示的示例，精心设计的代码，详尽的历史和科学背景知识，各种难度的练习，这一切都将使读者手不释卷\n       科学的方法\n用合适的数学模型精确地讨论算法性能，这些模型是在真实环境中得到验证的\n 与网络相结合\n配套网站algs4.cs.princeton.edu提供了本书内容的摘要及相关的代码、测试数据、编程练习、教学课件等资源','99.00元',9.4,'算法 1926,计算机 802,编程 688,计算机科学 395,Algorithms 370,计算机-算法 367,经典 243,Java 217','塞奇威克 (Robert Sedgewick),韦恩 (Kevin Wayne)',50),(23,'9787536692930','oboLq4sRUddACV551tQLi-3BxRls','三体','https://img1.doubanio.com/view/subject/m/public/s2768378.jpg','https://book.douban.com/subject/2567698/','重庆出版社','文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\n人类的末日悄然来临。','23.00',8.8,'科幻 48211,刘慈欣 38272,三体 26603,科幻小说 20874,中国 16401,小说 14906,中国科幻 14196,硬科幻 13822','刘慈欣',111);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `bookid` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (6,'oboLq4sRUddACV551tQLi-3BxRls','23','顶顶顶','',''),(7,'oboLq4sRUddACV551tQLi-3BxRls','22','顶顶顶','',''),(8,'oboLq4sRUddACV551tQLi-3BxRls','21','顶顶顶顶顶顶','Nexus 5','杭州市'),(9,'oboLq4sRUddACV551tQLi-3BxRls','19','d\'d\'d\'s\'dwe\'c顶顶顶色的从事地产','Nexus 5','杭州市'),(10,'oboLq4sRUddACV551tQLi-3BxRls','17','非常的v从而产生下','Nexus 5','杭州市');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csessioninfo`
--

DROP TABLE IF EXISTS `csessioninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `csessioninfo` (
  `open_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uuid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `skey` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_info` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会话管理用户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csessioninfo`
--

LOCK TABLES `csessioninfo` WRITE;
/*!40000 ALTER TABLE `csessioninfo` DISABLE KEYS */;
INSERT INTO `csessioninfo` VALUES ('oboLq4sRUddACV551tQLi-3BxRls','2b28b42c-14c3-435a-a5eb-c9af0da8a032','13963817be48007f4113004186e93decb477d569','2018-08-09 02:44:39','2018-08-13 09:46:59','+oUESqPYZSw2wejVuNZoeA==','{\"openId\":\"oboLq4sRUddACV551tQLi-3BxRls\",\"nickName\":\"总有刁民要害朕\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Hangzhou\",\"province\":\"Zhejiang\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/RdUs5RFaSg2edfsZhyg45g4iaibLIk9HysOPkjAxpAp0NwctIQzAJqCNMfhYzL87MXtYP6QN8QcIgicKCXdHRJAFQ/132\",\"watermark\":{\"timestamp\":1534153617,\"appid\":\"wxc66a2b8989f31ea4\"}}');
/*!40000 ALTER TABLE `csessioninfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-13 17:56:43
