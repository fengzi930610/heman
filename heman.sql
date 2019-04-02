/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : heman

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-02 17:47:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_adress`
-- ----------------------------
DROP TABLE IF EXISTS `tp_adress`;
CREATE TABLE `tp_adress` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `menberId` int(11) NOT NULL DEFAULT '0',
  `prvince` varchar(20) DEFAULT '',
  `city` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_adress
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_brand`
-- ----------------------------
DROP TABLE IF EXISTS `tp_brand`;
CREATE TABLE `tp_brand` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) NOT NULL DEFAULT '',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_brand
-- ----------------------------
INSERT INTO `tp_brand` VALUES ('1', 'Nike', 'timg.jpg', '<p>耐克<br/></p>');
INSERT INTO `tp_brand` VALUES ('2', '水电费', './public/static/admin/upload/image/brand/2018-08-01/5b61ae65c8614.jpg', '<p>水电费<br/></p>');
INSERT INTO `tp_brand` VALUES ('3', '水电费', './public/static/admin/upload/image/brand/2018-08-02/5b6286f8ad8fc.jpg', '<p>水电费<br/></p>');

-- ----------------------------
-- Table structure for `tp_cart`
-- ----------------------------
DROP TABLE IF EXISTS `tp_cart`;
CREATE TABLE `tp_cart` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `memberId` int(11) NOT NULL DEFAULT '0' COMMENT '会员Id',
  `productId` int(11) DEFAULT NULL COMMENT '商品Id',
  `num` int(11) DEFAULT NULL COMMENT '商品数量',
  `createtime` int(11) DEFAULT NULL COMMENT '添加购物车时间',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cart
-- ----------------------------
INSERT INTO `tp_cart` VALUES ('1', '1', '34', '2', '1532752863', '1');
INSERT INTO `tp_cart` VALUES ('2', '1', '33', '1', '1532857809', '1');

-- ----------------------------
-- Table structure for `tp_category`
-- ----------------------------
DROP TABLE IF EXISTS `tp_category`;
CREATE TABLE `tp_category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `fId` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_category
-- ----------------------------
INSERT INTO `tp_category` VALUES ('1', '连体衣', '0');
INSERT INTO `tp_category` VALUES ('2', '裤子', '0');
INSERT INTO `tp_category` VALUES ('3', '上衣', '0');
INSERT INTO `tp_category` VALUES ('4', '连衣裙', '0');
INSERT INTO `tp_category` VALUES ('29', '婴幼儿服装', '1');
INSERT INTO `tp_category` VALUES ('30', '男童服装', '1');
INSERT INTO `tp_category` VALUES ('31', '女童服装', '1');
INSERT INTO `tp_category` VALUES ('32', '儿童服饰', '1');
INSERT INTO `tp_category` VALUES ('33', '婴儿家居', '1');
INSERT INTO `tp_category` VALUES ('34', '儿童家居', '1');
INSERT INTO `tp_category` VALUES ('35', '其他', '1');
INSERT INTO `tp_category` VALUES ('36', '男童服装', '2');
INSERT INTO `tp_category` VALUES ('37', '女童服装', '2');
INSERT INTO `tp_category` VALUES ('38', '儿童服饰', '2');
INSERT INTO `tp_category` VALUES ('39', '婴儿家居', '2');
INSERT INTO `tp_category` VALUES ('40', '儿童家居', '2');
INSERT INTO `tp_category` VALUES ('41', '其他', '2');
INSERT INTO `tp_category` VALUES ('42', '婴幼儿服装', '3');
INSERT INTO `tp_category` VALUES ('44', '男童服装', '3');
INSERT INTO `tp_category` VALUES ('45', '女童服装', '3');
INSERT INTO `tp_category` VALUES ('46', '儿童服饰', '3');
INSERT INTO `tp_category` VALUES ('47', '婴儿家居', '3');
INSERT INTO `tp_category` VALUES ('48', '儿童家居', '3');
INSERT INTO `tp_category` VALUES ('49', '其他', '3');
INSERT INTO `tp_category` VALUES ('52', '男童服装', '4');
INSERT INTO `tp_category` VALUES ('53', '女童服装', '4');
INSERT INTO `tp_category` VALUES ('54', '儿童服饰', '4');
INSERT INTO `tp_category` VALUES ('55', '婴儿家居', '4');
INSERT INTO `tp_category` VALUES ('56', '儿童家居', '4');
INSERT INTO `tp_category` VALUES ('57', '其他', '4');

-- ----------------------------
-- Table structure for `tp_level`
-- ----------------------------
DROP TABLE IF EXISTS `tp_level`;
CREATE TABLE `tp_level` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `fId` int(11) NOT NULL DEFAULT '0',
  `model` varchar(15) NOT NULL DEFAULT '',
  `controller` varchar(15) NOT NULL DEFAULT '',
  `action` varchar(15) NOT NULL DEFAULT '',
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_level
-- ----------------------------
INSERT INTO `tp_level` VALUES ('1', '系统管理', '0', 'admin', 'System', '', '1');
INSERT INTO `tp_level` VALUES ('2', '系统设置', '1', 'admin', 'System', 'index', '1');
INSERT INTO `tp_level` VALUES ('3', '分类管理', '0', 'admin', 'Category', '', '1');
INSERT INTO `tp_level` VALUES ('4', '分类列表', '3', 'admin', 'Category', 'categoryList', '1');
INSERT INTO `tp_level` VALUES ('5', '分类添加', '3', 'admin', 'Category', 'categoryAdd', '1');
INSERT INTO `tp_level` VALUES ('6', '新闻管理', '0', 'admin', 'News', '', '1');
INSERT INTO `tp_level` VALUES ('7', '新闻列表', '6', 'admin', 'News', 'newsList', '1');
INSERT INTO `tp_level` VALUES ('8', '新闻添加', '6', 'admin', 'News', 'newsAdd', '1');
INSERT INTO `tp_level` VALUES ('9', '管理员管理', '0', 'admin', 'Manager', '', '1');
INSERT INTO `tp_level` VALUES ('10', '管理员列表', '9', 'admin', 'Manager', 'managerList', '1');
INSERT INTO `tp_level` VALUES ('11', '管理员添加', '9', 'admin', 'Manager', 'managerAdd', '1');
INSERT INTO `tp_level` VALUES ('12', '分类编辑', '3', 'admin', 'Category', 'categoryUpdate', '0');
INSERT INTO `tp_level` VALUES ('13', '分类删除', '3', 'admin', 'Category', 'categoryDelete', '0');
INSERT INTO `tp_level` VALUES ('14', '新闻编辑', '6', 'admin', 'News', 'newsUpdate', '0');
INSERT INTO `tp_level` VALUES ('15', '新闻删除', '6', 'admin', 'News', 'newsDelete', '0');
INSERT INTO `tp_level` VALUES ('16', '管理员编辑', '9', 'admin', 'Manager', 'managerUpdate', '0');
INSERT INTO `tp_level` VALUES ('17', '管理员删除', '9', 'admin', 'Manager', 'managerDelete', '0');
INSERT INTO `tp_level` VALUES ('18', '菜单管理', '0', 'admin', 'Level', '', '1');
INSERT INTO `tp_level` VALUES ('19', '菜单列表', '18', 'admin', 'Level', 'levelList', '1');
INSERT INTO `tp_level` VALUES ('20', '菜单添加', '18', 'admin', 'Level', 'levelAdd', '1');
INSERT INTO `tp_level` VALUES ('21', '菜单编辑', '18', 'admin', 'Level', 'levelUpdate', '0');
INSERT INTO `tp_level` VALUES ('22', '菜单删除', '18', 'admin', 'Level', 'levelDelete', '0');
INSERT INTO `tp_level` VALUES ('23', '权限管理', '0', 'admin', 'Rote', '', '1');
INSERT INTO `tp_level` VALUES ('24', '角色添加', '23', 'admin', 'Rote', 'roteAdd', '1');
INSERT INTO `tp_level` VALUES ('25', '角色列表', '23', 'admin', 'Rote', 'roteList', '1');
INSERT INTO `tp_level` VALUES ('26', '角色编辑', '23', 'admin', 'Rote', 'roteUpdate', '0');
INSERT INTO `tp_level` VALUES ('27', '角色删除', '23', 'admin', 'Rote', 'roteDelete', '0');
INSERT INTO `tp_level` VALUES ('28', 'banner管理', '0', 'admin', 'Banner', '', '1');
INSERT INTO `tp_level` VALUES ('29', 'banner列表', '28', 'admin', 'Banner', 'bannerList', '1');
INSERT INTO `tp_level` VALUES ('30', 'banner添加', '28', 'admin', 'Banner', 'bannerAdd', '1');
INSERT INTO `tp_level` VALUES ('31', 'banner更新', '28', 'admin', 'Banner', 'bannerUpdate', '0');
INSERT INTO `tp_level` VALUES ('32', 'banner删除', '28', 'admin', 'Banner', 'bannerDelete', '0');
INSERT INTO `tp_level` VALUES ('33', '产品管理', '0', 'admin', 'Product', '', '1');
INSERT INTO `tp_level` VALUES ('34', '产品列表', '33', 'admin', 'Product', 'productList', '1');
INSERT INTO `tp_level` VALUES ('35', '产品添加', '33', 'admin', 'Product', 'productAdd', '1');
INSERT INTO `tp_level` VALUES ('36', '产品更新', '33', 'admin', 'Product', 'productUpdate', '0');
INSERT INTO `tp_level` VALUES ('37', '产品删除', '33', 'admin', 'Product', 'productDelete', '0');

-- ----------------------------
-- Table structure for `tp_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tp_manager`;
CREATE TABLE `tp_manager` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(18) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) DEFAULT NULL,
  `last_entry` varchar(20) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `last_time` int(11) NOT NULL,
  `login_count` int(5) NOT NULL,
  `create_time` int(11) NOT NULL,
  `age` tinyint(3) DEFAULT NULL,
  `sex` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_manager
-- ----------------------------
INSERT INTO `tp_manager` VALUES ('1', 'admin', 'admin', '1', '127.0.0.1', null, '0', '1554193951', '52', '0', null, null);

-- ----------------------------
-- Table structure for `tp_member`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member`;
CREATE TABLE `tp_member` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(18) NOT NULL DEFAULT '',
  `phone` varchar(11) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member
-- ----------------------------
INSERT INTO `tp_member` VALUES ('1', 'admin', 'admin', '13111111111', '1057780049@qq.com');

-- ----------------------------
-- Table structure for `tp_nav`
-- ----------------------------
DROP TABLE IF EXISTS `tp_nav`;
CREATE TABLE `tp_nav` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='后台首页导航';

-- ----------------------------
-- Records of tp_nav
-- ----------------------------
INSERT INTO `tp_nav` VALUES ('1', '特惠购');
INSERT INTO `tp_nav` VALUES ('2', '闪购');
INSERT INTO `tp_nav` VALUES ('3', '新品抢购');
INSERT INTO `tp_nav` VALUES ('4', '全球购');
INSERT INTO `tp_nav` VALUES ('5', '再来一个');

-- ----------------------------
-- Table structure for `tp_orders`
-- ----------------------------
DROP TABLE IF EXISTS `tp_orders`;
CREATE TABLE `tp_orders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '0',
  `menberId` int(11) NOT NULL DEFAULT '0',
  `productId` int(11) NOT NULL DEFAULT '0',
  `orderNumber` varchar(35) NOT NULL DEFAULT '' COMMENT '订单编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `introduction` varchar(255) DEFAULT NULL COMMENT '产品简介',
  `brandId` int(5) DEFAULT NULL COMMENT '品牌Id',
  `categoryId` int(5) DEFAULT NULL COMMENT '分类Id',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '商品货号',
  `market` decimal(5,2) DEFAULT NULL COMMENT '市场价格',
  `price` decimal(5,2) DEFAULT NULL COMMENT '销售价格',
  `num` int(5) DEFAULT NULL COMMENT '商品库存',
  `thumb` varchar(255) DEFAULT NULL COMMENT '主图缩略图',
  `picture` varchar(255) NOT NULL DEFAULT '' COMMENT '主图图片路径',
  `content` text COMMENT '产品详情',
  `ctime` int(11) DEFAULT NULL COMMENT '创建时间',
  `utime` int(11) DEFAULT NULL COMMENT '更新时间',
  `newArrival` tinyint(3) NOT NULL DEFAULT '0' COMMENT '新品',
  `burstingProducts` tinyint(3) NOT NULL DEFAULT '0' COMMENT '爆款产品',
  `hotProduct` tinyint(3) NOT NULL DEFAULT '0' COMMENT '热门产品',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('24', '女婴2016秋冬纯棉长袖爬服夹棉连身衣', '女婴2016秋冬纯棉长袖爬服夹棉连身衣', '1', '29', '123456', '398.00', '398.00', '398', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b504fe97d5a9.jpg', './public/static/admin/upload/image/2018-07-19/5b504fe97d5a9.jpg', '<p>女婴2016秋冬纯棉长袖爬服夹棉连身衣</p>', '1531989993', '1531989993', '1', '1', '0');
INSERT INTO `tp_product` VALUES ('25', '女婴2016秋冬纯棉长袖爬服夹棉连身衣', '女婴2016秋冬纯棉长袖爬服夹棉连身衣', '1', '30', '398', '398.00', '398.00', '398', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b50583f800dc.jpg', './public/static/admin/upload/image/2018-07-19/5b50583f800dc.jpg', '<p>女婴2016秋冬纯棉长袖爬服夹棉连身衣</p>', '1531992127', '1531992127', '1', '1', '0');
INSERT INTO `tp_product` VALUES ('26', '女婴2017秋冬纯棉长袖爬服夹棉连身衣', '女婴2017秋冬纯棉长袖爬服夹棉连身衣', '1', '31', '298', '298.00', '298.00', '298', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b50586c9cc28.jpg', './public/static/admin/upload/image/2018-07-19/5b50586c9cc28.jpg', '<p>女婴2016秋冬纯棉长袖爬服夹棉连身衣</p>', '1531992172', '1531992172', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('27', '女婴2018秋冬纯棉长袖爬服夹棉连身衣', '女婴2018秋冬纯棉长袖爬服夹棉连身衣', '1', '32', '298', '298.00', '298.00', '298', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b50588913763.jpg', './public/static/admin/upload/image/2018-07-19/5b50588913763.jpg', '<p>女婴2016秋冬纯棉长袖爬服夹棉连身衣</p>', '1531992201', '1531992201', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('28', '连身衣', '连身衣', '1', '33', '123', '198.00', '98.00', '1200', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b505f6691cf7.jpg', './public/static/admin/upload/image/2018-07-19/5b505f6691cf7.jpg', '', '1531993958', '1531993958', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('29', '中袖连身衣', '中袖连身衣', '1', '34', '123', '128.00', '118.00', '110', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b505fa07a72f.jpg', './public/static/admin/upload/image/2018-07-19/5b505fa07a72f.jpg', '<p>11<br/></p>', '1531994016', '1531994016', '1', '0', '1');
INSERT INTO `tp_product` VALUES ('30', '2018秋冬纯棉长袖爬服夹棉连身衣', '2018秋冬纯棉长袖爬服夹棉连身衣', '1', '35', '11', '112.00', '112.00', '111', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b505ff8d21bd.jpg', './public/static/admin/upload/image/2018-07-19/5b505ff8d21bd.jpg', '<p>111<br/></p>', '1531994104', '1531994104', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('31', '女婴2019秋冬纯棉长袖爬服夹棉连身衣', '女婴2019秋冬纯棉长袖爬服夹棉连身衣', '1', '36', '123', '123.00', '110.00', '123', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b506026826c9.jpg', './public/static/admin/upload/image/2018-07-19/5b506026826c9.jpg', '<p>按时<br/></p>', '1531994150', '1531994150', '1', '0', '1');
INSERT INTO `tp_product` VALUES ('32', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '1', '37', '111', '111.00', '111.00', '111', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b5060685959e.jpg', './public/static/admin/upload/image/2018-07-19/5b5060685959e.jpg', '<p>是<br/></p>', '1531994216', '1531994216', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('33', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '1', '38', '98', '98.00', '98.00', '98', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b506085e0879.jpg', './public/static/admin/upload/image/2018-07-19/5b506085e0879.jpg', '<p>是<br/></p>', '1531994245', '1531994245', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('34', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '1', '39', '998', '998.00', '998.00', '998', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b5060a378734.jpg', './public/static/admin/upload/image/2018-07-19/5b5060a378734.jpg', '<p>是<br/></p>', '1531994275', '1531994275', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('35', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '男婴2020秋冬纯棉长袖爬服夹棉连身衣', '1', '40', '888', '888.00', '888.00', '888', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b5061102484b.jpg', './public/static/admin/upload/image/2018-07-19/5b5061102484b.jpg', '<p>是<br/></p>', '1531994384', '1531994384', '1', '0', '0');
INSERT INTO `tp_product` VALUES ('36', '男婴儿2016小熊无袖背心爬服', '男婴儿2016小熊无袖背心爬服', '1', '41', '99', '999.00', '999.00', '999', './public/static/admin/upload/image/2018-07-19/thumb/thumb_5b5081cf4d68d.jpg', './public/static/admin/upload/image/2018-07-19/5b5081cf4d68d.jpg', '<p>男婴儿2016小熊无袖背心爬服</p>', '1532002767', '1532004838', '0', '0', '0');
INSERT INTO `tp_product` VALUES ('37', '男婴儿2016小熊无袖背心爬服', '男婴儿2016小熊无袖背心爬服', '1', '36', '123456', '998.00', '998.00', '998', './public/static/admin/upload/image/2018-08-06/thumb/thumb_5b6846adc6647.jpg', './public/static/admin/upload/image/2018-08-06/5b6846adc6647.jpg', '<p>123</p>', '1533560493', '1533560493', '1', '0', '0');

-- ----------------------------
-- Table structure for `tp_role`
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) NOT NULL DEFAULT '',
  `permission` varchar(50) NOT NULL DEFAULT '' COMMENT '权限',
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_role
-- ----------------------------
INSERT INTO `tp_role` VALUES ('1', '普通管理员', '1,2,3', '系统管理相关权限');
INSERT INTO `tp_role` VALUES ('2', '普通管理员', '1,2,3', '系统管理相关权限');

-- ----------------------------
-- Table structure for `tp_test`
-- ----------------------------
DROP TABLE IF EXISTS `tp_test`;
CREATE TABLE `tp_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_test
-- ----------------------------
INSERT INTO `tp_test` VALUES ('3', '1', '﻿2019.04.01-项目功能性需求分析');
INSERT INTO `tp_test` VALUES ('4', '1', '第一步-谈项目：');
INSERT INTO `tp_test` VALUES ('5', '1', '1.开发(会不会开发或者找人开发)；');
INSERT INTO `tp_test` VALUES ('6', '1', '2.时间上的（有没有足够的时间，时间需求量）');
INSERT INTO `tp_test` VALUES ('7', '1', '第二步-产品需求分析：');
INSERT INTO `tp_test` VALUES ('8', '1', '1.前台界面');
INSERT INTO `tp_test` VALUES ('9', '1', '1)首页');
INSERT INTO `tp_test` VALUES ('10', '1', '2)商品详情页面');
INSERT INTO `tp_test` VALUES ('11', '1', '3)分类详情页面');
INSERT INTO `tp_test` VALUES ('12', '1', '4)购物车页面');
INSERT INTO `tp_test` VALUES ('13', '1', '5)前台登录界面');
INSERT INTO `tp_test` VALUES ('14', '1', '6)前台注册界面');
INSERT INTO `tp_test` VALUES ('15', '1', '7)个人中心');
INSERT INTO `tp_test` VALUES ('16', '1', '8)结算界面');
INSERT INTO `tp_test` VALUES ('17', '1', '2.前台功能');
INSERT INTO `tp_test` VALUES ('18', '1', '1)首页');
INSERT INTO `tp_test` VALUES ('19', '1', '1)广告展示');
INSERT INTO `tp_test` VALUES ('20', '1', '2)分类展示');
INSERT INTO `tp_test` VALUES ('21', '1', '3)品牌展示');
INSERT INTO `tp_test` VALUES ('22', '1', '4)商品展示');
INSERT INTO `tp_test` VALUES ('23', '1', '2)商品详情页面');
INSERT INTO `tp_test` VALUES ('24', '1', '1)返回品牌功能');
INSERT INTO `tp_test` VALUES ('25', '1', '2)商品详情展示');
INSERT INTO `tp_test` VALUES ('26', '1', '3)商品评论展示');
INSERT INTO `tp_test` VALUES ('27', '1', '3)分类详情页面');
INSERT INTO `tp_test` VALUES ('28', '1', '1)分类展示');
INSERT INTO `tp_test` VALUES ('29', '1', '2)商品展示');
INSERT INTO `tp_test` VALUES ('30', '1', '4)购物车页面');
INSERT INTO `tp_test` VALUES ('31', '1', '1)购物车管理');
INSERT INTO `tp_test` VALUES ('32', '1', '5)前台登录界面');
INSERT INTO `tp_test` VALUES ('33', '1', '1)登录功能');
INSERT INTO `tp_test` VALUES ('34', '1', '6)前台注册界面');
INSERT INTO `tp_test` VALUES ('35', '1', '1)注册功能');
INSERT INTO `tp_test` VALUES ('36', '1', '7)个人中心');
INSERT INTO `tp_test` VALUES ('37', '1', '1)联系方式管理');
INSERT INTO `tp_test` VALUES ('38', '1', '2)订单管理');
INSERT INTO `tp_test` VALUES ('39', '1', '3)商品评论功能');
INSERT INTO `tp_test` VALUES ('40', '1', '8)结算界面');
INSERT INTO `tp_test` VALUES ('41', '1', '1)商品与合计');
INSERT INTO `tp_test` VALUES ('42', '1', '2)付款方式');
INSERT INTO `tp_test` VALUES ('43', '1', '3)快递渠道');
INSERT INTO `tp_test` VALUES ('44', '1', '4)订单提交功能');
INSERT INTO `tp_test` VALUES ('45', '1', '3.后台界面');
INSERT INTO `tp_test` VALUES ('46', '1', '1)后台登录页面');
INSERT INTO `tp_test` VALUES ('47', '1', '2)后台顶部页面');
INSERT INTO `tp_test` VALUES ('48', '1', '3)后台左侧页面');
INSERT INTO `tp_test` VALUES ('49', '1', '4)后台右侧页面');
INSERT INTO `tp_test` VALUES ('50', '1', '4.后台功能（模块）');
INSERT INTO `tp_test` VALUES ('51', '1', '1)后台退出');
INSERT INTO `tp_test` VALUES ('52', '1', '2)修改管理口令');
INSERT INTO `tp_test` VALUES ('53', '1', '3)会员管理');
INSERT INTO `tp_test` VALUES ('54', '1', '4)广告管理');
INSERT INTO `tp_test` VALUES ('55', '1', '5)分类管理');
INSERT INTO `tp_test` VALUES ('56', '1', '6)品牌管理');
INSERT INTO `tp_test` VALUES ('57', '1', '7)商品管理');
INSERT INTO `tp_test` VALUES ('58', '1', '8)评论管理');
INSERT INTO `tp_test` VALUES ('59', '1', '9)订单状态管理');
INSERT INTO `tp_test` VALUES ('60', '1', '10)订单管理');
INSERT INTO `tp_test` VALUES ('61', '1', '第三步-数据库设计：');
INSERT INTO `tp_test` VALUES ('62', '1', '1.会员表-user');
INSERT INTO `tp_test` VALUES ('63', '1', '2.广告表-advert');
INSERT INTO `tp_test` VALUES ('64', '1', '3.分类表-class');
INSERT INTO `tp_test` VALUES ('65', '1', '4.品牌表-brand');
INSERT INTO `tp_test` VALUES ('66', '1', '5.商品表-shop');
INSERT INTO `tp_test` VALUES ('67', '1', '6.评论表-comment');
INSERT INTO `tp_test` VALUES ('68', '1', '7.订单状态表-status');
INSERT INTO `tp_test` VALUES ('69', '1', '8.订单表-indent');
INSERT INTO `tp_test` VALUES ('70', '1', '9.联系方式表-touch');
INSERT INTO `tp_test` VALUES ('71', '1', '第四步-数据字典准备');
INSERT INTO `tp_test` VALUES ('72', '1', '1.user');
INSERT INTO `tp_test` VALUES ('73', '1', 'id int');
INSERT INTO `tp_test` VALUES ('74', '1', 'username');
INSERT INTO `tp_test` VALUES ('75', '1', 'password');
INSERT INTO `tp_test` VALUES ('76', '1', 'isadmin');
INSERT INTO `tp_test` VALUES ('77', '1', 'regtime');
INSERT INTO `tp_test` VALUES ('78', '1', 'age');
INSERT INTO `tp_test` VALUES ('79', '1', 'sex');
INSERT INTO `tp_test` VALUES ('80', '1', 'addr');
INSERT INTO `tp_test` VALUES ('81', '1', 'eamil');
INSERT INTO `tp_test` VALUES ('82', '1', 'tel');
INSERT INTO `tp_test` VALUES ('83', '1', '2.advert');
INSERT INTO `tp_test` VALUES ('84', '1', 'id int');
INSERT INTO `tp_test` VALUES ('85', '1', 'img');
INSERT INTO `tp_test` VALUES ('86', '1', 'position');
INSERT INTO `tp_test` VALUES ('87', '1', 'url');
INSERT INTO `tp_test` VALUES ('88', '1', '3.class');
INSERT INTO `tp_test` VALUES ('89', '1', 'id');
INSERT INTO `tp_test` VALUES ('90', '1', 'name');
INSERT INTO `tp_test` VALUES ('91', '1', '4.brand');
INSERT INTO `tp_test` VALUES ('92', '1', 'id');
INSERT INTO `tp_test` VALUES ('93', '1', 'name');
INSERT INTO `tp_test` VALUES ('94', '1', 'class_id');
INSERT INTO `tp_test` VALUES ('95', '1', '5.shop');
INSERT INTO `tp_test` VALUES ('96', '1', 'id');
INSERT INTO `tp_test` VALUES ('97', '1', 'name');
INSERT INTO `tp_test` VALUES ('98', '1', 'img');
INSERT INTO `tp_test` VALUES ('99', '1', 'price');
INSERT INTO `tp_test` VALUES ('100', '1', 'stock-库存');
INSERT INTO `tp_test` VALUES ('101', '1', 'brank_id');
INSERT INTO `tp_test` VALUES ('102', '1', 'shelf-上下架');
INSERT INTO `tp_test` VALUES ('103', '1', '6.comment');
INSERT INTO `tp_test` VALUES ('104', '1', 'id');
INSERT INTO `tp_test` VALUES ('105', '1', 'user_id');
INSERT INTO `tp_test` VALUES ('106', '1', 'content');
INSERT INTO `tp_test` VALUES ('107', '1', 'shop_id');
INSERT INTO `tp_test` VALUES ('108', '1', 'time');
INSERT INTO `tp_test` VALUES ('109', '1', '7.status');
INSERT INTO `tp_test` VALUES ('110', '1', 'id');
INSERT INTO `tp_test` VALUES ('111', '1', 'name');
INSERT INTO `tp_test` VALUES ('112', '1', '8.indent');
INSERT INTO `tp_test` VALUES ('113', '1', 'id');
INSERT INTO `tp_test` VALUES ('114', '1', 'num');
INSERT INTO `tp_test` VALUES ('115', '1', 'user_id');
INSERT INTO `tp_test` VALUES ('116', '1', 'time');
INSERT INTO `tp_test` VALUES ('117', '1', 'status_id');
INSERT INTO `tp_test` VALUES ('118', '1', 'touch_id');
INSERT INTO `tp_test` VALUES ('119', '1', '9.touch');
INSERT INTO `tp_test` VALUES ('120', '1', 'id');
INSERT INTO `tp_test` VALUES ('121', '1', 'name');
INSERT INTO `tp_test` VALUES ('122', '1', 'addr');
INSERT INTO `tp_test` VALUES ('123', '1', 'tel');
INSERT INTO `tp_test` VALUES ('124', '1', 'eamil');
INSERT INTO `tp_test` VALUES ('125', '1', 'user_id');
INSERT INTO `tp_test` VALUES ('126', '1', '第五步-sql语句的准备');
INSERT INTO `tp_test` VALUES ('127', '1', '1.user');
INSERT INTO `tp_test` VALUES ('128', '1', 'id int');
INSERT INTO `tp_test` VALUES ('129', '1', 'username');
INSERT INTO `tp_test` VALUES ('130', '1', 'password');
INSERT INTO `tp_test` VALUES ('131', '1', 'isadmin');
INSERT INTO `tp_test` VALUES ('132', '1', 'regtime');
INSERT INTO `tp_test` VALUES ('133', '1', 'age');
INSERT INTO `tp_test` VALUES ('134', '1', 'sex');
INSERT INTO `tp_test` VALUES ('135', '1', 'addr');
INSERT INTO `tp_test` VALUES ('136', '1', 'eamil');
INSERT INTO `tp_test` VALUES ('137', '1', 'tel');
INSERT INTO `tp_test` VALUES ('138', '1', 'create table user(');
INSERT INTO `tp_test` VALUES ('139', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('140', '1', 'username varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('141', '1', 'password varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('142', '1', 'isadmin tinyint not null,');
INSERT INTO `tp_test` VALUES ('143', '1', 'regtime varchar(11) not null,');
INSERT INTO `tp_test` VALUES ('144', '1', 'age tinyint not null,');
INSERT INTO `tp_test` VALUES ('145', '1', 'sex tinyint not null,');
INSERT INTO `tp_test` VALUES ('146', '1', 'addr varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('147', '1', 'tel varchar(11) not null');
INSERT INTO `tp_test` VALUES ('148', '1', ');');
INSERT INTO `tp_test` VALUES ('149', '1', '2.advert');
INSERT INTO `tp_test` VALUES ('150', '1', 'id int');
INSERT INTO `tp_test` VALUES ('151', '1', 'img');
INSERT INTO `tp_test` VALUES ('152', '1', 'position');
INSERT INTO `tp_test` VALUES ('153', '1', 'url');
INSERT INTO `tp_test` VALUES ('154', '1', 'create table advert(');
INSERT INTO `tp_test` VALUES ('155', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('156', '1', 'img varchar(100) not null,');
INSERT INTO `tp_test` VALUES ('157', '1', 'position tinyint not null,');
INSERT INTO `tp_test` VALUES ('158', '1', 'url varchar(100) not null');
INSERT INTO `tp_test` VALUES ('159', '1', ');');
INSERT INTO `tp_test` VALUES ('160', '1', '3.class');
INSERT INTO `tp_test` VALUES ('161', '1', 'id');
INSERT INTO `tp_test` VALUES ('162', '1', 'name');
INSERT INTO `tp_test` VALUES ('163', '1', 'create table class(');
INSERT INTO `tp_test` VALUES ('164', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('165', '1', 'name varchar(50) not null');
INSERT INTO `tp_test` VALUES ('166', '1', ');');
INSERT INTO `tp_test` VALUES ('167', '1', '4.brand');
INSERT INTO `tp_test` VALUES ('168', '1', 'id');
INSERT INTO `tp_test` VALUES ('169', '1', 'name');
INSERT INTO `tp_test` VALUES ('170', '1', 'class_id');
INSERT INTO `tp_test` VALUES ('171', '1', 'create table brand(');
INSERT INTO `tp_test` VALUES ('172', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('173', '1', 'name varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('174', '1', 'class_id int not null');
INSERT INTO `tp_test` VALUES ('175', '1', ');');
INSERT INTO `tp_test` VALUES ('176', '1', '5.shop');
INSERT INTO `tp_test` VALUES ('177', '1', 'id');
INSERT INTO `tp_test` VALUES ('178', '1', 'name');
INSERT INTO `tp_test` VALUES ('179', '1', 'img');
INSERT INTO `tp_test` VALUES ('180', '1', 'price');
INSERT INTO `tp_test` VALUES ('181', '1', 'stock-库存');
INSERT INTO `tp_test` VALUES ('182', '1', 'brank_id');
INSERT INTO `tp_test` VALUES ('183', '1', 'shelf-上下架');
INSERT INTO `tp_test` VALUES ('184', '1', 'create table shop(');
INSERT INTO `tp_test` VALUES ('185', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('186', '1', 'name varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('187', '1', 'img varchar(100) not null,');
INSERT INTO `tp_test` VALUES ('188', '1', 'price float not null,');
INSERT INTO `tp_test` VALUES ('189', '1', 'stock int not null,');
INSERT INTO `tp_test` VALUES ('190', '1', 'brand_id int not null,');
INSERT INTO `tp_test` VALUES ('191', '1', 'shelf timyint not null');
INSERT INTO `tp_test` VALUES ('192', '1', ');');
INSERT INTO `tp_test` VALUES ('193', '1', '6.comment');
INSERT INTO `tp_test` VALUES ('194', '1', 'id');
INSERT INTO `tp_test` VALUES ('195', '1', 'user_id');
INSERT INTO `tp_test` VALUES ('196', '1', 'content');
INSERT INTO `tp_test` VALUES ('197', '1', 'shop_id');
INSERT INTO `tp_test` VALUES ('198', '1', 'time');
INSERT INTO `tp_test` VALUES ('199', '1', 'create table comment(');
INSERT INTO `tp_test` VALUES ('200', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('201', '1', 'user_id int not null,');
INSERT INTO `tp_test` VALUES ('202', '1', 'content text,');
INSERT INTO `tp_test` VALUES ('203', '1', 'shop_id int not null,');
INSERT INTO `tp_test` VALUES ('204', '1', 'time int');
INSERT INTO `tp_test` VALUES ('205', '1', ');');
INSERT INTO `tp_test` VALUES ('206', '1', '7.status');
INSERT INTO `tp_test` VALUES ('207', '1', 'id');
INSERT INTO `tp_test` VALUES ('208', '1', 'name');
INSERT INTO `tp_test` VALUES ('209', '1', 'create table status(');
INSERT INTO `tp_test` VALUES ('210', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('211', '1', 'name varchar(50) not null');
INSERT INTO `tp_test` VALUES ('212', '1', ');');
INSERT INTO `tp_test` VALUES ('213', '1', '8.indent');
INSERT INTO `tp_test` VALUES ('214', '1', 'id');
INSERT INTO `tp_test` VALUES ('215', '1', 'num');
INSERT INTO `tp_test` VALUES ('216', '1', 'user_id');
INSERT INTO `tp_test` VALUES ('217', '1', 'time');
INSERT INTO `tp_test` VALUES ('218', '1', 'status_id');
INSERT INTO `tp_test` VALUES ('219', '1', 'touch_id');
INSERT INTO `tp_test` VALUES ('220', '1', 'create table indent(');
INSERT INTO `tp_test` VALUES ('221', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('222', '1', 'num varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('223', '1', 'user_id int not null,');
INSERT INTO `tp_test` VALUES ('224', '1', 'time int not null,');
INSERT INTO `tp_test` VALUES ('225', '1', 'status_id int not null,');
INSERT INTO `tp_test` VALUES ('226', '1', 'touch_id int not null');
INSERT INTO `tp_test` VALUES ('227', '1', ');');
INSERT INTO `tp_test` VALUES ('228', '1', '9.touch');
INSERT INTO `tp_test` VALUES ('229', '1', 'id');
INSERT INTO `tp_test` VALUES ('230', '1', 'name');
INSERT INTO `tp_test` VALUES ('231', '1', 'addr');
INSERT INTO `tp_test` VALUES ('232', '1', 'tel');
INSERT INTO `tp_test` VALUES ('233', '1', 'eamil');
INSERT INTO `tp_test` VALUES ('234', '1', 'user_id');
INSERT INTO `tp_test` VALUES ('235', '1', 'create table touch(');
INSERT INTO `tp_test` VALUES ('236', '1', 'id int unsigned not null auto_increment primary key,');
INSERT INTO `tp_test` VALUES ('237', '1', 'name varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('238', '1', 'addr varchar(100) not null,');
INSERT INTO `tp_test` VALUES ('239', '1', 'tel varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('240', '1', 'email varchar(50) not null,');
INSERT INTO `tp_test` VALUES ('241', '1', 'user_id int not null');
INSERT INTO `tp_test` VALUES ('242', '1', ');');
