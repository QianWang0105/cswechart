/*
Navicat MySQL Data Transfer

Source Server         : MySQL57
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : echart

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-18 10:11:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_c_contract`
-- ----------------------------
DROP TABLE IF EXISTS `t_c_contract`;
CREATE TABLE `t_c_contract` (
  `contractid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `contractname` varchar(200) DEFAULT NULL COMMENT '合同名称',
  `contractnum` varchar(200) DEFAULT NULL COMMENT '合同编码',
  `amount` double DEFAULT NULL COMMENT '合同金额',
  `durationtime` varchar(20) DEFAULT NULL COMMENT '合同工期',
  `signtime` datetime DEFAULT NULL COMMENT '签订日期',
  `contractpartyb` varchar(200) DEFAULT NULL COMMENT '合同乙方',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `priority` int(11) DEFAULT '0' COMMENT '排序',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `isdisabled` varchar(20) DEFAULT '0' COMMENT '是否禁用',
  `operuser` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  `subofficeid` bigint(11) NOT NULL COMMENT '所属分局ID',
  PRIMARY KEY (`contractid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_c_contract
-- ----------------------------
INSERT INTO `t_c_contract` VALUES ('1', '大理Ⅱ段进场道路施工3标', 'DZYS-DLⅡ-GCBF-SG-DL003', '3271.069711', '365日历天', '2019-02-22 00:00:00', '中铁二十四局集团南昌铁路工程有限公司', null, '1', '9', 'false', 'admin', null, '2');
INSERT INTO `t_c_contract` VALUES ('2', '云南省滇中引水工程施工准备工程龙泉倒虹吸始发井和接收井施工', 'DZYS-ZHBF-JSGL-FLFW-004', '9293.94', '365日历天', '2019-02-22 00:00:00', '中铁二十四局集团南昌铁路工程有限公司', null, '2', '9', 'false', 'admin', null, '4');
INSERT INTO `t_c_contract` VALUES ('3', '大理Ⅱ段进场道路3标施工监理', 'DZYS-DLⅡ-GCBF-JL-008', '64.1487', '自合同签订之日起至缺陷责任期满止', '2019-02-03 00:00:00', '云南伟德工程监理有限公司', '', '0', '9', 'false', 'admin', '2019-03-12 16:20:48', '2');
INSERT INTO `t_c_contract` VALUES ('4', '玉溪段进场道路施工1标', 'DZYS-YX-GCBF-SG-DL001', '1177.761026', '180日历天', '2019-02-15 00:00:00', '云南昊滇建设工程集团有限公司', '', '0', '9', 'false', 'admin', '2019-03-12 16:22:31', '5');
INSERT INTO `t_c_contract` VALUES ('5', '玉溪段进场道路施工2标', 'DZYS-YX-GCBF-SG-DL002', '3182.822905', '300日历天', '2019-02-15 00:00:00', '云南恩途建设工程有限公司', '', '0', '9', 'false', 'admin', '2019-03-12 16:52:18', '5');
INSERT INTO `t_c_contract` VALUES ('6', '玉溪段进场道路施工3标', 'DZYS-YX-GCBF-SG-DL003', '7164.867295', '365日历天', '2019-02-15 00:00:00', '云南交通建设工程公司', '', '0', '9', 'false', 'admin', '2019-03-12 16:53:00', '5');
INSERT INTO `t_c_contract` VALUES ('7', '红河段进场道路施工1标', 'DZYS-HH-GCBF-SG-DL001', '6587.799056', '365日历天', '2019-02-22 00:00:00', '中铁十二局集团有限公司', '', '0', '9', 'false', 'admin', '2019-03-12 16:53:49', '6');
INSERT INTO `t_c_contract` VALUES ('8', '云南省滇中引水工程施工准备工程昆明段进场道路施工1标', 'DZYS-KM-GCBF-SG-DL001', '5267.02', '365日历天', '2019-02-22 00:00:00', '中铁二十四局集团南昌铁路工程有限公司', '', '0', '9', 'false', 'admin', '2019-03-12 17:06:07', '4');
INSERT INTO `t_c_contract` VALUES ('9', '云南省滇中引水工程施工准备工程昆明段进场道路施工2标', 'DZYS-KM-GCBF-SG-DL002', '4234.95', '365日历天', '2019-02-22 00:00:00', '中铁二十四局集团南昌铁路工程有限公司', '', '0', '9', 'false', 'admin', '2019-03-12 17:07:01', '4');

-- ----------------------------
-- Table structure for `t_c_contractexecute`
-- ----------------------------
DROP TABLE IF EXISTS `t_c_contractexecute`;
CREATE TABLE `t_c_contractexecute` (
  `contractexecuteid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `contractid` bigint(11) NOT NULL COMMENT '合同ID',
  `monthamount` double DEFAULT NULL COMMENT '当月结算',
  `year` int(4) DEFAULT NULL COMMENT '所属年份',
  `month` int(2) DEFAULT NULL COMMENT '所属月份',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `priority` int(11) DEFAULT '0' COMMENT '排序',
  `isdisabled` varchar(20) DEFAULT NULL,
  `operuser` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`contractexecuteid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_c_contractexecute
-- ----------------------------
INSERT INTO `t_c_contractexecute` VALUES ('1', '1', '376.18', '2019', '2', null, '1', 'false', 'admin', '2019-03-13 17:11:22');
INSERT INTO `t_c_contractexecute` VALUES ('2', '1', '234.98', '2019', '1', null, '1', 'false', 'admin', '2019-03-13 17:16:10');
INSERT INTO `t_c_contractexecute` VALUES ('3', '2', '121.52', '2019', '1', null, '1', 'false', 'admin', '2019-03-13 17:16:49');
INSERT INTO `t_c_contractexecute` VALUES ('4', '2', '458.31', '2019', '2', null, '1', 'false', 'admin', '2019-03-13 17:19:52');

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
INSERT INTO `t_f_financingwrite` VALUES ('4', '2019-01-07', '2019', '1', '02', '1', '1', '2', '31122321.000000', '2019-03-14 13:36:17', null, '', '', '0');
INSERT INTO `t_f_financingwrite` VALUES ('6', '2019-01-13', '2019', '1', '02', '1', '1', '2', '42211321.000000', '2019-03-14 13:36:17', '1', 'nnn', 'ccc', '0');
INSERT INTO `t_f_financingwrite` VALUES ('10', '2019-03-14', '2019', '3', '12', '2', null, null, '1111123.000000', '2019-03-14 17:30:51', null, '', '', '0');
INSERT INTO `t_f_financingwrite` VALUES ('11', '2019-03-14', '2019', '3', '12', '2', null, null, '321.000000', '2019-03-14 17:30:51', null, '', '', '0');
INSERT INTO `t_f_financingwrite` VALUES ('12', '2019-03-14', '2019', '3', '12', '2', null, null, '111.000000', '2019-03-14 17:23:53', null, '', '', '1');

-- ----------------------------
-- Table structure for `t_p_monthtotal`
-- ----------------------------
DROP TABLE IF EXISTS `t_p_monthtotal`;
CREATE TABLE `t_p_monthtotal` (
  `id` int(11) NOT NULL COMMENT '主键',
  `depart` int(11) DEFAULT NULL COMMENT '所属分局',
  `year` int(4) DEFAULT NULL COMMENT '所属年份',
  `month` int(2) DEFAULT NULL COMMENT '所属月份',
  `contracttotal` double DEFAULT NULL COMMENT '合同总金额',
  `thisyearplan` double DEFAULT NULL COMMENT '本年计划完成投资',
  `thismonthinvest` double DEFAULT NULL COMMENT '当月完成投资',
  `thisytmtotal` double DEFAULT NULL COMMENT '本年至当月实际完成投资',
  `investtotal` double DEFAULT NULL COMMENT '开工以来累计完成投资',
  `balancetotal` double DEFAULT NULL COMMENT '累计结算工程款',
  `payfortotal` double DEFAULT NULL COMMENT '累计支付情况',
  `describe` varchar(2000) DEFAULT NULL COMMENT '工程形象进度描述',
  `comment` varchar(200) DEFAULT NULL COMMENT '备注',
  `operuser` int(11) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_p_monthtotal
-- ----------------------------
INSERT INTO `t_p_monthtotal` VALUES ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '2019-03-11 18:02:35');

-- ----------------------------
-- Table structure for `t_sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(200) NOT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '访问地址',
  `ismenu` int(10) DEFAULT NULL COMMENT '是否菜单',
  `pid` int(10) DEFAULT NULL COMMENT '上级菜单ID',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `priority` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `isdisabled` varchar(20) DEFAULT NULL COMMENT '是否禁用',
  `operuser` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_menu
-- ----------------------------
INSERT INTO `t_sys_menu` VALUES ('1', '填报管理', null, '1', '0', '2019-03-14 21:20:12', null, '1', '1', '0', '1', '2019-03-14 21:20:35');
INSERT INTO `t_sys_menu` VALUES ('2', '分局填报', 'subofficewrite/subofficewriteList.web', '0', '1', '2019-03-14 21:21:18', null, '0', '1', '0', '1', '2019-03-14 21:21:28');
INSERT INTO `t_sys_menu` VALUES ('3', '财务填报', 'financing/financingList.web', '0', '1', '2019-03-14 21:22:05', null, '0', '1', '0', '1', '2019-03-14 21:22:15');
INSERT INTO `t_sys_menu` VALUES ('4', '合同管理', null, '1', '0', '2019-03-14 21:23:43', null, '2', '1', '0', '1', '2019-03-14 21:23:35');
INSERT INTO `t_sys_menu` VALUES ('5', '合同签订', 'contract/contractSignedList.web', '0', '4', '2019-03-14 21:24:55', null, '0', '1', '0', '1', '2019-03-14 21:25:00');
INSERT INTO `t_sys_menu` VALUES ('6', '合同执行', 'contract/contractExecuteList.web', '0', '4', '2019-03-14 21:42:11', null, '0', '1', '0', '1', '2019-03-14 21:42:08');

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(200) NOT NULL COMMENT '角色名称',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `priority` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `isdisabled` varchar(20) DEFAULT NULL COMMENT '是否禁用',
  `operuser` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', '超级管理员', '2019-03-14 17:12:45', null, '0', '1', '0', '1', '2019-03-14 17:13:02');
INSERT INTO `t_sys_role` VALUES ('2', '分局用户', '2019-03-14 17:17:20', null, '0', '1', '0', '1', '2019-03-14 17:17:34');

-- ----------------------------
-- Table structure for `t_sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_menu`;
CREATE TABLE `t_sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL COMMENT '角色ID',
  `menuid` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `realname` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `sex` varchar(20) NOT NULL COMMENT '性别',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `createdate` datetime NOT NULL COMMENT '创建时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `priority` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `isdisabled` varchar(20) DEFAULT NULL COMMENT '是否禁用',
  `operuser` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '管理员', '1', 'M', 'admin@admin.com', '2019-03-14 17:12:01', null, '0', '1', '0', 'admin', '2019-03-14 17:12:21');

-- ----------------------------
-- Table structure for `t_sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_role`;
CREATE TABLE `t_sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `roleid` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------

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

-- ----------------------------
-- Table structure for `t_s_dcdysqlid`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_dcdysqlid`;
CREATE TABLE `t_s_dcdysqlid` (
  `dcdytype` varchar(30) NOT NULL COMMENT '导出打印类型',
  `sqlid` varchar(50) NOT NULL COMMENT '导出类型对应的sqlid',
  `sqltype` varchar(1) DEFAULT '' COMMENT '1为内容取值sql，2为表头填充取值',
  `comment` varchar(200) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出打印对应的sqlid';

-- ----------------------------
-- Records of t_s_dcdysqlid
-- ----------------------------
INSERT INTO `t_s_dcdysqlid` VALUES ('cwtbhzczlb', 'comle.financing.getfinancingListData', '1', '财务填报汇总操作列表');

-- ----------------------------
-- Table structure for `t_s_dcdysqlproperty`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_dcdysqlproperty`;
CREATE TABLE `t_s_dcdysqlproperty` (
  `dcdytype` varchar(30) NOT NULL COMMENT '导出打印类型',
  `keyname` varchar(30) NOT NULL COMMENT '获取字段',
  `talign` varchar(10) NOT NULL COMMENT '对其方式',
  `formartstr` varchar(50) DEFAULT NULL COMMENT '格式化',
  `orderby` int(3) NOT NULL COMMENT '显示排序',
  `sepcial` varchar(5) DEFAULT NULL COMMENT '特殊处理保留字段',
  `protype` varchar(1) NOT NULL DEFAULT '' COMMENT '1为导出列表内容取值，2为表头内容对应属性',
  `comment` varchar(200) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出打印对应sql的字段取值';

-- ----------------------------
-- Records of t_s_dcdysqlproperty
-- ----------------------------
INSERT INTO `t_s_dcdysqlproperty` VALUES ('cwtbhzczlb', 'costTypeStr', 'left', null, '1', null, '1', '款项类型');
INSERT INTO `t_s_dcdysqlproperty` VALUES ('cwtbhzczlb', 'mainTypeStr', 'center', null, '2', null, '1', '款项所属');
INSERT INTO `t_s_dcdysqlproperty` VALUES ('cwtbhzczlb', 'year', 'center', null, '3', null, '1', '所属年份');
INSERT INTO `t_s_dcdysqlproperty` VALUES ('cwtbhzczlb', 'total', 'right', 'vnd.ms-excel.numberformat:#,##0.00', '4', null, '1', '累计金额');

-- ----------------------------
-- Table structure for `t_s_dcdytitles`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_dcdytitles`;
CREATE TABLE `t_s_dcdytitles` (
  `dcdytype` varchar(30) NOT NULL COMMENT '导出打印类型',
  `tdid` varchar(30) DEFAULT NULL COMMENT '元素id',
  `showtitle` varchar(200) NOT NULL COMMENT '显示名称',
  `isdytype` varchar(1) NOT NULL DEFAULT '' COMMENT '是否为打印title，1为是',
  `isdctype` varchar(1) NOT NULL COMMENT '是否为导出title，1为是',
  `rowindex` int(2) NOT NULL COMMENT '行序号',
  `colindex` int(2) NOT NULL COMMENT '列序号',
  `mrowspan` int(2) NOT NULL COMMENT '跨行',
  `mcolspan` int(2) NOT NULL COMMENT '跨列',
  `comment` varchar(200) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='打印导出表头';

-- ----------------------------
-- Records of t_s_dcdytitles
-- ----------------------------
INSERT INTO `t_s_dcdytitles` VALUES ('cwtbhzczlb', null, '款项类型', '1', '1', '2', '1', '1', '1', null);
INSERT INTO `t_s_dcdytitles` VALUES ('cwtbhzczlb', null, '款项所属', '1', '1', '2', '1', '1', '1', null);
INSERT INTO `t_s_dcdytitles` VALUES ('cwtbhzczlb', null, '所属年份', '1', '1', '2', '1', '1', '1', null);
INSERT INTO `t_s_dcdytitles` VALUES ('cwtbhzczlb', null, '累计金额', '1', '1', '2', '1', '1', '1', null);
INSERT INTO `t_s_dcdytitles` VALUES ('cwtbhzczlb', 'filename', '文件名称', '1', '1', '1', '1', '1', '4', null);

-- ----------------------------
-- Table structure for `t_s_suboffice`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_suboffice`;
CREATE TABLE `t_s_suboffice` (
  `subofficeid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `subofficename` varchar(20) DEFAULT NULL COMMENT '分局名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `priority` int(11) DEFAULT NULL COMMENT '排序',
  `isdisabled` varchar(20) DEFAULT NULL,
  `operuser` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`subofficeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_suboffice
-- ----------------------------
INSERT INTO `t_s_suboffice` VALUES ('1', '丽江分局', null, '1', 'false', 'admin', null);
INSERT INTO `t_s_suboffice` VALUES ('2', '大理分局', null, '2', 'false', 'admin', null);
INSERT INTO `t_s_suboffice` VALUES ('3', '楚雄分局', null, '3', 'false', 'admin', null);
INSERT INTO `t_s_suboffice` VALUES ('4', '昆明分局', null, '4', 'false', 'admin', null);
INSERT INTO `t_s_suboffice` VALUES ('5', '玉溪分局', null, '5', 'false', 'admin', null);
INSERT INTO `t_s_suboffice` VALUES ('6', '红河分局', null, '6', 'false', 'admin', null);

-- ----------------------------
-- Table structure for `t_s_subofficewrite`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_subofficewrite`;
CREATE TABLE `t_s_subofficewrite` (
  `subofficewriteid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `contractid` bigint(11) NOT NULL COMMENT '合同ID',
  `constructioncontent` longtext COMMENT '主要建设内容',
  `begindate` datetime DEFAULT NULL COMMENT '开工时间',
  `planfinishdate` datetime DEFAULT NULL COMMENT '计划完工时间',
  `budgetinvest` double DEFAULT NULL COMMENT '概算投资',
  `finishinvest` double DEFAULT NULL COMMENT '自开工以来累计完成投资',
  `surplusinvest` double DEFAULT NULL COMMENT '剩余投资',
  `yearplaninvest` double DEFAULT NULL COMMENT '本年度计划完成投资',
  `monthplaninvest` double DEFAULT NULL COMMENT '本月计划完成投资',
  `yearrealityinvest` double DEFAULT NULL COMMENT '本年度实际完成投资',
  `monthrealityinvest` double DEFAULT NULL COMMENT '本月实际完成投资',
  `tendayrealityinvest` double DEFAULT NULL COMMENT '本旬实际完成投资',
  `earthwork` double DEFAULT NULL COMMENT '土方',
  `stonework` double DEFAULT NULL COMMENT '石方',
  `beton` double DEFAULT NULL COMMENT '混凝土',
  `overallimageprogress` longtext COMMENT '总体形象进度',
  `nextmonthplaninvest` double DEFAULT NULL COMMENT '下一月度计划完成投资',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `year` int(4) DEFAULT NULL COMMENT '所属年份',
  `month` int(2) DEFAULT NULL COMMENT '所属月份',
  `priority` int(11) DEFAULT '0' COMMENT '排序',
  `isdisabled` varchar(20) DEFAULT NULL,
  `operuser` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operdate` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`subofficewriteid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_subofficewrite
-- ----------------------------
INSERT INTO `t_s_subofficewrite` VALUES ('1', '2', '龙泉倒虹吸始发井围护结构和主体结构施工，接收井围护结构和主体结构施工', '2017-11-30 00:00:00', '2020-06-30 00:00:00', '9787', '7367.76', '1926.18', '1662.61', '115.08', '152.08', '36.76', '10.35', '2.11', '0.48', '1.33', '龙泉倒虹吸始发井本旬进行基坑开挖及钢支撑安装施工，始发井基坑开挖共计19155.5m³，本旬完成610m³，累计完成9776m³，占比51%，剩余9379.5m³，分三区开挖，西侧第一区（1号井）已开挖至基底，深度17.5m，中部第二区（2号井西侧）已开挖至第三道砼支撑，深度13m，东侧第三区（2号井东侧）已开挖至第二道钢支撑，深度8m。第二道钢支撑本旬完成1榀直撑安装，已累计完成2榀角撑、2榀斜撑及7榀直撑安装，第三道钢支撑本旬完成2榀直撑安装，已累计完成2榀角撑、2榀斜撑、5榀直撑安装。\r\n龙泉倒虹吸接收井本旬进行降水井施工及冠梁基础面清理施工，降水井共计632m，本旬完成155m，累计完成365m，完成率57.7%，剩余267m。', '183.06', '', '2019', '2', '0', 'false', 'admin', '2019-03-14 15:17:12');
INSERT INTO `t_s_subofficewrite` VALUES ('2', '8', '路基土石方开挖、防护工程、路基路面等', '2018-08-20 00:00:00', '2019-12-31 00:00:00', '6085.51', '3731.64', '1535.38', '2348.47', '420.28', '813.09', '265.21', '105.07', '8.3138', '46.0165', '0.5028', '进场道路总长11.419公里，累计完成毛路开挖9.695公里，占84.90%，其中路基开挖完成8.289公里，占72.58%。', '654.58', '', '2019', '2', '0', 'false', 'admin', '2019-03-14 15:17:12');
INSERT INTO `t_s_subofficewrite` VALUES ('3', '9', '路基土石方开挖、防护工程、路基路面等', '2019-01-07 00:00:00', '2019-12-31 00:00:00', '7250', '873.41', '3361.54', '160', '3584.95', '223.41', '23.41', '0.41', '2.16', '8.64', '2.9', '进场道路完成松林1#支洞和龙庆1#支洞进场道路复测放线，龙庆1#支洞毛路开挖完成1.5公里，土方开挖完成2.16万方，石方开挖完成8.64万方。', '180', '', '2019', '2', '0', 'false', 'admin', '2019-03-14 15:17:12');
INSERT INTO `t_s_subofficewrite` VALUES ('4', '3', '55', '2019-02-24 00:00:00', '2019-03-02 00:00:00', '43', '33', '33', '23', '333', '33', '33', '33', '3', '3', '3', '333334', '3', '', '2019', '2', '0', 'false', 'admin', '2019-03-14 15:17:12');
