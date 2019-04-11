/*
Navicat MySQL Data Transfer

Source Server         : www.ineeke.cn
Source Server Version : 50643
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-04-11 17:56:36
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
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case
-- ----------------------------

-- ----------------------------
-- Table structure for `t_medicine`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicine`;
CREATE TABLE `t_medicine` (
  `m_id` varchar(50) NOT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `m_spec` varchar(30) DEFAULT NULL,
  `m_price` double(11,0) DEFAULT NULL,
  `m_function` varchar(100) DEFAULT NULL,
  `m_addr` varchar(100) DEFAULT NULL,
  `m_count` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_medicine
-- ----------------------------

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

-- ----------------------------
-- Table structure for `t_privileges`
-- ----------------------------
DROP TABLE IF EXISTS `t_privileges`;
CREATE TABLE `t_privileges` (
  `pr_id` int(11) NOT NULL,
  `pr_name` varchar(20) DEFAULT NULL,
  `pr_exp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_privileges
-- ----------------------------

-- ----------------------------
-- Table structure for `t_recipe`
-- ----------------------------
DROP TABLE IF EXISTS `t_recipe`;
CREATE TABLE `t_recipe` (
  `rc_id` varchar(50) NOT NULL,
  `c_id` varchar(50) DEFAULT NULL,
  `m_id` varchar(50) DEFAULT NULL,
  `rc_count` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recipe
-- ----------------------------

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

-- ----------------------------
-- Table structure for `t_section`
-- ----------------------------
DROP TABLE IF EXISTS `t_section`;
CREATE TABLE `t_section` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(10) DEFAULT NULL,
  `s_addr` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_section
-- ----------------------------

-- ----------------------------
-- Table structure for `t_userinfos`
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfos`;
CREATE TABLE `t_userinfos` (
  `u_id` varchar(50) NOT NULL,
  `s_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL,
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
