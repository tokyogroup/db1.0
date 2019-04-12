/*
Navicat MySQL Data Transfer

Source Server         : dong
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-04-12 10:04:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_case`
-- ----------------------------
DROP TABLE IF EXISTS `t_case`;
CREATE TABLE `t_case` (
  `c_id` varchar(50) NOT NULL,
  `pi_id` varchar(50) DEFAULT NULL,
  `u_id` varchar(50) DEFAULT NULL,
  `c_date` varchar(30) DEFAULT NULL,
  `c_result` varchar(100) DEFAULT NULL,
  `c_method` varchar(255) DEFAULT NULL,
  `c_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case
-- ----------------------------
INSERT INTO `t_case` VALUES ('c001', 'uu123', 'u0002', '2019-10-30 13:11:11', '感冒', '吃药', '0');
INSERT INTO `t_case` VALUES ('c002', 'uu444', 'u0002', '2019-10-30 13:11:11', '拉肚', '去厕所', '0');

-- ----------------------------
-- Table structure for `t_medicine`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicine`;
CREATE TABLE `t_medicine` (
  `m_id` varchar(50) NOT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `m_spec` varchar(30) DEFAULT NULL,
  `m_price` varchar(50) DEFAULT NULL,
  `m_function` varchar(100) DEFAULT NULL,
  `m_addr` varchar(100) DEFAULT NULL,
  `m_count` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_medicine
-- ----------------------------
INSERT INTO `t_medicine` VALUES ('yaopin123', '板蓝根', '一级', '28.9', '治疗感冒', '杭州皮革厂', '999');
INSERT INTO `t_medicine` VALUES ('yaopin183', '皮炎平', '二级', '8.9', '治疗皮肤', '杭州大拉皮场', '999');
INSERT INTO `t_medicine` VALUES ('yaopin222', '金嗓子', '三级', '5.0', '治疗喉咙', '杭州面包厂', '999');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `o_id` varchar(50) NOT NULL,
  `c_id` varchar(50) DEFAULT NULL,
  `o_total` varchar(50) DEFAULT NULL,
  `o_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('o8001', 'c001', '289.0', '0');
INSERT INTO `t_order` VALUES ('o8002', 'c002', '50.0', '0');

-- ----------------------------
-- Table structure for `t_patients`
-- ----------------------------
DROP TABLE IF EXISTS `t_patients`;
CREATE TABLE `t_patients` (
  `pi_id` varchar(50) NOT NULL,
  `pi_name` varchar(50) DEFAULT NULL,
  `pi_sex` varchar(2) DEFAULT NULL,
  `pi_age` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_patients
-- ----------------------------
INSERT INTO `t_patients` VALUES ('uu123', '张三', '男', '28');
INSERT INTO `t_patients` VALUES ('uu444', '李四', '男', '28');
INSERT INTO `t_patients` VALUES ('uu666', '王五', '女', '28');

-- ----------------------------
-- Table structure for `t_privileges`
-- ----------------------------
DROP TABLE IF EXISTS `t_privileges`;
CREATE TABLE `t_privileges` (
  `pr_id` varchar(11) NOT NULL,
  `pr_name` varchar(20) DEFAULT NULL,
  `pr_exp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_privileges
-- ----------------------------
INSERT INTO `t_privileges` VALUES ('pr0', '后台管理员', '所有权限');
INSERT INTO `t_privileges` VALUES ('pr1', '医生权限', '医生所属权限');
INSERT INTO `t_privileges` VALUES ('pr2', '门诊权限', '门诊所属权限');

-- ----------------------------
-- Table structure for `t_recipe`
-- ----------------------------
DROP TABLE IF EXISTS `t_recipe`;
CREATE TABLE `t_recipe` (
  `rc_id` varchar(50) NOT NULL,
  `c_id` varchar(50) DEFAULT NULL,
  `m_id` varchar(50) DEFAULT NULL,
  `rc_count` int(50) DEFAULT NULL,
  PRIMARY KEY (`rc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recipe
-- ----------------------------
INSERT INTO `t_recipe` VALUES ('rc100001', 'c001', 'yaopin123', '10');
INSERT INTO `t_recipe` VALUES ('rc100002', 'c002', 'yaopin222', '10');

-- ----------------------------
-- Table structure for `t_registration`
-- ----------------------------
DROP TABLE IF EXISTS `t_registration`;
CREATE TABLE `t_registration` (
  `rg_id` varchar(50) NOT NULL,
  `pi_id` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_id2` varchar(50) NOT NULL,
  `rg_price` varchar(50) NOT NULL,
  `rg_date` date DEFAULT NULL,
  `rg_status` int(11) NOT NULL,
  PRIMARY KEY (`rg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_registration
-- ----------------------------
INSERT INTO `t_registration` VALUES ('rg123', 'uu123', 'u0003', 'u0002', '5.0', '2019-10-30', '0');
INSERT INTO `t_registration` VALUES ('rg444', 'uu444', 'u0003', 'u0002', '5.0', '2019-04-10', '1');

-- ----------------------------
-- Table structure for `t_section`
-- ----------------------------
DROP TABLE IF EXISTS `t_section`;
CREATE TABLE `t_section` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(10) DEFAULT NULL,
  `s_addr` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_section
-- ----------------------------
INSERT INTO `t_section` VALUES ('1', '门诊部', '一楼大厅');
INSERT INTO `t_section` VALUES ('2', '内科', '二楼B区');
INSERT INTO `t_section` VALUES ('3', '外科', '五楼E区');
INSERT INTO `t_section` VALUES ('4', '妇科', '十三楼A区');
INSERT INTO `t_section` VALUES ('5', '耳鼻喉科', '八楼C区');

-- ----------------------------
-- Table structure for `t_userinfos`
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfos`;
CREATE TABLE `t_userinfos` (
  `u_id` varchar(50) NOT NULL,
  `s_id` int(11) NOT NULL,
  `pr_id` varchar(11) NOT NULL,
  `u_pwd` varchar(50) DEFAULT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_title` int(11) DEFAULT NULL,
  `u_age` int(11) DEFAULT NULL,
  `u_sex` varchar(2) DEFAULT NULL,
  `u_tel` varchar(50) DEFAULT NULL,
  `u_taskstate` int(11) DEFAULT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  `u_exp` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userinfos
-- ----------------------------
INSERT INTO `t_userinfos` VALUES ('u0001', '0', 'pr0', '123', '董', null, '18', '男', '123456789', '1', 'dong@163.com', '超级管理员');
INSERT INTO `t_userinfos` VALUES ('u0002', '1', 'pr1', '123', '猪', '0', '18', '女', '123456789', '0', 'dong@163.com', '妇科医生');
INSERT INTO `t_userinfos` VALUES ('u0003', '2', 'pr2', '123', '钱', '2', '18', '男', '123456789', '1', 'dong@163.com', '门诊大叔');
