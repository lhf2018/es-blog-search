/*
Navicat MySQL Data Transfer

Source Server         : test01
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-11-14 13:26:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_blog`
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '1',
  `title` varchar(60) DEFAULT NULL COMMENT '2',
  `author` varchar(60) DEFAULT NULL COMMENT '3',
  `content` mediumtext COMMENT '4',
  `create_time` datetime DEFAULT NULL COMMENT '5',
  `update_time` datetime DEFAULT NULL COMMENT '6',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('1', 'Navicat 创建数据库和表之使用命令创建', '叶榕桃', '上篇介绍了使用 Navicat 图形化界面创建数据库和表，现在介绍一下使用命令创建数据库和表的方法。\n\n  首先，依然是需要一台已经配置好MySQL数据库和安装了Navicat客户端的电脑。\n\n使用命令创建数据库和表的具体步骤如下：\n\n1、使用前一篇的方法连接上MySQL\n\n2、连接上MySQL之后，在连接列表里找到我们的连接，右键单击，选择【命令列界面】，打开命令列界面\r\n————————————————\r\n版权声明：本文为CSDN博主「叶榕桃」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/yerongtao/article/details/55798816', '2019-11-09 00:22:36', '2019-11-14 00:22:44');
INSERT INTO `t_blog` VALUES ('2', '有奖征集：令你最难忘的一次敲代码环境！', 'weixin_41969545', '公交地铁上、马路栏杆旁、夜幕里的灯柱下、早高峰的人流中…\r\n\r\n当在这些场景里看见一位正在疯狂敲打键盘的人，不要惊讶，他可能只是在改bug！\r\n\r\n在飞机卫生间的马桶上（别怪我，要怪就怪廉航经济舱真不是人坐的）\r\n\r\n在哥们儿的后背上（然而他翘了我女友，已决裂）\r\n\r\n在商场店铺门前的座椅上（老婆逛街逛到我手机充电宝全没电了你敢信）\r\n\r\n一个决然的身影，一台打开呈L型的笔记本，不惧任何办公环境，bug来之即改，需求有提必应，才是一位合格的“L型职场人”！\r\n\r\nThinkPad L系列商用PC推崇的“L型职场人”的品质：坚固耐用、持久续航、高生产力。\r\n\r\n联想ThinkPad L13，正是以这样的理念，打造出来的产品。\r\n\r\n\r\n活动介绍\r\n\r\n如何成为一枚优秀的“L型职场人”，从而走向人生巅峰？\r\n\r\n联想ThinkPad L13是你的优选方案！\r\n\r\n新一代ThinkPad L13 完美传承了ThinkPad经典家族的品牌基因，已经成为众多一流企业的商用笔记本首选。\r\n\r\nThinkPad L13 将继续以用户需求为中心，以睿智坚实、轻薄坚固的特点满足商务办公的多样需求，助力职场人士实现高效输出，成为职场奋进的坚实伙伴。\r\n\r\n\r\n更多有关ThinkPad L13的信息请见：\r\n\r\nhttps://mp.weixin.qq.com/s/Wn6WyByZAFY0HVZPk2HBiw\r\n公交地铁上、马路栏杆旁、夜幕里的灯柱下、早高峰的人流中…\r\n\r\n当在这些场景里看见一位正在疯狂敲打键盘的人，不要惊讶，他可能只是在改bug！\r\n\r\n在飞机卫生间的马桶上（别怪我，要怪就怪廉航经济舱真不是人坐的）\r\n\r\n在哥们儿的后背上（然而他翘了我女友，已决裂）\r\n\r\n在商场店铺门前的座椅上（老婆逛街逛到我手机充电宝全没电了你敢信）\r\n\r\n一个决然的身影，一台打开呈L型的笔记本，不惧任何办公环境，bug来之即改，需求有提必应，才是一位合格的“L型职场人”！\r\n\r\nThinkPad L系列商用PC推崇的“L型职场人”的品质：坚固耐用、持久续航、高生产力。\r\n\r\n联想ThinkPad L13，正是以这样的理念，打造出来的产品。\r\n\r\n\r\n活动介绍\r\n\r\n如何成为一枚优秀的“L型职场人”，从而走向人生巅峰？\r\n\r\n联想ThinkPad L13是你的优选方案！\r\n\r\n新一代ThinkPad L13 完美传承了ThinkPad经典家族的品牌基因，已经成为众多一流企业的商用笔记本首选。\r\n\r\nThinkPad L13 将继续以用户需求为中心，以睿智坚实、轻薄坚固的特点满足商务办公的多样需求，助力职场人士实现高效输出，成为职场奋进的坚实伙伴。\r\n\r\n\r\n更多有关ThinkPad L13的信息请见：\r\n\r\nhttps://mp.weixin.qq.com/s/Wn6WyByZAFY0HVZPk2HBiw\r\n公交地铁上、马路栏杆旁、夜幕里的灯柱下、早高峰的人流中…\r\n\r\n当在这些场景里看见一位正在疯狂敲打键盘的人，不要惊讶，他可能只是在改bug！\r\n\r\n在飞机卫生间的马桶上（别怪我，要怪就怪廉航经济舱真不是人坐的）\r\n\r\n在哥们儿的后背上（然而他翘了我女友，已决裂）\r\n\r\n在商场店铺门前的座椅上（老婆逛街逛到我手机充电宝全没电了你敢信）\r\n\r\n一个决然的身影，一台打开呈L型的笔记本，不惧任何办公环境，bug来之即改，需求有提必应，才是一位合格的“L型职场人”！\r\n\r\nThinkPad L系列商用PC推崇的“L型职场人”的品质：坚固耐用、持久续航、高生产力。\r\n\r\n联想ThinkPad L13，正是以这样的理念，打造出来的产品。\r\n\r\n\r\n活动介绍\r\n\r\n如何成为一枚优秀的“L型职场人”，从而走向人生巅峰？\r\n\r\n联想ThinkPad L13是你的优选方案！\r\n\r\n新一代ThinkPad L13 完美传承了ThinkPad经典家族的品牌基因，已经成为众多一流企业的商用笔记本首选。\r\n\r\nThinkPad L13 将继续以用户需求为中心，以睿智坚实、轻薄坚固的特点满足商务办公的多样需求，助力职场人士实现高效输出，成为职场奋进的坚实伙伴。\r\n', '2019-11-13 00:23:35', '2019-11-14 00:23:38');
INSERT INTO `t_blog` VALUES ('3', '新手发帖必看', '王能', '新手发帖4要素：\r\n1.发帖前请先思考一下，并自行搜索看是否有同类问题以便更快的解决。\r\n2.新手建议先看看入门博客：https://blog.csdn.net/weimingjue/article/details/87921494。\r\n3.求助请描述清楚：问题的详细描述、出现问题的代码、日志的完整信息，上面博客都有描述，发贴“app打开闪退怎么解决”和发“自己为什么是猪”没什么区别。\r\n4.解决了问题请结贴，如果自己解决请发出解决方案。\r\n\r\n\r\n注意事项及规定：\r\n1.不要重复发帖。\r\n2.不允许挖坟。\r\n3.手机版发图片时注意自己查看一遍，有时完全看不清。\r\n4.伸手党请自己找，这里没有资源。\r\n5.版主不建议私聊、留联系方式等敏感做法，后果自负。\r\n6.言语辱骂、政治敏感什么的不再多啰嗦。', '2019-11-12 00:24:09', '2019-11-14 00:24:12');
INSERT INTO `t_blog` VALUES ('4', '小白零基础学会Python爬虫，整理了一份资料', '樱桃小丸子0093', '随着AI的兴起，Python彻底火了。除了谷歌爬虫、Google广告等项目在大量使用Python开发。包括豆瓣、知乎在内的很多互联网公司都将 Python 作为了主要编程语言开发。\r\n对于程序员来说，Python应用前景广，市场需求大，随之而来的是薪资非常高，所以很多小伙伴都转头开始了Python的学习之路！Python相比较老牌语言Java和C语言，学习难度几乎为零，而且Python的学习根本没有门槛可言，无论你是学生/小白/还是技术转型都可以学习。\r\n说到这里，笔者安利一个学习资源，\r\n\r\n从零起步系统学习Python网络爬虫【开始学习】\r\n\r\n你讲学到：\r\n1、能够爬取90%以上的网站数据。\r\n2、能够应对比如验证码、字体加密、JS加密等反爬虫措施。\r\n3、能够利用多台服务器的资源实现分布式爬虫。\r\n4、专属微信社群，随时答疑，彻底掌握Python网络爬虫。', '2019-11-02 00:24:41', '2019-11-14 00:24:44');
