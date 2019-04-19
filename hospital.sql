/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50643
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-04-19 14:07:59
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
INSERT INTO `t_case` VALUES ('c-74A291', 'AZ00000001', 'u0004', '2019-04-18 10:32:32', '23', '23', '0');
INSERT INTO `t_case` VALUES ('c-757162', 'AZ00000001', 'u0004', '2019-04-18 02:16:12', '222', '222', '0');
INSERT INTO `t_case` VALUES ('c-773399', 'AZ00000003', 'u0004', '2019-04-18 09:56:00', '12', '12', '0');
INSERT INTO `t_case` VALUES ('c-844CED', 'AZ00000001', 'u0004', '2019-04-18 09:06:22', '123', '123', '0');
INSERT INTO `t_case` VALUES ('c-8F5CE4', 'AZ00000003', 'u0004', '2019-04-18 02:20:06', '213', '222222222222222', '0');
INSERT INTO `t_case` VALUES ('c-9B07BD', 'AZ00000001', 'u0004', '2019-04-18 09:15:34', '12', '12', '0');
INSERT INTO `t_case` VALUES ('c-9F9E9D', 'AZ00000010', 'u0003', '2019-04-19 11:34:14', '毒箭入骨,危在旦夕,命不久矣', '药不能停', '1');
INSERT INTO `t_case` VALUES ('c-C02CF6', 'AZ00000001', 'u0004', '2019-04-18 09:26:17', '12', '12', '0');
INSERT INTO `t_case` VALUES ('c-CDBF4D', 'AZ00000003', 'u0004', '2019-04-18 02:21:35', '12', '12', '1');
INSERT INTO `t_case` VALUES ('c-CE172C', 'AZ00000001', 'u0004', '2019-04-17 03:08:32', '123', '123', '0');
INSERT INTO `t_case` VALUES ('c-D8346B', 'AZ00000001', 'u0004', '2019-04-18 09:03:54', '123', '123', '0');
INSERT INTO `t_case` VALUES ('c-D9BBEC', 'AZ00000003', 'u0004', '2019-04-18 10:22:42', '3', '3', '0');
INSERT INTO `t_case` VALUES ('c-DCDAD5', 'AZ00000004', 'u0003', '2019-04-19 11:30:23', '劳累过度,失血过多', '调养身息,固本培元,多休息,多喝热水!', '0');
INSERT INTO `t_case` VALUES ('c-F459A2', 'AZ00000001', 'u0004', '2019-04-18 09:53:46', '12', '12', '0');
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
INSERT INTO `t_medicine` VALUES ('c343ef4c-1e25-4640-8b04-4302d04b3efe', '一根大火腿', '1毛/盒', '0.0', ' 都有啥 ', '蓝色土耳其', '999996');
INSERT INTO `t_medicine` VALUES ('me-09F324', '初级生命药剂', '100ml/瓶', '150.0', '回复250点生命', '闪金镇', '135');
INSERT INTO `t_medicine` VALUES ('me-149770', '蓝', '1毛/片', '0.1', ' 都有啥', '猪01', '1000000');
INSERT INTO `t_medicine` VALUES ('me-53DADA', '大辣片', '1毛/盒', '0.1', ' 都有啥', '猪01', '1000000');
INSERT INTO `t_medicine` VALUES ('me-55434B', '蓝', '1毛/盒', '0.1', ' 都有啥', '猪01', '999987');
INSERT INTO `t_medicine` VALUES ('me-5FD7A1', '高级生命药剂', '150ml/瓶', '800.0', '回复800点生命', '达拉然', '47');
INSERT INTO `t_medicine` VALUES ('me-63782A', '美味风蛇', '20剂/包', '1000.0', 'henshin!', '哀嚎洞穴', '5');
INSERT INTO `t_medicine` VALUES ('me-769B2D', '王八膏', '250ml/瓶', '120.0', '保健养颜', '江南王八厂', '98');
INSERT INTO `t_medicine` VALUES ('me-8500B5', '次级生命药剂', '120ml/瓶', '400.0', '回复500点生命', '暴风城', '74');
INSERT INTO `t_medicine` VALUES ('me-A5A64B', '板蓝根', '1毛/盒', '0.1', ' 都有啥', '猪01', '1000000');
INSERT INTO `t_medicine` VALUES ('me-BE6A42', '菊花茶', '200ml/瓶', '500.0', '提神醒脑', '拉文霍德', '18');
INSERT INTO `t_medicine` VALUES ('me-C12E0E', '蓝色土耳其', '1毛/盒', '0.1', ' 都有啥', '猪01', '999956');
INSERT INTO `t_medicine` VALUES ('me-C2C8D5', '强效活力药剂', '100ml/瓶', '1800.0', '生死人,肉白骨', '幽暗城皇家药剂协会', '7');
INSERT INTO `t_medicine` VALUES ('me-E5B2FD', '龙角散', '12剂/盒', '19.0', '祛痰止咳', '国药11区', '1048');
INSERT INTO `t_medicine` VALUES ('me-FD13BD', '蓝色土耳其', '1毛/盒', '0.1', ' 都有啥', '猪01', '999977');
INSERT INTO `t_medicine` VALUES ('yaopin123', '板蓝根', '一级', '28.9', '治疗感冒', '杭州皮革厂', '999');
INSERT INTO `t_medicine` VALUES ('yaopin183', '皮炎平', '二级', '8.9', '治疗皮肤', '杭州大拉皮场', '931');
INSERT INTO `t_medicine` VALUES ('yaopin222', '金嗓子', '三级', '5.0', '治疗喉咙', '杭州面包厂', '999');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `o_id` varchar(50) NOT NULL,
  `c_id` varchar(50) DEFAULT NULL,
  `o_total` double(50,0) DEFAULT NULL,
  `o_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('o-0277A6', 'c-8F5CE4', '0', '0');
INSERT INTO `t_order` VALUES ('o-1E7890', 'c-9F9E9D', '9300', '1');
INSERT INTO `t_order` VALUES ('o-2B9CDE', 'c-C3EB21', '0', '0');
INSERT INTO `t_order` VALUES ('o-488DF6', 'c-CDBF4D', '88', '1');
INSERT INTO `t_order` VALUES ('o-48E833', 'c-DCDAD5', '2290', '0');
INSERT INTO `t_order` VALUES ('o-90F51C', 'c-A49D09', '0', '0');
INSERT INTO `t_order` VALUES ('o-9E0089', 'c-757162', '0', '0');
INSERT INTO `t_order` VALUES ('o-D15419', 'c-E9D092', '0', '0');
INSERT INTO `t_order` VALUES ('o8001', 'c001', '289', '0');
INSERT INTO `t_order` VALUES ('o8002', 'c002', '50', '0');

-- ----------------------------
-- Table structure for `t_patients`
-- ----------------------------
DROP TABLE IF EXISTS `t_patients`;
CREATE TABLE `t_patients` (
  `pi_id` varchar(50) NOT NULL,
  `pi_name` varchar(50) DEFAULT NULL,
  `pi_sex` varchar(2) DEFAULT NULL,
  `pi_age` varchar(10) DEFAULT NULL,
  `pi_date` date DEFAULT NULL,
  `pi_tele` varchar(50) DEFAULT NULL,
  `pi_addr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_patients
-- ----------------------------
INSERT INTO `t_patients` VALUES ('AZ00000003', '王五', '女', '25', '1992-10-10', '15825293082', '世界之树');
INSERT INTO `t_patients` VALUES ('AZ00000004', '孙尚香', '女', '12', '1898-06-14', '13705451686', '奥格瑞玛');
INSERT INTO `t_patients` VALUES ('AZ00000005', '杨戬', '男', '24', '1993-06-19', '15847610279', '达拉然');
INSERT INTO `t_patients` VALUES ('AZ00000006', '达摩', '男', '27', '1988-11-17', '15903892921', '黑暗之门');
INSERT INTO `t_patients` VALUES ('AZ00000007', '典韦', '男', '26', '1990-05-16', '15002404323', '破碎群岛');
INSERT INTO `t_patients` VALUES ('AZ00000008', '墨子', '男', '23', '1994-07-21', '13059071825', '永恒之井');
INSERT INTO `t_patients` VALUES ('AZ00000009', '赵云', '女', '22', '1995-10-18', '13456295585', '翡翠梦境');
INSERT INTO `t_patients` VALUES ('AZ00000010', '关羽', '男', '19', '1998-09-14', '13956908461', '卡利姆多');
INSERT INTO `t_patients` VALUES ('AZ00000011', '哪吒', '男', '17', '1999-12-02', '13665164478', '诺森德');
INSERT INTO `t_patients` VALUES ('AZ00000012', '白起', '女', '28', '1991-05-20', '18174568186', '潘达利亚');
INSERT INTO `t_patients` VALUES ('AZ00000013', '庄周', '男', '36', '1980-05-12', '18061883349', '破碎群岛');
INSERT INTO `t_patients` VALUES ('AZ00000014', '廉颇', '男', '33', '1984-10-30', '18883427700', '奥格瑞玛');
INSERT INTO `t_patients` VALUES ('AZ00000015', '牛魔', '男', '35', '1987-04-30', '18337791188', '黑暗之门');
INSERT INTO `t_patients` VALUES ('AZ00000016', '张飞', '女', '21', '1998-02-25', '15156170308', '世界之树');
INSERT INTO `t_patients` VALUES ('AZ00000017', '钟馗', '女', '28', '1991-11-27', '13002054049', '达拉然');
INSERT INTO `t_patients` VALUES ('PA21442B', '张三', '1', '14', '2019-04-08', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA2997DE', '猪一二', '1', '28', '2019-04-02', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA349485', '张三', '1', '21', '2019-04-17', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA527EC7', 'è£ä¸èª', '1', '28', '2019-04-16', '1385704576789', 'ä¸é¨çå½123');
INSERT INTO `t_patients` VALUES ('PA63D0F4', '张三', '1', '14', '2019-04-15', '1385704576789', '1');
INSERT INTO `t_patients` VALUES ('PA6B2295', '张三', '1', '21', '2019-04-08', '13857045', '');
INSERT INTO `t_patients` VALUES ('PA6C7621', '张三', '1', '28', '2019-04-01', '123', '闪金镇');
INSERT INTO `t_patients` VALUES ('PA6CBA9C', '张三', '1', '28', '2019-04-09', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA711A2E', '李四', '1', '28', '2019-04-09', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA7BBBA2', '张三', '1', '28', '2019-04-08', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA89CBB5', '张三', '1', '28', '2019-04-23', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA8ADDA8', '项羽', '1', '8', '2010-02-04', '13850762135', '潘达利亚');
INSERT INTO `t_patients` VALUES ('PA8FA16A', '张三', '1', '28', '2019-04-09', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PA997391', 'æå', '1', '28', '2019-04-01', '13857045', '1');
INSERT INTO `t_patients` VALUES ('PA9BFC7A', '李四', '1', '28', '2019-04-16', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PAA68AE8', '张三', '1', '28', '2019-04-10', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PABFE51D', '咳咳', '1', '28', '2019-04-09', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PACD95EC', '张三', '1', '28', '2019-04-15', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PADA3EBF', '李四', '1', '28', '2019-04-09', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PAE1FA05', '猪一二', '1', '21', '2019-04-17', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('PAF126D9', '猪一二', '1', '28', '2019-04-16', '1385704576789', '幽暗城');
INSERT INTO `t_patients` VALUES ('pi797984', '韩信', '男', '28', '1998-11-11', '13942366728', '暴风城');

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
INSERT INTO `t_recipe` VALUES ('rc-05A0D1', 'c-9F9E9D', 'me-BE6A42', '1');
INSERT INTO `t_recipe` VALUES ('rc-07A942', 'c-8F5CE4', 'yaopin183', '11');
INSERT INTO `t_recipe` VALUES ('rc-2754C7', 'c-9F9E9D', 'me-09F324', '20');
INSERT INTO `t_recipe` VALUES ('rc-5A1B19', 'c-DCDAD5', 'me-09F324', '5');
INSERT INTO `t_recipe` VALUES ('rc-5B61B4', 'c-DCDAD5', 'me-BE6A42', '1');
INSERT INTO `t_recipe` VALUES ('rc-6DB76F', 'c-9F9E9D', 'me-5FD7A1', '2');
INSERT INTO `t_recipe` VALUES ('rc-709EAD', 'c-CE172C', 'yaopin183', '1');
INSERT INTO `t_recipe` VALUES ('rc-76DB51', 'c-DCDAD5', 'me-769B2D', '2');
INSERT INTO `t_recipe` VALUES ('rc-772C6F', 'c-9F9E9D', 'me-8500B5', '6');
INSERT INTO `t_recipe` VALUES ('rc-95B1A1', 'c-9B07BD', 'me-C12E0E', '11');
INSERT INTO `t_recipe` VALUES ('rc-9A9D99', 'c-757162', 'me-C12E0E', '12');
INSERT INTO `t_recipe` VALUES ('rc-9BFABE', 'c-9F9E9D', 'me-C2C8D5', '1');
INSERT INTO `t_recipe` VALUES ('rc-A0EAF4', 'c-CDBF4D', 'yaopin183', '11');
INSERT INTO `t_recipe` VALUES ('rc-D69F2F', 'c-844CED', 'me-C12E0E', '12');
INSERT INTO `t_recipe` VALUES ('rc-DA61A6', 'c-74A291', 'yaopin183', '9');
INSERT INTO `t_recipe` VALUES ('rc-DB1030', 'c-CDBF4D', 'me-FD13BD', '11');
INSERT INTO `t_recipe` VALUES ('rc-E02939', 'c-E9D092', 'c343ef4c-1e25-4640-8b04-4302d04b3efe', '2');
INSERT INTO `t_recipe` VALUES ('rc-ED78BB', 'c-74A291', 'me-C12E0E', '9');
INSERT INTO `t_recipe` VALUES ('rc-F7224C', 'c-DCDAD5', 'me-5FD7A1', '1');
INSERT INTO `t_recipe` VALUES ('rc-FA57F8', 'c-F459A2', 'yaopin183', '21');
INSERT INTO `t_recipe` VALUES ('rc-FF65FA', 'c-5A1995', 'me-FD13BD', '12');
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
INSERT INTO `t_registration` VALUES ('rg-2A8BA0', 'AZ00000001', 'u0004', 'u0007', '8.0', '2019-04-17', '0');
INSERT INTO `t_registration` VALUES ('rg-6B2741', 'AZ00000001', 'u0004', 'u0001', '7.0', '2019-04-18', '0');
INSERT INTO `t_registration` VALUES ('rg-C8DE20', 'AZ00000001', 'u0004', 'u0004', '7.0', '2019-04-17', '0');
INSERT INTO `t_registration` VALUES ('rg20190411001', 'AZ00000003', 'u0002', 'u0011', '5.0', '2019-04-11', '1');
INSERT INTO `t_registration` VALUES ('rg20190411002', 'AZ00000006', 'u0003', 'u0014', '5.0', '2019-04-11', '1');
INSERT INTO `t_registration` VALUES ('rg20190411003', 'AZ00000008', 'u0002', 'u0017', '5.0', '2019-04-11', '1');
INSERT INTO `t_registration` VALUES ('rg20190411004', 'AZ00000012', 'u0003', 'u0019', '5.0', '2019-04-11', '1');
INSERT INTO `t_registration` VALUES ('rg20190412001', 'AZ00000013', 'u0003', 'u0021', '5.0', '2019-04-12', '1');
INSERT INTO `t_registration` VALUES ('rg20190412002', 'AZ00000009', 'u0002', 'u0007', '5.0', '2019-04-12', '1');

-- ----------------------------
-- Table structure for `t_section`
-- ----------------------------
DROP TABLE IF EXISTS `t_section`;
CREATE TABLE `t_section` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(10) DEFAULT NULL,
  `s_addr` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_section
-- ----------------------------
INSERT INTO `t_section` VALUES ('1', '门诊部', '一楼大厅');
INSERT INTO `t_section` VALUES ('2', '内科', '二楼B区');
INSERT INTO `t_section` VALUES ('3', '外科', '五楼E区');
INSERT INTO `t_section` VALUES ('4', '妇产科', '十三楼A区');
INSERT INTO `t_section` VALUES ('5', '耳鼻喉科', '八楼C区');
INSERT INTO `t_section` VALUES ('6', '儿科', '六楼B区');
INSERT INTO `t_section` VALUES ('7', '骨科', '九楼C区');

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
INSERT INTO `t_userinfos` VALUES ('u0001', '1', 'pr0', '123', '董二行', null, '18', '男', '13901106360', '1', 'dongyh@azeroth.com', '超级管理员');
INSERT INTO `t_userinfos` VALUES ('u0002', '1', 'pr1', '123', '猪可爱', '0', '18', '女', '13901046122', '0', 'zhuqq@azeroth.com', '主任医生,博士');
INSERT INTO `t_userinfos` VALUES ('u0003', '1', 'pr2', '666', '钱萌新', '2', '18', '男', '13801286609', '1', 'qianmx@azeroth.com', '门诊大叔');
INSERT INTO `t_userinfos` VALUES ('u0004', '2', 'pr2', '123', '周杰伦', '2', '34', '男', '13701005800 ', '0', 'zhoujil@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0005', '2', 'pr3', '123', '李四', '3', '25', '女', '13701101199 ', '1', 'lis@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0006', '2', 'pr3', '123', '田七', '3', '18', '男', '13910806184 ', '1', 'tianq@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0007', '3', 'pr3', '123', '程咬金', null, '45', '男', '13654385550', '1', 'chengyj@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0008', '3', 'pr3', '123', '雅典娜', null, '34', '男', '13801007623 ', '1', 'yadn@azeroth.com', '从业经验10年');
INSERT INTO `t_userinfos` VALUES ('u0009', '3', 'pr3', '123', '曹操', null, '18', '男', '13911373256', '1', 'caoc@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0010', '4', 'pr3', '123', '孙悟空', null, '100', '男', '13801008319', '1', 'sunwk@azeroth.com', '从业经验8年');
INSERT INTO `t_userinfos` VALUES ('u0011', '4', 'pr3', '123', '宫本武藏', null, '18', '男', '13901173503  ', '1', 'gongbbz@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0012', '4', 'pr3', '123', '兰陵王', null, '18', '男', '13901182537', '1', 'lanlw@azeroth.com', '从业经验7年');
INSERT INTO `t_userinfos` VALUES ('u0013', '5', 'pr3', '123', '张良', null, '28', '男', ' 13910066661', '1', 'zhangl@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0014', '5', 'pr3', '123', '周瑜', null, '18', '男', '13901011644', '1', 'zhouy@azeroth.com', '从业经验6年');
INSERT INTO `t_userinfos` VALUES ('u0015', '5', 'pr3', '123', '花木兰', null, '17', '女', '18217126378', '1', 'huaml@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0016', '6', 'pr3', '123', '百里守约', null, '18', '男', '15525852146', '1', 'benming@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0017', '6', 'pr3', '123', '干将莫邪', null, '56', '男', '15509223293', '1', 'ganjmy@azeroth.com', '从业经验5年');
INSERT INTO `t_userinfos` VALUES ('u0018', '6', 'pr3', '123', '李元芳', null, '18', '女', '15070316366', '1', 'liyf@azeroth.com', '从业经验3年');
INSERT INTO `t_userinfos` VALUES ('u0019', '7', 'pr3', '123', '妲己', null, '24', '女', '13986056381', '1', 'daji@azeroth.com', '从业经验1年');
INSERT INTO `t_userinfos` VALUES ('u0020', '7', 'pr3', '123', '蔡文姬', null, '20', '女', '13701911654', '1', 'caiwj@azeroth.com', '从业经验2年');
INSERT INTO `t_userinfos` VALUES ('u0021', '7', 'pr3', '123', '鲁班七号', null, '31', '男', '15802551358', '1', 'luban@azeroth.com', '从业经验5年');
