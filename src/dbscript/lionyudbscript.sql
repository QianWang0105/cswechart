/*
Navicat MySQL Data Transfer

Source Server         : MySQL57
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : echart

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-14 16:56:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_f_financingwrite`
-- ----------------------------
DROP TABLE IF EXISTS `t_f_financingwrite`;
CREATE TABLE `t_f_financingwrite` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `payfordate` date DEFAULT NULL COMMENT '付款日期',
  `writeyear` int(4) DEFAULT NULL COMMENT '填报年',
  `writemonth` int(2) DEFAULT NULL COMMENT '填报月',
  `costtype` varchar(5) DEFAULT NULL COMMENT '费用类型',
  `maintype` varchar(2) DEFAULT NULL COMMENT '大类归类',
  `contractid` int(11) DEFAULT NULL COMMENT '所属合同',
  `subofficeid` int(11) DEFAULT NULL COMMENT '所属分局',
  `money` double(19,6) DEFAULT NULL COMMENT '金额',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  `operuser` int(11) DEFAULT NULL COMMENT '操作人',
  `cashierno` varchar(50) DEFAULT NULL COMMENT '出纳编号',
  `voucherno` varchar(50) DEFAULT NULL COMMENT '凭证编号',
  `isdisabled` varchar(1) DEFAULT '0' COMMENT '是否删除（1为删除,0为正常）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='财务填报';

-- ----------------------------
-- Records of t_f_financingwrite
-- ----------------------------
INSERT INTO `t_f_financingwrite` VALUES ('4', '2019-01-07', '2019', '1', '02', '1', '1', '2', '31122321.000000', '2019-03-14 13:36:17', null, '', '', 0);
INSERT INTO `t_f_financingwrite` VALUES ('6', '2019-01-13', '2019', '1', '02', '1', '1', '2', '42211321.000000', '2019-03-14 13:36:17', '1', 'nnn', 'ccc', 0);
INSERT INTO `t_f_financingwrite` VALUES ('10', '2019-03-14', '2019', '3', '12', '2', null, null, '1111123.000000', '2019-03-14 16:42:33', null, '', '', 0);
INSERT INTO `t_f_financingwrite` VALUES ('11', '2019-03-14', '2019', '3', '12', '2', null, null, '321.000000', '2019-03-14 16:42:33', null, '', '', 0);
INSERT INTO `t_f_financingwrite` VALUES ('12', '2019-03-14', '2019', '3', '12', '2', null, null, '111.000000', '2019-03-14 16:42:33', null, '', '', 0);


/*
Navicat MySQL Data Transfer

Source Server         : MySQL57
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : echart

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-13 23:19:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_s_code`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_code`;
CREATE TABLE `t_s_code` (
  `codetype` varchar(50) DEFAULT NULL COMMENT '字典类型',
  `codedescribe` varchar(100) DEFAULT NULL COMMENT '字典描述备注',
  `key` varchar(5) DEFAULT NULL COMMENT '字典值',
  `value` varchar(200) DEFAULT NULL COMMENT '字典显示',
  `maintype` varchar(2) DEFAULT NULL COMMENT '大类归类',
  `maintypedescribe` varchar(50) DEFAULT NULL COMMENT '大类备注',
  `orderby` varchar(5) DEFAULT NULL COMMENT '排序列'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of t_s_code
-- ----------------------------
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '01', '工程款', '1', '合同款项', '01');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '02', '监理费', '1', '合同款项', '02');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '03', '施工供电费', '1', '合同款项', '03');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '04', '勘察设计费', '2', '其他款项', '04');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '05', '征地拆迁安置补偿', '2', '其他款项', '05');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '06', '环境影响', '2', '其他款项', '06');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '07', '耕地占用税', '2', '其他款项', '07');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '08', '水土保持补偿费', '2', '其他款项', '08');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '09', '金中公司清算费用', '2', '其他款项', '09');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '10', '印花税', '2', '其他款项', '10');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '11', '其他技术服务合同款', '2', '其他款项', '11');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '12', '建设管理费', '2', '其他款项', '12');
INSERT INTO `t_s_code` VALUES ('costtype', '费用类型', '13', '临时用地复垦保证金', '2', '其他款项', '13');

/*
Navicat MySQL Data Transfer

Source Server         : MySQL57
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : echart

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-13 23:19:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_f_financingwrite`
-- ----------------------------
DROP TABLE IF EXISTS `t_f_financingwrite`;
CREATE TABLE `t_f_financingwrite` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `payfordate` date DEFAULT NULL COMMENT '付款日期',
  `writeyear` int(4) DEFAULT NULL COMMENT '填报年',
  `writemonth` int(2) DEFAULT NULL COMMENT '填报月',
  `costtype` varchar(5) DEFAULT NULL COMMENT '费用类型',
  `maintype` varchar(2) DEFAULT NULL COMMENT '大类归类',
  `contractid` int(11) DEFAULT NULL COMMENT '所属合同',
  `subofficeid` int(11) DEFAULT NULL COMMENT '所属分局',
  `money` double(19,6) DEFAULT NULL COMMENT '金额',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  `operuser` int(11) DEFAULT NULL COMMENT '操作人',
  `cashierno` varchar(50) DEFAULT NULL COMMENT '出纳编号',
  `voucherno` varchar(50) DEFAULT NULL COMMENT '凭证编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='财务填报';

-- ----------------------------
-- Records of t_f_financingwrite
-- ----------------------------
INSERT INTO `t_f_financingwrite` VALUES ('4', '2019-03-07', '2019', '1', '02', '1', '1', '2', '321.000000', '2019-03-13 23:12:25', null, null, null);


