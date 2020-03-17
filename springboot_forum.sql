/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : springboot_forum
Target Host     : localhost:3306
Target Database : springboot_forum
Date: 2020-03-17 14:02:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `commentator` int(11) NOT NULL,
  `gmt_create` bigint(20) NOT NULL,
  `gmt_modified` bigint(20) NOT NULL,
  `like_count` bigint(20) DEFAULT '0',
  `content` varchar(1024) DEFAULT NULL,
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '32', '1', '8', '1583761880162', '1583761880162', '0', '测试', '0');
INSERT INTO `comment` VALUES ('2', '32', '1', '8', '1583762311161', '1583762311161', '0', '测试2', '0');
INSERT INTO `comment` VALUES ('3', '32', '1', '8', '1583764982233', '1583764982233', '0', '123', '0');
INSERT INTO `comment` VALUES ('4', '32', '1', '8', '1583764987104', '1583764987104', '0', '1123', '0');
INSERT INTO `comment` VALUES ('5', '32', '1', '8', '1583764990367', '1583764990367', '0', '123123', '0');
INSERT INTO `comment` VALUES ('6', '32', '1', '8', '1583764993460', '1583764993460', '0', '123123', '0');
INSERT INTO `comment` VALUES ('7', '2', '1', '8', '1583766485252', '1583766485252', '19', '测试', '5');
INSERT INTO `comment` VALUES ('8', '32', '1', '8', '1583766493008', '1583766493008', '0', '1', '0');
INSERT INTO `comment` VALUES ('9', '7', '2', '8', '1583824633440', '1583824633440', '0', '测试二级', '0');
INSERT INTO `comment` VALUES ('10', '7', '2', '8', '1583824641793', '1583824641793', '0', '测试2级 22', '0');
INSERT INTO `comment` VALUES ('11', '7', '2', '8', '1583830077486', '1583830077486', '0', '测试', '1');
INSERT INTO `comment` VALUES ('12', '2', '1', '8', '1583850566237', '1583850566237', '4', '测试时间排序', '3');
INSERT INTO `comment` VALUES ('13', '12', '2', '8', '1583850578070', '1583850578070', '0', '炼哥牛逼', '0');
INSERT INTO `comment` VALUES ('14', '5', '1', '8', '1583851249825', '1583851249825', '0', '测试', '0');
INSERT INTO `comment` VALUES ('15', '5', '1', '8', '1583851252106', '1583851252106', '0', '测试', '0');
INSERT INTO `comment` VALUES ('16', '5', '1', '8', '1583851255293', '1583851255293', '0', '测试', '0');
INSERT INTO `comment` VALUES ('17', '2', '1', '8', '1583935932833', '1583935932833', '0', '测试评论时 添加通知需要获取父类发布人id', '1');
INSERT INTO `comment` VALUES ('18', '17', '2', '8', '1583936152092', '1583936152092', '0', '测试获取二级评论的父类id', '0');
INSERT INTO `comment` VALUES ('19', '3', '1', '8', '1583936184636', '1583936184636', '0', '测试', '0');
INSERT INTO `comment` VALUES ('20', '2', '1', '8', '1583937464394', '1583937464394', '0', '请问', '0');
INSERT INTO `comment` VALUES ('21', '6', '1', '8', '1583941698796', '1583941699435', '0', '测试', '0');
INSERT INTO `comment` VALUES ('22', '6', '1', '8', '1583942339831', '1583942339831', '0', '测试2', '0');
INSERT INTO `comment` VALUES ('25', '2', '1', '8', '1583943141224', '1583943141224', '0', '测试啊', '0');
INSERT INTO `comment` VALUES ('27', '7', '2', '8', '1583943282762', '1583943282762', '0', '测试啊2', '0');
INSERT INTO `comment` VALUES ('28', '11', '2', '8', '1583948353004', '1583948353004', '0', '测试33333', '0');
INSERT INTO `comment` VALUES ('29', '6', '1', '8', '1583948440018', '1583948440018', '0', 'kkk', '2');
INSERT INTO `comment` VALUES ('30', '29', '2', '8', '1583948450083', '1583948450083', '0', 'aaaa', '0');
INSERT INTO `comment` VALUES ('31', '29', '2', '8', '1584026960299', '1584026960299', '0', '才', '0');
INSERT INTO `comment` VALUES ('32', '2', '1', '8', '1584028979099', '1584028979099', '0', '测试', '0');
INSERT INTO `comment` VALUES ('33', '7', '2', '8', '1584028983218', '1584028983218', '0', '测试', '0');
INSERT INTO `comment` VALUES ('34', '12', '2', '8', '1584030142592', '1584030142592', '0', '测试', '0');
INSERT INTO `comment` VALUES ('35', '12', '2', '8', '1584030146311', '1584030146311', '0', '测试', '0');
INSERT INTO `comment` VALUES ('36', '26', '1', '8', '1584088205740', '1584088205740', '0', '测试', '0');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notifier` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `outerid` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `gmt_create` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `notifier_name` varchar(100) NOT NULL,
  `outer_title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES ('2', '8', '8', '2', '0', '1584028983282', '1', 'java江', '如何成为java大佬1');
INSERT INTO `notification` VALUES ('3', '8', '8', '7', '1', '1584028162116', '1', 'java江', '测试');
INSERT INTO `notification` VALUES ('4', '8', '8', '11', '1', '1583948353011', '1', 'java江', '测试');
INSERT INTO `notification` VALUES ('5', '8', '8', '6', '0', '1584028968578', '1', 'java江', '如何成为java大佬4');
INSERT INTO `notification` VALUES ('6', '8', '8', '29', '1', '1584028345806', '1', 'java江', 'kkk');
INSERT INTO `notification` VALUES ('7', '8', '8', '29', '1', '1584028964885', '1', 'java江', 'kkk');
INSERT INTO `notification` VALUES ('8', '8', '8', '2', '0', '1584028979102', '1', 'java江', '如何成为java大佬1');
INSERT INTO `notification` VALUES ('9', '8', '8', '7', '1', '1584028983227', '1', 'java江', '测试');
INSERT INTO `notification` VALUES ('10', '8', '8', '12', '1', '1584030142601', '0', 'java江', '测试时间排序');
INSERT INTO `notification` VALUES ('11', '8', '8', '12', '1', '1584030146321', '1', 'java江', '测试时间排序');
INSERT INTO `notification` VALUES ('12', '8', '8', '26', '0', '1584088205743', '1', 'java江', '如何成为java大佬24');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '如何成为java大佬',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` bigint(20) NOT NULL DEFAULT '1583425040837',
  `gmt_modified` bigint(20) NOT NULL DEFAULT '1583425040837',
  `creator` int(11) NOT NULL DEFAULT '7',
  `comment_count` int(11) NOT NULL DEFAULT '0',
  `view_count` int(11) DEFAULT '0',
  `like_count` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'java,学习',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('2', '如何成为java大佬', '如果想成为java大佬，先王者上个荣耀压压惊先', '1584090374707', '1584090374707', '8', '6', '146', '0', 'java,ide,springboot');
INSERT INTO `question` VALUES ('3', 'vim工具的使用', '更新测试，学尚硅谷培训视频', '1584088957991', '1584088957991', '8', '1', '25', '0', 'vim,sublime-text');
INSERT INTO `question` VALUES ('4', '如何成为java大佬2', '天天打代码2', '1583913010235', '1583913010235', '8', '0', '13', '0', 'asp.net');
INSERT INTO `question` VALUES ('5', '如何学习php', '天天打代码3', '1584088935169', '1584088935169', '8', '3', '12', '0', 'php');
INSERT INTO `question` VALUES ('6', 'ruby语言的开发', '天天打代码4', '1584088975835', '1584088975835', '8', '3', '52', '0', 'ruby');
INSERT INTO `question` VALUES ('7', '如何成为java大佬5', '天天打代码5', '1583425040837', '1583425040837', '8', '0', '15', '0', 'java,ide');
INSERT INTO `question` VALUES ('11', '前端开发学习路径', '天天打代码9', '1584089167266', '1584089167266', '8', '0', '7', '0', 'html5,css,javascript');
INSERT INTO `question` VALUES ('12', '如何成为java大佬11', '天天打代码11', '1583425040837', '1583425040837', '8', '0', '8', '0', 'java,ide');
INSERT INTO `question` VALUES ('14', '如何学习spring', '天天打代码13', '1583425040837', '1583425040837', '8', '0', '1', '0', 'java,ide');
INSERT INTO `question` VALUES ('15', '如何学习C++，C', '天天打代码14', '1584088920002', '1584088920002', '8', '0', '1', '0', 'c++');
INSERT INTO `question` VALUES ('16', '如何学习springboot1', '天天打代码15', '1583501582605', '1583501582605', '8', '0', '1', '0', 'java,ide');
INSERT INTO `question` VALUES ('17', 'shell命令学习', '测试', '1584089196841', '1584089196841', '8', '0', '2', '0', 'shell');
INSERT INTO `question` VALUES ('18', 'css测试问题', '天天打代码16', '1584088859507', '1584088859507', '8', '0', '2', '0', 'css');
INSERT INTO `question` VALUES ('22', 'vim和git的使用', '天天打代码20', '1584089217391', '1584089217391', '8', '0', '2', '0', 'vim,git');
INSERT INTO `question` VALUES ('24', 'ssh框架的学习', '天天打代码22', '1584089539423', '1584089539423', '8', '0', '3', '0', 'spring,struts,hibernate');
INSERT INTO `question` VALUES ('25', 'springboot学习', '天天打代码23', '1584089560115', '1584089560115', '8', '0', '1', '0', 'java,ide,springboot');
INSERT INTO `question` VALUES ('26', '分布式框架学习', '天天打代码24', '1584089585206', '1584089585206', '8', '1', '4', '0', 'java,ide,springboot,springcloud,dubbo,mybatis,springmvc');
INSERT INTO `question` VALUES ('28', 'ide工具出问题', '天天打代码26', '1584089601831', '1584089601831', '8', '0', '2', '0', 'java,ide');
INSERT INTO `question` VALUES ('29', 'ssm框架是什么', '天天打代码27', '1584089621481', '1584089621481', '8', '0', '8', '0', 'java,ide,mybatis,spring,springmvc');
INSERT INTO `question` VALUES ('30', 'dubbo学习', '啊阿萨德', '1584089647343', '1584089647343', '8', '0', '5', '0', 'dubbo');
INSERT INTO `question` VALUES ('31', '如何学习java', '学尚硅谷培训视频', '1583598847292', '1583598847292', '8', '0', '0', '0', 'java,ide');
INSERT INTO `question` VALUES ('32', '测试问题字数', '测试问题字数啊，as电话卡手机登录凯撒奖大家啊老师教的卡视角的看零售价啊框架打开说讲道理卡刷打开  ask的路径奥克兰经达拉斯讲道理卡刷点击拉可视对讲我去公平气温我陪气温评论考试经打卡机来到 录凯撒奖大家啊老师教的卡视角的看零售价啊框架打开说讲道理卡刷打开  ask的路径奥克兰经达拉斯讲道理卡刷点击拉可视对讲我去公平气温我陪气温评论考试经打卡机来到 录凯撒奖大家啊老师教的卡视角的看零售价啊框架打开说讲道理卡刷打开  ask的路径奥克兰经达拉斯讲道理卡刷点击拉可视对讲我去公平气温我陪气温评论考试经打卡机来到 ', '1584089666636', '1584089666636', '8', '7', '77', '0', 'java,ide');
INSERT INTO `question` VALUES ('33', '支付成功页面测试', '测试', '1583832672525', '1583832672525', '8', '0', '10', '0', 'java,ide');
INSERT INTO `question` VALUES ('34', 'css与mongob，oracle等', '请问', '1584089703130', '1584089703130', '8', '0', '5', '0', 'css,mongodb,oracle,sql');
INSERT INTO `question` VALUES ('39', '如何成为java大佬plus', '认真学习 刷视频', '1584088737638', '1584088737638', '8', '0', '0', '0', 'java,ide');
INSERT INTO `question` VALUES ('40', 'python100天学习', '阿阿阿阿阿阿', '1584089136250', '1584089136250', '8', '0', '0', '0', 'python');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `token` char(36) NOT NULL,
  `account_id` varchar(100) NOT NULL,
  `gmt_create` bigint(19) NOT NULL,
  `gmt_modified` bigint(19) NOT NULL,
  `bio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', 'java江', '4cb602f8-b63d-49c3-acdb-1e4664919123', '54231524', '1583597991459', '1584082828483', null, 'https://avatars0.githubusercontent.com/u/54231524?v=4');
