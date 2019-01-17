CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARSET utf8 COLLATE utf8_unicode_ci;

USE `school`;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
`user_name` VARCHAR(128) NOT NULL COMMENT '用户名',
`password` VARCHAR(256) COMMENT '密码',
`display_name` VARCHAR(128) COMMENT '昵称',
`email` VARCHAR(256) COMMENT '邮箱',
`phone` VARCHAR(64) COMMENT '手机号码',
`protrait` VARCHAR(256) COMMENT '用户头像',
`sex` VARCHAR(2) DEFAULT 'N' COMMENT '性别 M.男 F.女 N.保密',
`introduce` VARCHAR(512) DEFAULT NULL COMMENT '简介',
`create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
`last_login_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后登录时间',
PRIMARY KEY (`id`),
UNIQUE KEY `user_name` (`user_name`)
) ENGINE=INNODB;