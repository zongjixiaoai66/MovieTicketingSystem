/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t270`;
CREATE DATABASE IF NOT EXISTS `t270` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t270`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/dianyingyuangoupiao/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/dianyingyuangoupiao/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/dianyingyuangoupiao/upload/config3.jpg');

DROP TABLE IF EXISTS `dianying`;
CREATE TABLE IF NOT EXISTS `dianying` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dianying_name` varchar(200) DEFAULT NULL COMMENT '电影名称  Search111 ',
  `dianying_types` int DEFAULT NULL COMMENT '电影类型 Search111',
  `dianying_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `dianying_danyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `dianying_bianju` varchar(200) DEFAULT NULL COMMENT '编剧',
  `dianying_address` varchar(200) DEFAULT NULL COMMENT '制片国家/地区',
  `dianying_yuyan` varchar(200) DEFAULT NULL COMMENT '语言',
  `dianying_shijian` varchar(200) DEFAULT NULL COMMENT '上映日期',
  `dianying_pianchang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianying_old_money` decimal(10,2) DEFAULT NULL COMMENT '电影原价 ',
  `dianying_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `zuowei_number` int DEFAULT NULL COMMENT '座位',
  `dianying_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `dianying_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `dianying_content` text COMMENT '电影简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='电影';

DELETE FROM `dianying`;
INSERT INTO `dianying` (`id`, `dianying_name`, `dianying_types`, `dianying_photo`, `dianying_danyan`, `dianying_bianju`, `dianying_address`, `dianying_yuyan`, `dianying_shijian`, `dianying_pianchang`, `dianying_old_money`, `dianying_new_money`, `zuowei_number`, `dianying_clicknum`, `shangxia_types`, `dianying_delete`, `dianying_content`, `create_time`) VALUES
	(1, '电影名称1', 1, 'http://localhost:8080/dianyingyuangoupiao/upload/dianying1.jpg', '导演1', '编剧1', '制片国家/地区1', '语言1', '上映日期1', '片长1', 734.01, 467.73, 20, 319, 1, 1, '电影简介1', '2022-02-24 05:42:54'),
	(2, '电影名称2', 1, 'http://localhost:8080/dianyingyuangoupiao/upload/dianying2.jpg', '导演2', '编剧2', '制片国家/地区2', '语言2', '上映日期2', '片长2', 518.48, 143.71, 20, 25, 1, 1, '电影简介2', '2022-02-24 05:42:54'),
	(3, '电影名称3', 2, 'http://localhost:8080/dianyingyuangoupiao/upload/dianying3.jpg', '导演3', '编剧3', '制片国家/地区3', '语言3', '上映日期3', '片长3', 741.58, 330.76, 20, 402, 1, 1, '电影简介3', '2022-02-24 05:42:54'),
	(4, '电影名称4', 2, 'http://localhost:8080/dianyingyuangoupiao/upload/dianying4.jpg', '导演4', '编剧4', '制片国家/地区4', '语言4', '上映日期4', '片长4', 918.38, 248.54, 20, 161, 1, 1, '电影简介4', '2022-02-24 05:42:54'),
	(5, '电影名称5', 1, 'http://localhost:8080/dianyingyuangoupiao/upload/dianying5.jpg', '导演5', '编剧5', '制片国家/地区5', '语言5', '上映日期5', '片长5', 535.02, 451.47, 20, 185, 2, 1, '电影简介5', '2022-02-24 05:42:54');

DROP TABLE IF EXISTS `dianying_collection`;
CREATE TABLE IF NOT EXISTS `dianying_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int DEFAULT NULL COMMENT '电影',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `dianying_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='电影收藏';

DELETE FROM `dianying_collection`;
INSERT INTO `dianying_collection` (`id`, `dianying_id`, `yonghu_id`, `dianying_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(2, 2, 1, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(3, 3, 3, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(4, 4, 1, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(5, 5, 2, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54');

DROP TABLE IF EXISTS `dianying_commentback`;
CREATE TABLE IF NOT EXISTS `dianying_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int DEFAULT NULL COMMENT '电影',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `dianying_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='电影评价';

DELETE FROM `dianying_commentback`;
INSERT INTO `dianying_commentback` (`id`, `dianying_id`, `yonghu_id`, `dianying_commentback_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '回复信息1', '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(2, 2, 1, '评价内容2', '回复信息2', '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(3, 3, 3, '评价内容3', '回复信息3', '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(4, 4, 1, '评价内容4', '回复信息4', '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(5, 5, 2, '评价内容5', '回复信息5', '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(6, 3, 1, '购买完成后可评论', '管理回复', '2022-02-24 06:06:00', '2022-02-24 06:21:36', '2022-02-24 06:06:00'),
	(7, 2, 1, '445566', NULL, '2024-07-15 05:59:00', NULL, '2024-07-15 05:59:00');

DROP TABLE IF EXISTS `dianying_order`;
CREATE TABLE IF NOT EXISTS `dianying_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `dianying_id` int DEFAULT NULL COMMENT '电影',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `dianying_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `dianying_order_types` int DEFAULT NULL COMMENT '订单类型',
  `dianying_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='电影订单';

DELETE FROM `dianying_order`;
INSERT INTO `dianying_order` (`id`, `dianying_order_uuid_number`, `dianying_id`, `yonghu_id`, `dianying_order_true_price`, `dianying_order_types`, `dianying_order_payment_types`, `buy_zuowei_number`, `buy_zuowei_time`, `insert_time`, `create_time`) VALUES
	(1, '1645681985150', 5, 1, 1805.88, 5, 1, '3,13,14,15', '2022-02-24', '2022-02-24 05:53:07', '2022-02-24 05:53:07'),
	(2, '1645682673527', 3, 1, 1323.04, 5, 1, '1,2,11,12', '2022-02-24', '2022-02-24 06:04:35', '2022-02-24 06:04:35'),
	(3, '1721023114420', 2, 1, 143.71, 5, 1, '2', '2024-07-15', '2024-07-15 05:58:36', '2024-07-15 05:58:36');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2022-02-24 05:42:50'),
	(2, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2022-02-24 05:42:50'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-02-24 05:42:50'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-02-24 05:42:50'),
	(5, 'dianying_types', '电影类型', 1, '电影类型1', NULL, NULL, '2022-02-24 05:42:50'),
	(6, 'dianying_types', '电影类型', 2, '电影类型2', NULL, NULL, '2022-02-24 05:42:50'),
	(7, 'dianying_types', '电影类型', 3, '电影类型3', NULL, NULL, '2022-02-24 05:42:50'),
	(8, 'dianying_types', '电影类型', 4, '电影类型4', NULL, NULL, '2022-02-24 05:42:50'),
	(9, 'dianying_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-02-24 05:42:50'),
	(10, 'dianying_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-02-24 05:42:50'),
	(11, 'dianying_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-02-24 05:42:50'),
	(14, 'dianying_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-02-24 05:42:50'),
	(15, 'dianying_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-02-24 05:42:50'),
	(16, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-02-24 05:42:50'),
	(17, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-02-24 05:42:50'),
	(18, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-02-24 05:42:50'),
	(19, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-02-24 05:42:50');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `laoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, 1, NULL, '发布内容1', NULL, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(2, '帖子标题2', 1, 2, NULL, '发布内容2', NULL, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(3, '帖子标题3', 1, 3, NULL, '发布内容3', NULL, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(4, '帖子标题4', 3, 4, NULL, '发布内容4', NULL, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(5, '帖子标题5', 2, 5, NULL, '发布内容5', NULL, 1, '2022-02-24 05:42:54', '2022-02-24 05:42:54', '2022-02-24 05:42:54'),
	(6, NULL, 1, NULL, NULL, '用户回帖', 5, 2, '2022-02-24 06:06:29', NULL, '2022-02-24 06:06:29'),
	(7, NULL, NULL, NULL, 1, '管理回复', 5, 2, '2022-02-24 06:22:05', NULL, '2022-02-24 06:22:05'),
	(8, NULL, 1, NULL, NULL, '111', 4, 2, '2024-07-15 05:58:44', NULL, '2024-07-15 05:58:44');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻名称1', 'http://localhost:8080/dianyingyuangoupiao/upload/news1.jpg', 1, '2022-02-24 05:42:54', '新闻详情1', '2022-02-24 05:42:54'),
	(2, '新闻名称2', 'http://localhost:8080/dianyingyuangoupiao/upload/news2.jpg', 1, '2022-02-24 05:42:54', '新闻详情2', '2022-02-24 05:42:54'),
	(3, '新闻名称3', 'http://localhost:8080/dianyingyuangoupiao/upload/news3.jpg', 1, '2022-02-24 05:42:54', '新闻详情3', '2022-02-24 05:42:54'),
	(4, '新闻名称4', 'http://localhost:8080/dianyingyuangoupiao/upload/news4.jpg', 1, '2022-02-24 05:42:54', '新闻详情4', '2022-02-24 05:42:54'),
	(5, '新闻名称5', 'http://localhost:8080/dianyingyuangoupiao/upload/news5.jpg', 1, '2022-02-24 05:42:54', '新闻详情5', '2022-02-24 05:42:54');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'yppumox872kaxswtdkp9dci2bjeehsse', '2022-02-24 05:46:54', '2024-07-15 06:58:20'),
	(2, 1, 'admin', 'users', '管理员', 'dz9q90pwd0a522vdjgtfnpacw1zyx2lz', '2022-02-24 05:49:16', '2024-07-15 06:57:04');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `dianying_types` int DEFAULT NULL COMMENT '喜欢类型',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_id_number`, `yonghu_phone`, `yonghu_photo`, `new_money`, `dianying_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 2, '410224199610232001', '17703786901', 'http://localhost:8080/dianyingyuangoupiao/upload/yonghu1.jpg', 7594.44, 1, 1, '2022-02-24 05:42:54'),
	(2, '用户2', '123456', '用户姓名2', 1, '410224199610232002', '17703786902', 'http://localhost:8080/dianyingyuangoupiao/upload/yonghu2.jpg', 757.93, 2, 1, '2022-02-24 05:42:54'),
	(3, '用户3', '123456', '用户姓名3', 1, '410224199610232003', '17703786903', 'http://localhost:8080/dianyingyuangoupiao/upload/yonghu3.jpg', 628.26, 3, 1, '2022-02-24 05:42:54');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
