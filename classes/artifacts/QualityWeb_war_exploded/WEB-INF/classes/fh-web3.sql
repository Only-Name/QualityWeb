/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : fh-web3

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-11-08 19:42:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_fhdb
-- ----------------------------
DROP TABLE IF EXISTS `db_fhdb`;
CREATE TABLE `db_fhdb` (
  `FHDB_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_fhdb
-- ----------------------------

-- ----------------------------
-- Table structure for db_timingbackup
-- ----------------------------
DROP TABLE IF EXISTS `db_timingbackup`;
CREATE TABLE `db_timingbackup` (
  `TIMINGBACKUP_ID` varchar(100) NOT NULL,
  `JOBNAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_timingbackup
-- ----------------------------
INSERT INTO `db_timingbackup` VALUES ('311e06c34a5e4518a86d5d30799f9b55', 'sys_app_user_515762', '2016-04-11 17:04:55', 'sys_app_user', '2', '1/2 * * ? * *', '每个月的 每周 每天 每小时执行一次', '备份任务');
INSERT INTO `db_timingbackup` VALUES ('bc4a788bc2ec40bdb1b7730131c26d42', 'sys_app_user_359515', '2016-04-12 17:24:05', 'sys_app_user', '2', '1/3 * * ? * *', '每个月的 每周 每天 每小时执行一次', 'ssss');

-- ----------------------------
-- Table structure for groupinfo
-- ----------------------------
DROP TABLE IF EXISTS `groupinfo`;
CREATE TABLE `groupinfo` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(255) DEFAULT NULL,
  `Enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupinfo
-- ----------------------------
INSERT INTO `groupinfo` VALUES ('1', 'test', null);
INSERT INTO `groupinfo` VALUES ('3', 'GF1', null);
INSERT INTO `groupinfo` VALUES ('4', 'ZY3', null);
INSERT INTO `groupinfo` VALUES ('5', '通用', null);
INSERT INTO `groupinfo` VALUES ('4243', 'ces测', null);

-- ----------------------------
-- Table structure for history_ball
-- ----------------------------
DROP TABLE IF EXISTS `history_ball`;
CREATE TABLE `history_ball` (
  `id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `redball1` varchar(255) DEFAULT NULL,
  `redball2` varchar(255) DEFAULT NULL,
  `redball3` varchar(255) DEFAULT NULL,
  `redball4` varchar(255) DEFAULT NULL,
  `redball5` varchar(255) DEFAULT NULL,
  `redball6` varchar(255) DEFAULT NULL,
  `greenball1` varchar(255) DEFAULT NULL,
  `supriseTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history_ball
-- ----------------------------
INSERT INTO `history_ball` VALUES ('1', '2019070', '06', '15', '18', '19', '24', '32', '09', '2019-06-18');
INSERT INTO `history_ball` VALUES ('10', '2019061', '03', '17', '19', '24', '27', '31', '12', '2019-05-28');
INSERT INTO `history_ball` VALUES ('100', '2018124', '09', '13', '14', '19', '22', '25', '02', '2018-10-23');
INSERT INTO `history_ball` VALUES ('101', '2018123', '13', '21', '24', '27', '31', '32', '01', '2018-10-21');
INSERT INTO `history_ball` VALUES ('102', '2018122', '05', '07', '20', '22', '30', '32', '10', '2018-10-18');
INSERT INTO `history_ball` VALUES ('103', '2018121', '06', '08', '14', '19', '23', '25', '11', '2018-10-16');
INSERT INTO `history_ball` VALUES ('104', '2018120', '03', '04', '18', '26', '27', '33', '01', '2018-10-14');
INSERT INTO `history_ball` VALUES ('105', '2018119', '03', '13', '14', '16', '25', '27', '12', '2018-10-11');
INSERT INTO `history_ball` VALUES ('106', '2018118', '08', '12', '21', '22', '27', '31', '09', '2018-10-09');
INSERT INTO `history_ball` VALUES ('107', '2018117', '08', '11', '15', '17', '23', '25', '05', '2018-10-07');
INSERT INTO `history_ball` VALUES ('108', '2018116', '05', '14', '17', '22', '23', '28', '15', '2018-10-04');
INSERT INTO `history_ball` VALUES ('109', '2018115', '01', '13', '19', '24', '26', '29', '11', '2018-10-02');
INSERT INTO `history_ball` VALUES ('11', '2019060', '03', '04', '14', '20', '23', '27', '01', '2019-05-26');
INSERT INTO `history_ball` VALUES ('110', '2018114', '01', '07', '15', '16', '20', '27', '14', '2018-09-30');
INSERT INTO `history_ball` VALUES ('111', '2018113', '01', '06', '09', '16', '25', '26', '09', '2018-09-27');
INSERT INTO `history_ball` VALUES ('112', '2018112', '05', '08', '18', '25', '26', '31', '04', '2018-09-25');
INSERT INTO `history_ball` VALUES ('113', '2018111', '01', '07', '14', '24', '25', '28', '08', '2018-09-23');
INSERT INTO `history_ball` VALUES ('114', '2018110', '11', '13', '16', '21', '22', '23', '02', '2018-09-20');
INSERT INTO `history_ball` VALUES ('115', '2018109', '10', '11', '18', '23', '31', '33', '15', '2018-09-18');
INSERT INTO `history_ball` VALUES ('116', '2018108', '05', '13', '18', '21', '26', '30', '02', '2018-09-16');
INSERT INTO `history_ball` VALUES ('117', '2018107', '01', '02', '05', '12', '20', '22', '01', '2018-09-13');
INSERT INTO `history_ball` VALUES ('118', '2018106', '04', '18', '19', '24', '25', '26', '10', '2018-09-11');
INSERT INTO `history_ball` VALUES ('119', '2018105', '04', '05', '13', '18', '19', '25', '01', '2018-09-09');
INSERT INTO `history_ball` VALUES ('12', '2019059', '04', '05', '07', '09', '16', '18', '06', '2019-05-23');
INSERT INTO `history_ball` VALUES ('120', '2018104', '02', '03', '06', '19', '25', '29', '01', '2018-09-06');
INSERT INTO `history_ball` VALUES ('121', '2018103', '02', '09', '15', '22', '23', '24', '16', '2018-09-04');
INSERT INTO `history_ball` VALUES ('122', '2018102', '02', '06', '11', '19', '21', '28', '05', '2018-09-02');
INSERT INTO `history_ball` VALUES ('123', '2018101', '01', '03', '14', '26', '29', '33', '09', '2018-08-30');
INSERT INTO `history_ball` VALUES ('124', '2018100', '02', '11', '14', '15', '29', '33', '02', '2018-08-28');
INSERT INTO `history_ball` VALUES ('125', '2018099', '03', '07', '08', '14', '25', '32', '06', '2018-08-26');
INSERT INTO `history_ball` VALUES ('126', '2018098', '06', '10', '11', '20', '29', '32', '13', '2018-08-23');
INSERT INTO `history_ball` VALUES ('127', '2018097', '01', '02', '17', '20', '25', '28', '13', '2018-08-21');
INSERT INTO `history_ball` VALUES ('128', '2018096', '01', '05', '09', '20', '28', '32', '12', '2018-08-19');
INSERT INTO `history_ball` VALUES ('129', '2018095', '10', '11', '12', '21', '26', '33', '09', '2018-08-16');
INSERT INTO `history_ball` VALUES ('13', '2019058', '07', '08', '12', '21', '23', '27', '12', '2019-05-21');
INSERT INTO `history_ball` VALUES ('130', '2018094', '04', '07', '16', '20', '24', '30', '05', '2018-08-14');
INSERT INTO `history_ball` VALUES ('131', '2018093', '04', '18', '20', '21', '29', '33', '07', '2018-08-12');
INSERT INTO `history_ball` VALUES ('132', '2018092', '06', '10', '16', '19', '24', '33', '16', '2018-08-09');
INSERT INTO `history_ball` VALUES ('133', '2018091', '06', '11', '13', '17', '25', '32', '07', '2018-08-07');
INSERT INTO `history_ball` VALUES ('134', '2018090', '01', '02', '04', '10', '14', '23', '07', '2018-08-05');
INSERT INTO `history_ball` VALUES ('135', '2018089', '06', '09', '12', '14', '18', '27', '14', '2018-08-02');
INSERT INTO `history_ball` VALUES ('136', '2018088', '03', '05', '12', '29', '30', '32', '14', '2018-07-31');
INSERT INTO `history_ball` VALUES ('137', '2018087', '01', '05', '10', '16', '18', '31', '03', '2018-07-29');
INSERT INTO `history_ball` VALUES ('138', '2018086', '02', '07', '17', '21', '23', '26', '16', '2018-07-26');
INSERT INTO `history_ball` VALUES ('139', '2018085', '04', '10', '25', '26', '30', '33', '06', '2018-07-24');
INSERT INTO `history_ball` VALUES ('14', '2019057', '04', '05', '06', '08', '13', '18', '16', '2019-05-19');
INSERT INTO `history_ball` VALUES ('140', '2018084', '05', '06', '08', '12', '22', '24', '03', '2018-07-22');
INSERT INTO `history_ball` VALUES ('141', '2018083', '04', '09', '18', '21', '32', '33', '03', '2018-07-19');
INSERT INTO `history_ball` VALUES ('142', '2018082', '06', '12', '14', '20', '22', '24', '09', '2018-07-17');
INSERT INTO `history_ball` VALUES ('143', '2018081', '01', '02', '12', '16', '20', '26', '03', '2018-07-15');
INSERT INTO `history_ball` VALUES ('144', '2018080', '04', '07', '13', '20', '29', '33', '03', '2018-07-12');
INSERT INTO `history_ball` VALUES ('145', '2018079', '14', '15', '17', '22', '24', '29', '13', '2018-07-10');
INSERT INTO `history_ball` VALUES ('146', '2018078', '03', '10', '14', '17', '18', '30', '12', '2018-07-08');
INSERT INTO `history_ball` VALUES ('147', '2018077', '02', '05', '09', '15', '20', '24', '10', '2018-07-05');
INSERT INTO `history_ball` VALUES ('148', '2018076', '03', '07', '08', '15', '29', '30', '13', '2018-07-03');
INSERT INTO `history_ball` VALUES ('149', '2018075', '07', '09', '12', '13', '22', '24', '11', '2018-07-01');
INSERT INTO `history_ball` VALUES ('15', '2019056', '13', '14', '17', '19', '21', '29', '01', '2019-05-16');
INSERT INTO `history_ball` VALUES ('150', '2018074', '09', '11', '14', '20', '27', '30', '09', '2018-06-28');
INSERT INTO `history_ball` VALUES ('151', '2018073', '02', '09', '14', '15', '16', '23', '10', '2018-06-26');
INSERT INTO `history_ball` VALUES ('152', '2018072', '11', '16', '19', '22', '25', '30', '08', '2018-06-24');
INSERT INTO `history_ball` VALUES ('153', '2018071', '02', '05', '06', '13', '16', '19', '03', '2018-06-21');
INSERT INTO `history_ball` VALUES ('154', '2018070', '04', '09', '15', '16', '19', '27', '10', '2018-06-19');
INSERT INTO `history_ball` VALUES ('155', '2018069', '06', '13', '17', '19', '23', '31', '12', '2018-06-17');
INSERT INTO `history_ball` VALUES ('156', '2018068', '08', '10', '17', '20', '27', '30', '01', '2018-06-14');
INSERT INTO `history_ball` VALUES ('157', '2018067', '01', '04', '09', '12', '15', '18', '05', '2018-06-12');
INSERT INTO `history_ball` VALUES ('158', '2018066', '09', '16', '17', '19', '22', '26', '10', '2018-06-10');
INSERT INTO `history_ball` VALUES ('159', '2018065', '01', '04', '06', '14', '28', '33', '01', '2018-06-07');
INSERT INTO `history_ball` VALUES ('16', '2019055', '01', '06', '11', '15', '19', '31', '10', '2019-05-14');
INSERT INTO `history_ball` VALUES ('160', '2018064', '02', '05', '10', '11', '17', '21', '05', '2018-06-05');
INSERT INTO `history_ball` VALUES ('161', '2018063', '05', '06', '10', '16', '20', '25', '12', '2018-06-03');
INSERT INTO `history_ball` VALUES ('162', '2018062', '02', '18', '19', '24', '25', '33', '11', '2018-05-31');
INSERT INTO `history_ball` VALUES ('163', '2018061', '09', '10', '11', '12', '18', '23', '07', '2018-05-29');
INSERT INTO `history_ball` VALUES ('164', '2018060', '04', '08', '13', '25', '30', '31', '10', '2018-05-27');
INSERT INTO `history_ball` VALUES ('165', '2018059', '04', '06', '08', '13', '22', '32', '11', '2018-05-24');
INSERT INTO `history_ball` VALUES ('166', '2018058', '07', '12', '13', '16', '26', '31', '07', '2018-05-22');
INSERT INTO `history_ball` VALUES ('167', '2018057', '05', '15', '17', '19', '20', '30', '13', '2018-05-20');
INSERT INTO `history_ball` VALUES ('168', '2018056', '01', '03', '06', '20', '21', '26', '01', '2018-05-17');
INSERT INTO `history_ball` VALUES ('169', '2018055', '07', '09', '10', '12', '22', '26', '07', '2018-05-15');
INSERT INTO `history_ball` VALUES ('17', '2019054', '07', '10', '11', '15', '24', '26', '11', '2019-05-12');
INSERT INTO `history_ball` VALUES ('170', '2018054', '04', '06', '18', '22', '25', '33', '16', '2018-05-13');
INSERT INTO `history_ball` VALUES ('171', '2018053', '01', '04', '10', '11', '14', '27', '06', '2018-05-10');
INSERT INTO `history_ball` VALUES ('172', '2018052', '03', '05', '06', '09', '15', '32', '14', '2018-05-08');
INSERT INTO `history_ball` VALUES ('173', '2018051', '05', '07', '20', '23', '27', '31', '04', '2018-05-06');
INSERT INTO `history_ball` VALUES ('174', '2018050', '01', '02', '04', '10', '18', '19', '07', '2018-05-03');
INSERT INTO `history_ball` VALUES ('175', '2018049', '01', '03', '04', '11', '19', '23', '02', '2018-05-01');
INSERT INTO `history_ball` VALUES ('176', '2018048', '01', '12', '20', '25', '30', '31', '02', '2018-04-29');
INSERT INTO `history_ball` VALUES ('177', '2018047', '06', '07', '12', '16', '22', '25', '07', '2018-04-26');
INSERT INTO `history_ball` VALUES ('178', '2018046', '10', '13', '14', '18', '20', '31', '03', '2018-04-24');
INSERT INTO `history_ball` VALUES ('179', '2018045', '03', '04', '06', '25', '26', '30', '01', '2018-04-22');
INSERT INTO `history_ball` VALUES ('18', '2019053', '04', '16', '22', '25', '29', '31', '08', '2019-05-09');
INSERT INTO `history_ball` VALUES ('180', '2018044', '05', '09', '12', '17', '27', '30', '06', '2018-04-19');
INSERT INTO `history_ball` VALUES ('181', '2018043', '01', '04', '06', '08', '21', '24', '07', '2018-04-17');
INSERT INTO `history_ball` VALUES ('182', '2018042', '06', '10', '21', '28', '29', '31', '12', '2018-04-15');
INSERT INTO `history_ball` VALUES ('183', '2018041', '07', '08', '20', '23', '24', '32', '13', '2018-04-12');
INSERT INTO `history_ball` VALUES ('184', '2018040', '01', '03', '08', '13', '18', '23', '16', '2018-04-10');
INSERT INTO `history_ball` VALUES ('185', '2018039', '08', '12', '18', '19', '23', '32', '03', '2018-04-08');
INSERT INTO `history_ball` VALUES ('186', '2018038', '15', '23', '24', '25', '28', '29', '09', '2018-04-05');
INSERT INTO `history_ball` VALUES ('187', '2018037', '01', '06', '07', '08', '27', '30', '10', '2018-04-03');
INSERT INTO `history_ball` VALUES ('188', '2018036', '08', '17', '24', '26', '28', '33', '04', '2018-04-01');
INSERT INTO `history_ball` VALUES ('189', '2018035', '07', '10', '11', '17', '23', '28', '15', '2018-03-29');
INSERT INTO `history_ball` VALUES ('19', '2019052', '03', '06', '09', '13', '16', '19', '16', '2019-05-07');
INSERT INTO `history_ball` VALUES ('190', '2018034', '01', '05', '11', '22', '23', '26', '15', '2018-03-27');
INSERT INTO `history_ball` VALUES ('191', '2018033', '04', '19', '20', '22', '28', '33', '06', '2018-03-25');
INSERT INTO `history_ball` VALUES ('192', '2018032', '21', '22', '23', '24', '25', '32', '06', '2018-03-22');
INSERT INTO `history_ball` VALUES ('193', '2018031', '02', '16', '18', '19', '27', '30', '14', '2018-03-20');
INSERT INTO `history_ball` VALUES ('194', '2018030', '13', '14', '20', '21', '25', '33', '07', '2018-03-18');
INSERT INTO `history_ball` VALUES ('195', '2018029', '01', '02', '09', '14', '22', '25', '05', '2018-03-15');
INSERT INTO `history_ball` VALUES ('196', '2018028', '03', '08', '11', '14', '18', '23', '16', '2018-03-13');
INSERT INTO `history_ball` VALUES ('197', '2018027', '02', '07', '09', '14', '18', '28', '05', '2018-03-11');
INSERT INTO `history_ball` VALUES ('198', '2018026', '04', '07', '12', '14', '26', '32', '04', '2018-03-08');
INSERT INTO `history_ball` VALUES ('199', '2018025', '04', '13', '16', '19', '21', '25', '14', '2018-03-06');
INSERT INTO `history_ball` VALUES ('2', '2019069', '06', '11', '16', '19', '21', '25', '01', '2019-06-16');
INSERT INTO `history_ball` VALUES ('20', '2019051', '08', '09', '10', '13', '15', '28', '09', '2019-05-05');
INSERT INTO `history_ball` VALUES ('200', '2018024', '11', '19', '22', '26', '31', '32', '02', '2018-03-04');
INSERT INTO `history_ball` VALUES ('201', '2018023', '12', '15', '16', '21', '26', '29', '16', '2018-03-01');
INSERT INTO `history_ball` VALUES ('202', '2018022', '07', '14', '19', '21', '22', '23', '03', '2018-02-27');
INSERT INTO `history_ball` VALUES ('203', '2018021', '03', '04', '06', '11', '23', '28', '14', '2018-02-25');
INSERT INTO `history_ball` VALUES ('204', '2018020', '06', '09', '10', '14', '28', '30', '05', '2018-02-22');
INSERT INTO `history_ball` VALUES ('205', '2018019', '03', '11', '12', '16', '21', '23', '09', '2018-02-13');
INSERT INTO `history_ball` VALUES ('206', '2018018', '02', '12', '13', '18', '25', '27', '07', '2018-02-11');
INSERT INTO `history_ball` VALUES ('207', '2018017', '03', '06', '11', '26', '30', '32', '12', '2018-02-08');
INSERT INTO `history_ball` VALUES ('208', '2018016', '01', '11', '12', '18', '25', '27', '16', '2018-02-06');
INSERT INTO `history_ball` VALUES ('209', '2018015', '11', '15', '20', '21', '26', '33', '15', '2018-02-04');
INSERT INTO `history_ball` VALUES ('21', '2019050', '04', '06', '10', '11', '21', '23', '02', '2019-05-02');
INSERT INTO `history_ball` VALUES ('210', '2018014', '09', '12', '20', '24', '28', '31', '07', '2018-02-01');
INSERT INTO `history_ball` VALUES ('211', '2018013', '06', '08', '13', '15', '22', '33', '06', '2018-01-30');
INSERT INTO `history_ball` VALUES ('212', '2018012', '11', '12', '13', '19', '26', '28', '12', '2018-01-28');
INSERT INTO `history_ball` VALUES ('213', '2018011', '03', '10', '21', '23', '27', '33', '11', '2018-01-25');
INSERT INTO `history_ball` VALUES ('214', '2018010', '01', '08', '17', '20', '21', '22', '03', '2018-01-23');
INSERT INTO `history_ball` VALUES ('215', '2018009', '05', '10', '17', '23', '26', '32', '07', '2018-01-21');
INSERT INTO `history_ball` VALUES ('216', '2018008', '05', '09', '10', '12', '17', '19', '13', '2018-01-18');
INSERT INTO `history_ball` VALUES ('217', '2018007', '13', '14', '20', '25', '27', '31', '12', '2018-01-16');
INSERT INTO `history_ball` VALUES ('218', '2018006', '02', '07', '08', '09', '17', '29', '11', '2018-01-14');
INSERT INTO `history_ball` VALUES ('219', '2018005', '02', '20', '21', '28', '31', '33', '06', '2018-01-11');
INSERT INTO `history_ball` VALUES ('22', '2019049', '03', '10', '13', '22', '23', '28', '15', '2019-04-30');
INSERT INTO `history_ball` VALUES ('220', '2018004', '14', '18', '19', '26', '30', '31', '11', '2018-01-09');
INSERT INTO `history_ball` VALUES ('221', '2018003', '01', '14', '16', '17', '20', '31', '04', '2018-01-07');
INSERT INTO `history_ball` VALUES ('222', '2018002', '07', '18', '24', '29', '31', '33', '16', '2018-01-04');
INSERT INTO `history_ball` VALUES ('223', '2018001', '01', '08', '11', '26', '28', '31', '04', '2018-01-02');
INSERT INTO `history_ball` VALUES ('224', '2017154', '05', '09', '13', '15', '18', '26', '05', '2017-12-31');
INSERT INTO `history_ball` VALUES ('225', '2017153', '07', '11', '12', '13', '18', '19', '16', '2017-12-28');
INSERT INTO `history_ball` VALUES ('226', '2017152', '06', '10', '23', '25', '26', '29', '05', '2017-12-26');
INSERT INTO `history_ball` VALUES ('227', '2017151', '02', '05', '07', '09', '11', '27', '16', '2017-12-24');
INSERT INTO `history_ball` VALUES ('228', '2017150', '06', '14', '19', '20', '21', '23', '08', '2017-12-21');
INSERT INTO `history_ball` VALUES ('229', '2017149', '05', '08', '15', '20', '27', '30', '13', '2017-12-19');
INSERT INTO `history_ball` VALUES ('23', '2019048', '03', '07', '10', '12', '18', '29', '10', '2019-04-28');
INSERT INTO `history_ball` VALUES ('230', '2017148', '04', '07', '11', '14', '29', '32', '12', '2017-12-17');
INSERT INTO `history_ball` VALUES ('231', '2017147', '03', '07', '20', '21', '25', '31', '14', '2017-12-14');
INSERT INTO `history_ball` VALUES ('232', '2017146', '01', '19', '25', '26', '27', '33', '10', '2017-12-12');
INSERT INTO `history_ball` VALUES ('233', '2017145', '02', '06', '12', '17', '25', '28', '12', '2017-12-10');
INSERT INTO `history_ball` VALUES ('234', '2017144', '03', '14', '16', '20', '31', '32', '09', '2017-12-07');
INSERT INTO `history_ball` VALUES ('235', '2017143', '04', '06', '09', '14', '20', '29', '14', '2017-12-05');
INSERT INTO `history_ball` VALUES ('236', '2017142', '08', '13', '14', '18', '23', '33', '06', '2017-12-03');
INSERT INTO `history_ball` VALUES ('237', '2017141', '01', '06', '07', '11', '13', '15', '05', '2017-11-30');
INSERT INTO `history_ball` VALUES ('238', '2017140', '21', '22', '25', '28', '29', '30', '08', '2017-11-28');
INSERT INTO `history_ball` VALUES ('239', '2017139', '02', '14', '20', '24', '28', '32', '16', '2017-11-26');
INSERT INTO `history_ball` VALUES ('24', '2019047', '03', '11', '18', '25', '30', '33', '14', '2019-04-25');
INSERT INTO `history_ball` VALUES ('240', '2017138', '01', '17', '24', '28', '32', '33', '02', '2017-11-23');
INSERT INTO `history_ball` VALUES ('241', '2017137', '05', '10', '20', '23', '26', '31', '03', '2017-11-21');
INSERT INTO `history_ball` VALUES ('242', '2017136', '03', '07', '10', '18', '21', '24', '12', '2017-11-19');
INSERT INTO `history_ball` VALUES ('243', '2017135', '01', '06', '07', '14', '18', '26', '16', '2017-11-16');
INSERT INTO `history_ball` VALUES ('244', '2017134', '04', '05', '11', '14', '28', '32', '04', '2017-11-14');
INSERT INTO `history_ball` VALUES ('245', '2017133', '06', '15', '17', '18', '23', '30', '11', '2017-11-12');
INSERT INTO `history_ball` VALUES ('246', '2017132', '02', '03', '05', '09', '13', '28', '11', '2017-11-09');
INSERT INTO `history_ball` VALUES ('247', '2017131', '01', '07', '10', '11', '26', '27', '11', '2017-11-07');
INSERT INTO `history_ball` VALUES ('248', '2017130', '05', '13', '14', '23', '25', '31', '02', '2017-11-05');
INSERT INTO `history_ball` VALUES ('249', '2017129', '05', '06', '09', '14', '21', '33', '02', '2017-11-02');
INSERT INTO `history_ball` VALUES ('25', '2019046', '02', '12', '16', '22', '25', '32', '06', '2019-04-23');
INSERT INTO `history_ball` VALUES ('250', '2017128', '02', '06', '13', '22', '29', '31', '08', '2017-10-31');
INSERT INTO `history_ball` VALUES ('251', '2017127', '14', '15', '21', '24', '27', '32', '12', '2017-10-29');
INSERT INTO `history_ball` VALUES ('252', '2017126', '01', '16', '17', '21', '27', '30', '16', '2017-10-26');
INSERT INTO `history_ball` VALUES ('253', '2017125', '01', '14', '23', '25', '29', '30', '03', '2017-10-24');
INSERT INTO `history_ball` VALUES ('254', '2017124', '02', '06', '11', '26', '28', '29', '03', '2017-10-22');
INSERT INTO `history_ball` VALUES ('255', '2017123', '04', '05', '06', '11', '21', '31', '10', '2017-10-19');
INSERT INTO `history_ball` VALUES ('256', '2017122', '11', '20', '21', '22', '24', '27', '15', '2017-10-17');
INSERT INTO `history_ball` VALUES ('257', '2017121', '11', '18', '19', '22', '24', '32', '07', '2017-10-15');
INSERT INTO `history_ball` VALUES ('258', '2017120', '08', '10', '15', '19', '23', '28', '16', '2017-10-12');
INSERT INTO `history_ball` VALUES ('259', '2017119', '09', '16', '21', '25', '26', '31', '14', '2017-10-10');
INSERT INTO `history_ball` VALUES ('26', '2019045', '01', '06', '17', '19', '27', '31', '14', '2019-04-21');
INSERT INTO `history_ball` VALUES ('260', '2017118', '08', '09', '15', '22', '30', '33', '16', '2017-10-08');
INSERT INTO `history_ball` VALUES ('261', '2017117', '01', '02', '08', '11', '14', '21', '09', '2017-10-05');
INSERT INTO `history_ball` VALUES ('262', '2017116', '02', '14', '20', '22', '30', '32', '02', '2017-10-03');
INSERT INTO `history_ball` VALUES ('263', '2017115', '04', '10', '11', '25', '30', '31', '01', '2017-10-01');
INSERT INTO `history_ball` VALUES ('264', '2017114', '06', '12', '13', '15', '18', '26', '13', '2017-09-28');
INSERT INTO `history_ball` VALUES ('265', '2017113', '04', '06', '16', '27', '29', '33', '05', '2017-09-26');
INSERT INTO `history_ball` VALUES ('266', '2017112', '03', '10', '14', '16', '22', '23', '11', '2017-09-24');
INSERT INTO `history_ball` VALUES ('267', '2017111', '05', '10', '17', '19', '29', '32', '12', '2017-09-21');
INSERT INTO `history_ball` VALUES ('268', '2017110', '01', '03', '12', '15', '19', '23', '14', '2017-09-19');
INSERT INTO `history_ball` VALUES ('269', '2017109', '08', '14', '16', '18', '21', '23', '16', '2017-09-17');
INSERT INTO `history_ball` VALUES ('27', '2019044', '06', '14', '16', '17', '23', '29', '07', '2019-04-18');
INSERT INTO `history_ball` VALUES ('270', '2017108', '07', '12', '14', '15', '17', '20', '01', '2017-09-14');
INSERT INTO `history_ball` VALUES ('271', '2017107', '08', '09', '15', '17', '30', '32', '06', '2017-09-12');
INSERT INTO `history_ball` VALUES ('272', '2017106', '12', '15', '20', '25', '27', '31', '02', '2017-09-10');
INSERT INTO `history_ball` VALUES ('273', '2017105', '03', '06', '07', '12', '25', '26', '07', '2017-09-07');
INSERT INTO `history_ball` VALUES ('274', '2017104', '01', '14', '15', '20', '23', '30', '14', '2017-09-05');
INSERT INTO `history_ball` VALUES ('275', '2017103', '01', '21', '23', '25', '31', '33', '01', '2017-09-03');
INSERT INTO `history_ball` VALUES ('276', '2017102', '04', '08', '10', '14', '18', '20', '11', '2017-08-31');
INSERT INTO `history_ball` VALUES ('277', '2017101', '01', '04', '11', '28', '31', '32', '16', '2017-08-29');
INSERT INTO `history_ball` VALUES ('278', '2017100', '04', '07', '08', '18', '23', '24', '02', '2017-08-27');
INSERT INTO `history_ball` VALUES ('279', '2017099', '02', '05', '06', '16', '28', '29', '04', '2017-08-24');
INSERT INTO `history_ball` VALUES ('28', '2019043', '01', '06', '12', '13', '24', '32', '13', '2019-04-16');
INSERT INTO `history_ball` VALUES ('280', '2017098', '04', '19', '22', '27', '30', '33', '01', '2017-08-22');
INSERT INTO `history_ball` VALUES ('281', '2017097', '05', '10', '18', '19', '30', '31', '03', '2017-08-20');
INSERT INTO `history_ball` VALUES ('282', '2017096', '02', '06', '11', '12', '19', '29', '06', '2017-08-17');
INSERT INTO `history_ball` VALUES ('283', '2017095', '09', '10', '12', '19', '22', '29', '16', '2017-08-15');
INSERT INTO `history_ball` VALUES ('284', '2017094', '08', '11', '13', '19', '28', '31', '06', '2017-08-13');
INSERT INTO `history_ball` VALUES ('285', '2017093', '07', '08', '09', '15', '22', '27', '12', '2017-08-10');
INSERT INTO `history_ball` VALUES ('286', '2017092', '10', '18', '19', '29', '32', '33', '09', '2017-08-08');
INSERT INTO `history_ball` VALUES ('287', '2017091', '05', '07', '10', '23', '28', '29', '03', '2017-08-06');
INSERT INTO `history_ball` VALUES ('288', '2017090', '01', '07', '10', '16', '22', '33', '09', '2017-08-03');
INSERT INTO `history_ball` VALUES ('289', '2017089', '11', '12', '13', '16', '23', '25', '12', '2017-08-01');
INSERT INTO `history_ball` VALUES ('29', '2019042', '15', '17', '19', '22', '25', '26', '04', '2019-04-14');
INSERT INTO `history_ball` VALUES ('290', '2017088', '07', '09', '18', '22', '23', '29', '06', '2017-07-30');
INSERT INTO `history_ball` VALUES ('291', '2017087', '03', '06', '13', '14', '19', '28', '06', '2017-07-27');
INSERT INTO `history_ball` VALUES ('292', '2017086', '03', '05', '06', '13', '20', '22', '07', '2017-07-25');
INSERT INTO `history_ball` VALUES ('293', '2017085', '01', '05', '06', '16', '25', '30', '09', '2017-07-23');
INSERT INTO `history_ball` VALUES ('294', '2017084', '01', '05', '11', '20', '22', '24', '02', '2017-07-20');
INSERT INTO `history_ball` VALUES ('295', '2017083', '03', '08', '14', '20', '24', '26', '12', '2017-07-18');
INSERT INTO `history_ball` VALUES ('296', '2017082', '14', '18', '21', '25', '28', '29', '10', '2017-07-16');
INSERT INTO `history_ball` VALUES ('297', '2017081', '03', '05', '14', '25', '26', '30', '05', '2017-07-13');
INSERT INTO `history_ball` VALUES ('298', '2017080', '01', '12', '16', '20', '22', '24', '08', '2017-07-11');
INSERT INTO `history_ball` VALUES ('299', '2017079', '03', '07', '14', '23', '25', '27', '08', '2017-07-09');
INSERT INTO `history_ball` VALUES ('3', '2019068', '03', '14', '20', '24', '26', '33', '10', '2019-06-13');
INSERT INTO `history_ball` VALUES ('30', '2019041', '02', '09', '13', '23', '24', '26', '16', '2019-04-11');
INSERT INTO `history_ball` VALUES ('300', '2017078', '05', '07', '18', '19', '22', '24', '16', '2017-07-06');
INSERT INTO `history_ball` VALUES ('301', '2017077', '01', '02', '04', '15', '17', '22', '14', '2017-07-04');
INSERT INTO `history_ball` VALUES ('302', '2017076', '01', '04', '08', '09', '14', '15', '13', '2017-07-02');
INSERT INTO `history_ball` VALUES ('303', '2017075', '01', '03', '06', '19', '21', '29', '07', '2017-06-29');
INSERT INTO `history_ball` VALUES ('304', '2017074', '02', '06', '16', '23', '30', '31', '02', '2017-06-27');
INSERT INTO `history_ball` VALUES ('305', '2017073', '03', '06', '16', '23', '26', '30', '14', '2017-06-25');
INSERT INTO `history_ball` VALUES ('306', '2017072', '06', '11', '14', '23', '26', '30', '02', '2017-06-22');
INSERT INTO `history_ball` VALUES ('307', '2017071', '02', '03', '06', '14', '31', '32', '03', '2017-06-20');
INSERT INTO `history_ball` VALUES ('308', '2017070', '01', '06', '14', '22', '25', '26', '12', '2017-06-18');
INSERT INTO `history_ball` VALUES ('309', '2017069', '02', '11', '12', '23', '29', '31', '05', '2017-06-15');
INSERT INTO `history_ball` VALUES ('31', '2019040', '05', '06', '09', '18', '23', '31', '11', '2019-04-09');
INSERT INTO `history_ball` VALUES ('310', '2017068', '02', '06', '10', '22', '30', '31', '15', '2017-06-13');
INSERT INTO `history_ball` VALUES ('311', '2017067', '01', '03', '04', '10', '18', '29', '04', '2017-06-11');
INSERT INTO `history_ball` VALUES ('312', '2017066', '01', '04', '06', '17', '19', '26', '03', '2017-06-08');
INSERT INTO `history_ball` VALUES ('313', '2017065', '02', '05', '08', '10', '12', '21', '07', '2017-06-06');
INSERT INTO `history_ball` VALUES ('314', '2017064', '02', '10', '16', '22', '24', '28', '15', '2017-06-04');
INSERT INTO `history_ball` VALUES ('315', '2017063', '12', '16', '20', '22', '25', '31', '04', '2017-06-01');
INSERT INTO `history_ball` VALUES ('316', '2017062', '01', '07', '22', '24', '26', '31', '10', '2017-05-30');
INSERT INTO `history_ball` VALUES ('317', '2017061', '06', '07', '12', '20', '26', '27', '11', '2017-05-28');
INSERT INTO `history_ball` VALUES ('318', '2017060', '05', '10', '13', '24', '26', '31', '04', '2017-05-25');
INSERT INTO `history_ball` VALUES ('319', '2017059', '04', '08', '09', '15', '19', '25', '09', '2017-05-23');
INSERT INTO `history_ball` VALUES ('32', '2019039', '06', '07', '11', '14', '27', '32', '08', '2019-04-07');
INSERT INTO `history_ball` VALUES ('320', '2017058', '01', '09', '13', '22', '28', '32', '11', '2017-05-21');
INSERT INTO `history_ball` VALUES ('321', '2017057', '18', '20', '22', '23', '30', '31', '16', '2017-05-18');
INSERT INTO `history_ball` VALUES ('322', '2017056', '13', '14', '18', '19', '21', '28', '06', '2017-05-16');
INSERT INTO `history_ball` VALUES ('323', '2017055', '07', '12', '13', '20', '24', '31', '05', '2017-05-14');
INSERT INTO `history_ball` VALUES ('324', '2017054', '02', '03', '09', '23', '28', '33', '08', '2017-05-11');
INSERT INTO `history_ball` VALUES ('325', '2017053', '04', '09', '11', '15', '29', '31', '06', '2017-05-09');
INSERT INTO `history_ball` VALUES ('326', '2017052', '07', '08', '18', '24', '29', '31', '07', '2017-05-07');
INSERT INTO `history_ball` VALUES ('327', '2017051', '02', '05', '09', '15', '24', '25', '11', '2017-05-04');
INSERT INTO `history_ball` VALUES ('328', '2017050', '10', '12', '20', '24', '27', '29', '07', '2017-05-02');
INSERT INTO `history_ball` VALUES ('329', '2017049', '01', '08', '14', '15', '20', '29', '10', '2017-04-30');
INSERT INTO `history_ball` VALUES ('33', '2019038', '09', '12', '21', '27', '29', '30', '05', '2019-04-04');
INSERT INTO `history_ball` VALUES ('330', '2017048', '05', '08', '09', '14', '15', '19', '07', '2017-04-27');
INSERT INTO `history_ball` VALUES ('331', '2017047', '02', '05', '08', '10', '32', '33', '02', '2017-04-25');
INSERT INTO `history_ball` VALUES ('332', '2017046', '04', '13', '14', '23', '26', '32', '10', '2017-04-23');
INSERT INTO `history_ball` VALUES ('333', '2017045', '05', '07', '16', '20', '21', '25', '05', '2017-04-20');
INSERT INTO `history_ball` VALUES ('334', '2017044', '08', '16', '19', '21', '31', '32', '06', '2017-04-18');
INSERT INTO `history_ball` VALUES ('335', '2017043', '08', '13', '16', '23', '27', '31', '08', '2017-04-16');
INSERT INTO `history_ball` VALUES ('336', '2017042', '01', '02', '04', '07', '10', '23', '04', '2017-04-13');
INSERT INTO `history_ball` VALUES ('337', '2017041', '04', '10', '13', '15', '22', '27', '04', '2017-04-11');
INSERT INTO `history_ball` VALUES ('338', '2017040', '15', '19', '23', '28', '29', '33', '04', '2017-04-09');
INSERT INTO `history_ball` VALUES ('339', '2017039', '02', '04', '12', '14', '17', '24', '15', '2017-04-06');
INSERT INTO `history_ball` VALUES ('34', '2019037', '01', '07', '12', '14', '18', '25', '10', '2019-04-02');
INSERT INTO `history_ball` VALUES ('340', '2017038', '01', '04', '08', '13', '24', '27', '05', '2017-04-04');
INSERT INTO `history_ball` VALUES ('341', '2017037', '11', '15', '20', '22', '25', '30', '05', '2017-04-02');
INSERT INTO `history_ball` VALUES ('342', '2017036', '01', '02', '05', '10', '24', '27', '15', '2017-03-30');
INSERT INTO `history_ball` VALUES ('343', '2017035', '01', '06', '14', '24', '28', '32', '12', '2017-03-28');
INSERT INTO `history_ball` VALUES ('344', '2017034', '04', '07', '08', '19', '32', '33', '13', '2017-03-26');
INSERT INTO `history_ball` VALUES ('345', '2017033', '05', '07', '15', '20', '23', '30', '15', '2017-03-23');
INSERT INTO `history_ball` VALUES ('346', '2017032', '05', '08', '15', '24', '27', '31', '11', '2017-03-21');
INSERT INTO `history_ball` VALUES ('347', '2017031', '06', '10', '16', '26', '27', '29', '03', '2017-03-19');
INSERT INTO `history_ball` VALUES ('348', '2017030', '01', '07', '09', '20', '23', '30', '02', '2017-03-16');
INSERT INTO `history_ball` VALUES ('349', '2017029', '02', '15', '21', '23', '25', '30', '10', '2017-03-14');
INSERT INTO `history_ball` VALUES ('35', '2019036', '02', '10', '13', '16', '23', '32', '08', '2019-03-31');
INSERT INTO `history_ball` VALUES ('350', '2017028', '07', '08', '12', '13', '22', '30', '09', '2017-03-12');
INSERT INTO `history_ball` VALUES ('351', '2017027', '02', '04', '11', '14', '27', '30', '05', '2017-03-09');
INSERT INTO `history_ball` VALUES ('352', '2017026', '03', '10', '12', '19', '27', '30', '08', '2017-03-07');
INSERT INTO `history_ball` VALUES ('353', '2017025', '02', '15', '16', '17', '22', '32', '07', '2017-03-05');
INSERT INTO `history_ball` VALUES ('354', '2017024', '09', '21', '25', '26', '29', '31', '13', '2017-03-02');
INSERT INTO `history_ball` VALUES ('355', '2017023', '01', '03', '04', '11', '18', '22', '14', '2017-02-28');
INSERT INTO `history_ball` VALUES ('356', '2017022', '02', '06', '15', '16', '18', '32', '15', '2017-02-26');
INSERT INTO `history_ball` VALUES ('357', '2017021', '02', '05', '10', '22', '32', '33', '09', '2017-02-23');
INSERT INTO `history_ball` VALUES ('358', '2017020', '04', '08', '10', '12', '31', '33', '10', '2017-02-21');
INSERT INTO `history_ball` VALUES ('359', '2017019', '04', '06', '08', '12', '23', '25', '08', '2017-02-19');
INSERT INTO `history_ball` VALUES ('36', '2019035', '01', '05', '07', '09', '10', '20', '16', '2019-03-28');
INSERT INTO `history_ball` VALUES ('360', '2017018', '01', '02', '03', '17', '25', '31', '09', '2017-02-16');
INSERT INTO `history_ball` VALUES ('361', '2017017', '03', '07', '08', '10', '22', '23', '12', '2017-02-14');
INSERT INTO `history_ball` VALUES ('362', '2017016', '05', '08', '16', '22', '27', '29', '02', '2017-02-12');
INSERT INTO `history_ball` VALUES ('363', '2017015', '01', '08', '09', '14', '17', '32', '01', '2017-02-09');
INSERT INTO `history_ball` VALUES ('364', '2017014', '06', '08', '18', '20', '23', '31', '13', '2017-02-07');
INSERT INTO `history_ball` VALUES ('365', '2017013', '08', '11', '28', '29', '31', '33', '06', '2017-02-05');
INSERT INTO `history_ball` VALUES ('366', '2017012', '10', '11', '14', '15', '16', '24', '07', '2017-01-26');
INSERT INTO `history_ball` VALUES ('367', '2017011', '10', '11', '12', '23', '26', '29', '16', '2017-01-24');
INSERT INTO `history_ball` VALUES ('368', '2017010', '05', '08', '19', '25', '28', '30', '07', '2017-01-22');
INSERT INTO `history_ball` VALUES ('369', '2017009', '02', '06', '08', '09', '15', '29', '14', '2017-01-19');
INSERT INTO `history_ball` VALUES ('37', '2019034', '09', '11', '15', '22', '24', '26', '03', '2019-03-26');
INSERT INTO `history_ball` VALUES ('370', '2017008', '07', '13', '15', '27', '28', '29', '13', '2017-01-17');
INSERT INTO `history_ball` VALUES ('371', '2017007', '02', '04', '05', '24', '26', '33', '15', '2017-01-15');
INSERT INTO `history_ball` VALUES ('372', '2017006', '02', '04', '08', '26', '29', '33', '08', '2017-01-12');
INSERT INTO `history_ball` VALUES ('373', '2017005', '06', '11', '12', '22', '23', '30', '05', '2017-01-10');
INSERT INTO `history_ball` VALUES ('374', '2017004', '05', '13', '17', '26', '27', '30', '07', '2017-01-08');
INSERT INTO `history_ball` VALUES ('375', '2017003', '01', '04', '08', '15', '27', '32', '16', '2017-01-05');
INSERT INTO `history_ball` VALUES ('376', '2017002', '15', '19', '23', '24', '25', '32', '03', '2017-01-03');
INSERT INTO `history_ball` VALUES ('377', '2017001', '09', '11', '14', '20', '25', '26', '15', '2017-01-01');
INSERT INTO `history_ball` VALUES ('378', '2016153', '07', '09', '16', '24', '25', '29', '06', '2016-12-29');
INSERT INTO `history_ball` VALUES ('379', '2016152', '02', '08', '09', '16', '20', '22', '07', '2016-12-27');
INSERT INTO `history_ball` VALUES ('38', '2019033', '09', '15', '19', '21', '23', '29', '15', '2019-03-24');
INSERT INTO `history_ball` VALUES ('380', '2016151', '06', '11', '16', '20', '22', '33', '07', '2016-12-25');
INSERT INTO `history_ball` VALUES ('381', '2016150', '02', '04', '05', '09', '13', '21', '05', '2016-12-22');
INSERT INTO `history_ball` VALUES ('382', '2016149', '03', '20', '23', '26', '32', '33', '07', '2016-12-20');
INSERT INTO `history_ball` VALUES ('383', '2016148', '01', '02', '11', '20', '26', '30', '14', '2016-12-18');
INSERT INTO `history_ball` VALUES ('384', '2016147', '04', '14', '18', '28', '31', '32', '12', '2016-12-15');
INSERT INTO `history_ball` VALUES ('385', '2016146', '03', '07', '15', '16', '17', '23', '10', '2016-12-13');
INSERT INTO `history_ball` VALUES ('386', '2016145', '01', '03', '07', '12', '19', '20', '06', '2016-12-11');
INSERT INTO `history_ball` VALUES ('387', '2016144', '04', '10', '12', '27', '32', '33', '05', '2016-12-08');
INSERT INTO `history_ball` VALUES ('388', '2016143', '06', '09', '23', '24', '25', '33', '13', '2016-12-06');
INSERT INTO `history_ball` VALUES ('389', '2016142', '01', '10', '17', '21', '23', '30', '12', '2016-12-04');
INSERT INTO `history_ball` VALUES ('39', '2019032', '04', '08', '09', '13', '28', '33', '04', '2019-03-21');
INSERT INTO `history_ball` VALUES ('390', '2016141', '04', '13', '15', '17', '21', '24', '15', '2016-12-01');
INSERT INTO `history_ball` VALUES ('391', '2016140', '01', '02', '05', '17', '26', '32', '10', '2016-11-29');
INSERT INTO `history_ball` VALUES ('392', '2016139', '01', '06', '19', '26', '28', '30', '03', '2016-11-27');
INSERT INTO `history_ball` VALUES ('393', '2016138', '07', '16', '20', '24', '25', '30', '07', '2016-11-24');
INSERT INTO `history_ball` VALUES ('394', '2016137', '01', '06', '09', '10', '15', '32', '14', '2016-11-22');
INSERT INTO `history_ball` VALUES ('395', '2016136', '02', '07', '10', '20', '27', '29', '03', '2016-11-20');
INSERT INTO `history_ball` VALUES ('396', '2016135', '02', '08', '10', '18', '20', '33', '12', '2016-11-17');
INSERT INTO `history_ball` VALUES ('397', '2016134', '11', '12', '13', '14', '18', '33', '13', '2016-11-15');
INSERT INTO `history_ball` VALUES ('398', '2016133', '15', '16', '21', '22', '27', '33', '15', '2016-11-13');
INSERT INTO `history_ball` VALUES ('399', '2016132', '05', '08', '13', '19', '27', '28', '07', '2016-11-10');
INSERT INTO `history_ball` VALUES ('4', '2019067', '04', '06', '08', '11', '30', '33', '11', '2019-06-11');
INSERT INTO `history_ball` VALUES ('40', '2019031', '03', '13', '15', '18', '21', '33', '16', '2019-03-19');
INSERT INTO `history_ball` VALUES ('400', '2016131', '04', '10', '18', '19', '25', '27', '02', '2016-11-08');
INSERT INTO `history_ball` VALUES ('401', '2016130', '03', '17', '21', '23', '27', '28', '01', '2016-11-06');
INSERT INTO `history_ball` VALUES ('402', '2016129', '05', '06', '08', '21', '31', '33', '14', '2016-11-03');
INSERT INTO `history_ball` VALUES ('403', '2016128', '04', '09', '11', '17', '26', '27', '13', '2016-11-01');
INSERT INTO `history_ball` VALUES ('404', '2016127', '07', '12', '17', '26', '29', '31', '16', '2016-10-30');
INSERT INTO `history_ball` VALUES ('405', '2016126', '02', '06', '12', '17', '18', '19', '10', '2016-10-27');
INSERT INTO `history_ball` VALUES ('406', '2016125', '01', '06', '08', '20', '27', '30', '03', '2016-10-25');
INSERT INTO `history_ball` VALUES ('407', '2016124', '09', '15', '21', '24', '27', '32', '10', '2016-10-23');
INSERT INTO `history_ball` VALUES ('408', '2016123', '07', '09', '12', '14', '20', '27', '16', '2016-10-20');
INSERT INTO `history_ball` VALUES ('409', '2016122', '15', '22', '23', '24', '28', '29', '08', '2016-10-18');
INSERT INTO `history_ball` VALUES ('41', '2019030', '04', '05', '07', '10', '12', '22', '16', '2019-03-17');
INSERT INTO `history_ball` VALUES ('410', '2016121', '02', '03', '10', '23', '25', '28', '09', '2016-10-16');
INSERT INTO `history_ball` VALUES ('411', '2016120', '02', '05', '06', '21', '25', '28', '09', '2016-10-13');
INSERT INTO `history_ball` VALUES ('412', '2016119', '09', '19', '21', '30', '31', '32', '04', '2016-10-11');
INSERT INTO `history_ball` VALUES ('413', '2016118', '09', '14', '22', '23', '31', '33', '14', '2016-10-09');
INSERT INTO `history_ball` VALUES ('414', '2016117', '03', '10', '14', '17', '28', '33', '02', '2016-10-06');
INSERT INTO `history_ball` VALUES ('415', '2016116', '07', '18', '20', '23', '27', '31', '13', '2016-10-04');
INSERT INTO `history_ball` VALUES ('416', '2016115', '06', '08', '20', '22', '26', '27', '09', '2016-10-02');
INSERT INTO `history_ball` VALUES ('417', '2016114', '05', '16', '20', '22', '27', '29', '09', '2016-09-29');
INSERT INTO `history_ball` VALUES ('418', '2016113', '01', '11', '16', '17', '20', '26', '14', '2016-09-27');
INSERT INTO `history_ball` VALUES ('419', '2016112', '06', '12', '14', '15', '18', '25', '12', '2016-09-25');
INSERT INTO `history_ball` VALUES ('42', '2019029', '08', '11', '17', '23', '32', '33', '10', '2019-03-14');
INSERT INTO `history_ball` VALUES ('420', '2016111', '02', '04', '07', '14', '15', '32', '04', '2016-09-22');
INSERT INTO `history_ball` VALUES ('421', '2016110', '05', '07', '28', '31', '32', '33', '08', '2016-09-20');
INSERT INTO `history_ball` VALUES ('422', '2016109', '09', '11', '15', '16', '27', '33', '05', '2016-09-18');
INSERT INTO `history_ball` VALUES ('423', '2016108', '02', '03', '07', '08', '19', '26', '16', '2016-09-15');
INSERT INTO `history_ball` VALUES ('424', '2016107', '06', '11', '18', '26', '27', '32', '01', '2016-09-13');
INSERT INTO `history_ball` VALUES ('425', '2016106', '04', '05', '13', '22', '25', '30', '04', '2016-09-11');
INSERT INTO `history_ball` VALUES ('426', '2016105', '08', '10', '19', '27', '28', '31', '16', '2016-09-08');
INSERT INTO `history_ball` VALUES ('427', '2016104', '05', '09', '11', '18', '30', '31', '04', '2016-09-06');
INSERT INTO `history_ball` VALUES ('428', '2016103', '01', '05', '13', '19', '24', '27', '11', '2016-09-04');
INSERT INTO `history_ball` VALUES ('429', '2016102', '05', '08', '10', '14', '17', '30', '13', '2016-09-01');
INSERT INTO `history_ball` VALUES ('43', '2019028', '04', '19', '22', '26', '29', '30', '11', '2019-03-12');
INSERT INTO `history_ball` VALUES ('430', '2016101', '01', '03', '19', '24', '32', '33', '01', '2016-08-30');
INSERT INTO `history_ball` VALUES ('431', '2016100', '03', '10', '22', '23', '27', '29', '04', '2016-08-28');
INSERT INTO `history_ball` VALUES ('432', '2016099', '01', '11', '21', '23', '27', '33', '06', '2016-08-25');
INSERT INTO `history_ball` VALUES ('433', '2016098', '02', '08', '25', '29', '31', '32', '06', '2016-08-23');
INSERT INTO `history_ball` VALUES ('434', '2016097', '06', '13', '25', '26', '28', '31', '01', '2016-08-21');
INSERT INTO `history_ball` VALUES ('435', '2016096', '06', '13', '14', '21', '22', '24', '16', '2016-08-18');
INSERT INTO `history_ball` VALUES ('436', '2016095', '01', '05', '09', '12', '18', '32', '12', '2016-08-16');
INSERT INTO `history_ball` VALUES ('437', '2016094', '06', '07', '10', '12', '18', '31', '10', '2016-08-14');
INSERT INTO `history_ball` VALUES ('438', '2016093', '06', '09', '15', '17', '25', '27', '09', '2016-08-11');
INSERT INTO `history_ball` VALUES ('439', '2016092', '02', '13', '15', '23', '24', '29', '06', '2016-08-09');
INSERT INTO `history_ball` VALUES ('44', '2019027', '02', '06', '08', '10', '11', '17', '13', '2019-03-10');
INSERT INTO `history_ball` VALUES ('440', '2016091', '04', '08', '14', '22', '23', '28', '07', '2016-08-07');
INSERT INTO `history_ball` VALUES ('441', '2016090', '02', '13', '17', '20', '21', '26', '07', '2016-08-04');
INSERT INTO `history_ball` VALUES ('442', '2016089', '01', '03', '14', '30', '31', '32', '08', '2016-08-02');
INSERT INTO `history_ball` VALUES ('443', '2016088', '03', '14', '16', '18', '25', '33', '15', '2016-07-31');
INSERT INTO `history_ball` VALUES ('444', '2016087', '02', '03', '10', '11', '14', '21', '12', '2016-07-28');
INSERT INTO `history_ball` VALUES ('445', '2016086', '09', '10', '11', '12', '15', '32', '05', '2016-07-26');
INSERT INTO `history_ball` VALUES ('446', '2016085', '01', '12', '19', '20', '21', '25', '16', '2016-07-24');
INSERT INTO `history_ball` VALUES ('447', '2016084', '02', '04', '12', '18', '24', '26', '05', '2016-07-21');
INSERT INTO `history_ball` VALUES ('448', '2016083', '09', '16', '17', '24', '30', '31', '04', '2016-07-19');
INSERT INTO `history_ball` VALUES ('449', '2016082', '06', '12', '14', '15', '17', '20', '09', '2016-07-17');
INSERT INTO `history_ball` VALUES ('45', '2019026', '03', '13', '15', '19', '20', '27', '14', '2019-03-07');
INSERT INTO `history_ball` VALUES ('450', '2016081', '02', '06', '15', '25', '30', '32', '07', '2016-07-14');
INSERT INTO `history_ball` VALUES ('451', '2016080', '01', '16', '17', '24', '25', '32', '14', '2016-07-12');
INSERT INTO `history_ball` VALUES ('452', '2016079', '01', '03', '10', '12', '24', '28', '02', '2016-07-10');
INSERT INTO `history_ball` VALUES ('453', '2016078', '02', '04', '08', '23', '26', '29', '02', '2016-07-07');
INSERT INTO `history_ball` VALUES ('454', '2016077', '01', '09', '17', '19', '20', '29', '10', '2016-07-05');
INSERT INTO `history_ball` VALUES ('455', '2016076', '07', '08', '13', '22', '30', '32', '01', '2016-07-03');
INSERT INTO `history_ball` VALUES ('456', '2016075', '01', '03', '06', '16', '29', '32', '07', '2016-06-30');
INSERT INTO `history_ball` VALUES ('457', '2016074', '06', '10', '11', '12', '20', '25', '12', '2016-06-28');
INSERT INTO `history_ball` VALUES ('458', '2016073', '09', '11', '12', '15', '16', '20', '13', '2016-06-26');
INSERT INTO `history_ball` VALUES ('459', '2016072', '05', '16', '19', '22', '24', '25', '02', '2016-06-23');
INSERT INTO `history_ball` VALUES ('46', '2019025', '15', '16', '21', '27', '30', '33', '04', '2019-03-05');
INSERT INTO `history_ball` VALUES ('460', '2016071', '19', '21', '26', '28', '29', '32', '01', '2016-06-21');
INSERT INTO `history_ball` VALUES ('461', '2016070', '03', '06', '11', '18', '23', '29', '01', '2016-06-19');
INSERT INTO `history_ball` VALUES ('462', '2016069', '08', '10', '11', '20', '21', '27', '11', '2016-06-16');
INSERT INTO `history_ball` VALUES ('463', '2016068', '08', '19', '23', '28', '31', '32', '01', '2016-06-14');
INSERT INTO `history_ball` VALUES ('464', '2016067', '09', '13', '18', '20', '27', '31', '04', '2016-06-12');
INSERT INTO `history_ball` VALUES ('465', '2016066', '03', '07', '13', '18', '19', '20', '05', '2016-06-09');
INSERT INTO `history_ball` VALUES ('466', '2016065', '13', '16', '22', '25', '26', '27', '14', '2016-06-07');
INSERT INTO `history_ball` VALUES ('467', '2016064', '03', '12', '14', '17', '19', '26', '03', '2016-06-05');
INSERT INTO `history_ball` VALUES ('468', '2016063', '16', '17', '18', '23', '28', '32', '07', '2016-06-02');
INSERT INTO `history_ball` VALUES ('469', '2016062', '12', '13', '15', '18', '19', '21', '09', '2016-05-31');
INSERT INTO `history_ball` VALUES ('47', '2019024', '01', '08', '23', '25', '28', '29', '10', '2019-03-03');
INSERT INTO `history_ball` VALUES ('470', '2016061', '05', '06', '08', '18', '20', '32', '08', '2016-05-29');
INSERT INTO `history_ball` VALUES ('471', '2016060', '04', '05', '22', '26', '29', '32', '08', '2016-05-26');
INSERT INTO `history_ball` VALUES ('472', '2016059', '04', '11', '12', '20', '25', '28', '15', '2016-05-24');
INSERT INTO `history_ball` VALUES ('473', '2016058', '03', '05', '18', '20', '24', '32', '11', '2016-05-22');
INSERT INTO `history_ball` VALUES ('474', '2016057', '07', '12', '19', '22', '23', '26', '11', '2016-05-19');
INSERT INTO `history_ball` VALUES ('475', '2016056', '03', '04', '08', '11', '16', '18', '14', '2016-05-17');
INSERT INTO `history_ball` VALUES ('476', '2016055', '05', '06', '10', '16', '22', '26', '11', '2016-05-15');
INSERT INTO `history_ball` VALUES ('477', '2016054', '06', '11', '16', '19', '28', '32', '04', '2016-05-12');
INSERT INTO `history_ball` VALUES ('478', '2016053', '02', '08', '10', '12', '29', '31', '01', '2016-05-10');
INSERT INTO `history_ball` VALUES ('479', '2016052', '01', '06', '13', '19', '24', '28', '16', '2016-05-08');
INSERT INTO `history_ball` VALUES ('48', '2019023', '01', '10', '14', '15', '18', '31', '13', '2019-02-28');
INSERT INTO `history_ball` VALUES ('480', '2016051', '01', '02', '04', '09', '15', '33', '12', '2016-05-05');
INSERT INTO `history_ball` VALUES ('481', '2016050', '09', '12', '24', '28', '29', '30', '02', '2016-05-03');
INSERT INTO `history_ball` VALUES ('482', '2016049', '06', '08', '13', '14', '22', '27', '10', '2016-05-01');
INSERT INTO `history_ball` VALUES ('483', '2016048', '03', '08', '13', '14', '15', '30', '04', '2016-04-28');
INSERT INTO `history_ball` VALUES ('484', '2016047', '02', '05', '08', '15', '17', '22', '16', '2016-04-26');
INSERT INTO `history_ball` VALUES ('485', '2016046', '07', '20', '25', '26', '27', '30', '14', '2016-04-24');
INSERT INTO `history_ball` VALUES ('486', '2016045', '04', '09', '12', '17', '30', '32', '03', '2016-04-21');
INSERT INTO `history_ball` VALUES ('487', '2016044', '01', '03', '10', '12', '18', '30', '01', '2016-04-19');
INSERT INTO `history_ball` VALUES ('488', '2016043', '05', '14', '20', '26', '30', '33', '12', '2016-04-17');
INSERT INTO `history_ball` VALUES ('489', '2016042', '07', '14', '17', '23', '26', '31', '09', '2016-04-14');
INSERT INTO `history_ball` VALUES ('49', '2019022', '03', '07', '11', '21', '30', '33', '07', '2019-02-26');
INSERT INTO `history_ball` VALUES ('490', '2016041', '12', '17', '18', '21', '22', '24', '04', '2016-04-12');
INSERT INTO `history_ball` VALUES ('491', '2016040', '03', '13', '19', '20', '23', '26', '03', '2016-04-10');
INSERT INTO `history_ball` VALUES ('492', '2016039', '01', '03', '07', '18', '19', '27', '16', '2016-04-07');
INSERT INTO `history_ball` VALUES ('493', '2016038', '03', '12', '13', '22', '28', '29', '03', '2016-04-05');
INSERT INTO `history_ball` VALUES ('494', '2016037', '06', '15', '26', '31', '32', '33', '16', '2016-04-03');
INSERT INTO `history_ball` VALUES ('495', '2016036', '03', '04', '07', '09', '20', '22', '03', '2016-03-31');
INSERT INTO `history_ball` VALUES ('496', '2016035', '04', '13', '19', '20', '26', '29', '11', '2016-03-29');
INSERT INTO `history_ball` VALUES ('497', '2016034', '03', '15', '21', '22', '23', '28', '15', '2016-03-27');
INSERT INTO `history_ball` VALUES ('498', '2016033', '06', '17', '18', '20', '27', '29', '15', '2016-03-24');
INSERT INTO `history_ball` VALUES ('499', '2016032', '08', '12', '14', '15', '21', '27', '15', '2016-03-22');
INSERT INTO `history_ball` VALUES ('5', '2019066', '01', '14', '17', '20', '22', '32', '04', '2019-06-09');
INSERT INTO `history_ball` VALUES ('50', '2019021', '02', '05', '07', '08', '20', '27', '04', '2019-02-24');
INSERT INTO `history_ball` VALUES ('500', '2016031', '03', '08', '10', '19', '26', '33', '03', '2016-03-20');
INSERT INTO `history_ball` VALUES ('501', '2016030', '10', '14', '19', '22', '25', '29', '12', '2016-03-17');
INSERT INTO `history_ball` VALUES ('502', '2016029', '12', '15', '18', '20', '21', '27', '15', '2016-03-15');
INSERT INTO `history_ball` VALUES ('503', '2016028', '06', '08', '12', '21', '25', '29', '01', '2016-03-13');
INSERT INTO `history_ball` VALUES ('504', '2016027', '11', '13', '15', '17', '19', '31', '05', '2016-03-10');
INSERT INTO `history_ball` VALUES ('505', '2016026', '04', '09', '12', '28', '30', '33', '01', '2016-03-08');
INSERT INTO `history_ball` VALUES ('506', '2016025', '04', '11', '12', '17', '24', '30', '12', '2016-03-06');
INSERT INTO `history_ball` VALUES ('507', '2016024', '02', '05', '07', '14', '18', '31', '13', '2016-03-03');
INSERT INTO `history_ball` VALUES ('508', '2016023', '03', '06', '10', '19', '25', '29', '07', '2016-03-01');
INSERT INTO `history_ball` VALUES ('509', '2016022', '04', '09', '19', '22', '23', '30', '07', '2016-02-28');
INSERT INTO `history_ball` VALUES ('51', '2019020', '02', '12', '13', '23', '27', '28', '12', '2019-02-21');
INSERT INTO `history_ball` VALUES ('510', '2016021', '09', '11', '13', '22', '24', '26', '05', '2016-02-25');
INSERT INTO `history_ball` VALUES ('511', '2016020', '01', '02', '10', '12', '22', '24', '10', '2016-02-23');
INSERT INTO `history_ball` VALUES ('512', '2016019', '06', '13', '16', '17', '23', '30', '10', '2016-02-21');
INSERT INTO `history_ball` VALUES ('513', '2016018', '12', '13', '14', '17', '21', '25', '04', '2016-02-18');
INSERT INTO `history_ball` VALUES ('514', '2016017', '05', '06', '08', '20', '22', '30', '05', '2016-02-16');
INSERT INTO `history_ball` VALUES ('515', '2016016', '01', '20', '22', '24', '25', '26', '16', '2016-02-14');
INSERT INTO `history_ball` VALUES ('516', '2016015', '01', '02', '14', '22', '25', '26', '07', '2016-02-04');
INSERT INTO `history_ball` VALUES ('517', '2016014', '02', '08', '10', '18', '20', '27', '07', '2016-02-02');
INSERT INTO `history_ball` VALUES ('518', '2016013', '07', '12', '21', '22', '26', '31', '01', '2016-01-31');
INSERT INTO `history_ball` VALUES ('519', '2016012', '07', '12', '14', '16', '27', '32', '15', '2016-01-28');
INSERT INTO `history_ball` VALUES ('52', '2019019', '03', '11', '17', '18', '24', '25', '06', '2019-02-19');
INSERT INTO `history_ball` VALUES ('520', '2016011', '03', '08', '10', '15', '22', '29', '12', '2016-01-26');
INSERT INTO `history_ball` VALUES ('521', '2016010', '02', '04', '12', '14', '19', '25', '06', '2016-01-24');
INSERT INTO `history_ball` VALUES ('522', '2016009', '10', '14', '24', '25', '27', '32', '04', '2016-01-21');
INSERT INTO `history_ball` VALUES ('523', '2016008', '02', '15', '24', '29', '32', '33', '02', '2016-01-19');
INSERT INTO `history_ball` VALUES ('524', '2016007', '05', '12', '14', '20', '27', '29', '06', '2016-01-17');
INSERT INTO `history_ball` VALUES ('525', '2016006', '13', '16', '18', '20', '28', '31', '12', '2016-01-14');
INSERT INTO `history_ball` VALUES ('526', '2016005', '11', '14', '18', '20', '31', '33', '14', '2016-01-12');
INSERT INTO `history_ball` VALUES ('527', '2016004', '08', '10', '17', '22', '25', '33', '12', '2016-01-10');
INSERT INTO `history_ball` VALUES ('528', '2016003', '01', '10', '14', '23', '26', '28', '01', '2016-01-07');
INSERT INTO `history_ball` VALUES ('529', '2016002', '09', '14', '17', '20', '24', '30', '16', '2016-01-05');
INSERT INTO `history_ball` VALUES ('53', '2019018', '04', '11', '18', '19', '26', '32', '04', '2019-02-17');
INSERT INTO `history_ball` VALUES ('530', '2016001', '06', '13', '16', '18', '20', '22', '13', '2016-01-03');
INSERT INTO `history_ball` VALUES ('531', '2015154', '07', '09', '11', '15', '18', '25', '07', '2015-12-31');
INSERT INTO `history_ball` VALUES ('532', '2015153', '08', '11', '15', '22', '27', '29', '03', '2015-12-29');
INSERT INTO `history_ball` VALUES ('533', '2015152', '11', '18', '19', '21', '29', '32', '12', '2015-12-27');
INSERT INTO `history_ball` VALUES ('534', '2015151', '05', '06', '08', '23', '31', '32', '11', '2015-12-24');
INSERT INTO `history_ball` VALUES ('535', '2015150', '01', '03', '08', '11', '29', '31', '13', '2015-12-22');
INSERT INTO `history_ball` VALUES ('536', '2015149', '09', '10', '20', '21', '22', '33', '09', '2015-12-20');
INSERT INTO `history_ball` VALUES ('537', '2015148', '09', '13', '14', '22', '26', '27', '07', '2015-12-17');
INSERT INTO `history_ball` VALUES ('538', '2015147', '08', '09', '16', '23', '24', '30', '05', '2015-12-15');
INSERT INTO `history_ball` VALUES ('539', '2015146', '16', '17', '21', '28', '30', '32', '15', '2015-12-13');
INSERT INTO `history_ball` VALUES ('54', '2019017', '04', '05', '24', '28', '30', '33', '09', '2019-02-14');
INSERT INTO `history_ball` VALUES ('540', '2015145', '07', '08', '15', '19', '20', '24', '13', '2015-12-10');
INSERT INTO `history_ball` VALUES ('541', '2015144', '01', '04', '07', '15', '28', '32', '16', '2015-12-08');
INSERT INTO `history_ball` VALUES ('542', '2015143', '13', '15', '19', '20', '21', '32', '04', '2015-12-06');
INSERT INTO `history_ball` VALUES ('543', '2015142', '13', '17', '19', '20', '22', '25', '11', '2015-12-03');
INSERT INTO `history_ball` VALUES ('544', '2015141', '03', '08', '19', '25', '27', '28', '02', '2015-12-01');
INSERT INTO `history_ball` VALUES ('545', '2015140', '06', '20', '28', '29', '30', '31', '12', '2015-11-29');
INSERT INTO `history_ball` VALUES ('546', '2015139', '01', '10', '13', '18', '25', '27', '09', '2015-11-26');
INSERT INTO `history_ball` VALUES ('547', '2015138', '01', '02', '08', '16', '19', '24', '11', '2015-11-24');
INSERT INTO `history_ball` VALUES ('548', '2015137', '14', '22', '23', '27', '28', '31', '12', '2015-11-22');
INSERT INTO `history_ball` VALUES ('549', '2015136', '02', '05', '12', '23', '28', '29', '01', '2015-11-19');
INSERT INTO `history_ball` VALUES ('55', '2019016', '05', '07', '09', '11', '19', '25', '05', '2019-02-12');
INSERT INTO `history_ball` VALUES ('550', '2015135', '01', '12', '14', '18', '26', '32', '07', '2015-11-17');
INSERT INTO `history_ball` VALUES ('551', '2015134', '02', '05', '14', '19', '27', '31', '04', '2015-11-15');
INSERT INTO `history_ball` VALUES ('552', '2015133', '02', '03', '13', '20', '22', '24', '15', '2015-11-12');
INSERT INTO `history_ball` VALUES ('553', '2015132', '03', '05', '11', '28', '30', '33', '01', '2015-11-10');
INSERT INTO `history_ball` VALUES ('554', '2015131', '10', '12', '13', '19', '22', '26', '03', '2015-11-08');
INSERT INTO `history_ball` VALUES ('555', '2015130', '06', '14', '15', '16', '17', '22', '10', '2015-11-05');
INSERT INTO `history_ball` VALUES ('556', '2015129', '05', '08', '11', '16', '18', '27', '04', '2015-11-03');
INSERT INTO `history_ball` VALUES ('557', '2015128', '01', '03', '08', '11', '22', '28', '06', '2015-11-01');
INSERT INTO `history_ball` VALUES ('558', '2015127', '07', '10', '19', '22', '27', '33', '06', '2015-10-29');
INSERT INTO `history_ball` VALUES ('559', '2015126', '10', '11', '15', '20', '23', '29', '12', '2015-10-27');
INSERT INTO `history_ball` VALUES ('56', '2019015', '11', '15', '16', '20', '24', '31', '04', '2019-02-03');
INSERT INTO `history_ball` VALUES ('560', '2015125', '05', '13', '22', '27', '30', '33', '10', '2015-10-25');
INSERT INTO `history_ball` VALUES ('561', '2015124', '02', '03', '05', '12', '18', '27', '01', '2015-10-22');
INSERT INTO `history_ball` VALUES ('562', '2015123', '05', '08', '09', '12', '22', '28', '07', '2015-10-20');
INSERT INTO `history_ball` VALUES ('563', '2015122', '05', '07', '11', '16', '22', '25', '07', '2015-10-18');
INSERT INTO `history_ball` VALUES ('564', '2015121', '01', '03', '20', '21', '28', '29', '12', '2015-10-15');
INSERT INTO `history_ball` VALUES ('565', '2015120', '16', '21', '24', '26', '27', '29', '16', '2015-10-13');
INSERT INTO `history_ball` VALUES ('566', '2015119', '02', '08', '10', '18', '23', '31', '08', '2015-10-11');
INSERT INTO `history_ball` VALUES ('567', '2015118', '01', '04', '11', '21', '23', '31', '12', '2015-10-08');
INSERT INTO `history_ball` VALUES ('568', '2015117', '04', '11', '12', '18', '26', '32', '12', '2015-10-06');
INSERT INTO `history_ball` VALUES ('569', '2015116', '04', '06', '15', '23', '26', '28', '11', '2015-10-04');
INSERT INTO `history_ball` VALUES ('57', '2019014', '01', '02', '03', '14', '19', '33', '03', '2019-01-31');
INSERT INTO `history_ball` VALUES ('570', '2015115', '01', '07', '08', '14', '24', '32', '03', '2015-10-01');
INSERT INTO `history_ball` VALUES ('571', '2015114', '04', '07', '09', '13', '21', '26', '01', '2015-09-29');
INSERT INTO `history_ball` VALUES ('572', '2015113', '01', '05', '07', '08', '19', '27', '12', '2015-09-27');
INSERT INTO `history_ball` VALUES ('573', '2015112', '01', '03', '10', '19', '20', '27', '11', '2015-09-24');
INSERT INTO `history_ball` VALUES ('574', '2015111', '08', '14', '16', '18', '20', '30', '12', '2015-09-22');
INSERT INTO `history_ball` VALUES ('575', '2015110', '05', '07', '16', '17', '22', '23', '04', '2015-09-20');
INSERT INTO `history_ball` VALUES ('576', '2015109', '01', '08', '09', '16', '32', '33', '13', '2015-09-17');
INSERT INTO `history_ball` VALUES ('577', '2015108', '02', '12', '19', '22', '24', '27', '15', '2015-09-15');
INSERT INTO `history_ball` VALUES ('578', '2015107', '07', '14', '16', '18', '21', '25', '08', '2015-09-13');
INSERT INTO `history_ball` VALUES ('579', '2015106', '01', '03', '04', '23', '31', '32', '13', '2015-09-10');
INSERT INTO `history_ball` VALUES ('58', '2019013', '05', '07', '14', '16', '18', '21', '01', '2019-01-29');
INSERT INTO `history_ball` VALUES ('580', '2015105', '09', '10', '16', '19', '20', '26', '12', '2015-09-08');
INSERT INTO `history_ball` VALUES ('581', '2015104', '09', '18', '21', '23', '25', '26', '01', '2015-09-06');
INSERT INTO `history_ball` VALUES ('582', '2015103', '06', '08', '13', '26', '30', '32', '14', '2015-09-03');
INSERT INTO `history_ball` VALUES ('583', '2015102', '07', '09', '12', '14', '21', '23', '06', '2015-09-01');
INSERT INTO `history_ball` VALUES ('584', '2015101', '08', '16', '22', '24', '28', '29', '05', '2015-08-30');
INSERT INTO `history_ball` VALUES ('585', '2015100', '02', '03', '11', '17', '19', '21', '08', '2015-08-27');
INSERT INTO `history_ball` VALUES ('586', '2015099', '06', '07', '10', '11', '14', '22', '09', '2015-08-25');
INSERT INTO `history_ball` VALUES ('587', '2015098', '06', '09', '13', '26', '27', '33', '01', '2015-08-23');
INSERT INTO `history_ball` VALUES ('588', '2015097', '09', '12', '14', '20', '26', '27', '04', '2015-08-20');
INSERT INTO `history_ball` VALUES ('589', '2015096', '06', '16', '17', '23', '24', '31', '07', '2015-08-18');
INSERT INTO `history_ball` VALUES ('59', '2019012', '07', '10', '21', '23', '31', '33', '14', '2019-01-27');
INSERT INTO `history_ball` VALUES ('590', '2015095', '04', '15', '21', '28', '30', '31', '04', '2015-08-16');
INSERT INTO `history_ball` VALUES ('591', '2015094', '01', '04', '06', '13', '16', '17', '10', '2015-08-13');
INSERT INTO `history_ball` VALUES ('592', '2015093', '01', '03', '13', '21', '25', '31', '08', '2015-08-11');
INSERT INTO `history_ball` VALUES ('593', '2015092', '09', '15', '19', '21', '26', '27', '01', '2015-08-09');
INSERT INTO `history_ball` VALUES ('594', '2015091', '05', '07', '17', '19', '22', '31', '11', '2015-08-06');
INSERT INTO `history_ball` VALUES ('595', '2015090', '10', '12', '14', '22', '25', '33', '15', '2015-08-04');
INSERT INTO `history_ball` VALUES ('596', '2015089', '12', '14', '19', '27', '28', '29', '01', '2015-08-02');
INSERT INTO `history_ball` VALUES ('597', '2015088', '02', '12', '20', '24', '29', '31', '09', '2015-07-30');
INSERT INTO `history_ball` VALUES ('598', '2015087', '09', '15', '16', '19', '20', '28', '11', '2015-07-28');
INSERT INTO `history_ball` VALUES ('599', '2015086', '05', '06', '08', '16', '18', '22', '12', '2015-07-26');
INSERT INTO `history_ball` VALUES ('6', '2019065', '06', '09', '11', '15', '20', '26', '10', '2019-06-06');
INSERT INTO `history_ball` VALUES ('60', '2019011', '10', '13', '19', '21', '24', '30', '07', '2019-01-24');
INSERT INTO `history_ball` VALUES ('600', '2015085', '02', '08', '25', '27', '28', '29', '05', '2015-07-23');
INSERT INTO `history_ball` VALUES ('601', '2015084', '15', '18', '20', '22', '28', '29', '15', '2015-07-21');
INSERT INTO `history_ball` VALUES ('602', '2015083', '06', '07', '16', '18', '29', '32', '05', '2015-07-19');
INSERT INTO `history_ball` VALUES ('603', '2015082', '02', '08', '09', '14', '28', '30', '07', '2015-07-16');
INSERT INTO `history_ball` VALUES ('604', '2015081', '13', '20', '22', '26', '28', '31', '13', '2015-07-14');
INSERT INTO `history_ball` VALUES ('605', '2015080', '14', '17', '25', '27', '28', '30', '02', '2015-07-12');
INSERT INTO `history_ball` VALUES ('606', '2015079', '09', '14', '15', '20', '26', '32', '11', '2015-07-09');
INSERT INTO `history_ball` VALUES ('607', '2015078', '03', '07', '20', '22', '26', '29', '02', '2015-07-07');
INSERT INTO `history_ball` VALUES ('608', '2015077', '01', '06', '08', '10', '13', '27', '16', '2015-07-05');
INSERT INTO `history_ball` VALUES ('609', '2015076', '01', '09', '10', '19', '23', '27', '09', '2015-07-02');
INSERT INTO `history_ball` VALUES ('61', '2019010', '02', '04', '05', '08', '11', '30', '02', '2019-01-22');
INSERT INTO `history_ball` VALUES ('610', '2015075', '06', '11', '13', '19', '21', '32', '04', '2015-06-30');
INSERT INTO `history_ball` VALUES ('611', '2015074', '04', '07', '21', '25', '26', '29', '08', '2015-06-28');
INSERT INTO `history_ball` VALUES ('612', '2015073', '01', '02', '17', '22', '26', '27', '04', '2015-06-25');
INSERT INTO `history_ball` VALUES ('613', '2015072', '01', '03', '05', '20', '21', '31', '05', '2015-06-23');
INSERT INTO `history_ball` VALUES ('614', '2015071', '08', '18', '20', '28', '29', '31', '08', '2015-06-21');
INSERT INTO `history_ball` VALUES ('615', '2015070', '01', '07', '13', '19', '21', '29', '15', '2015-06-18');
INSERT INTO `history_ball` VALUES ('616', '2015069', '01', '13', '17', '18', '23', '30', '15', '2015-06-16');
INSERT INTO `history_ball` VALUES ('617', '2015068', '06', '15', '18', '21', '26', '27', '10', '2015-06-14');
INSERT INTO `history_ball` VALUES ('618', '2015067', '02', '05', '08', '24', '25', '31', '14', '2015-06-11');
INSERT INTO `history_ball` VALUES ('619', '2015066', '05', '08', '11', '17', '24', '28', '16', '2015-06-09');
INSERT INTO `history_ball` VALUES ('62', '2019009', '01', '07', '10', '22', '31', '32', '15', '2019-01-20');
INSERT INTO `history_ball` VALUES ('620', '2015065', '08', '10', '14', '19', '26', '29', '12', '2015-06-07');
INSERT INTO `history_ball` VALUES ('621', '2015064', '11', '12', '14', '17', '23', '27', '01', '2015-06-04');
INSERT INTO `history_ball` VALUES ('622', '2015063', '01', '07', '09', '16', '22', '32', '12', '2015-06-02');
INSERT INTO `history_ball` VALUES ('623', '2015062', '09', '14', '15', '18', '21', '26', '16', '2015-05-31');
INSERT INTO `history_ball` VALUES ('624', '2015061', '06', '18', '22', '26', '32', '33', '04', '2015-05-28');
INSERT INTO `history_ball` VALUES ('625', '2015060', '01', '03', '18', '27', '31', '32', '13', '2015-05-26');
INSERT INTO `history_ball` VALUES ('626', '2015059', '02', '06', '09', '16', '25', '32', '14', '2015-05-24');
INSERT INTO `history_ball` VALUES ('627', '2015058', '02', '09', '10', '18', '19', '20', '15', '2015-05-21');
INSERT INTO `history_ball` VALUES ('628', '2015057', '09', '20', '24', '25', '26', '32', '04', '2015-05-19');
INSERT INTO `history_ball` VALUES ('629', '2015056', '01', '07', '08', '16', '18', '20', '14', '2015-05-17');
INSERT INTO `history_ball` VALUES ('63', '2019008', '02', '06', '09', '13', '28', '32', '12', '2019-01-17');
INSERT INTO `history_ball` VALUES ('630', '2015055', '01', '10', '15', '18', '19', '28', '02', '2015-05-14');
INSERT INTO `history_ball` VALUES ('631', '2015054', '01', '02', '07', '10', '22', '26', '07', '2015-05-12');
INSERT INTO `history_ball` VALUES ('632', '2015053', '03', '07', '17', '22', '32', '33', '10', '2015-05-10');
INSERT INTO `history_ball` VALUES ('633', '2015052', '02', '04', '11', '16', '25', '26', '12', '2015-05-07');
INSERT INTO `history_ball` VALUES ('634', '2015051', '04', '10', '24', '26', '28', '32', '09', '2015-05-05');
INSERT INTO `history_ball` VALUES ('635', '2015050', '03', '09', '12', '16', '17', '31', '04', '2015-05-03');
INSERT INTO `history_ball` VALUES ('636', '2015049', '07', '12', '14', '17', '20', '23', '05', '2015-04-30');
INSERT INTO `history_ball` VALUES ('637', '2015048', '13', '16', '17', '22', '25', '27', '10', '2015-04-28');
INSERT INTO `history_ball` VALUES ('638', '2015047', '02', '03', '20', '24', '26', '27', '09', '2015-04-26');
INSERT INTO `history_ball` VALUES ('639', '2015046', '05', '07', '10', '14', '23', '31', '01', '2015-04-23');
INSERT INTO `history_ball` VALUES ('64', '2019007', '06', '10', '14', '15', '19', '23', '15', '2019-01-15');
INSERT INTO `history_ball` VALUES ('640', '2015045', '01', '05', '13', '22', '30', '31', '07', '2015-04-21');
INSERT INTO `history_ball` VALUES ('641', '2015044', '02', '03', '04', '13', '14', '16', '02', '2015-04-19');
INSERT INTO `history_ball` VALUES ('642', '2015043', '11', '12', '15', '24', '26', '27', '15', '2015-04-16');
INSERT INTO `history_ball` VALUES ('643', '2015042', '09', '10', '19', '21', '23', '32', '08', '2015-04-14');
INSERT INTO `history_ball` VALUES ('644', '2015041', '04', '09', '11', '17', '21', '25', '06', '2015-04-12');
INSERT INTO `history_ball` VALUES ('645', '2015040', '13', '16', '18', '27', '30', '32', '16', '2015-04-09');
INSERT INTO `history_ball` VALUES ('646', '2015039', '01', '13', '15', '26', '29', '30', '12', '2015-04-07');
INSERT INTO `history_ball` VALUES ('647', '2015038', '05', '06', '11', '12', '14', '33', '14', '2015-04-05');
INSERT INTO `history_ball` VALUES ('648', '2015037', '05', '07', '12', '18', '28', '31', '03', '2015-04-02');
INSERT INTO `history_ball` VALUES ('649', '2015036', '04', '06', '16', '17', '26', '33', '03', '2015-03-31');
INSERT INTO `history_ball` VALUES ('65', '2019006', '01', '05', '10', '19', '26', '28', '12', '2019-01-13');
INSERT INTO `history_ball` VALUES ('650', '2015035', '01', '08', '09', '22', '24', '33', '03', '2015-03-29');
INSERT INTO `history_ball` VALUES ('651', '2015034', '12', '13', '17', '18', '20', '27', '13', '2015-03-26');
INSERT INTO `history_ball` VALUES ('652', '2015033', '03', '06', '21', '29', '31', '32', '05', '2015-03-24');
INSERT INTO `history_ball` VALUES ('653', '2015032', '11', '14', '16', '18', '29', '32', '16', '2015-03-22');
INSERT INTO `history_ball` VALUES ('654', '2015031', '01', '05', '07', '22', '26', '32', '11', '2015-03-19');
INSERT INTO `history_ball` VALUES ('655', '2015030', '08', '11', '14', '15', '16', '26', '07', '2015-03-17');
INSERT INTO `history_ball` VALUES ('656', '2015029', '07', '14', '15', '19', '21', '28', '07', '2015-03-15');
INSERT INTO `history_ball` VALUES ('657', '2015028', '04', '07', '10', '26', '27', '28', '14', '2015-03-12');
INSERT INTO `history_ball` VALUES ('658', '2015027', '05', '07', '09', '16', '26', '29', '07', '2015-03-10');
INSERT INTO `history_ball` VALUES ('659', '2015026', '02', '13', '17', '21', '22', '33', '13', '2015-03-08');
INSERT INTO `history_ball` VALUES ('66', '2019005', '21', '22', '26', '28', '31', '32', '07', '2019-01-10');
INSERT INTO `history_ball` VALUES ('660', '2015025', '10', '11', '12', '15', '27', '32', '14', '2015-03-05');
INSERT INTO `history_ball` VALUES ('661', '2015024', '09', '11', '16', '18', '23', '24', '10', '2015-03-03');
INSERT INTO `history_ball` VALUES ('662', '2015023', '08', '09', '10', '13', '29', '30', '01', '2015-03-01');
INSERT INTO `history_ball` VALUES ('663', '2015022', '04', '07', '10', '16', '23', '25', '10', '2015-02-26');
INSERT INTO `history_ball` VALUES ('664', '2015021', '14', '15', '16', '17', '27', '28', '08', '2015-02-17');
INSERT INTO `history_ball` VALUES ('665', '2015020', '01', '04', '07', '19', '22', '23', '04', '2015-02-15');
INSERT INTO `history_ball` VALUES ('666', '2015019', '02', '06', '11', '19', '25', '26', '04', '2015-02-12');
INSERT INTO `history_ball` VALUES ('667', '2015018', '06', '09', '12', '14', '28', '29', '09', '2015-02-10');
INSERT INTO `history_ball` VALUES ('668', '2015017', '13', '18', '20', '25', '27', '33', '12', '2015-02-08');
INSERT INTO `history_ball` VALUES ('669', '2015016', '02', '06', '10', '15', '17', '31', '13', '2015-02-05');
INSERT INTO `history_ball` VALUES ('67', '2019004', '08', '12', '16', '19', '26', '32', '03', '2019-01-08');
INSERT INTO `history_ball` VALUES ('670', '2015015', '01', '07', '20', '24', '25', '33', '04', '2015-02-03');
INSERT INTO `history_ball` VALUES ('671', '2015014', '02', '12', '16', '19', '27', '30', '11', '2015-02-01');
INSERT INTO `history_ball` VALUES ('672', '2015013', '08', '09', '24', '25', '26', '29', '01', '2015-01-29');
INSERT INTO `history_ball` VALUES ('673', '2015012', '03', '05', '22', '23', '29', '31', '06', '2015-01-27');
INSERT INTO `history_ball` VALUES ('674', '2015011', '04', '14', '15', '17', '18', '20', '15', '2015-01-25');
INSERT INTO `history_ball` VALUES ('675', '2015010', '01', '02', '03', '08', '21', '31', '09,05', '2015-01-22');
INSERT INTO `history_ball` VALUES ('676', '2015009', '04', '07', '14', '17', '21', '25', '14,13', '2015-01-20');
INSERT INTO `history_ball` VALUES ('677', '2015008', '04', '07', '10', '16', '20', '22', '03,16', '2015-01-18');
INSERT INTO `history_ball` VALUES ('678', '2015007', '01', '07', '09', '17', '20', '33', '08,07', '2015-01-15');
INSERT INTO `history_ball` VALUES ('679', '2015006', '01', '10', '11', '29', '31', '33', '13,09', '2015-01-13');
INSERT INTO `history_ball` VALUES ('68', '2019003', '13', '17', '20', '21', '22', '27', '01', '2019-01-06');
INSERT INTO `history_ball` VALUES ('680', '2015005', '07', '10', '16', '17', '18', '32', '15,01', '2015-01-11');
INSERT INTO `history_ball` VALUES ('681', '2015004', '02', '14', '15', '16', '23', '24', '10,04', '2015-01-08');
INSERT INTO `history_ball` VALUES ('682', '2015003', '10', '15', '20', '23', '24', '31', '15,11', '2015-01-06');
INSERT INTO `history_ball` VALUES ('683', '2015002', '07', '15', '16', '25', '28', '32', '05,08', '2015-01-04');
INSERT INTO `history_ball` VALUES ('684', '2015001', '01', '07', '09', '16', '20', '23', '06,01', '2015-01-01');
INSERT INTO `history_ball` VALUES ('685', '2014152', '08', '13', '15', '20', '21', '25', '12,02', '2014-12-30');
INSERT INTO `history_ball` VALUES ('686', '2014151', '04', '05', '08', '11', '21', '27', '08,01', '2014-12-28');
INSERT INTO `history_ball` VALUES ('687', '2014150', '03', '08', '14', '22', '24', '32', '09,14', '2014-12-25');
INSERT INTO `history_ball` VALUES ('688', '2014149', '07', '09', '10', '15', '19', '33', '01,05', '2014-12-23');
INSERT INTO `history_ball` VALUES ('689', '2014148', '01', '02', '05', '12', '15', '16', '13,01', '2014-12-21');
INSERT INTO `history_ball` VALUES ('69', '2019002', '04', '05', '06', '08', '09', '18', '11', '2019-01-03');
INSERT INTO `history_ball` VALUES ('690', '2014147', '06', '07', '22', '26', '31', '32', '10,07', '2014-12-18');
INSERT INTO `history_ball` VALUES ('691', '2014146', '01', '06', '13', '20', '29', '32', '01,02', '2014-12-16');
INSERT INTO `history_ball` VALUES ('692', '2014145', '10', '12', '13', '23', '26', '29', '11,13', '2014-12-14');
INSERT INTO `history_ball` VALUES ('693', '2014144', '03', '05', '06', '09', '10', '27', '14,15', '2014-12-11');
INSERT INTO `history_ball` VALUES ('694', '2014143', '03', '12', '18', '20', '25', '26', '16', '2014-12-09');
INSERT INTO `history_ball` VALUES ('695', '2014142', '06', '21', '22', '23', '25', '28', '13', '2014-12-07');
INSERT INTO `history_ball` VALUES ('696', '2014141', '08', '09', '11', '16', '21', '24', '10', '2014-12-04');
INSERT INTO `history_ball` VALUES ('697', '2014140', '06', '10', '11', '14', '17', '33', '06', '2014-12-02');
INSERT INTO `history_ball` VALUES ('698', '2014139', '01', '14', '15', '20', '25', '29', '11', '2014-11-30');
INSERT INTO `history_ball` VALUES ('699', '2014138', '04', '06', '13', '29', '31', '33', '13', '2014-11-27');
INSERT INTO `history_ball` VALUES ('7', '2019064', '12', '20', '24', '25', '30', '33', '12', '2019-06-04');
INSERT INTO `history_ball` VALUES ('70', '2019001', '06', '10', '13', '15', '32', '33', '15', '2019-01-01');
INSERT INTO `history_ball` VALUES ('700', '2014137', '03', '06', '09', '11', '25', '29', '09', '2014-11-25');
INSERT INTO `history_ball` VALUES ('701', '2014136', '03', '16', '19', '27', '31', '32', '10', '2014-11-23');
INSERT INTO `history_ball` VALUES ('702', '2014135', '02', '04', '11', '13', '25', '33', '01', '2014-11-20');
INSERT INTO `history_ball` VALUES ('703', '2014134', '05', '16', '22', '23', '26', '28', '02', '2014-11-18');
INSERT INTO `history_ball` VALUES ('704', '2014133', '13', '14', '16', '23', '30', '31', '13', '2014-11-16');
INSERT INTO `history_ball` VALUES ('705', '2014132', '05', '06', '14', '15', '18', '33', '08', '2014-11-13');
INSERT INTO `history_ball` VALUES ('706', '2014131', '05', '17', '21', '22', '28', '32', '14', '2014-11-11');
INSERT INTO `history_ball` VALUES ('707', '2014130', '01', '02', '10', '24', '30', '33', '10', '2014-11-09');
INSERT INTO `history_ball` VALUES ('708', '2014129', '05', '08', '09', '20', '28', '32', '02', '2014-11-06');
INSERT INTO `history_ball` VALUES ('709', '2014128', '05', '07', '08', '17', '18', '24', '14', '2014-11-04');
INSERT INTO `history_ball` VALUES ('71', '2018153', '01', '07', '17', '23', '25', '31', '11', '2018-12-30');
INSERT INTO `history_ball` VALUES ('710', '2014127', '02', '10', '12', '21', '23', '27', '12', '2014-11-02');
INSERT INTO `history_ball` VALUES ('711', '2014126', '06', '11', '16', '17', '22', '27', '01', '2014-10-30');
INSERT INTO `history_ball` VALUES ('712', '2014125', '10', '11', '15', '26', '31', '32', '06', '2014-10-28');
INSERT INTO `history_ball` VALUES ('713', '2014124', '02', '17', '20', '24', '31', '33', '04', '2014-10-26');
INSERT INTO `history_ball` VALUES ('714', '2014123', '01', '06', '11', '17', '28', '33', '05', '2014-10-23');
INSERT INTO `history_ball` VALUES ('715', '2014122', '06', '09', '11', '16', '20', '29', '11', '2014-10-21');
INSERT INTO `history_ball` VALUES ('716', '2014121', '01', '02', '13', '22', '28', '30', '09', '2014-10-19');
INSERT INTO `history_ball` VALUES ('717', '2014120', '01', '07', '12', '16', '23', '28', '04', '2014-10-16');
INSERT INTO `history_ball` VALUES ('718', '2014119', '06', '13', '17', '20', '26', '29', '09', '2014-10-14');
INSERT INTO `history_ball` VALUES ('719', '2014118', '05', '07', '15', '18', '26', '30', '03', '2014-10-12');
INSERT INTO `history_ball` VALUES ('72', '2018152', '04', '14', '16', '23', '28', '29', '03', '2018-12-27');
INSERT INTO `history_ball` VALUES ('720', '2014117', '05', '10', '17', '25', '28', '29', '04', '2014-10-09');
INSERT INTO `history_ball` VALUES ('721', '2014116', '09', '10', '14', '15', '19', '29', '16', '2014-10-07');
INSERT INTO `history_ball` VALUES ('722', '2014115', '01', '09', '10', '11', '13', '32', '03', '2014-10-05');
INSERT INTO `history_ball` VALUES ('723', '2014114', '02', '07', '23', '30', '32', '33', '10', '2014-10-02');
INSERT INTO `history_ball` VALUES ('724', '2014113', '12', '14', '28', '31', '32', '33', '07', '2014-09-30');
INSERT INTO `history_ball` VALUES ('725', '2014112', '01', '15', '16', '21', '24', '30', '03', '2014-09-28');
INSERT INTO `history_ball` VALUES ('726', '2014111', '02', '08', '17', '20', '22', '28', '02', '2014-09-25');
INSERT INTO `history_ball` VALUES ('727', '2014110', '01', '08', '11', '13', '19', '30', '06', '2014-09-23');
INSERT INTO `history_ball` VALUES ('728', '2014109', '02', '05', '11', '15', '19', '28', '02', '2014-09-21');
INSERT INTO `history_ball` VALUES ('729', '2014108', '03', '08', '09', '20', '23', '28', '02', '2014-09-18');
INSERT INTO `history_ball` VALUES ('73', '2018151', '05', '15', '19', '25', '26', '29', '15', '2018-12-25');
INSERT INTO `history_ball` VALUES ('730', '2014107', '11', '14', '17', '22', '25', '27', '16', '2014-09-16');
INSERT INTO `history_ball` VALUES ('731', '2014106', '09', '14', '17', '18', '21', '25', '15', '2014-09-14');
INSERT INTO `history_ball` VALUES ('732', '2014105', '14', '16', '17', '19', '27', '32', '04', '2014-09-11');
INSERT INTO `history_ball` VALUES ('733', '2014104', '02', '06', '12', '19', '27', '28', '13', '2014-09-09');
INSERT INTO `history_ball` VALUES ('734', '2014103', '03', '08', '09', '10', '18', '33', '04', '2014-09-07');
INSERT INTO `history_ball` VALUES ('735', '2014102', '14', '16', '21', '24', '28', '31', '13', '2014-09-04');
INSERT INTO `history_ball` VALUES ('736', '2014101', '16', '18', '20', '23', '24', '32', '07', '2014-09-02');
INSERT INTO `history_ball` VALUES ('737', '2014100', '01', '06', '09', '10', '14', '16', '11', '2014-08-31');
INSERT INTO `history_ball` VALUES ('738', '2014099', '01', '05', '10', '11', '13', '32', '14', '2014-08-28');
INSERT INTO `history_ball` VALUES ('739', '2014098', '02', '13', '17', '20', '29', '31', '07', '2014-08-26');
INSERT INTO `history_ball` VALUES ('74', '2018150', '06', '08', '15', '19', '20', '31', '05', '2018-12-23');
INSERT INTO `history_ball` VALUES ('740', '2014097', '07', '13', '24', '25', '27', '32', '15', '2014-08-24');
INSERT INTO `history_ball` VALUES ('741', '2014096', '12', '14', '17', '19', '22', '24', '08', '2014-08-21');
INSERT INTO `history_ball` VALUES ('742', '2014095', '05', '06', '08', '14', '22', '31', '08', '2014-08-19');
INSERT INTO `history_ball` VALUES ('743', '2014094', '01', '10', '18', '20', '23', '29', '01', '2014-08-17');
INSERT INTO `history_ball` VALUES ('744', '2014093', '02', '08', '09', '10', '20', '29', '05', '2014-08-14');
INSERT INTO `history_ball` VALUES ('745', '2014092', '03', '13', '18', '19', '22', '26', '07', '2014-08-12');
INSERT INTO `history_ball` VALUES ('746', '2014091', '01', '05', '12', '19', '27', '29', '14', '2014-08-10');
INSERT INTO `history_ball` VALUES ('747', '2014090', '05', '09', '11', '19', '24', '32', '13', '2014-08-07');
INSERT INTO `history_ball` VALUES ('748', '2014089', '04', '06', '14', '17', '27', '30', '09', '2014-08-05');
INSERT INTO `history_ball` VALUES ('749', '2014088', '03', '06', '11', '14', '16', '29', '15', '2014-08-03');
INSERT INTO `history_ball` VALUES ('75', '2018149', '01', '07', '08', '10', '12', '24', '01', '2018-12-20');
INSERT INTO `history_ball` VALUES ('750', '2014087', '06', '18', '22', '23', '32', '33', '06', '2014-07-31');
INSERT INTO `history_ball` VALUES ('751', '2014086', '02', '04', '10', '12', '14', '30', '08', '2014-07-29');
INSERT INTO `history_ball` VALUES ('752', '2014085', '01', '02', '11', '19', '23', '29', '08', '2014-07-27');
INSERT INTO `history_ball` VALUES ('753', '2014084', '01', '06', '09', '10', '13', '25', '08', '2014-07-24');
INSERT INTO `history_ball` VALUES ('754', '2014083', '05', '06', '19', '21', '23', '33', '12', '2014-07-22');
INSERT INTO `history_ball` VALUES ('755', '2014082', '02', '04', '20', '25', '26', '29', '11', '2014-07-20');
INSERT INTO `history_ball` VALUES ('756', '2014081', '08', '14', '22', '24', '27', '29', '10', '2014-07-17');
INSERT INTO `history_ball` VALUES ('757', '2014080', '05', '14', '16', '17', '25', '30', '07', '2014-07-15');
INSERT INTO `history_ball` VALUES ('758', '2014079', '02', '07', '16', '22', '27', '28', '02', '2014-07-13');
INSERT INTO `history_ball` VALUES ('759', '2014078', '02', '03', '05', '06', '09', '17', '07', '2014-07-10');
INSERT INTO `history_ball` VALUES ('76', '2018148', '03', '06', '18', '19', '21', '31', '01', '2018-12-18');
INSERT INTO `history_ball` VALUES ('760', '2014077', '08', '09', '12', '15', '19', '22', '10', '2014-07-08');
INSERT INTO `history_ball` VALUES ('761', '2014076', '06', '10', '12', '17', '18', '33', '11', '2014-07-06');
INSERT INTO `history_ball` VALUES ('762', '2014075', '03', '09', '11', '22', '27', '29', '06', '2014-07-03');
INSERT INTO `history_ball` VALUES ('763', '2014074', '01', '03', '06', '13', '30', '31', '12', '2014-07-01');
INSERT INTO `history_ball` VALUES ('764', '2014073', '01', '12', '16', '20', '30', '33', '02', '2014-06-29');
INSERT INTO `history_ball` VALUES ('765', '2014072', '01', '03', '07', '13', '19', '32', '16', '2014-06-26');
INSERT INTO `history_ball` VALUES ('766', '2014071', '02', '04', '12', '17', '22', '25', '14', '2014-06-24');
INSERT INTO `history_ball` VALUES ('767', '2014070', '01', '07', '09', '19', '28', '29', '07', '2014-06-22');
INSERT INTO `history_ball` VALUES ('768', '2014069', '05', '12', '17', '19', '25', '30', '11', '2014-06-19');
INSERT INTO `history_ball` VALUES ('769', '2014068', '04', '12', '13', '22', '27', '29', '16', '2014-06-17');
INSERT INTO `history_ball` VALUES ('77', '2018147', '03', '15', '17', '23', '27', '30', '11', '2018-12-16');
INSERT INTO `history_ball` VALUES ('770', '2014067', '01', '06', '07', '17', '18', '23', '06', '2014-06-15');
INSERT INTO `history_ball` VALUES ('771', '2014066', '02', '05', '15', '17', '18', '21', '16', '2014-06-12');
INSERT INTO `history_ball` VALUES ('772', '2014065', '03', '04', '05', '08', '10', '22', '06', '2014-06-10');
INSERT INTO `history_ball` VALUES ('773', '2014064', '02', '09', '15', '16', '29', '32', '14', '2014-06-08');
INSERT INTO `history_ball` VALUES ('774', '2014063', '03', '08', '17', '21', '22', '31', '16', '2014-06-05');
INSERT INTO `history_ball` VALUES ('775', '2014062', '06', '09', '15', '24', '25', '26', '09', '2014-06-03');
INSERT INTO `history_ball` VALUES ('776', '2014061', '02', '14', '17', '27', '28', '31', '08', '2014-06-01');
INSERT INTO `history_ball` VALUES ('777', '2014060', '03', '05', '14', '18', '25', '33', '06', '2014-05-29');
INSERT INTO `history_ball` VALUES ('778', '2014059', '05', '08', '12', '13', '23', '25', '13', '2014-05-27');
INSERT INTO `history_ball` VALUES ('779', '2014058', '02', '03', '12', '13', '14', '25', '11', '2014-05-25');
INSERT INTO `history_ball` VALUES ('78', '2018146', '02', '10', '11', '17', '18', '29', '16', '2018-12-13');
INSERT INTO `history_ball` VALUES ('780', '2014057', '02', '04', '12', '18', '23', '31', '08', '2014-05-22');
INSERT INTO `history_ball` VALUES ('781', '2014056', '01', '11', '18', '20', '28', '29', '01', '2014-05-20');
INSERT INTO `history_ball` VALUES ('782', '2014055', '02', '09', '14', '19', '21', '30', '04', '2014-05-18');
INSERT INTO `history_ball` VALUES ('783', '2014054', '01', '04', '05', '11', '29', '30', '14', '2014-05-15');
INSERT INTO `history_ball` VALUES ('784', '2014053', '14', '17', '19', '22', '26', '31', '02', '2014-05-13');
INSERT INTO `history_ball` VALUES ('785', '2014052', '09', '13', '15', '28', '30', '33', '08', '2014-05-11');
INSERT INTO `history_ball` VALUES ('786', '2014051', '10', '16', '19', '21', '23', '24', '13', '2014-05-08');
INSERT INTO `history_ball` VALUES ('787', '2014050', '03', '17', '23', '25', '26', '32', '13', '2014-05-06');
INSERT INTO `history_ball` VALUES ('788', '2014049', '06', '07', '16', '17', '23', '32', '06', '2014-05-04');
INSERT INTO `history_ball` VALUES ('789', '2014048', '06', '09', '16', '17', '24', '25', '16', '2014-05-01');
INSERT INTO `history_ball` VALUES ('79', '2018145', '03', '09', '13', '22', '23', '25', '06', '2018-12-11');
INSERT INTO `history_ball` VALUES ('790', '2014047', '08', '10', '11', '12', '19', '29', '15', '2014-04-29');
INSERT INTO `history_ball` VALUES ('791', '2014046', '02', '10', '11', '17', '18', '22', '10', '2014-04-27');
INSERT INTO `history_ball` VALUES ('792', '2014045', '02', '04', '09', '11', '19', '22', '15', '2014-04-24');
INSERT INTO `history_ball` VALUES ('793', '2014044', '04', '09', '21', '27', '28', '33', '12', '2014-04-22');
INSERT INTO `history_ball` VALUES ('794', '2014043', '02', '05', '09', '14', '24', '33', '09', '2014-04-20');
INSERT INTO `history_ball` VALUES ('795', '2014042', '12', '15', '20', '25', '28', '33', '14', '2014-04-17');
INSERT INTO `history_ball` VALUES ('796', '2014041', '07', '11', '16', '18', '21', '22', '02', '2014-04-15');
INSERT INTO `history_ball` VALUES ('797', '2014040', '03', '04', '06', '11', '12', '15', '08', '2014-04-13');
INSERT INTO `history_ball` VALUES ('798', '2014039', '03', '11', '15', '19', '20', '31', '07', '2014-04-10');
INSERT INTO `history_ball` VALUES ('799', '2014038', '04', '07', '22', '23', '24', '33', '16', '2014-04-08');
INSERT INTO `history_ball` VALUES ('8', '2019063', '01', '14', '19', '22', '29', '31', '16', '2019-06-02');
INSERT INTO `history_ball` VALUES ('80', '2018144', '08', '13', '17', '18', '20', '27', '13', '2018-12-09');
INSERT INTO `history_ball` VALUES ('800', '2014037', '06', '13', '14', '24', '25', '30', '07', '2014-04-06');
INSERT INTO `history_ball` VALUES ('801', '2014036', '01', '07', '08', '09', '11', '22', '03', '2014-04-03');
INSERT INTO `history_ball` VALUES ('802', '2014035', '07', '08', '09', '17', '32', '33', '06', '2014-04-01');
INSERT INTO `history_ball` VALUES ('803', '2014034', '01', '03', '04', '08', '25', '31', '06', '2014-03-30');
INSERT INTO `history_ball` VALUES ('804', '2014033', '05', '13', '23', '28', '32', '33', '12', '2014-03-27');
INSERT INTO `history_ball` VALUES ('805', '2014032', '01', '02', '14', '22', '29', '33', '07', '2014-03-25');
INSERT INTO `history_ball` VALUES ('806', '2014031', '04', '10', '16', '17', '21', '27', '14', '2014-03-23');
INSERT INTO `history_ball` VALUES ('807', '2014030', '12', '18', '19', '23', '24', '30', '10', '2014-03-20');
INSERT INTO `history_ball` VALUES ('808', '2014029', '02', '07', '14', '16', '21', '29', '14', '2014-03-18');
INSERT INTO `history_ball` VALUES ('809', '2014028', '06', '16', '21', '27', '30', '32', '05', '2014-03-16');
INSERT INTO `history_ball` VALUES ('81', '2018143', '04', '06', '15', '28', '32', '33', '14', '2018-12-06');
INSERT INTO `history_ball` VALUES ('810', '2014027', '08', '10', '14', '16', '30', '31', '01', '2014-03-13');
INSERT INTO `history_ball` VALUES ('811', '2014026', '01', '02', '05', '06', '11', '23', '14', '2014-03-11');
INSERT INTO `history_ball` VALUES ('812', '2014025', '01', '05', '10', '14', '16', '30', '16', '2014-03-09');
INSERT INTO `history_ball` VALUES ('813', '2014024', '08', '10', '16', '20', '23', '30', '09', '2014-03-06');
INSERT INTO `history_ball` VALUES ('814', '2014023', '07', '09', '13', '17', '21', '22', '10', '2014-03-04');
INSERT INTO `history_ball` VALUES ('815', '2014022', '04', '06', '07', '10', '21', '26', '16', '2014-03-02');
INSERT INTO `history_ball` VALUES ('816', '2014021', '08', '10', '15', '17', '22', '29', '12', '2014-02-27');
INSERT INTO `history_ball` VALUES ('817', '2014020', '09', '14', '17', '23', '24', '25', '15', '2014-02-25');
INSERT INTO `history_ball` VALUES ('818', '2014019', '02', '10', '15', '19', '20', '21', '07', '2014-02-23');
INSERT INTO `history_ball` VALUES ('819', '2014018', '13', '17', '18', '21', '30', '33', '15', '2014-02-20');
INSERT INTO `history_ball` VALUES ('82', '2018142', '05', '08', '10', '11', '27', '28', '11', '2018-12-04');
INSERT INTO `history_ball` VALUES ('820', '2014017', '04', '06', '07', '14', '25', '26', '10', '2014-02-18');
INSERT INTO `history_ball` VALUES ('821', '2014016', '02', '03', '07', '13', '21', '24', '08', '2014-02-16');
INSERT INTO `history_ball` VALUES ('822', '2014015', '02', '11', '19', '30', '32', '33', '09', '2014-02-13');
INSERT INTO `history_ball` VALUES ('823', '2014014', '04', '09', '19', '22', '25', '29', '15', '2014-02-11');
INSERT INTO `history_ball` VALUES ('824', '2014013', '05', '09', '13', '15', '17', '21', '13', '2014-02-09');
INSERT INTO `history_ball` VALUES ('825', '2014012', '01', '08', '11', '19', '21', '24', '08', '2014-01-28');
INSERT INTO `history_ball` VALUES ('826', '2014011', '09', '10', '13', '14', '21', '32', '02', '2014-01-26');
INSERT INTO `history_ball` VALUES ('827', '2014010', '05', '07', '08', '20', '31', '33', '11', '2014-01-23');
INSERT INTO `history_ball` VALUES ('828', '2014009', '08', '09', '19', '20', '25', '32', '16', '2014-01-21');
INSERT INTO `history_ball` VALUES ('829', '2014008', '05', '14', '16', '21', '29', '30', '12', '2014-01-19');
INSERT INTO `history_ball` VALUES ('83', '2018141', '11', '14', '16', '18', '24', '33', '04', '2018-12-02');
INSERT INTO `history_ball` VALUES ('830', '2014007', '08', '10', '12', '14', '18', '28', '14', '2014-01-16');
INSERT INTO `history_ball` VALUES ('831', '2014006', '03', '04', '07', '17', '21', '27', '14', '2014-01-14');
INSERT INTO `history_ball` VALUES ('832', '2014005', '15', '18', '23', '27', '32', '33', '04', '2014-01-12');
INSERT INTO `history_ball` VALUES ('833', '2014004', '01', '04', '19', '22', '24', '25', '15', '2014-01-09');
INSERT INTO `history_ball` VALUES ('834', '2014003', '06', '10', '11', '28', '30', '33', '12', '2014-01-07');
INSERT INTO `history_ball` VALUES ('835', '2014002', '04', '21', '23', '31', '32', '33', '04', '2014-01-05');
INSERT INTO `history_ball` VALUES ('836', '2014001', '03', '09', '15', '20', '27', '29', '01', '2014-01-02');
INSERT INTO `history_ball` VALUES ('837', '2013154', '07', '11', '14', '19', '24', '29', '05', '2013-12-31');
INSERT INTO `history_ball` VALUES ('838', '2013153', '08', '11', '13', '18', '28', '33', '10', '2013-12-29');
INSERT INTO `history_ball` VALUES ('839', '2013152', '04', '06', '14', '16', '18', '29', '05', '2013-12-26');
INSERT INTO `history_ball` VALUES ('84', '2018140', '01', '15', '20', '22', '25', '28', '14', '2018-11-29');
INSERT INTO `history_ball` VALUES ('840', '2013151', '03', '09', '10', '19', '28', '33', '09', '2013-12-24');
INSERT INTO `history_ball` VALUES ('841', '2013150', '01', '15', '16', '25', '26', '29', '10', '2013-12-22');
INSERT INTO `history_ball` VALUES ('842', '2013149', '09', '18', '25', '26', '30', '32', '11', '2013-12-19');
INSERT INTO `history_ball` VALUES ('843', '2013148', '06', '11', '12', '14', '17', '22', '01', '2013-12-17');
INSERT INTO `history_ball` VALUES ('844', '2013147', '02', '15', '16', '17', '19', '30', '08', '2013-12-15');
INSERT INTO `history_ball` VALUES ('845', '2013146', '08', '20', '25', '30', '32', '33', '01', '2013-12-12');
INSERT INTO `history_ball` VALUES ('846', '2013145', '06', '10', '13', '16', '23', '24', '15', '2013-12-10');
INSERT INTO `history_ball` VALUES ('847', '2013144', '05', '07', '12', '19', '27', '31', '02', '2013-12-08');
INSERT INTO `history_ball` VALUES ('848', '2013143', '12', '18', '21', '22', '27', '32', '11', '2013-12-05');
INSERT INTO `history_ball` VALUES ('849', '2013142', '11', '12', '14', '20', '22', '29', '14', '2013-12-03');
INSERT INTO `history_ball` VALUES ('85', '2018139', '11', '18', '20', '23', '31', '32', '15', '2018-11-27');
INSERT INTO `history_ball` VALUES ('850', '2013141', '03', '04', '05', '25', '30', '31', '04', '2013-12-01');
INSERT INTO `history_ball` VALUES ('851', '2013140', '01', '05', '12', '13', '21', '22', '10', '2013-11-28');
INSERT INTO `history_ball` VALUES ('852', '2013139', '07', '08', '11', '13', '21', '27', '08', '2013-11-26');
INSERT INTO `history_ball` VALUES ('853', '2013138', '04', '15', '16', '24', '27', '28', '03', '2013-11-24');
INSERT INTO `history_ball` VALUES ('854', '2013137', '04', '17', '19', '23', '24', '27', '10', '2013-11-21');
INSERT INTO `history_ball` VALUES ('855', '2013136', '04', '06', '14', '16', '18', '26', '06', '2013-11-19');
INSERT INTO `history_ball` VALUES ('856', '2013135', '09', '23', '24', '25', '29', '31', '12', '2013-11-17');
INSERT INTO `history_ball` VALUES ('857', '2013134', '01', '17', '18', '19', '25', '29', '10', '2013-11-14');
INSERT INTO `history_ball` VALUES ('858', '2013133', '04', '07', '12', '19', '22', '25', '01', '2013-11-12');
INSERT INTO `history_ball` VALUES ('859', '2013132', '20', '21', '22', '23', '25', '27', '12', '2013-11-10');
INSERT INTO `history_ball` VALUES ('86', '2018138', '01', '10', '25', '27', '30', '32', '09', '2018-11-25');
INSERT INTO `history_ball` VALUES ('860', '2013131', '04', '06', '12', '17', '19', '26', '09', '2013-11-07');
INSERT INTO `history_ball` VALUES ('861', '2013130', '01', '03', '15', '16', '31', '33', '08', '2013-11-05');
INSERT INTO `history_ball` VALUES ('862', '2013129', '05', '06', '10', '14', '27', '31', '14', '2013-11-03');
INSERT INTO `history_ball` VALUES ('863', '2013128', '07', '13', '17', '19', '25', '31', '08', '2013-10-31');
INSERT INTO `history_ball` VALUES ('864', '2013127', '02', '03', '13', '20', '22', '33', '14', '2013-10-29');
INSERT INTO `history_ball` VALUES ('865', '2013126', '04', '10', '19', '27', '31', '33', '16', '2013-10-27');
INSERT INTO `history_ball` VALUES ('866', '2013125', '04', '06', '08', '18', '25', '28', '16', '2013-10-24');
INSERT INTO `history_ball` VALUES ('867', '2013124', '03', '09', '15', '23', '25', '30', '07', '2013-10-22');
INSERT INTO `history_ball` VALUES ('868', '2013123', '01', '02', '06', '11', '17', '25', '02', '2013-10-20');
INSERT INTO `history_ball` VALUES ('869', '2013122', '07', '10', '13', '15', '26', '27', '11', '2013-10-17');
INSERT INTO `history_ball` VALUES ('87', '2018137', '03', '05', '11', '15', '20', '23', '09', '2018-11-22');
INSERT INTO `history_ball` VALUES ('870', '2013121', '04', '05', '06', '07', '25', '27', '07', '2013-10-15');
INSERT INTO `history_ball` VALUES ('871', '2013120', '05', '06', '13', '18', '23', '31', '11', '2013-10-13');
INSERT INTO `history_ball` VALUES ('872', '2013119', '05', '15', '20', '22', '26', '32', '09', '2013-10-10');
INSERT INTO `history_ball` VALUES ('873', '2013118', '02', '03', '17', '22', '32', '33', '16', '2013-10-08');
INSERT INTO `history_ball` VALUES ('874', '2013117', '09', '12', '13', '24', '27', '33', '16', '2013-10-06');
INSERT INTO `history_ball` VALUES ('875', '2013116', '12', '15', '21', '26', '32', '33', '07', '2013-10-03');
INSERT INTO `history_ball` VALUES ('876', '2013115', '03', '12', '16', '17', '18', '27', '08', '2013-10-01');
INSERT INTO `history_ball` VALUES ('877', '2013114', '04', '06', '17', '21', '23', '33', '07', '2013-09-29');
INSERT INTO `history_ball` VALUES ('878', '2013113', '04', '07', '11', '17', '24', '33', '09', '2013-09-26');
INSERT INTO `history_ball` VALUES ('879', '2013112', '01', '06', '12', '13', '22', '31', '07', '2013-09-24');
INSERT INTO `history_ball` VALUES ('88', '2018136', '10', '12', '15', '25', '26', '27', '14', '2018-11-20');
INSERT INTO `history_ball` VALUES ('880', '2013111', '01', '02', '03', '06', '08', '33', '13', '2013-09-22');
INSERT INTO `history_ball` VALUES ('881', '2013110', '15', '17', '18', '21', '29', '32', '13', '2013-09-19');
INSERT INTO `history_ball` VALUES ('882', '2013109', '09', '23', '24', '27', '29', '32', '08', '2013-09-17');
INSERT INTO `history_ball` VALUES ('883', '2013108', '16', '21', '22', '28', '31', '32', '05', '2013-09-15');
INSERT INTO `history_ball` VALUES ('884', '2013107', '07', '09', '11', '17', '28', '31', '11', '2013-09-12');
INSERT INTO `history_ball` VALUES ('885', '2013106', '09', '11', '23', '30', '31', '32', '06', '2013-09-10');
INSERT INTO `history_ball` VALUES ('886', '2013105', '01', '11', '23', '27', '31', '32', '09', '2013-09-08');
INSERT INTO `history_ball` VALUES ('887', '2013104', '01', '02', '04', '15', '17', '28', '11', '2013-09-05');
INSERT INTO `history_ball` VALUES ('888', '2013103', '02', '04', '09', '13', '18', '20', '07', '2013-09-03');
INSERT INTO `history_ball` VALUES ('889', '2013102', '02', '04', '05', '06', '08', '16', '03', '2013-09-01');
INSERT INTO `history_ball` VALUES ('89', '2018135', '01', '03', '06', '10', '11', '29', '16', '2018-11-18');
INSERT INTO `history_ball` VALUES ('890', '2013101', '05', '07', '09', '23', '27', '32', '01', '2013-08-29');
INSERT INTO `history_ball` VALUES ('891', '2013100', '04', '08', '11', '14', '16', '20', '11', '2013-08-27');
INSERT INTO `history_ball` VALUES ('892', '2013099', '05', '11', '20', '21', '26', '31', '03', '2013-08-25');
INSERT INTO `history_ball` VALUES ('893', '2013098', '07', '15', '18', '19', '20', '26', '14', '2013-08-22');
INSERT INTO `history_ball` VALUES ('894', '2013097', '05', '14', '17', '22', '23', '25', '07', '2013-08-20');
INSERT INTO `history_ball` VALUES ('895', '2013096', '01', '02', '22', '28', '29', '30', '15', '2013-08-18');
INSERT INTO `history_ball` VALUES ('896', '2013095', '01', '06', '15', '19', '28', '29', '10', '2013-08-15');
INSERT INTO `history_ball` VALUES ('897', '2013094', '02', '04', '14', '18', '20', '22', '07', '2013-08-13');
INSERT INTO `history_ball` VALUES ('898', '2013093', '01', '02', '08', '26', '29', '31', '14', '2013-08-11');
INSERT INTO `history_ball` VALUES ('899', '2013092', '07', '11', '15', '21', '26', '31', '06', '2013-08-08');
INSERT INTO `history_ball` VALUES ('9', '2019062', '07', '13', '16', '23', '26', '30', '01', '2019-05-30');
INSERT INTO `history_ball` VALUES ('90', '2018134', '03', '16', '18', '31', '32', '33', '12', '2018-11-15');
INSERT INTO `history_ball` VALUES ('900', '2013091', '04', '14', '24', '25', '28', '31', '10', '2013-08-06');
INSERT INTO `history_ball` VALUES ('901', '2013090', '02', '05', '11', '23', '24', '29', '08', '2013-08-04');
INSERT INTO `history_ball` VALUES ('902', '2013089', '04', '08', '12', '19', '21', '25', '13', '2013-08-01');
INSERT INTO `history_ball` VALUES ('903', '2013088', '09', '15', '20', '21', '22', '24', '14', '2013-07-30');
INSERT INTO `history_ball` VALUES ('904', '2013087', '02', '13', '19', '23', '24', '28', '05', '2013-07-28');
INSERT INTO `history_ball` VALUES ('905', '2013086', '02', '04', '11', '13', '16', '26', '11', '2013-07-25');
INSERT INTO `history_ball` VALUES ('906', '2013085', '02', '08', '12', '14', '16', '32', '16', '2013-07-23');
INSERT INTO `history_ball` VALUES ('907', '2013084', '05', '07', '09', '11', '20', '21', '03', '2013-07-21');
INSERT INTO `history_ball` VALUES ('908', '2013083', '05', '06', '12', '14', '19', '23', '09', '2013-07-18');
INSERT INTO `history_ball` VALUES ('909', '2013082', '04', '13', '14', '20', '22', '30', '06', '2013-07-16');
INSERT INTO `history_ball` VALUES ('91', '2018133', '02', '04', '11', '12', '18', '32', '13', '2018-11-13');
INSERT INTO `history_ball` VALUES ('910', '2013081', '01', '04', '10', '13', '21', '31', '13', '2013-07-14');
INSERT INTO `history_ball` VALUES ('911', '2013080', '10', '11', '12', '23', '28', '32', '16', '2013-07-11');
INSERT INTO `history_ball` VALUES ('912', '2013079', '07', '13', '17', '19', '22', '26', '13', '2013-07-09');
INSERT INTO `history_ball` VALUES ('913', '2013078', '03', '05', '17', '18', '26', '27', '15', '2013-07-07');
INSERT INTO `history_ball` VALUES ('914', '2013077', '09', '14', '23', '24', '26', '29', '03', '2013-07-04');
INSERT INTO `history_ball` VALUES ('915', '2013076', '14', '23', '24', '26', '29', '30', '03', '2013-07-02');
INSERT INTO `history_ball` VALUES ('916', '2013075', '04', '06', '09', '25', '30', '33', '14', '2013-06-30');
INSERT INTO `history_ball` VALUES ('917', '2013074', '03', '06', '08', '14', '19', '32', '03', '2013-06-27');
INSERT INTO `history_ball` VALUES ('918', '2013073', '02', '09', '13', '17', '20', '28', '11', '2013-06-25');
INSERT INTO `history_ball` VALUES ('919', '2013072', '02', '08', '11', '14', '19', '33', '09', '2013-06-23');
INSERT INTO `history_ball` VALUES ('92', '2018132', '01', '02', '09', '10', '15', '22', '06', '2018-11-11');
INSERT INTO `history_ball` VALUES ('920', '2013071', '05', '12', '21', '23', '26', '28', '09', '2013-06-20');
INSERT INTO `history_ball` VALUES ('921', '2013070', '02', '03', '09', '10', '28', '30', '06', '2013-06-18');
INSERT INTO `history_ball` VALUES ('922', '2013069', '07', '16', '17', '18', '30', '33', '06', '2013-06-16');
INSERT INTO `history_ball` VALUES ('923', '2013068', '02', '07', '13', '20', '25', '27', '06', '2013-06-13');
INSERT INTO `history_ball` VALUES ('924', '2013067', '01', '04', '09', '15', '22', '30', '06', '2013-06-11');
INSERT INTO `history_ball` VALUES ('925', '2013066', '01', '03', '16', '17', '20', '32', '07', '2013-06-09');
INSERT INTO `history_ball` VALUES ('926', '2013065', '07', '18', '19', '23', '29', '30', '02', '2013-06-06');
INSERT INTO `history_ball` VALUES ('927', '2013064', '01', '09', '13', '22', '25', '32', '12', '2013-06-04');
INSERT INTO `history_ball` VALUES ('928', '2013063', '10', '15', '18', '20', '23', '31', '12', '2013-06-02');
INSERT INTO `history_ball` VALUES ('929', '2013062', '01', '06', '07', '19', '22', '27', '02', '2013-05-30');
INSERT INTO `history_ball` VALUES ('93', '2018131', '21', '22', '24', '31', '32', '33', '01', '2018-11-08');
INSERT INTO `history_ball` VALUES ('930', '2013061', '05', '06', '07', '12', '13', '18', '12', '2013-05-28');
INSERT INTO `history_ball` VALUES ('931', '2013060', '05', '07', '10', '13', '19', '20', '15', '2013-05-26');
INSERT INTO `history_ball` VALUES ('932', '2013059', '03', '10', '18', '24', '27', '29', '09', '2013-05-23');
INSERT INTO `history_ball` VALUES ('933', '2013058', '08', '11', '17', '21', '23', '24', '05', '2013-05-21');
INSERT INTO `history_ball` VALUES ('934', '2013057', '13', '16', '19', '23', '26', '28', '05', '2013-05-19');
INSERT INTO `history_ball` VALUES ('935', '2013056', '03', '12', '25', '26', '28', '29', '16', '2013-05-16');
INSERT INTO `history_ball` VALUES ('936', '2013055', '08', '18', '19', '22', '27', '32', '06', '2013-05-14');
INSERT INTO `history_ball` VALUES ('937', '2013054', '03', '04', '08', '14', '21', '28', '14', '2013-05-12');
INSERT INTO `history_ball` VALUES ('938', '2013053', '03', '12', '13', '22', '30', '33', '14', '2013-05-09');
INSERT INTO `history_ball` VALUES ('939', '2013052', '06', '07', '14', '21', '22', '24', '13', '2013-05-07');
INSERT INTO `history_ball` VALUES ('94', '2018130', '05', '12', '17', '18', '24', '28', '12', '2018-11-06');
INSERT INTO `history_ball` VALUES ('940', '2013051', '08', '12', '15', '19', '28', '29', '02', '2013-05-05');
INSERT INTO `history_ball` VALUES ('941', '2013050', '03', '07', '13', '18', '22', '25', '03', '2013-05-02');
INSERT INTO `history_ball` VALUES ('942', '2013049', '10', '13', '14', '16', '21', '32', '14', '2013-04-30');
INSERT INTO `history_ball` VALUES ('943', '2013048', '10', '13', '17', '28', '30', '32', '04', '2013-04-28');
INSERT INTO `history_ball` VALUES ('944', '2013047', '01', '08', '11', '17', '27', '30', '12', '2013-04-25');
INSERT INTO `history_ball` VALUES ('945', '2013046', '03', '16', '19', '20', '24', '26', '06', '2013-04-23');
INSERT INTO `history_ball` VALUES ('946', '2013045', '06', '07', '08', '14', '23', '31', '12', '2013-04-21');
INSERT INTO `history_ball` VALUES ('947', '2013044', '03', '05', '11', '18', '26', '28', '06', '2013-04-18');
INSERT INTO `history_ball` VALUES ('948', '2013043', '03', '06', '14', '15', '17', '25', '16', '2013-04-16');
INSERT INTO `history_ball` VALUES ('949', '2013042', '01', '08', '12', '13', '15', '33', '03', '2013-04-14');
INSERT INTO `history_ball` VALUES ('95', '2018129', '02', '04', '06', '16', '18', '19', '16', '2018-11-04');
INSERT INTO `history_ball` VALUES ('950', '2013041', '02', '10', '12', '17', '23', '24', '05', '2013-04-11');
INSERT INTO `history_ball` VALUES ('951', '2013040', '02', '04', '10', '12', '17', '30', '10', '2013-04-09');
INSERT INTO `history_ball` VALUES ('952', '2013039', '01', '02', '14', '15', '24', '29', '06', '2013-04-07');
INSERT INTO `history_ball` VALUES ('953', '2013038', '09', '10', '12', '14', '15', '19', '11', '2013-04-04');
INSERT INTO `history_ball` VALUES ('954', '2013037', '02', '15', '18', '27', '28', '32', '14', '2013-04-02');
INSERT INTO `history_ball` VALUES ('955', '2013036', '04', '05', '09', '27', '29', '31', '13', '2013-03-31');
INSERT INTO `history_ball` VALUES ('956', '2013035', '01', '14', '15', '17', '26', '30', '02', '2013-03-28');
INSERT INTO `history_ball` VALUES ('957', '2013034', '06', '15', '20', '22', '26', '33', '09', '2013-03-26');
INSERT INTO `history_ball` VALUES ('958', '2013033', '05', '06', '13', '17', '19', '28', '01', '2013-03-24');
INSERT INTO `history_ball` VALUES ('959', '2013032', '04', '21', '25', '29', '30', '33', '03', '2013-03-21');
INSERT INTO `history_ball` VALUES ('96', '2018128', '06', '07', '08', '19', '22', '23', '02', '2018-11-01');
INSERT INTO `history_ball` VALUES ('960', '2013031', '03', '13', '14', '15', '21', '33', '03', '2013-03-19');
INSERT INTO `history_ball` VALUES ('961', '2013030', '07', '14', '18', '25', '26', '29', '06', '2013-03-17');
INSERT INTO `history_ball` VALUES ('962', '2013029', '06', '07', '10', '19', '23', '29', '12', '2013-03-14');
INSERT INTO `history_ball` VALUES ('963', '2013028', '07', '08', '14', '25', '26', '28', '13', '2013-03-12');
INSERT INTO `history_ball` VALUES ('964', '2013027', '01', '02', '04', '12', '21', '24', '12', '2013-03-10');
INSERT INTO `history_ball` VALUES ('965', '2013026', '04', '11', '14', '15', '22', '31', '11', '2013-03-07');
INSERT INTO `history_ball` VALUES ('966', '2013025', '16', '17', '18', '24', '25', '30', '08', '2013-03-05');
INSERT INTO `history_ball` VALUES ('967', '2013024', '04', '05', '13', '23', '27', '30', '09', '2013-03-03');
INSERT INTO `history_ball` VALUES ('968', '2013023', '03', '06', '15', '18', '30', '32', '05', '2013-02-28');
INSERT INTO `history_ball` VALUES ('969', '2013022', '02', '04', '07', '09', '15', '20', '07', '2013-02-26');
INSERT INTO `history_ball` VALUES ('97', '2018127', '02', '05', '06', '07', '11', '15', '12', '2018-10-30');
INSERT INTO `history_ball` VALUES ('970', '2013021', '01', '06', '17', '19', '26', '31', '11', '2013-02-24');
INSERT INTO `history_ball` VALUES ('971', '2013020', '01', '07', '08', '12', '16', '21', '01', '2013-02-21');
INSERT INTO `history_ball` VALUES ('972', '2013019', '01', '02', '05', '16', '20', '26', '06', '2013-02-19');
INSERT INTO `history_ball` VALUES ('973', '2013018', '02', '08', '13', '28', '29', '30', '05', '2013-02-17');
INSERT INTO `history_ball` VALUES ('974', '2013017', '04', '06', '12', '30', '31', '32', '09', '2013-02-07');
INSERT INTO `history_ball` VALUES ('975', '2013016', '02', '05', '06', '12', '14', '28', '05', '2013-02-05');
INSERT INTO `history_ball` VALUES ('976', '2013015', '05', '06', '07', '11', '13', '18', '15', '2013-02-03');
INSERT INTO `history_ball` VALUES ('977', '2013014', '02', '04', '05', '17', '19', '20', '08', '2013-01-31');
INSERT INTO `history_ball` VALUES ('978', '2013013', '05', '06', '13', '19', '22', '28', '09', '2013-01-29');
INSERT INTO `history_ball` VALUES ('979', '2013012', '06', '14', '17', '22', '28', '29', '02', '2013-01-27');
INSERT INTO `history_ball` VALUES ('98', '2018126', '01', '06', '08', '09', '14', '22', '05', '2018-10-28');
INSERT INTO `history_ball` VALUES ('980', '2013011', '03', '12', '17', '24', '27', '29', '09', '2013-01-24');
INSERT INTO `history_ball` VALUES ('981', '2013010', '01', '09', '11', '17', '32', '33', '12', '2013-01-22');
INSERT INTO `history_ball` VALUES ('982', '2013009', '01', '04', '09', '13', '16', '23', '02', '2013-01-20');
INSERT INTO `history_ball` VALUES ('983', '2013008', '03', '08', '17', '21', '25', '32', '15', '2013-01-17');
INSERT INTO `history_ball` VALUES ('984', '2013007', '02', '09', '15', '22', '26', '32', '01', '2013-01-15');
INSERT INTO `history_ball` VALUES ('985', '2013006', '09', '10', '13', '17', '22', '30', '13', '2013-01-13');
INSERT INTO `history_ball` VALUES ('986', '2013005', '01', '13', '14', '25', '31', '32', '12', '2013-01-10');
INSERT INTO `history_ball` VALUES ('987', '2013004', '06', '10', '16', '20', '27', '32', '08', '2013-01-08');
INSERT INTO `history_ball` VALUES ('988', '2013003', '22', '23', '26', '27', '28', '33', '09', '2013-01-06');
INSERT INTO `history_ball` VALUES ('989', '2013002', '01', '16', '18', '22', '28', '30', '12', '2013-01-03');
INSERT INTO `history_ball` VALUES ('99', '2018125', '03', '10', '11', '14', '15', '32', '02', '2018-10-25');
INSERT INTO `history_ball` VALUES ('990', '2013001', '06', '08', '14', '15', '24', '25', '06', '2013-01-01');

-- ----------------------------
-- Table structure for moduleinfo
-- ----------------------------
DROP TABLE IF EXISTS `moduleinfo`;
CREATE TABLE `moduleinfo` (
  `ModuleID` int(11) DEFAULT NULL,
  `PluginName` varchar(255) DEFAULT NULL,
  `DisplayName` varchar(255) DEFAULT NULL,
  `Publisher` varchar(255) DEFAULT NULL,
  `CreateTime` varchar(60) DEFAULT NULL,
  `UpdateTime` varchar(60) DEFAULT NULL,
  `Version` varchar(60) DEFAULT NULL,
  `NodeReq` int(60) DEFAULT NULL,
  `MemReq` int(60) DEFAULT NULL,
  `CpuReq` tinyint(60) DEFAULT NULL,
  `GpuReq` tinyint(60) DEFAULT NULL,
  `WallTime` int(60) DEFAULT NULL,
  `ExecuteFile` varchar(255) DEFAULT NULL,
  `Queue` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moduleinfo
-- ----------------------------
INSERT INTO `moduleinfo` VALUES ('1', 'Task_Test_B', '测试插件B', 'iecas', '2018-12-13 13:57:33.803604', '2019-06-25 09:48:43.769580', '1.0.0', '4', '1024', '4', null, '100', 'Task_Test_B', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('2', 'Task_Test_C', '测试插件C', 'iecas', '2018-12-13 13:58:54.929120', '2019-07-26 11:05:02.994368', '1.0.0', '4', '1024', '4', null, '100', 'Task_Test_C', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('6', 'GF1_TriggerCatalog', 'GF1_TriggerCatalog', 'iecas', '2019-03-06 16:40:43.584380', '2019-11-04 09:06:23.638129', '1.0.0', '1', '12288', '4', null, '3600', 'GF1_TriggerCatalog', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('8', '125_R0Report', '125_R0Report', 'iecas', '2019-03-11 15:09:31.594449', '2019-06-04 18:16:36.603479', '1.0.0', '2', '10240', '2', null, '600', '125_R0Report', 'pR_qeue_pro');
INSERT INTO `moduleinfo` VALUES ('9', '125_UpdateDB', '125_UpdateDB', 'iecas', '2019-03-11 15:23:14.064663', '2019-05-24 14:05:33.190643', '1.0.0', '1', '1024', '1', null, '3600', '125_UpdateDB', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('10', '125_VALUE', '125_VALUE', 'iecas', '2019-03-11 15:35:38.623823', '2019-03-11 15:35:38.623823', '1.0.0', '2', '1200', '2', null, '600', '125_VALUE', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('12', '125_UNZIP', '125_UNZIP', 'iecas', '2019-03-11 17:18:12.871009', '2019-06-27 09:30:15.523786', '1.0.0', '4', '24576', '8', null, '28800', '125_UNZIP', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('13', 'GF1_Catalog', 'GF1_Catalog', 'iecas', '2019-03-11 17:31:10.951169', '2019-11-04 09:05:54.405560', '1.0.0', '1', '51200', '20', null, '14400', 'GF1_Catalog', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('14', 'GF1_UpdateDB1', 'GF1_UpdateDB1', 'iecas', '2019-03-11 17:34:27.146566', '2019-03-11 17:34:27.146566', '1.0.0', '1', '1024', '2', null, '600', 'GF1_UpdateDB1', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('15', 'GF1_UpdateDB2', 'GF1_UpdateDB2', 'iecas', '2019-03-11 17:36:56.109349', '2019-03-11 17:36:56.109349', '1.0.0', '1', '1024', '2', null, '600', 'GF1_UpdateDB2', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('18', 'ZY3_TriggerCatalog', 'ZY3_TriggerCatalog', 'iecas', '2019-03-11 18:00:42.575936', '2019-05-17 09:41:40.242208', '1.0.0', '1', '10240', '10', null, '3600', 'ZY3_TriggerCatalog', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('19', 'ZY3_Catalog', 'ZY3_Catalog', 'iecas', '2019-03-11 18:04:54.734416', '2019-05-28 08:46:46.722304', '1.0.0', '1', '51200', '20', null, '14400', 'ZY3_Catalog', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('20', 'ZY3_UpdateDB1', 'ZY3_UpdateDB1', 'iecas', '2019-03-11 18:19:28.728048', '2019-03-11 18:19:28.728048', '1.0.0', '2', '1024', '4', null, '600', 'ZY3_UpdateDB1', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('21', 'ZY3_UpdateDB2', 'ZY3_UpdateDB2', 'iecas', '2019-03-11 18:21:30.561581', '2019-03-11 18:21:30.561581', '1.0.0', '2', '1024', '4', null, '600', 'ZY3_UpdateDB2', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('22', 'ZY3_RadCorrect', 'ZY3_RadCorrect', 'iecas', '2019-03-11 18:47:18.044317', '2019-05-17 09:41:06.817297', '1.0.0', '1', '20480', '10', null, '14400', 'ZY3_RadCorrect', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('23', 'ZY3_RadQuality', 'ZY3_RadQuality', 'iecas', '2019-03-11 18:56:59.616996', '2019-03-11 18:56:59.616996', '1.0.0', '2', '2048', '4', null, '600', 'ZY3_RadQuality', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('25', 'ZY3_VALUE1', 'ZY3_VALUE1', 'iecas', '2019-03-11 19:10:20.391239', '2019-03-11 19:10:20.391239', '1.0.0', '2', '2048', '4', null, '1200', 'ZY3_VALUE1', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('26', 'ZY3_GeoCorrect', 'ZY3_GeoCorrect', null, '2019-03-11 19:12:12.825570', '2019-05-17 09:40:25.274920', '1.0.0', '1', '20480', '20', null, '14400', 'ZY3_GeoCorrect', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('27', 'ZY3_GeoQuality', 'ZY3_GeoQuality', 'iecas', '2019-03-11 19:16:13.883902', '2019-03-11 19:16:13.883902', '1.0.0', '2', '2048', '4', null, '1200', 'ZY3_GeoQuality', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('29', 'ZY3_VALUE2', 'ZY3_VALUE2', 'iecas', '2019-03-11 19:19:49.691153', '2019-03-11 19:19:49.691153', '1.0.0', '2', '2048', '4', null, '1200', 'ZY3_VALUE2', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('31', '125_VALUE1', '125_VALUE1', 'iecas', '2019-03-26 18:05:25.146283', '2019-11-04 09:03:14.274173', '1.0.0', '2', '2048', '4', null, '600', '125_VALUE1', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('32', '125_RadQuality', '125_RadQuality', 'iecas', '2019-03-27 15:46:49.148087', '2019-11-04 09:04:04.834859', '1.0.0', '2', '2048', '2', null, '600', '125_RadQuality', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('33', '125_GeoQuality', '125_GeoQuality', 'iecas', '2019-03-27 15:47:19.898447', '2019-11-04 09:03:47.963452', '1.0.0', '2', '2048', '2', null, '600', '125_GeoQuality', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('34', '125_UpdateDB1', '125_UpdateDB1', 'iecas', '2019-03-27 15:49:06.425843', '2019-11-04 09:04:27.689181', '1.0.0', '2', '2048', '2', null, '3600', '125_UpdateDB1', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('35', '125_UpdateDB2', '125_UpdateDB2', 'iecas', '2019-03-27 15:49:53.453929', '2019-11-04 09:04:34.909411', '1.0.0', '2', '2048', '2', null, '3600', '125_UpdateDB2', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('36', '125_VALUE2', '125_VALUE2', 'iecas', '2019-03-27 15:50:30.688863', '2019-11-04 09:03:42.154118', '1.0.0', '2', '2048', '2', null, '600', '125_VALUE2', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('37', 'KJ125_GenerateQAReport', 'KJ125_GenerateQAReport', 'iecas', '2019-03-27 16:35:19.935155', '2019-03-27 16:35:19.935155', '1.0.0', '2', '2048', '2', null, '600', 'KJ125_GenerateQAReport', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('38', '125_Q65Report', '125_Q65Report', 'iecas', '2019-04-02 10:03:58.271554', '2019-04-02 10:03:58.271554', '1.0.0', '2', '2048', '6', null, '1200', '125_Q65Report', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('39', 'KJ125_DIFF', 'KJ125_DIFF', 'iecas', '2019-04-02 11:34:15.575794', '2019-04-02 11:34:15.575794', '1.0.0', '4', '6144', '10', null, '3600', 'KJ125_DIFF', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('40', 'KJ125_TriggerR0Report', 'KJ125_TriggerR0Report', 'iecas', '2019-04-02 11:35:35.875710', '2019-04-02 11:35:35.875710', '1.0.0', '4', '6144', '10', null, '3600', 'KJ125_TriggerR0Report', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('41', '125_Q64Report', '125_Q64Report', 'iecas', '2019-04-02 11:46:50.634609', '2019-04-02 11:46:50.634609', '1.0.0', '4', '6166', '15', null, '3600', '125_Q64Report', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('42', 'GF1_RadCorrect', 'GF1_RadCorrect', 'iecas', '2019-04-09 18:19:10.639801', '2019-11-04 09:06:21.104499', '1.0.0', '1', '20480', '20', null, '6000', 'GF1_RadCorrect', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('43', 'GF1_GeoCorrect', 'GF1_GeoCorrect', 'iecas', '2019-04-09 18:20:04.952579', '2019-11-04 09:06:07.285966', '1.0.0', '1', '20480', '20', null, '6000', 'GF1_GeoCorrect', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('44', '125_Q64R0Report', '125_Q64R0Report', 'iecas', '2019-06-04 18:56:54.513521', '2019-06-04 18:58:16.920489', '1.0.0', '1', '4096', '6', null, '3600', '125_Q64R0Report', 'PR_que_pro');
INSERT INTO `moduleinfo` VALUES ('45', '测试', 'tet11', 'fsfsf', '2019-11-06 17:55:49', '2019-11-07 15:14:00', 'tet', '42', '4324', '11', '22', '2222', '312313', 'fsfsf');

-- ----------------------------
-- Table structure for plugininfo
-- ----------------------------
DROP TABLE IF EXISTS `plugininfo`;
CREATE TABLE `plugininfo` (
  `PluginName` varchar(255) DEFAULT NULL,
  `DisplayName` varchar(255) DEFAULT NULL,
  `TemplateXml` text,
  `CreateTime` varchar(60) DEFAULT NULL,
  `UpdateTime` varchar(60) DEFAULT NULL,
  `Version` varchar(60) DEFAULT NULL,
  `Enabled` tinyint(4) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `DefaultModuleID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plugininfo
-- ----------------------------
INSERT INTO `plugininfo` VALUES ('125_GeoQuality', '125_GeoQuality', '<task name=\"125_GeoQuality\" id=\"125_GeoQuality_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3B_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <ProductImage>%IMAGEFILE_L2A%</ProductImage>\r\n    <report>%L2REPORT%</report>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <sensor>%SENSOR%</sensor>\r\n    <taskId>%TASKID%</taskId>\r\n    <!--所属业务任务ID，常规流程时为作业任务编号；运管流程时为任务单流水号-->\r\n    <productId>%PRODUCTID_L2A%</productId>\r\n    <productId_L1A>%PRODUCTID_L1A%</productId_L1A>\r\n    <sceneId>%SCENEID%</sceneId>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:03:47.962936', '2019-11-04 09:03:49.284592', '1.0.0', '1', '5', '33');
INSERT INTO `plugininfo` VALUES ('125_Q64R0Report', '125_Q64R0Report', '<task name=\"125_Q64R0Report\" id=\"125_Q64R0Report_%YYYYMMDD_XXXXXX%\" orderid=\"KJ125_Q64_R0REPORT_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite_id>%SATELLITE%</satellite_id>\r\n    <!--卫星简称：GF01/GF02-->\r\n    <channel_id>%CHANNEL%</channel_id>\r\n    <!--通道标识：S1/S2-->\r\n    <segment>%SEGMENTSIZE%</segment>\r\n    <!--分段大小-->\r\n    <taskId>%TASKSERIALNUMBER%</taskId>\r\n    <!--任务单流水号-->\r\n    <signalId>%SIGNALID%</signalId>\r\n    <rawfile>%SIGNALFILE%</rawfile>\r\n    <pinfile>ZY03.pn</pinfile>\r\n    <report>%REPORT%</report>\r\n    <!--输出的xml质量报告文件绝对路径-->\r\n    <diffTxt>%DIFFTXT%</diffTxt>\r\n    <!--之前差异性分析的结果文件绝对路径（todo 算法应该改进为只对有差异的部分进行分析，此处预留参数以备将来使用）-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-06-04 18:55:47.636378', '2019-11-04 08:55:59.014694', '1.0.0', '1', '5', '44');
INSERT INTO `plugininfo` VALUES ('125_Q64Report', '125_Q64Report', '<task name=\"125_Q64Report\" id=\"125_Q64Report_%YYYYMMDD_XXXXXX%\" orderid=\"KJ125_Q64_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist num=\"1\">\r\n    <report>%QAREPORT%</report>\r\n    <!-- 输出的报表文件绝对路径-->\r\n  </outputfilelist>\r\n  <params>\r\n    <taskId>%TASKSERIALNUMBER%</taskId>\r\n    <!--任务单流水号-->\r\n    <taskMode>Q64</taskMode>\r\n    <jobTaskId1>%JOBTASKID1%</jobTaskId1>\r\n    <!--作业任务编号1-->\r\n    <jobTaskId2>%JOBTASKID2%</jobTaskId2>\r\n    <!--作业任务编号2-->\r\n    <satellite>%SATELLITE%</satellite>\r\n    <!--卫星简称，如：GF01-->\r\n    <sensor>%SENSOR%</sensor>\r\n    <!--传感器，如：2mCCD-->\r\n    <orbit>%ORBIT%</orbit>\r\n    <!--轨道号-->\r\n    <diffTxt>%DIFFTXT%</diffTxt>\r\n    <!--算法输出的差异性文本文件绝对路径-->\r\n    <report_job1_S1>%REPORT1_S1%</report_job1_S1>\r\n    <!--算法输出的各原始码流质量报告绝对路径，没有时填空-->\r\n    <report_job2_S1>%REPORT2_S1%</report_job2_S1>\r\n    <report_job1_S2>%REPORT1_S2%</report_job1_S2>\r\n    <report_job2_S2>%REPORT2_S2%</report_job2_S2>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-04-02 11:40:04.912875', '2019-04-02 11:46:52.914751', '1.0.0', '1', '5', '41');
INSERT INTO `plugininfo` VALUES ('125_Q65Report', '125_Q65Report', '<task name=\"125_Q65Report\" id=\"125_Q65Report_%YYYYMMDD_XXXXXX%\" orderid=\"KJ125_Q65_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist num=\"1\">\r\n    <report>%QAREPORT%</report>\r\n  </outputfilelist>\r\n  <params>\r\n    <taskId>%TASKSERIALNUMBER%</taskId>\r\n    <!--任务单流水号-->\r\n    <taskMode>Q65</taskMode>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <!--卫星简称，如：GF01-->\r\n    <sensor>%SENSOR%</sensor>\r\n    <!--传感器，如：2mCCD-->\r\n    <receiveStartTime>%STARTTIME%</receiveStartTime>\r\n    <!--接收开始日期，格式为yyyy-MM-dd HH:mm:ss -->\r\n    <receiveEndTime>%ENDTIME%</receiveEndTime>\r\n    <!--接收结束日期，格式为yyyy-MM-dd HH:mm:ss-->\r\n    <receiveStation>%STATION%</receiveStation>\r\n    <!--接收站。不指定则为所有接收站-->\r\n    <recorder>%RECORDER%</recorder>\r\n    <!--记录器编号。不指定则为所有记录设备-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-04-02 10:02:38.059166', '2019-04-02 10:07:07.143009', '1.0.0', '1', '5', '38');
INSERT INTO `plugininfo` VALUES ('125_R0Report', '125_R0Report', '<task name=\"125_R0Report\" id=\"125_R0Report_%YYYYMMDD_XXXXXX%\" orderid=\"125_R0_TO_R0REPORT_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite_id>%SATELLITE%</satellite_id>\r\n    <!--卫星简称：GF01/GF02-->\r\n    <channel_id>%CHANNEL%</channel_id>\r\n    <!--通道标识：S1/S2-->\r\n    <segment>100</segment>\r\n    <!--分段大小-->\r\n    <taskId>%JOBTASKID%</taskId>\r\n    <signalId>%SIGNALID%</signalId>\r\n    <rawfile>%SIGNALFILE%</rawfile>\r\n    <pinfile>125.pn</pinfile>\r\n    <!--%PINFILE%-->\r\n    <report>%REPORT%</report>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-11 14:58:23.472291', '2019-11-04 08:56:26.918290', '1.0.0', '1', '5', '8');
INSERT INTO `plugininfo` VALUES ('125_RadQuality', '125_RadQuality', '<task name=\"125_RadQuality\" id=\"125_RadQuality_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3B_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist num=\"1\">\r\n    <ProductImage>%IMAGEFILE_L1A%</ProductImage>\r\n  </inputfilelist>\r\n  <outputfilelist num=\"1\">\r\n    <QA_Report>%L1REPORT%</QA_Report>\r\n  </outputfilelist>\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <sensor>%SENSOR%</sensor>\r\n    <taskId>%TASKID%</taskId>\r\n    <!--所属业务任务ID，常规流程时为作业任务编号；运管流程时为任务单流水号-->\r\n    <productId>%PRODUCTID_L1A%</productId>\r\n    <sceneId>%SCENEID%</sceneId>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:04:04.834290', '2019-11-04 09:04:30.424945', '1.0.0', '1', '5', '32');
INSERT INTO `plugininfo` VALUES ('125_UNZIP', '125_UNZIP', '<task name=\"125_UNZIP\" id=\"125_UNZIP_%YYYYMMDD_XXXXXX%\" orderid=\"GF1_R0_TO_L0_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <taskId>%JOBTASKID%</taskId>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <taskbasefile1>%TASKBASEFILE1%</taskbasefile1>\r\n    <taskbasefile2>%TASKBASEFILE2%</taskbasefile2>\r\n    <unzipoutputdir>%OUTPUTDIR%</unzipoutputdir>\r\n    <waitTime>60</waitTime>\r\n    <!--每次启动解压之前等待上轮资源释放的时间（秒）-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-12 13:57:09.433392', '2019-11-04 08:56:15.232622', '1.0.0', '1', '5', '12');
INSERT INTO `plugininfo` VALUES ('125_UpdateDB', '125_UpdateDB', '<task name=\"125_UpdateDB\" id=\"125_UpdateDB_R0REPORT_%YYYYMMDD_XXXXXX%\" orderid=\"125_R0_TO_R0REPORT_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <metaFileName>%S1META%</metaFileName>\r\n    <metaFileName></metaFileName>\r\n    <reportFileName>%REPORT%</reportFileName>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <productLevel>R0</productLevel>\r\n    <taskId>%JOBTASKID%</taskId>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-11 15:19:52.056576', '2019-05-12 10:43:32.289092', '1.0.0', '1', '5', '9');
INSERT INTO `plugininfo` VALUES ('125_UpdateDB1', '125_UpdateDB1', '<task name=\"125_UpdateDB1\" id=\"125_UpdateDB1_L1A_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3B_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <metaFileName>%L1META%</metaFileName>\r\n    <reportFileName>%L1REPORT%</reportFileName>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <productLevel>L1A</productLevel>\r\n    <taskId>%TASKID%</taskId>\r\n    <!--jobTaskID或taskSerialNumber-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:04:27.688618', '2019-11-04 09:04:19.306309', '1.0.0', '1', '5', '34');
INSERT INTO `plugininfo` VALUES ('125_UpdateDB2', '125_UpdateDB2', '<task name=\"125_UpdateDB2\" id=\"125_UpdateDB2_L2A_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3B_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <metaFileName>%L2META%</metaFileName>\r\n    <reportFileName>%L2REPORT%</reportFileName>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <productLevel>L2A</productLevel>\r\n    <taskId>%TASKID%</taskId>\r\n    <!--jobTaskID或taskSerialNumber-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:04:34.908639', '2019-11-04 09:04:27.037751', '1.0.0', '1', '5', '35');
INSERT INTO `plugininfo` VALUES ('125_VALUE', '125_VALUE', '<task name=\"125_VALUE\" id=\"125_VALUE_R0_%YYYYMMDD_XXXXXX%\" orderid=\"125_R0_TO_R0REPORT_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <type>R0</type>\r\n    <!-- R0 / L0 / L1A / L2A -->\r\n    <sign>%SIGNALID%</sign>\r\n    <!-- signalID / segmentID / productId -->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-11 15:34:02.182107', '2019-11-04 09:00:53.802555', '1.0.0', '1', '5', '10');
INSERT INTO `plugininfo` VALUES ('125_VALUE1', '125_VALUE1', '<task name=\"125_VALUE1\" id=\"125_VALUE1_L1A_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3B_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <type>L1A</type>\r\n    <!-- R0 / L1A / L2A -->\r\n    <sign>%PRODUCTID_L1A%</sign>\r\n    <!-- signalID / productID-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:03:14.273739', '2019-11-04 09:03:16.306706', '1.0.0', '1', '5', '31');
INSERT INTO `plugininfo` VALUES ('125_VALUE2', '125_VALUE2', '<task name=\"125_VALUE2\" id=\"125_VALUE2_L2A_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3B_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <type>L2A</type>\r\n    <!-- R0 / L1A / L2A -->\r\n    <sign>%PRODUCTID_L2A%</sign>\r\n    <!-- signalID / productID-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:03:42.153583', '2019-11-04 09:03:27.955372', '1.0.0', '1', '5', '36');
INSERT INTO `plugininfo` VALUES ('GF1_Catalog', 'GF1_Catalog', '<task name=\"GF1_Catalog\" id=\"GF1_Catalog_%YYYYMMDD_XXXXXX%\" orderid=\"GF1_L0_TO_CAT_%YYYYMMDD_XXXXXX%\" priority=\"0\">\r\n  <!--编目的时候需要先进行辅助数据的解析，辅助数据的格式按照资源G5的格式-->\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <!--载荷支持VNIR和SWIR单相机的编目和AHSI双相机联合编目-->\r\n    <sensor>%SENSOR%</sensor>\r\n    <taskid>%TASKID%</taskid>\r\n    <!--对应S1通道原始码流ID，没有时填空,GF04卫星只有一个通道。-->\r\n    <signalid1>%SIGNALID1%</signalid1>\r\n    <signalid2>%SIGNALID2%</signalid2>\r\n    <segmentnum1>01</segmentnum1>\r\n    <!--生成的景ID前缀，每景的景ID为：前缀_nnn (其中nnn为：001-999)-->\r\n    <sceneidprefix>%SCENEIDPREFIX%</sceneidprefix>\r\n    <in_unpackfile_PA>%UNPACKFILE_PA%</in_unpackfile_PA>\r\n    <in_unpackfile_MS>%UNPACKFILE_MS%</in_unpackfile_MS>\r\n    <!--编目结果的输出路径，输出每景的编目浏览图、编目的拇指图，编目的元数据每一景还是一个编目元数据文件-->\r\n    <out_scenedir>%OUT_SCENEDIR%</out_scenedir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:05:54.404799', '2019-11-04 09:05:54.901777', '1.0.0', '1', '3', '13');
INSERT INTO `plugininfo` VALUES ('GF1_GeoCorrect', 'GF1_GeoCorrect', '<task name=\"GF1_GeoCorrect\" id=\"GF1_GeoCorrect_%YYYYMMDD_XXXXXX%\" orderid=\"GF1_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <productid>%PRODUCTID_L2A%</productid>\r\n    <!--生成的产品ID-->\r\n    <productid_L1A>%PRODUCTID_L1A%</productid_L1A>\r\n    <!--对应L1A产品ID-->\r\n    <taskid>%TASKID%</taskid>\r\n    <!--所属业务任务ID，常规流程时为作业任务编号；运管流程时为任务单流水号-->\r\n    <satellite>%SATELLITE%</satellite>\r\n    <!--高分五号为GF5,不能是GF05!-->\r\n    <sensor>%SENSOR%</sensor>\r\n    <Band>B1</Band>\r\n    <!--默认波段为B1，高五此项无意义-->\r\n    <earth_model>WGS 84</earth_model>\r\n    <project_model>UTM</project_model>\r\n    <resample_kernal>BI</resample_kernal>\r\n    <!--待校正的1A级影像全路径,根据1级影像路径更改-->\r\n    <in_image1Afile>%IMAGEFILE_L1A%</in_image1Afile>\r\n    <!--待校正的1A级影像对应rpc全路径，根据1级影像路径更改-->\r\n    <in_rpcfile>%RPCFILE_L1A%</in_rpcfile>\r\n    <!--输出产品目录，可更改-->\r\n    <out_productdir>%DIR_L2A%</out_productdir>\r\n    <!--工作目录（临时文件目录），可更改-->\r\n    <work_dir>%WORK_DIRL2A%</work_dir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:06:07.285500', '2019-11-04 09:05:58.740997', '1.0.0', '1', '3', '43');
INSERT INTO `plugininfo` VALUES ('GF1_RadCorrect', 'GF1_RadCorrect', '<task name=\"GF1_RadCorrect\" id=\"GF1_RadCorrect_%YYYYMMDD_XXXXXX%\" orderid=\"GF1_CAT_TO_L1A_%YYYYMMDD_XXXXXX%\" priority=\"0\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <sensor>%SENSOR%</sensor>\r\n    <!--接收站名称-->\r\n    <station>%STATION%</station>\r\n    <Band>B1</Band>\r\n    <!-- B1/B2/B3/B4/B5     -->\r\n    <productid>%PRODUCTID_L1A%</productid>\r\n    <!--生成的产品ID-->\r\n    <sceneid>%SCENEID%</sceneid>\r\n    <!--对应景ID-->\r\n    <taskid>%TASKID%</taskid>\r\n    <!--所属业务任务ID，常规流程时为作业任务编号；运管流程时为任务单流水号-->\r\n    <level>L1A</level>\r\n    <!--int类型 是否做辐射校正 :0,不做；1，做-->\r\n    <rad>1</rad>\r\n    <!--int类型 是否做去噪处理 :0,不做；1，做-->\r\n    <do_denoise>0</do_denoise>\r\n    <!--int类型 是否做mtf :0,不做；1，做-->\r\n    <do_mtf>0</do_mtf>\r\n    <!--int类型 是否做太阳高度角校正 :0,不做；1，做-->\r\n    <do_sun_correction>0</do_sun_correction>\r\n    <!--int类型 是否做地形校正:0,不做；1，做-->\r\n    <do_terrain_correction>0</do_terrain_correction>\r\n    <do_raley>0</do_raley>\r\n    <sensor_correction>IMG</sensor_correction>\r\n    <earth_model>WGS 84</earth_model>\r\n    <project_model>UTM</project_model>\r\n    <resample_kernal>BI</resample_kernal>\r\n    <in_unpackfile_PA>%UNPACKFILE_PA%</in_unpackfile_PA>\r\n    <in_unpackfile_MS>%UNPACKFILE_MS%</in_unpackfile_MS>\r\n    <in_catDir></in_catDir>\r\n    <!--string类型 输入景元数据全路径-->\r\n    <in_metafile>%METAFILE%</in_metafile>\r\n    <!--string类型 输出产品目录-->\r\n    <out_productdir>%DIR_L1A%</out_productdir>\r\n    <!--string类型 工作目录-->\r\n    <work_dir>%WORK_DIRL1A%</work_dir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <!-- 发送进度消息的地址和端口  -->\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:06:21.103731', '2019-11-04 09:06:06.822459', '1.0.0', '1', '3', '42');
INSERT INTO `plugininfo` VALUES ('GF1_TriggerCatalog', 'GF1_TriggerCatalog', '<task name=\"GF1_TriggerCatalog\" id=\"GF1_TriggerCatalog_%YYYYMMDD_XXXXXX%\" orderid=\"GF1_R0_TO_L0_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <taskid>%JOBTASKID%</taskid>\r\n    <signalid_S1>%SIGNALID1%</signalid_S1>\r\n    <signalid_S2>%SIGNALID2%</signalid_S2>\r\n    <unzipoutputdir>%OUTPUTDIR%</unzipoutputdir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-11-04 09:06:23.637621', '2019-11-04 09:06:34.025015', '1.0.0', '1', '3', '6');
INSERT INTO `plugininfo` VALUES ('KJ125_DIFF', 'KJ125_DIFF', '<task name=\"KJ125_DIFF\" id=\"KJ125_DIFF_%YYYYMMDD_XXXXXX%\" orderid=\"KJ125_Q64_DIFF_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <first_path>%JOB1_S1%</first_path>\r\n    <!--各原始码流文件绝对路径，没有时填空-->\r\n    <second_path>%JOB2_S1%</second_path>\r\n    <first_path_2>%JOB1_S2%</first_path_2>\r\n    <second_path_2>%JOB2_S2%</second_path_2>\r\n    <text_path>%DIFFTXT%</text_path>\r\n    <!--算法输出的差异性文本文件绝对路径-->\r\n    <Data_Size>10240</Data_Size>\r\n    <!--分段大小-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-04-02 11:33:02.543999', '2019-04-02 11:37:49.500294', '1.0.0', '1', '5', '39');
INSERT INTO `plugininfo` VALUES ('KJ125_GenerateQAReport', 'KJ125_GenerateQAReport', '<task name=\"KJ125_GenerateQAReport\" id=\"KJ125_GenerateQAReport_20190327_163028\" orderid=\"KJ125_Q61_62_63_QAReport_20190327_163028\">\r\n  <inputfilelist />\r\n  <outputfilelist num=\"1\">\r\n    <report>/pools/POOL/TMP/ZY-3B/REPORT/201903/20190327/QAReport_ZY-3B_QA2019032201_20190327163002/QAReport_ZY-3B_QA2019032201_20190327163002.xls</report>\r\n  </outputfilelist>\r\n  <params>\r\n    <satellite>ZY-3B</satellite>\r\n    <!--卫星简称-->\r\n    <taskMode>Q61;Q62</taskMode>\r\n    <!--为Q61、Q62、Q63或它们的组合，半角分号隔开。查询报告表时的taskid字段条件，对于Q61、Q62使用jobTaskId标签值；对于Q63使用taskId标签值-->\r\n    <jobTaskId>JOB201903152343234</jobTaskId>\r\n    <!--作业任务编号-->\r\n    <taskId>QA2019032201</taskId>\r\n    <!--运管触发时为任务单流水号(taskSerialNumber,以QA开头)；常规流程自动触发时为作业任务编号(jobTaskID，以JOB开头)-->\r\n    <channel>S1</channel>\r\n    <!--为任务单中的channelID；常规流程时不指定，表示不限通道-->\r\n    <sensor>sensorName</sensor>\r\n    <!--为任务单中的sensorName；常规流程时不指定，表示不限传感器-->\r\n    <dataSelectType>Full</dataSelectType>\r\n    <!--为任务单中的dataSelectType-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-27 16:34:35.437225', '2019-03-27 16:39:04.379465', '1.0.0', '1', '5', '37');
INSERT INTO `plugininfo` VALUES ('KJ125_TriggerR0Report', 'KJ125_TriggerR0Report', '<task name=\"KJ125_TriggerR0Report\" id=\"KJ125_TriggerR0Report_%YYYYMMDD_XXXXXX%\" orderid=\"KJ125_Q64_DIFF_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <!--卫星简称：GF01/GF02-->\r\n    <taskId>%TASKSERIALNUMBER%</taskId>\r\n    <!--任务单流水号-->\r\n    <jobTaskId1>%JOBTASKID1%</jobTaskId1>\r\n    <!--作业任务编号1-->\r\n    <jobTaskId2>%JOBTASKID2%</jobTaskId2>\r\n    <!--作业任务编号2-->\r\n    <job1_S1>%JOB1_S1%</job1_S1>\r\n    <!--各原始码流文件绝对路径，没有时填空-->\r\n    <job2_S1>%JOB2_S1%</job2_S1>\r\n    <job1_S2>%JOB1_S2%</job1_S2>\r\n    <job2_S2>%JOB2_S2%</job2_S2>\r\n    <diffTxt>%DIFFTXT%</diffTxt>\r\n    <!--算法输出的差异性文本文件绝对路径-->\r\n    <segment>100</segment>\r\n    <!--分段大小-->\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-04-02 11:35:03.256799', '2019-04-02 11:52:02.712095', '1.0.0', '1', '5', '40');
INSERT INTO `plugininfo` VALUES ('Task_Test_B', '测试插件B', '<task name=\"Task_Test_B\" name_IECAS_Desc=\"测试插件B\" priority=\"23\" priority_IECAS_Desc=\"插件优先级\">\r\n  <inputfilelist IECAS_Desc=\"输入文件列表\" num=\"1\" num_IECAS_Desc=\"输入文件个数\">\r\n    <input_file_path IECAS_Desc=\"输入文件路径\"></input_file_path>\r\n  </inputfilelist>\r\n  <outputfilelist IECAS_Desc=\"输出文件列表\" num=\"1\" num_IECAS_Desc=\"输出文件个数\">\r\n    <output_file_path IECAS_Desc=\"输出文件路径\"></output_file_path>\r\n  </outputfilelist>\r\n  <params IECAS_Desc=\"参数列表\">\r\n    <server_address IECAS_Desc=\"UDP进度消息IP地址\">172.19.180.140</server_address>\r\n    <port_number IECAS_Desc=\"UDP进度消息IP地址\">8080</port_number>\r\n  </params>\r\n</task>', '2018-12-13 13:56:25.130786', '2019-06-25 09:50:07.720381', '1.0.0', '1', '1', '1');
INSERT INTO `plugininfo` VALUES ('Task_Test_C', '测试插件C', '<task name=\"Task_Test_C\" name_IECAS_Desc=\"测试插件C\" priority=\"23\" priority_IECAS_Desc=\"插件优先级\">\r\n  <inputfilelist IECAS_Desc=\"输入文件列表\" num=\"1\" num_IECAS_Desc=\"输入文件个数\">\r\n    <input_file_path IECAS_Desc=\"输入文件路径\"></input_file_path>\r\n  </inputfilelist>\r\n  <outputfilelist IECAS_Desc=\"输出文件列表\" num=\"1\" num_IECAS_Desc=\"输出文件个数\">\r\n    <output_file_path IECAS_Desc=\"输出文件路径\"></output_file_path>\r\n  </outputfilelist>\r\n  <params IECAS_Desc=\"参数列表\">\r\n    <server_address IECAS_Desc=\"UDP进度消息IP地址\">172.19.180.140</server_address>\r\n    <port_number IECAS_Desc=\"UDP进度消息IP地址\">8080</port_number>\r\n  </params>\r\n</task>', '2018-12-13 13:57:58.774187', '2019-07-26 11:06:33.968572', '1.0.0', '1', '1', '2');
INSERT INTO `plugininfo` VALUES ('ZY3_Catalog', 'ZY3_Catalog', '<task name=\"ZY3_Catalog\" id=\"ZY3_Catalog_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3_L0_TO_CAT_%YYYYMMDD_XXXXXX%\" priority=\"0\">\r\n  <!--编目的时候需要先进行辅助数据的解析，辅助数据的格式按照资源G5的格式-->\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <!--载荷支持VNIR和SWIR单相机的编目和AHSI双相机联合编目-->\r\n    <sensor>%SENSOR%</sensor>\r\n    <taskid>%TASKID%</taskid>\r\n    <!--对应S1通道原始码流ID，没有时填空,GF04卫星只有一个通道。-->\r\n    <signalid1>%SIGNALID1%</signalid1>\r\n    <signalid2>%SIGNALID2%</signalid2>\r\n    <segmentnum1>01</segmentnum1>\r\n    <!--生成的景ID前缀，每景的景ID为：前缀_nnn (其中nnn为：001-999)-->\r\n    <sceneidprefix>%SCENEIDPREFIX%</sceneidprefix>\r\n    <in_unpackfile_NAD>%UNPACKFILE_NAD%</in_unpackfile_NAD>\r\n    <in_unpackfile_FWD>%UNPACKFILE_FWD%</in_unpackfile_FWD>\r\n    <in_unpackfile_BWD>%UNPACKFILE_BWD%</in_unpackfile_BWD>\r\n    <in_unpackfile_MUX>%UNPACKFILE_MUX%</in_unpackfile_MUX>\r\n    <!--编目结果的输出路径，输出每景的编目浏览图、编目的拇指图，编目的元数据每一景还是一个编目元数据文件-->\r\n    <out_scenedir>%OUT_SCENEDIR%</out_scenedir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-11 18:03:06.525880', '2019-05-06 11:08:56.245270', '1.0.0', '1', '4', '19');
INSERT INTO `plugininfo` VALUES ('ZY3_GeoCorrect', 'ZY3_GeoCorrect', '<task name=\"ZY3_GeoCorrect\" id=\"ZY3_GeoCorrect_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3_CAT_TO_L2A_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <productid>%PRODUCTID_L2A%</productid>\r\n    <!--生成的产品ID-->\r\n    <productid_L1A>%PRODUCTID_L1A%</productid_L1A>\r\n    <!--对应L1A产品ID-->\r\n    <taskid>%TASKID%</taskid>\r\n    <!--所属业务任务ID，常规流程时为作业任务编号；运管流程时为任务单流水号-->\r\n    <satellite>%SATELLITE%</satellite>\r\n    <!--高分五号为GF5,不能是GF05!-->\r\n    <sensor>%SENSOR%</sensor>\r\n    <Band>B1</Band>\r\n    <!--默认波段为B1，高五此项无意义-->\r\n    <earth_model>WGS 84</earth_model>\r\n    <project_model>UTM</project_model>\r\n    <resample_kernal>BI</resample_kernal>\r\n    <!--待校正的1A级影像全路径,根据1级影像路径更改-->\r\n    <in_image1Afile>%IMAGEFILE_L1A%</in_image1Afile>\r\n    <!--待校正的1A级影像对应rpc全路径，根据1级影像路径更改-->\r\n    <in_rpcfile>%RPCFILE_L1A%</in_rpcfile>\r\n    <!--TLC时的路径-->\r\n    <in_image1Afile_BWD>%IMAGEFILE_BWD%</in_image1Afile_BWD>\r\n    <in_rpcfile_BWD>%RPCFILE_BWD%</in_rpcfile_BWD>\r\n    <in_image1Afile_FWD>%IMAGEFILE_FWD%</in_image1Afile_FWD>\r\n    <in_rpcfile_FWD>%RPCFILE_FWD%</in_rpcfile_FWD>\r\n    <in_image1Afile_NAD>%IMAGEFILE_NAD%</in_image1Afile_NAD>\r\n    <in_rpcfile_NAD>%RPCFILE_NAD%</in_rpcfile_NAD>\r\n    <!--输出产品目录，可更改-->\r\n    <out_productdir>%DIR_L2A%</out_productdir>\r\n    <!--工作目录（临时文件目录），可更改-->\r\n    <work_dir>%WORK_DIRL2A%</work_dir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-26 17:03:23.519342', '2019-05-14 17:06:46.371449', '1.0.0', '1', '4', '26');
INSERT INTO `plugininfo` VALUES ('ZY3_RadCorrect', 'ZY3_RadCorrect', '<task name=\"ZY3_RadCorrect\" id=\"ZY3_RadCorrect_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3_CAT_TO_L1A_%YYYYMMDD_XXXXXX%\" priority=\"0\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <sensor>%SENSOR%</sensor>\r\n    <!--接收站名称-->\r\n    <station>%STATION%</station>\r\n    <Band>B1</Band>\r\n    <!-- B1/B2/B3/B4/B5     -->\r\n    <productid>%PRODUCTID_L1A%</productid>\r\n    <!--生成的产品ID-->\r\n    <sceneid>%SCENEID%</sceneid>\r\n    <!--对应景ID-->\r\n    <taskid>%TASKID%</taskid>\r\n    <!--所属业务任务ID，常规流程时为作业任务编号；运管流程时为任务单流水号-->\r\n    <level>L1A</level>\r\n    <!--int类型 是否做辐射校正 :0,不做；1，做-->\r\n    <rad>1</rad>\r\n    <!--int类型 是否做去噪处理 :0,不做；1，做-->\r\n    <do_denoise>0</do_denoise>\r\n    <!--int类型 是否做mtf :0,不做；1，做-->\r\n    <do_mtf>0</do_mtf>\r\n    <!--int类型 是否做太阳高度角校正 :0,不做；1，做-->\r\n    <do_sun_correction>0</do_sun_correction>\r\n    <!--int类型 是否做地形校正:0,不做；1，做-->\r\n    <do_terrain_correction>0</do_terrain_correction>\r\n    <do_raley>0</do_raley>\r\n    <sensor_correction>IMG</sensor_correction>\r\n    <earth_model>WGS 84</earth_model>\r\n    <project_model>UTM</project_model>\r\n    <resample_kernal>BI</resample_kernal>\r\n    <!--多光谱raw文件全路径名-->\r\n    <in_unpackfile_NAD>%UNPACKFILE_NAD%</in_unpackfile_NAD>\r\n    <in_unpackfile_FWD>%UNPACKFILE_FWD%</in_unpackfile_FWD>\r\n    <in_unpackfile_BWD>%UNPACKFILE_BWD%</in_unpackfile_BWD>\r\n    <in_unpackfile_MUX>%UNPACKFILE_MUX%</in_unpackfile_MUX>\r\n    <in_catDir></in_catDir>\r\n    <!--string类型 输入景元数据全路径-->\r\n    <in_metafile>%METAFILE%</in_metafile>\r\n    <!--string类型 输出产品目录-->\r\n    <out_productdir>%DIR_L1A%</out_productdir>\r\n    <!--string类型 工作目录-->\r\n    <work_dir>%WORK_DIRL1A%</work_dir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <!-- 发送进度消息的地址和端口  -->\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-26 17:03:31.187067', '2019-05-14 17:07:12.537554', '1.0.0', '1', '4', '22');
INSERT INTO `plugininfo` VALUES ('ZY3_TriggerCatalog', 'ZY3_TriggerCatalog', '<task name=\"ZY3_TriggerCatalog\" id=\"ZY3_TriggerCatalog_%YYYYMMDD_XXXXXX%\" orderid=\"ZY3_R0_TO_L0_%YYYYMMDD_XXXXXX%\">\r\n  <inputfilelist />\r\n  <outputfilelist />\r\n  <params>\r\n    <satellite>%SATELLITE%</satellite>\r\n    <taskid>%JOBTASKID%</taskid>\r\n    <signalid_S1>%SIGNALID1%</signalid_S1>\r\n    <signalid_S2>%SIGNALID2%</signalid_S2>\r\n    <unzipoutputdir>%OUTPUTDIR%</unzipoutputdir>\r\n    <server_address>172.19.4.119</server_address>\r\n    <port_number>18886</port_number>\r\n  </params>\r\n</task>', '2019-03-11 17:59:32.014092', '2019-03-11 18:18:39.388452', '1.0.0', '1', '4', '18');
INSERT INTO `plugininfo` VALUES ('测试', 'tet11', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"GF1_RadCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_RadCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_RadQuality 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_RadQuality</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_6\" name=\"125_VALUE1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_6_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_6_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_6_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_6_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE1</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_7\" name=\"GF1_GeoCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_7_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_7_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_7_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_7_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_7_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_7_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_7_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_GeoCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_7_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_8\" name=\"125_GeoQuality 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_8_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_8_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_8_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_8_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_8_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_8_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_8_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_GeoQuality</from>\r\n          <to xsi:type=\"tFormalExpression\">_8_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_9\" name=\"125_UpdateDB2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_9_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_9_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_9_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_9_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_9_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_9_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_9_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB2</from>\r\n          <to xsi:type=\"tFormalExpression\">_9_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_10\" name=\"125_VALUE2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_10_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_10_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_10_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_10_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_10_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_10_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_10_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE2</from>\r\n          <to xsi:type=\"tFormalExpression\">_10_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_10-_3\" sourceRef=\"_10\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n    <sequenceFlow id=\"_5-_6\" sourceRef=\"_5\" targetRef=\"_6\" />\r\n    <sequenceFlow id=\"_6-_7\" sourceRef=\"_6\" targetRef=\"_7\" />\r\n    <sequenceFlow id=\"_7-_8\" sourceRef=\"_7\" targetRef=\"_8\" />\r\n    <sequenceFlow id=\"_8-_9\" sourceRef=\"_8\" targetRef=\"_9\" />\r\n    <sequenceFlow id=\"_9-_10\" sourceRef=\"_9\" targetRef=\"_10\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_7\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_8\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_9\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_10\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_6\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6-_7\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_7-_8\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8-_9\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9-_10\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '2019-11-06 17:55:49', '2019-11-07 15:14:00', 'tet', '1', '4243', '45');

-- ----------------------------
-- Table structure for processdefine
-- ----------------------------
DROP TABLE IF EXISTS `processdefine`;
CREATE TABLE `processdefine` (
  `ProcessName` varchar(255) DEFAULT NULL,
  `DisplayName` varchar(255) DEFAULT NULL,
  `Priority` int(10) DEFAULT NULL,
  `Version` varchar(255) DEFAULT NULL,
  `CreateTime` varchar(60) DEFAULT NULL,
  `UpdateTime` varchar(60) DEFAULT NULL,
  `Enabled` tinyint(4) DEFAULT NULL,
  `DefineXml` text,
  `GroupID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processdefine
-- ----------------------------
INSERT INTO `processdefine` VALUES ('1111', '21', null, '111', '2019-04-17 18:09:59.477845', '2019-11-04 16:26:42.071175', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"测试插件B 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">Task_Test_B</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"测试插件C 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">Task_Test_C</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_4-_3\" sourceRef=\"_4\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '1');
INSERT INTO `processdefine` VALUES ('GF1_CAT_TO_L1A', 'GF1_CAT_TO_L1A', null, '1.0.0', '2019-04-09 18:17:34.497151', '2019-04-09 18:21:20.835515', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"GF1_RadCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_RadCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_4-_3\" sourceRef=\"_4\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '3');
INSERT INTO `processdefine` VALUES ('GF1_CAT_TO_L2A', 'GF1_CAT_TO_L2A', null, '1.0.0', '2019-04-09 18:21:35.012689', '2019-04-09 18:21:53.895132', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"GF1_RadCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_RadCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"GF1_GeoCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_GeoCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_6\" name=\"125_UpdateDB2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_6_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_6_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_6_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_6_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB2</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_6-_3\" sourceRef=\"_6\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n    <sequenceFlow id=\"_5-_6\" sourceRef=\"_5\" targetRef=\"_6\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_6\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '3');
INSERT INTO `processdefine` VALUES ('GF1_L0_TO_CAT', 'GF1_L0_TO_CAT', null, '1.0.0', '2019-03-11 17:38:00.580830', '2019-11-04 09:06:34.025015', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"GF1_Catalog 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_Catalog</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"125_VALUE1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE1</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_6\" name=\"125_UpdateDB2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_6_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_6_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_6_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_6_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB2</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_6-_3\" sourceRef=\"_6\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n    <sequenceFlow id=\"_5-_6\" sourceRef=\"_5\" targetRef=\"_6\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_6\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '3');
INSERT INTO `processdefine` VALUES ('GF1_Q63_CAT_TO_L2A', 'GF1_Q63_CAT_TO_L2A', null, '1.0.0', '2019-04-09 18:27:37.675381', '2019-05-09 19:20:50.018942', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"GF1_RadCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_RadCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_RadQuality 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_RadQuality</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_6\" name=\"125_VALUE1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_6_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_6_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_6_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_6_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE1</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_7\" name=\"GF1_GeoCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_7_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_7_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_7_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_7_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_7_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_7_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_7_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_GeoCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_7_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_8\" name=\"125_GeoQuality 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_8_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_8_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_8_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_8_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_8_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_8_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_8_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_GeoQuality</from>\r\n          <to xsi:type=\"tFormalExpression\">_8_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_9\" name=\"125_UpdateDB2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_9_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_9_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_9_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_9_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_9_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_9_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_9_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB2</from>\r\n          <to xsi:type=\"tFormalExpression\">_9_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_10\" name=\"125_VALUE2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_10_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_10_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_10_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_10_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_10_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_10_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_10_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE2</from>\r\n          <to xsi:type=\"tFormalExpression\">_10_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_10-_3\" sourceRef=\"_10\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n    <sequenceFlow id=\"_5-_6\" sourceRef=\"_5\" targetRef=\"_6\" />\r\n    <sequenceFlow id=\"_6-_7\" sourceRef=\"_6\" targetRef=\"_7\" />\r\n    <sequenceFlow id=\"_7-_8\" sourceRef=\"_7\" targetRef=\"_8\" />\r\n    <sequenceFlow id=\"_8-_9\" sourceRef=\"_8\" targetRef=\"_9\" />\r\n    <sequenceFlow id=\"_9-_10\" sourceRef=\"_9\" targetRef=\"_10\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_7\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_8\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_9\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_10\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_6\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6-_7\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_7-_8\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8-_9\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9-_10\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '3');
INSERT INTO `processdefine` VALUES ('GF1_R0_TO_L0', 'GF1_R0_TO_L0', null, '1.0.0', '2019-03-06 16:41:30.388155', '2019-11-04 08:54:00.587921', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"GF1_R0_TO_L0\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"125_UpdateDB 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UNZIP 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UNZIP</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"GF1_TriggerCatalog 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">GF1_TriggerCatalog</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_5-_3\" sourceRef=\"_5\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '3');
INSERT INTO `processdefine` VALUES ('KJ125_Q61_62_63_QAReport', 'KJ125_Q61_62_63_QAReport', null, '1.0.0', '2019-03-27 16:36:08.356775', '2019-03-30 16:55:47.480566', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"KJ125_Q61_62_63_QAReport\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"KJ125_GenerateQAReport 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">KJ125_GenerateQAReport</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_3\" sourceRef=\"_2\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '5');
INSERT INTO `processdefine` VALUES ('KJ125_Q64', 'KJ125_Q64', null, '1.0.0', '2019-04-02 11:49:09.744444', '2019-04-02 11:49:20.762611', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"125_Q64Report 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_Q64Report</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_3\" sourceRef=\"_2\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '5');
INSERT INTO `processdefine` VALUES ('KJ125_Q64_DIFF', 'KJ125_Q64_DIFF', null, '1.0.0', '2019-04-02 11:36:00.073780', '2019-04-02 11:36:22.188535', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"KJ125_DIFF 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">KJ125_DIFF</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"KJ125_TriggerR0Report 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">KJ125_TriggerR0Report</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_4-_3\" sourceRef=\"_4\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '5');
INSERT INTO `processdefine` VALUES ('KJ125_Q64_R0REPORT', 'KJ125_Q64_R0REPORT', null, '1.0.0', '2019-04-02 11:38:14.542590', '2019-06-04 18:57:21.713794', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"125_Q64R0Report 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_Q64R0Report</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_3\" sourceRef=\"_2\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '5');
INSERT INTO `processdefine` VALUES ('KJ125_Q65', 'KJ125_Q65', null, '1.0.0.0', '2019-03-11 14:19:23.075497', '2019-04-02 10:04:26.492953', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"125_Q65Report 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_Q65Report</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_3\" sourceRef=\"_2\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '5');
INSERT INTO `processdefine` VALUES ('KJ125_R0_TO_R0REPORT', 'KJ125_R0_TO_R0REPORT', null, '1.0.0', '2019-03-12 14:22:41.646801', '2019-03-15 12:25:13.754727', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"125_R0Report 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_R0Report</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UpdateDB 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"125_VALUE 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_5-_3\" sourceRef=\"_5\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '5');
INSERT INTO `processdefine` VALUES ('pro_test', 'pro测试', null, '1.0.0', '2018-12-13 14:00:58.330933', '2019-06-25 09:50:06.943337', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"测试插件B 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">Task_Test_B</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_3\" sourceRef=\"_2\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '1');
INSERT INTO `processdefine` VALUES ('ZY3_CAT_TO_L1A', 'ZY3_CAT_TO_L1A', null, '1.0.0', '2019-03-28 08:47:53.267713', '2019-03-28 08:48:22.040319', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"ZY3_RadCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">ZY3_RadCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_4-_3\" sourceRef=\"_4\" targetRef=\"_3\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '4');
INSERT INTO `processdefine` VALUES ('ZY3_CAT_TO_L2A', 'ZY3_CAT_TO_L2A', null, '1.0.0', '2019-03-28 08:50:42.714486', '2019-03-28 08:51:05.764066', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"ZY3_RadCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">ZY3_RadCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"ZY3_GeoCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">ZY3_GeoCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_6\" name=\"125_UpdateDB2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_6_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_6_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_6_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_6_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB2</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_6-_3\" sourceRef=\"_6\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n    <sequenceFlow id=\"_5-_6\" sourceRef=\"_5\" targetRef=\"_6\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_6\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '4');
INSERT INTO `processdefine` VALUES ('ZY3_L0_TO_CAT', 'ZY3_L0_TO_CAT', null, '1.0.0', '2019-03-11 18:22:34.648602', '2019-05-31 17:42:46.285403', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"ZY3_Catalog 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">ZY3_Catalog</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"125_VALUE1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE1</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_6\" name=\"125_UpdateDB2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_6_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_6_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_6_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_6_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB2</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_6-_3\" sourceRef=\"_6\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n    <sequenceFlow id=\"_5-_6\" sourceRef=\"_5\" targetRef=\"_6\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_6\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '4');
INSERT INTO `processdefine` VALUES ('ZY3_Q63_CAT_TO_L2A', 'ZY3_Q63_CAT_TO_L2A', null, '1.0.0', '2019-03-28 08:40:41.571550', '2019-05-09 19:20:27.653116', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"ZY3_RadCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">ZY3_RadCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_RadQuality 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_RadQuality</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"125_UpdateDB1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB1</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_6\" name=\"125_VALUE1 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_6_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_6_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_6_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_6_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_6_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE1</from>\r\n          <to xsi:type=\"tFormalExpression\">_6_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_7\" name=\"ZY3_GeoCorrect 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_7_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_7_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_7_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_7_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_7_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_7_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_7_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">ZY3_GeoCorrect</from>\r\n          <to xsi:type=\"tFormalExpression\">_7_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_8\" name=\"125_GeoQuality 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_8_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_8_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_8_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_8_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_8_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_8_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_8_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_GeoQuality</from>\r\n          <to xsi:type=\"tFormalExpression\">_8_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_9\" name=\"125_UpdateDB2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_9_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_9_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_9_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_9_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_9_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_9_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_9_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB2</from>\r\n          <to xsi:type=\"tFormalExpression\">_9_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_10\" name=\"125_VALUE2 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_10_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_10_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_10_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_10_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_10_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_10_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_10_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_VALUE2</from>\r\n          <to xsi:type=\"tFormalExpression\">_10_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_10-_3\" sourceRef=\"_10\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n    <sequenceFlow id=\"_5-_6\" sourceRef=\"_5\" targetRef=\"_6\" />\r\n    <sequenceFlow id=\"_6-_7\" sourceRef=\"_6\" targetRef=\"_7\" />\r\n    <sequenceFlow id=\"_7-_8\" sourceRef=\"_7\" targetRef=\"_8\" />\r\n    <sequenceFlow id=\"_8-_9\" sourceRef=\"_8\" targetRef=\"_9\" />\r\n    <sequenceFlow id=\"_9-_10\" sourceRef=\"_9\" targetRef=\"_10\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_7\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_8\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_9\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_10\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_6\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6-_7\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_7-_8\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8-_9\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9-_10\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '4');
INSERT INTO `processdefine` VALUES ('ZY3_R0_TO_L0', 'ZY3_R0_TO_L0', null, '1.0.0', '2019-03-11 18:01:13.699044', '2019-03-12 14:18:02.517818', '1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\r\n  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\r\n    <!-- process variables -->\r\n    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\r\n    <startEvent id=\"_1\" name=\"StartProcess\" />\r\n    <task id=\"_2\" name=\"125_UpdateDB 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_2_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_2_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_2_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_2_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_2_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UpdateDB</from>\r\n          <to xsi:type=\"tFormalExpression\">_2_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <endEvent id=\"_3\" name=\"End\">\r\n      <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_4\" name=\"125_UNZIP 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_4_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_4_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_4_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_4_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_4_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">125_UNZIP</from>\r\n          <to xsi:type=\"tFormalExpression\">_4_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <task id=\"_5\" name=\"ZY3_TriggerCatalog 1.0.0\" tns:taskName=\"ArsTask\">\r\n      <ioSpecification>\r\n        <dataInput id=\"_5_OrderInput\" name=\"Order\" />\r\n        <dataInput id=\"_5_TaskNameInput\" name=\"TaskName\" />\r\n        <inputSet>\r\n          <dataInputRefs>_5_OrderInput</dataInputRefs>\r\n          <dataInputRefs>_5_TaskNameInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_OrderInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">#{Order}</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_OrderInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n      <dataInputAssociation>\r\n        <targetRef>_5_TaskNameInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">ZY3_TriggerCatalog</from>\r\n          <to xsi:type=\"tFormalExpression\">_5_TaskNameInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <sequenceFlow id=\"_1-_2\" sourceRef=\"_1\" targetRef=\"_2\" />\r\n    <sequenceFlow id=\"_2-_4\" sourceRef=\"_2\" targetRef=\"_4\" />\r\n    <sequenceFlow id=\"_5-_3\" sourceRef=\"_5\" targetRef=\"_3\" />\r\n    <sequenceFlow id=\"_4-_5\" sourceRef=\"_4\" targetRef=\"_5\" />\r\n  </process>\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_1\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\">\r\n        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5-_3\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_4-_5\">\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n        <di:waypoint x=\"40\" y=\"40\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>', '4');

-- ----------------------------
-- Table structure for sys_app_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('1e89e6504be349a68c025976b3ecc1d1', 'a1', '698d51a19d8a121ce581499d7b701668', '会员甲', '', '115b386ff04f4352b060dffcd2b5d1da', '', '', '1', '121', '1212', '1212', '2015-12-02', '2015-12-25', '2', '111', '313596790@qq.com');

-- ----------------------------
-- Table structure for sys_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `sys_blacklist`;
CREATE TABLE `sys_blacklist` (
  `BLACKLIST_ID` varchar(100) NOT NULL,
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`BLACKLIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for sys_codeeditor
-- ----------------------------
DROP TABLE IF EXISTS `sys_codeeditor`;
CREATE TABLE `sys_codeeditor` (
  `CODEEDITOR_ID` varchar(100) NOT NULL,
  `TYPE` varchar(30) DEFAULT NULL COMMENT '类型',
  `FTLNMAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `CODECONTENT` text COMMENT '代码',
  PRIMARY KEY (`CODEEDITOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codeeditor
-- ----------------------------
INSERT INTO `sys_codeeditor` VALUES ('18c459804cb8467db7b49d141f94b833', 'createHtml', 'indexTemplate', '2017-07-03 02:09:34', '<!DOCTYPE html>\n<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en\"> <![endif]-->\n<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en\"> <![endif]-->\n<!--[if IE 8 ]><html class=\"ie ie8\" lang=\"en\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!-->\n<html lang=\"en\">\n<!--<![endif]-->\n<head>\n<meta charset=\"utf-8\">\n<title>${TITLE}</title>\n<meta name=\"keywords\" content=\"${KEYWORDS}\" />\n<meta name=\"description\" content=\"${DESCRIPTION}\">\n<meta name=\"author\" content=\"fhadmin\">\n<meta name=\"viewport\"\n	content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n<!-- CSS -->\n<link rel=\"stylesheet\" href=\"fh_static_1/css/style.css\">\n<link rel=\"stylesheet\" type=\"text/css\"\n	href=\"fh_static_1/css/settings.css\" media=\"screen\" />\n<!-- JS -->\n<script src=\"fh_static_1/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n<!-- jQuery -->\n<script src=\"fh_static_1/js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n<!-- jQuery easing -->\n<script src=\"fh_static_1/js/modernizr.custom.js\" type=\"text/javascript\"></script>\n<!-- Modernizr -->\n<script src=\"fh_static_1/js/jquery-ui-1.10.1.custom.min.js\"\n	type=\"text/javascript\"></script>\n<!-- tabs, toggles, accordion -->\n<script src=\"fh_static_1/js/custom.js\" type=\"text/javascript\"></script>\n<!-- jQuery initialization -->\n<!-- Responsive Menu -->\n<script src=\"fh_static_1/js/jquery.meanmenu.js\"></script>\n<script>\n	jQuery(document).ready(function() {\n		jQuery(\'header nav\').meanmenu();\n	});\n</script>\n<!-- Revolution Slider -->\n<script src=\"fh_static_1/js/jquery.themepunch.plugins.min.js\"></script>\n<script src=\"fh_static_1/js/jquery.themepunch.revolution.min.js\"></script>\n<script src=\"fh_static_1/js/revolution-slider-options.js\"></script>\n<!-- Prety photo -->\n<script src=\"fh_static_1/js/jquery.prettyPhoto.js\"></script>\n<script>\n	$(document).ready(function() {\n		$(\"a[data-gal^=\'prettyPhoto\']\").prettyPhoto();\n	});\n</script>\n<!-- Tooltip -->\n<script src=\"fh_static_1/js/tooltip.js\"></script>\n<!-- Flexisel -->\n<script type=\"text/javascript\" src=\"fh_static_1/js/jquery.flexisel.js\"></script>\n<!-- Favicons  -->\n<link rel=\"shortcut icon\" href=\"fh_static_1/images/favicon.ico\">\n<link rel=\"apple-touch-icon\" href=\"fh_static_1/images/apple-touch-icon.png\">\n<link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"fh_static_1/images/apple-touch-icon-72x72.png\">\n<link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"fh_static_1/images/apple-touch-icon-114x114.png\">\n</head>\n<body>\n\n	<!-- header 包含导航菜单 -->\n	<#include \"headerTemplate.ftl\"> \n	<!-- header 包含导航菜单 -->\n\n	<!-- REVOLUTION SLIDER -->\n	<div class=\"fullwidthbanner-container top-shadow\">\n		<div class=\"fullwidthbanner\">\n			<ul>\n				<#list fieldList1 as var>\n					<li data-transition=\"boxfade\" data-slotamount=\"${var_index+1+1}\" data-masterspeed=\"300\">\n						<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					</li>\n				</#list>\n			</ul>\n		</div>\n	</div>\n	<!-- END REVOLUTION SLIDER  -->\n	<div class=\"copyrights\">\n	</div>\n	<div class=\"container\">\n\n		<div class=\"sixteen columns welcome\">\n			<h3>\n				${TITLE1}\n				<br />\n				${TITLE2}\n			</h3>\n		</div>\n\n		<div class=\"separator\"></div>\n\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL1}\">\n					<i class=\"fa fa-desktop colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL1}\" class=\"dark-link\">${CPTITLE1}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT1}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL2}\">\n					<i class=\"fa fa-html5 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL2}\" class=\"dark-link\">${CPTITLE2}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT2}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL3}\">\n					<i class=\"fa fa-css3 colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL3}\" class=\"dark-link\">${CPTITLE3}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT3}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n		<div class=\"four columns\">\n			<!-- Icon Box -->\n			<div class=\"service\">\n				<a href=\"${CPTOURL4}\">\n					<i class=\"fa fa-magic colored square\"></i>\n				</a>\n				<h3 class=\"centered\">\n					<a href=\"${CPTOURL4}\" class=\"dark-link\">${CPTITLE4}</a>\n				</h3>\n				<p class=\"centered\">${CPCONTENT4}</p>\n			</div>\n			<!-- End Icon Box -->\n		</div>\n\n		<div class=\"clearfix\"></div>\n\n		<div class=\"separator\"></div>\n\n		<div class=\"sixteen columns\">\n			<h4 class=\"headline\">项目案例 ></h4>\n		</div>\n\n		<#list fieldList2 as var>\n		<div class=\"four columns identity\">\n			<div class=\"work\">\n				<a href=\"${var[1]}\" data-gal=\"prettyPhoto\" class=\"work-image\">\n					<img src=\"${var[1]}\" alt=\"${var[0]}\">\n					<div class=\"link-overlay fa fa-search\"></div>\n				</a>\n				<a href=\"${var[2]}\" class=\"work-name\">${var[0]}</a>\n				<div class=\"tags\">${var[3]}</div>\n			</div>\n		</div>\n		</#list>\n\n		<div class=\"clearfix\"></div>\n\n		<!-- begin promobox -->\n		<div class=\"sixteen columns\">\n			<div class=\"promo-box clearfix\">\n				<div class=\"text\">\n					<h3>${CONTENT1}</h3>\n					<p>${CONTENT2}</p>\n				</div>\n				<a class=\"btn big colored\" href=\"${TOURL}\" target=\"_blank\">\n					<i class=\"fa fa-hand-o-right\"></i>了解更多</a>\n			</div>\n		</div>\n		<!-- end promobox -->\n\n		<div class=\"separator\"></div>\n\n		<!-- Our Clients  -->\n		<div class=\"sixteen columns clients\">\n			<h4 class=\"headline\">合作伙伴 ></h4>\n\n			<!-- Start brand carousel -->\n			<ul id=\"flexiselDemo2\">\n			<#list fieldList3 as var>\n				<li onclick=\"window.location.href=\'${var[2]}\'\"><img src=\"${var[1]}\" alt=\"${var[0]}\" /></li>\n			</#list>	\n			</ul>\n			<div class=\"clearout\"></div>\n			<!-- End brand carousel -->\n		</div>\n\n	</div>\n	<!-- container -->\n	\n	<!-- footer 包含底部 -->\n	<#include \"footerTemplate.ftl\"> \n	<!-- footer 包含底部  -->\n\n	<script type=\"text/javascript\">\n		$(window).load(function() {\n		\n			$(\"#index\").addClass(\"current_page_item\");\n		\n			$(\"#flexiselDemo2\").flexisel({\n				visibleItems : 5,\n				animationSpeed : 1000,\n				autoPlay : true,\n				autoPlaySpeed : 3000,\n				pauseOnHover : true,\n				enableResponsiveBreakpoints : true,\n				responsiveBreakpoints : {\n					portrait : {\n						changePoint : 480,\n						visibleItems : 1\n					},\n					landscape : {\n						changePoint : 640,\n						visibleItems : 2\n					},\n					tablet : {\n						changePoint : 768,\n						visibleItems : 3\n					}\n				}\n			});\n\n		});\n	</script>\n	<!-- End Document  -->\n</body>\n</html>\n');

-- ----------------------------
-- Table structure for sys_createcode
-- ----------------------------
DROP TABLE IF EXISTS `sys_createcode`;
CREATE TABLE `sys_createcode` (
  `CREATECODE_ID` varchar(100) NOT NULL,
  `PACKAGENAME` varchar(50) DEFAULT NULL COMMENT '包名',
  `OBJECTNAME` varchar(50) DEFAULT NULL COMMENT '类名',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `FIELDLIST` varchar(5000) DEFAULT NULL COMMENT '属性集',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '描述',
  `FHTYPE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CREATECODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_createcode
-- ----------------------------
INSERT INTO `sys_createcode` VALUES ('002ea762e3e242a7a10ea5ca633701d8', 'system', 'Buttonrights', 'sys_,fh,BUTTONRIGHTS', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,255Q313596790', '2016-01-16 23:20:36', '按钮权限', 'single');
INSERT INTO `sys_createcode` VALUES ('043843a286f84549ad3fa71aac827f6f', 'system', 'FHlog', 'SYS_,fh,FHLOG', 'USERNAME,fh,String,fh,用户名,fh,是,fh,无,fh,100,fh,0Q313596790CZTIME,fh,Date,fh,操作时间,fh,否,fh,无,fh,32,fh,0Q313596790CONTENT,fh,String,fh,事件,fh,是,fh,无,fh,255,fh,0Q313596790', '2016-05-10 21:10:16', '操作日志记录', 'single');
INSERT INTO `sys_createcode` VALUES ('0ee023606efb45b9a3baaa072e502161', 'information', 'FtestMx', 'FH_,fh,FTESTMX', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,255,fh,0Q313596790CHANGDU,fh,Integer,fh,长度,fh,是,fh,无,fh,11,fh,0Q313596790', '2016-04-21 01:52:11', '主表测试(明细)', 'sontable');
INSERT INTO `sys_createcode` VALUES ('1be959583e82473b82f6e62087bd0d38', 'information', 'Attached', 'TB_,fh,ATTACHED', 'NAME,fh,String,fh,NAME,fh,是,fh,无,fh,255,fh,0Q313596790FDESCRIBE,fh,String,fh,FDESCRIBE,fh,是,fh,无,fh,255,fh,0Q313596790PRICE,fh,Double,fh,PRICE,fh,是,fh,无,fh,11,fh,2Q313596790CTIME,fh,Date,fh,CTIME,fh,否,fh,无,fh,32,fh,0Q313596790', '2016-04-21 17:07:59', '主表测试', 'fathertable');
INSERT INTO `sys_createcode` VALUES ('1f31658ecbbe4393aa21143464099331', 'web', 'Aboutus', 'web_,fh,ABOUTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 02:28:38', '关于我们', 'single');
INSERT INTO `sys_createcode` VALUES ('2796a020c8b5432db96b350bfa925484', 'web', 'Leavemsg', 'web_,fh,LEAVEMSG', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,10,fh,0Q313596790EMAIL,fh,String,fh,邮箱,fh,是,fh,无,fh,50,fh,0Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,50,fh,0Q313596790LCONTENT,fh,String,fh,内容,fh,是,fh,无,fh,2000,fh,0Q313596790CTIME,fh,Date,fh,提交时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-01-04 03:46:20', '访客留言', 'single');
INSERT INTO `sys_createcode` VALUES ('3da8e8bd757c44148d89931a54d29c88', 'system', 'UserPhoto', 'SYS_,fh,USERPHOTO', 'USERNAME,fh,String,fh,用户名,fh,否,fh,无,fh,30,fh,0Q313596790PHOTO0,fh,String,fh,原图,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO1,fh,String,fh,头像1,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO2,fh,String,fh,头像2,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO3,fh,String,fh,头像3,fh,否,fh,无,fh,100,fh,0Q313596790', '2016-06-05 17:54:25', '用户头像', 'single');
INSERT INTO `sys_createcode` VALUES ('3ee004016c984c08903317b6434024ff', 'web', 'OurBusiness', 'web_,fh,OURBUSINESS', 'TITLE1,fh,String,fh,介绍上,fh,是,fh,无,fh,255,fh,0Q313596790TITLE2,fh,String,fh,介绍下,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT1,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT2,fh,String,fh,内容上,fh,是,fh,无,fh,255,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-03 02:08:49', '网站信息', 'single');
INSERT INTO `sys_createcode` VALUES ('4173a8c56a504dd6b6213d2b9cd3e91b', 'information', 'AttachedMx', 'TB_,fh,ATTACHEDMX', 'NAME,fh,String,fh,NAME,fh,是,fh,无,fh,255,fh,0Q313596790TITLE,fh,String,fh,TITLE,fh,是,fh,无,fh,255,fh,0Q313596790CTIME,fh,Date,fh,CTIME,fh,否,fh,无,fh,32,fh,0Q313596790PRICE,fh,Double,fh,PRICE,fh,是,fh,无,fh,11,fh,2Q313596790', '2016-04-21 17:09:40', '主表测试(明细)', 'sontable');
INSERT INTO `sys_createcode` VALUES ('41e07fb03763434daef41cd99d0406c3', 'system', 'LogInImg', 'SYS_,fh,LOGINIMG', 'NAME,fh,String,fh,文件名,fh,是,fh,无,fh,30,fh,0Q313596790FILEPATH,fh,String,fh,路径,fh,是,fh,无,fh,100,fh,0Q313596790TYPE,fh,Integer,fh,状态,fh,是,fh,无,fh,2,fh,0Q313596790FORDER,fh,Integer,fh,排序,fh,是,fh,无,fh,3,fh,0Q313596790', '2016-06-03 17:53:22', '登录页面背景图片', 'single');
INSERT INTO `sys_createcode` VALUES ('463aaa745cd948a1b7dea8ae60d27402', 'web', 'Contactus', 'web_,fh,CONTACTUS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-04 03:01:12', '联系我们', 'single');
INSERT INTO `sys_createcode` VALUES ('49d985e081ed44e6b34ba1b8c5466e39', 'fhdb', 'TimingBackUp', 'DB_,fh,TIMINGBACKUP', 'JOBNAME,fh,String,fh,任务名称,fh,否,fh,无,fh,50Q313596790CREATE_TIME,fh,Date,fh,创建时间,fh,否,fh,无,fh,32Q313596790TABLENAME,fh,String,fh,表名,fh,是,fh,无,fh,50Q313596790TYPE,fh,Integer,fh,类型,fh,否,fh,无,fh,1Q313596790FHTIME,fh,String,fh,时间规则,fh,是,fh,无,fh,30Q313596790TIMEEXPLAIN,fh,String,fh,规则说明,fh,是,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790', '2016-04-09 11:53:38', '定时备份', 'single');
INSERT INTO `sys_createcode` VALUES ('4def60c58aa148b7998270978660ef30', 'fhoa', 'Fhfile', 'OA_,fh,FHFILE', 'NAME,fh,String,fh,文件名,fh,是,fh,无,fh,30,fh,0Q313596790FILEPATH,fh,String,fh,路径,fh,是,fh,无,fh,100,fh,0Q313596790CTIME,fh,Date,fh,上传时间,fh,否,fh,无,fh,32,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,100,fh,0Q313596790USERNAME,fh,String,fh,长传者,fh,否,fh,无,fh,50,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门ID,fh,否,fh,无,fh,100,fh,0Q313596790FILESIZE,fh,String,fh,文件大小,fh,否,fh,无,fh,10,fh,0Q313596790', '2016-05-27 20:52:01', '文件管理', 'single');
INSERT INTO `sys_createcode` VALUES ('52279e8d804e4108b4bd26dbc59f4573', 'web', 'Corporatephilosophy', 'web_,fh,CORPORATEPHILOSOPHY', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,50,fh,0Q313596790TOURL,fh,String,fh,内容链接,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-01-04 00:32:22', '公司理念', 'single');
INSERT INTO `sys_createcode` VALUES ('551f4b4d25de41418c3ba459499f9b46', 'web', 'News', 'web_,fh,NEWS', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,50,fh,0Q313596790CTIME,fh,Date,fh,发表时间,fh,否,fh,无,fh,32,fh,0Q313596790STEMFROM,fh,String,fh,来源,fh,是,fh,无,fh,100,fh,0Q313596790IMAGE,fh,String,fh,图片,fh,是,fh,无,fh,100,fh,0Q313596790SHORTCONTENT,fh,String,fh,简述,fh,是,fh,无,fh,300,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,5000,fh,0Q313596790', '2017-01-08 01:17:04', '新闻动态', 'single');
INSERT INTO `sys_createcode` VALUES ('ae92803163ff44539e91711cfbe35411', 'fhoa', 'Datajur', 'OA_,fh,DATAJUR', 'DEPARTMENT_IDS,fh,String,fh,部门ID组合,fh,否,fh,无,fh,5000,fh,0Q313596790STAFF_ID,fh,String,fh,员工ID,fh,否,fh,无,fh,100,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门ID,fh,是,fh,无,fh,100,fh,0Q313596790', '2016-04-27 03:49:39', '数据权限表', 'single');
INSERT INTO `sys_createcode` VALUES ('bd09981a1f0840e28517335c4b44ee29', 'web', 'Cooperation', 'web_,fh,COOPERATION', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,3000,fh,0Q313596790', '2017-01-07 03:06:10', '合作共赢', 'single');
INSERT INTO `sys_createcode` VALUES ('c937e21208914e5b8fb1202c685bbf2f', 'fhdb', 'Fhdb', 'DB_,fh,FHDB', 'USERNAME,fh,String,fh,操作用户,fh,否,fh,无,fh,50Q313596790BACKUP_TIME,fh,Date,fh,备份时间,fh,否,fh,无,fh,32Q313596790TABLENAME,fh,String,fh,表名,fh,是,fh,无,fh,50Q313596790SQLPATH,fh,String,fh,存储位置,fh,否,fh,无,fh,300Q313596790TYPE,fh,Integer,fh,类型,fh,是,fh,无,fh,1Q313596790DBSIZE,fh,String,fh,文件大小,fh,否,fh,无,fh,10Q313596790BZ,fh,String,fh,备注,fh,否,fh,无,fh,255Q313596790', '2016-03-30 13:46:54', '数据库管理', 'single');
INSERT INTO `sys_createcode` VALUES ('d618b9e1bffd467baa3acf774c01df52', 'system', 'Statistics', 'SYS_,fh,STATISTICS', 'IP,fh,String,fh,IP,fh,否,fh,无,fh,20,fh,0Q313596790AREA,fh,String,fh,地区,fh,否,fh,无,fh,255,fh,0Q313596790OPERATOR,fh,String,fh,运营商,fh,否,fh,无,fh,10,fh,0Q313596790CDATE,fh,Date,fh,日期,fh,否,fh,无,fh,32,fh,0Q313596790CTIME,fh,Date,fh,时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-06-27 01:47:28', '访问统计', 'single');
INSERT INTO `sys_createcode` VALUES ('daab367879994caebb1474b553a037ed', 'system', 'Blacklist', 'SYS_,fh,BLACKLIST', 'IP,fh,String,fh,IP,fh,是,fh,无,fh,20,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255,fh,0Q313596790CTIME,fh,Date,fh,时间,fh,否,fh,无,fh,32,fh,0Q313596790', '2017-06-27 18:27:37', '访客IP黑名单', 'single');
INSERT INTO `sys_createcode` VALUES ('fe239f8742194481a5b56f90cad71520', 'system', 'Fhbutton', 'SYS_,fh,FHBUTTON', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790QX_NAME,fh,String,fh,权限标识,fh,是,fh,无,fh,50Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790', '2016-01-15 18:38:40', '按钮管理', 'single');

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('0193ffbfae1e49e0b7810546cada316a', '济南', 'JiNan', '0030301', '1', '10f46a521ea0471f8d71ee75ac3b5f3a', '济南', '');
INSERT INTO `sys_dictionaries` VALUES ('096e4ec8986149d994b09e604504e38d', '黄浦区', 'huangpu', '0030201', '1', 'f1ea30ddef1340609c35c88fb2919bee', '黄埔', '');
INSERT INTO `sys_dictionaries` VALUES ('10f46a521ea0471f8d71ee75ac3b5f3a', '山东', 'ShanDong', '00303', '3', 'be4a8c5182c744d28282a5345783a77f', '山东省', '');
INSERT INTO `sys_dictionaries` VALUES ('12a62a3e5bed44bba0412b7e6b733c93', '北京', 'beijing', '00301', '1', 'be4a8c5182c744d28282a5345783a77f', '北京', '');
INSERT INTO `sys_dictionaries` VALUES ('507fa87a49104c7c8cdb52fdb297da12', '宣武区', 'xuanwuqu', '0030101', '1', '12a62a3e5bed44bba0412b7e6b733c93', '宣武区', '');
INSERT INTO `sys_dictionaries` VALUES ('66f1ff79b13947da98525aff7380ef50', '高新区', 'gaoxinqu', '003030101', '1', '0193ffbfae1e49e0b7810546cada316a', '高新区', '');
INSERT INTO `sys_dictionaries` VALUES ('8994f5995f474e2dba6cfbcdfe5ea07a', '语文', 'yuwen', '00201', '1', 'fce20eb06d7b4b4d8f200eda623f725c', '语文', '');
INSERT INTO `sys_dictionaries` VALUES ('8ea7c44af25f48b993a14f791c8d689f', '分类', 'fenlei', '001', '1', '0', '分类', '');
INSERT INTO `sys_dictionaries` VALUES ('be4a8c5182c744d28282a5345783a77f', '地区', 'diqu', '003', '3', '0', '地区', '');
INSERT INTO `sys_dictionaries` VALUES ('d428594b0494476aa7338d9061e23ae3', '红色', 'red', '00101', '1', '8ea7c44af25f48b993a14f791c8d689f', '红色', '');
INSERT INTO `sys_dictionaries` VALUES ('de9afadfbed0428fa343704d6acce2c4', '绿色', 'green', '00102', '2', '8ea7c44af25f48b993a14f791c8d689f', '绿色', '');
INSERT INTO `sys_dictionaries` VALUES ('f1ea30ddef1340609c35c88fb2919bee', '上海', 'shanghai', '00302', '2', 'be4a8c5182c744d28282a5345783a77f', '上海', '');
INSERT INTO `sys_dictionaries` VALUES ('fce20eb06d7b4b4d8f200eda623f725c', '课程', 'kecheng', '002', '2', '0', '课程', '');

-- ----------------------------
-- Table structure for sys_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhbutton`;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhbutton
-- ----------------------------
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06', '导出EXCEL', 'toExcel', '导出EXCEL');
INSERT INTO `sys_fhbutton` VALUES ('46992ea280ba4b72b29dedb0d4bc0106', '发邮件', 'email', '发送电子邮件');
INSERT INTO `sys_fhbutton` VALUES ('4efa162fce8340f0bd2dcd3b11d327ec', '导入EXCEL', 'FromExcel', '导入EXCEL到系统用户');
INSERT INTO `sys_fhbutton` VALUES ('cc51b694d5344d28a9aa13c84b7166cd', '发短信', 'sms', '发送短信');

-- ----------------------------
-- Table structure for sys_fhlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhlog`;
CREATE TABLE `sys_fhlog` (
  `FHLOG_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `CZTIME` varchar(32) DEFAULT NULL COMMENT '操作时间',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '事件',
  PRIMARY KEY (`FHLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhlog
-- ----------------------------
INSERT INTO `sys_fhlog` VALUES ('0787892373fc466c8218f7261035414b', 'admin', '2019-11-08 11:39:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('083e47907aee4772ac13fe5795145e3c', 'admin', '2019-11-06 16:20:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('08f53801d0214e00ac14d3352c4716c1', 'admin', '2019-11-08 17:42:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('092b276a0fdd471186d79e907a40ddf6', 'admin', '2019-11-06 17:39:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0b5ee9e07ca445f2b270055e9784a0d8', 'admin', '2019-11-06 11:17:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0caf754be56b416ba77009c1b2d96699', 'admin', '2019-11-06 11:13:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0da1958b21ba43daa53d1da9e5e0b2a8', 'admin', '2019-11-05 10:06:21', '修改菜单流程建模与配置');
INSERT INTO `sys_fhlog` VALUES ('129a4d6f1d504ecbbdce46dd28a6ce7e', 'admin', '2019-06-20 10:33:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('13f323ff58c54d14a93203b3e0941a9a', 'admin', '2019-11-08 17:09:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('187a192e05834f418deeca014da27fe3', 'admin', '2019-11-07 15:12:46', '修改菜单tet11');
INSERT INTO `sys_fhlog` VALUES ('1bc797ec9897406ea8f931f9672dfadc', 'wk123', '2019-11-07 16:16:10', '退出');
INSERT INTO `sys_fhlog` VALUES ('1c76eb4bfbe64e87adb41e91c887b204', 'admin', '2019-11-05 10:06:39', '修改菜单插件管理');
INSERT INTO `sys_fhlog` VALUES ('1d06f4ea72a541f18e36bce675f7bbd4', 'admin', '2019-06-20 10:43:35', '新增菜单双色球管理');
INSERT INTO `sys_fhlog` VALUES ('1d7b7e38102a4ea1a737394f03a2d0cf', 'admin', '2019-11-05 17:20:27', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('2032bcd5e1df4667a0ff504d82124134', 'admin', '2019-11-08 16:27:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2163bec6cad344ffae6ce198620ef4c8', 'admin', '2019-06-20 10:48:37', '修改add_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('222adec5d9644aedb485d6a1ebb7341e', 'admin', '2019-11-08 19:22:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('238f9d31e1ed4d5a95d0d258569fe2db', 'wk123', '2019-11-07 16:17:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('26b131598ad140268c9483218ec6e7cb', 'admin', '2019-11-05 14:14:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('27ae89b4ee974af3bd27d07713a3332c', 'admin', '2019-11-06 17:46:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('29ea6e59db89477abc2ca8fc90ceeb39', 'admin', '2019-11-06 17:35:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2af85ecd78ba49b6b8925ca95281d639', 'admin', '2019-11-08 15:33:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2b38d17fbd8a46278176dd9fe01fef1a', 'admin', '2019-11-05 09:55:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2d479212c3e845ea9365d87ef4e4358e', 'wk123', '2019-11-07 16:13:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('31cf0de3cea644ff8915110e632ae831', 'admin', '2019-04-02 10:28:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('31e3bc05636a441db8429045b645ef4c', 'admin', '2019-11-06 16:23:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('31ea74de7f0346ff80f8f67a4b9cb5d2', 'admin', '2019-11-07 14:28:03', '修改菜单tet');
INSERT INTO `sys_fhlog` VALUES ('33a77af2dac8423c8252ab4d301bd37e', 'admin', '2019-11-08 16:36:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('33b84a0310f64a82bf82e4c620670b02', 'admin', '2019-11-05 17:09:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c53d77f58124adfbedc834759b3c90d', 'admin', '2019-11-07 16:10:32', '修改菜单流程管理');
INSERT INTO `sys_fhlog` VALUES ('3fed124c2a7b42018c46d512b97f680f', 'admin', '2019-11-06 15:01:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('403231e39400450cb7d1b56347f7d5b2', 'admin', '2019-11-08 09:39:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4073aa6e6e374ebeae28b3d01a23d468', 'admin', '2019-11-06 09:31:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('449ca851037d4cd6a8cf1795c9ab61f4', 'admin', '2019-11-07 16:16:46', '修改edit_qx权限，角色ID为:8a941deb5633427d918f54ee86cf80d3');
INSERT INTO `sys_fhlog` VALUES ('4822532bb4f44b53b7894c84c72b645d', 'admin', '2019-11-07 16:16:38', '修改add_qx权限，角色ID为:8a941deb5633427d918f54ee86cf80d3');
INSERT INTO `sys_fhlog` VALUES ('48ade0c04d0a4b9bb56e708dc8f98d59', 'admin', '2019-11-06 17:31:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4e580c8c317c4ea5bc0f7615e7af0efc', 'admin', '2019-11-06 09:39:34', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('51807457bd9147f59df48c316dda6080', 'admin', '2019-06-20 15:55:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5515d01a8f2e4a58b9292cc3d69e580c', 'admin', '2019-04-02 11:04:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('58127d56102148f5a2f61e93d850e30b', 'admin', '2019-11-07 16:16:49', '修改cha_qx权限，角色ID为:8a941deb5633427d918f54ee86cf80d3');
INSERT INTO `sys_fhlog` VALUES ('58b39f820c3c49cca1dabb9e2e3c142b', 'admin', '2019-11-05 10:56:08', '退出');
INSERT INTO `sys_fhlog` VALUES ('5bb71b880cab419c851bc12c60a4a29e', 'admin', '2019-11-07 16:16:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6030d653325043efb3ce829e3ddb454b', 'admin', '2019-11-08 17:49:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('605baafa1c904c8c88f53d7de9e08aea', 'admin', '2019-06-20 15:23:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6384762eb16d4ecea55ef4cc8090c274', 'admin', '2019-11-08 15:42:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64ad899d959a46c0b0bfc32e4646d831', 'admin', '2019-05-05 09:33:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6cf04d8b34954eb9a14ee4174ac3be36', 'admin', '2019-11-08 09:49:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6d8d459b35de4faa94a71a42632a5ecc', 'admin', '2019-03-14 15:16:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6f58c92a876c4128b88e898ecc8dd428', 'admin', '2019-11-06 11:14:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('720d0794aede4ad5be983f8e1dcadcc3', 'admin', '2019-11-06 17:54:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('73ba73f484434ef689f8248da1c8f1b1', 'admin', '2019-11-07 15:13:54', '修改菜单tet11');
INSERT INTO `sys_fhlog` VALUES ('750e549ce8554797b3e122cdac23c13f', 'admin', '2019-11-05 14:16:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75aef2e745bb435a90248ae9d4734996', 'admin', '2019-11-05 14:12:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75cb959d7d6348779c149b10db2636c6', 'admin', '2019-11-08 15:41:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('79fca296f15b405e806baba2e74d4873', 'admin', '2018-03-09 14:58:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('822f3d1966da40738328ecd779e4acb4', 'admin', '2019-11-08 19:03:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('86b44855152c431fa0e571454ab018fc', 'admin', '2019-11-05 15:57:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8794f7e9ff22438eb573540467162e8e', 'admin', '2019-06-20 10:44:42', '修改菜单双色球历史');
INSERT INTO `sys_fhlog` VALUES ('88319eb5d9864992ae7ead64bf763c5f', 'admin', '2019-06-20 10:47:46', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('89a889f65e80465782d9e8edf924cf8d', 'wk123', '2019-11-07 16:12:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8a30c12fac2d4b7b8a4ab5822c5fc3b1', 'admin', '2019-11-08 17:49:10', '修改菜单流程管理');
INSERT INTO `sys_fhlog` VALUES ('8a64628561a7424093d0887d02c32112', 'admin', '2019-06-20 10:48:44', '修改del_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('8a82577c5a3a43898e5e50e9544e6726', 'admin', '2019-11-05 10:06:42', '退出');
INSERT INTO `sys_fhlog` VALUES ('8cc40db078b841a5861f674339c31dc1', 'admin', '2019-06-20 15:29:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8ccf028b65d640d198779fdec8d1bf60', 'admin', '2019-03-14 15:14:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8de648f9beca4730846053a8621dbe86', 'admin', '2019-11-07 16:13:00', '退出');
INSERT INTO `sys_fhlog` VALUES ('8ecbd3a3022a407594ede6a5c07292e2', 'admin', '2019-06-20 10:48:19', '修改角色菜单权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('8f030cc7686b4932bbb4c749014cb7e4', 'admin', '2019-11-05 17:21:40', '新增菜单fsfsstt');
INSERT INTO `sys_fhlog` VALUES ('8f4631c8c1654a989c8a96d427363a86', 'admin', '2019-11-06 15:41:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8f4d12663c8444aea16476f4e6bdaf27', 'admin', '2019-11-08 17:48:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8ff4a12a9796405ba850aee0bd211edb', 'wk123', '2019-11-07 16:20:44', '退出');
INSERT INTO `sys_fhlog` VALUES ('9073107524ee40579cf74e01da139c07', 'admin', '2019-11-05 16:16:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9076b6ad9c3440549de8594521c5bb3b', 'admin', '2019-11-05 16:21:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('90d79185d05045848faac5a4c57d4de4', 'admin', '2019-11-08 17:06:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('92ed402c4e034f72a73b82a64217cbcd', 'admin', '2019-04-02 10:49:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('956810aa348e422a8bcc814eac115073', 'admin', '2019-11-08 15:47:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95686279fbc7454dbe64e822ffd8f551', 'admin', '2019-11-07 10:10:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9636aca470bf480f87e0c0514590ce43', 'admin', '2019-11-06 17:48:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('96d97f05a037411e9aabdfe34a41e737', 'admin', '2019-11-05 10:56:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9841d1fcc2fa41bbbcd3400442d625f6', 'admin', '2019-11-05 10:06:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9db98424c16844d08eb83094493ac809', 'admin', '2019-11-08 14:08:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9eb83e5847fa4b3c9033d932964e9197', 'admin', '2019-11-07 15:11:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9f0a435cd99e46719d8968ce6446a249', 'admin', '2019-11-07 16:17:00', '退出');
INSERT INTO `sys_fhlog` VALUES ('a055e7d724814a85951ed5503c639b75', 'admin', '2019-11-06 15:41:46', '修改菜单ces测');
INSERT INTO `sys_fhlog` VALUES ('a076bbbc721e453db67763f610b4de1d', 'admin', '2019-06-20 10:42:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a0909fd538e64367b72da34a323283c3', 'admin', '2019-11-07 16:20:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1f1b272d1f243d9ad9e84c63f3214e5', 'admin', '2019-11-05 15:42:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2354f0100d2488e95af77fccfe0a4f8', 'admin', '2019-11-05 14:57:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a353460d3e3e470d9985cafd24b3b5e5', 'admin', '2018-03-09 14:58:20', '退出');
INSERT INTO `sys_fhlog` VALUES ('a3c82d691a824078a1e2baf305d39c39', 'admin', '2019-11-05 15:52:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a4e4b5da37d149eb8438c05a73975d62', 'admin', '2019-11-06 17:43:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a5dda5d7449f442ba0550a85a254d072', 'admin', '2019-11-08 15:34:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a5e147ed8f264a73a0ba6f0f4c69bba9', 'admin', '2019-11-08 17:52:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a67d46cff18f472e97184f3f6a10b06b', 'admin', '2019-11-08 15:44:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a93493b42f754154b3f03576a09b367f', 'admin', '2019-11-05 14:03:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4b354535d99404db597525e68824e0f', 'admin', '2019-06-20 10:45:31', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('b4cc2fe5528145fa8cfb8f973f28516e', 'admin', '2019-06-20 10:44:08', '新增菜单双色球历史');
INSERT INTO `sys_fhlog` VALUES ('b58ff0df0ef0400984d33cc1e2012f01', 'admin', '2019-11-05 10:56:40', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('b67a12bc313940bd9c40fe5412b5463e', 'admin', '2019-11-06 16:16:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b810c20662e54ee0b6f11468b74da8ab', 'admin', '2019-11-05 17:19:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b984a88194164570b2bb4296359ad222', 'admin', '2019-11-07 16:11:33', '新增系统用户：wk123');
INSERT INTO `sys_fhlog` VALUES ('bb59f51c73a24ea5b8fbaadab936d5ad', 'admin', '2019-11-05 15:31:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bd317acbe100480c805eeaa0597baecd', 'admin', '2019-11-05 15:45:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c16ed890df2e4e1084764bd9d99f9f54', 'admin', '2019-11-05 10:55:08', '修改菜单插件管理');
INSERT INTO `sys_fhlog` VALUES ('c42ed1b736bf4e73946bd756740a8a74', 'admin', '2019-06-20 10:48:30', '修改cha_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('c458936e99df4faa93ab7cc1f74f25c4', 'admin', '2019-11-07 15:13:09', '修改菜单tet11');
INSERT INTO `sys_fhlog` VALUES ('c4f0526c017849bc9aeb5ba9318f8dba', 'admin', '2019-11-05 10:56:01', '新增菜单流程管理');
INSERT INTO `sys_fhlog` VALUES ('c5678a25064040dba8f737501167e113', 'admin', '2019-11-05 15:19:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c6b9cb95accb43ceb17de9a525c74bda', 'admin', '2019-06-20 10:48:51', '修改edit_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('c86c607b0eb448d190309e6ab6604f7f', 'admin', '2019-11-07 11:10:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c9c7e0fa36bc400aa7f827ab02b169f8', 'admin', '2019-11-06 11:10:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('caf5e90663ac4357a428873e30b8b6eb', 'admin', '2019-11-08 17:49:14', '退出');
INSERT INTO `sys_fhlog` VALUES ('cb57c72b4b064c28b33f31cc5f545bc0', 'admin', '2019-11-07 16:12:00', '新增角色:流程管理员');
INSERT INTO `sys_fhlog` VALUES ('ce37262567ca4a9d8d1050cda52e4e25', 'admin', '2019-06-20 10:49:47', '退出');
INSERT INTO `sys_fhlog` VALUES ('d37cd121bf6642c38fc6917cc2dc81f4', 'admin', '2019-11-05 15:04:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d424cf07078343079f9f4c8202123e0f', 'admin', '2019-11-05 15:55:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d5ae728aff87431cbdecefeb6f004fd2', 'admin', '2019-04-02 10:27:42', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('d60c7d47ea37410eb39c367403f6bd03', 'admin', '2019-06-20 10:49:42', '新增系统用户：wk');
INSERT INTO `sys_fhlog` VALUES ('da2e517717ee4f7288069e7faef6cfbf', 'admin', '2019-11-07 15:08:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dac374f166e04120aa3fb334e1161ba6', 'admin', '2019-11-08 19:12:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dd312475e56c4f0abd037121741a9490', 'admin', '2019-06-20 10:45:43', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('dd6043fddc524ffb8b602060832f67f5', 'admin', '2019-11-07 16:12:21', '修改系统用户：wk123');
INSERT INTO `sys_fhlog` VALUES ('deb16bff63d84f65af94d8b98b8fe080', 'admin', '2019-11-07 16:12:10', '修改角色菜单权限，角色ID为:8a941deb5633427d918f54ee86cf80d3');
INSERT INTO `sys_fhlog` VALUES ('e00d0a4178d74b9c9b5c41f32777bd91', 'admin', '2019-11-07 16:16:41', '修改del_qx权限，角色ID为:8a941deb5633427d918f54ee86cf80d3');
INSERT INTO `sys_fhlog` VALUES ('e2e0fbae9aee40f19467d67fd1e9b981', 'admin', '2019-04-02 10:27:37', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('e73de37021b64ea8a0a0b6396d7d36c3', 'admin', '2019-11-05 10:56:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e95a2a771fda4d45a768a5f125f9bc31', 'admin', '2019-11-05 14:19:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ef3bbcaaf212405ebf1328bde2e0fb72', 'admin', '2019-06-20 10:44:26', '修改菜单双色球历史');
INSERT INTO `sys_fhlog` VALUES ('f067623672be422d9283cb9d209ee20b', 'admin', '2019-11-08 15:39:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f0a2a9b9ba3e459d94903f7514c8e0ba', 'wk', '2019-06-20 10:49:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f2a2dce9e564448b83346dd4f36ea886', 'admin', '2019-11-07 14:25:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4563bb26fc840ec9b0c9f07dd5f857c', 'admin', '2019-11-08 15:41:34', '修改菜单流程管理');
INSERT INTO `sys_fhlog` VALUES ('f5330244be6145df83091f7f17fdd5f8', 'admin', '2019-11-08 15:41:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f698e649f435485fbdc314759e57a09d', 'admin', '2019-11-07 15:14:00', '修改菜单tet11');
INSERT INTO `sys_fhlog` VALUES ('fa18f2f5cead48aca5fee1c40b3f057e', 'admin', '2019-11-05 10:56:43', '退出');
INSERT INTO `sys_fhlog` VALUES ('fd50ab300ba94fad9bade50ea7fcf1c8', 'admin', '2019-06-20 15:56:16', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('fdea79aa05e647b6bd1af0b55824d137', 'admin', '2019-06-20 14:55:45', '登录系统');

-- ----------------------------
-- Table structure for sys_loginimg
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginimg`;
CREATE TABLE `sys_loginimg` (
  `LOGINIMG_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) DEFAULT NULL COMMENT '路径',
  `TYPE` int(2) NOT NULL COMMENT '状态',
  `FORDER` int(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`LOGINIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_loginimg
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', '#', '1', '1', 'menu-icon fa fa-lock black', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', '日志管理', 'fhlog/list.do', '1', '6', 'menu-icon fa fa-book blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('6', '资源管理', '#', '0', '5', 'menu-icon fa fa-credit-card green', '2', '1');
INSERT INTO `sys_menu` VALUES ('7', '图片管理', '#', '6', '1', 'menu-icon fa fa-folder-o pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('8', '性能监控', 'druid/index.html', '9', '8', 'menu-icon fa fa-tachometer red', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '系统工具', '#', '0', '3', 'menu-icon fa fa-cog black', '2', '1');
INSERT INTO `sys_menu` VALUES ('22', '一级菜单', '#', '0', '10', 'menu-icon fa fa-fire orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('23', '二级菜单', '#', '22', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('24', '三级菜单', '#', '23', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('30', '四级菜单', '#', '24', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('31', '五级菜单1', '#', '30', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('32', '五级菜单2', '#', '30', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('33', '六级菜单', '#', '31', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('34', '六级菜单2', 'login_default.do', '31', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('35', '四级菜单2', 'login_default.do', '24', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('36', '角色(基础权限)', 'role.do', '2', '1', 'menu-icon fa fa-key orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('37', '按钮权限', 'buttonrights/list.do', '2', '2', 'menu-icon fa fa-key green', '1', '1');
INSERT INTO `sys_menu` VALUES ('38', '菜单管理', 'menu/listAllMenu.do', '1', '3', 'menu-icon fa fa-folder-open-o brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('39', '按钮管理', 'fhbutton/list.do', '1', '2', 'menu-icon fa fa-download orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('40', '用户管理', '#', '0', '2', 'menu-icon fa fa-users blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('41', '系统用户', 'user/listUsers.do', '40', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('42', '会员管理', 'happuser/listUsers.do', '40', '2', 'menu-icon fa fa-users orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('43', '数据字典', 'dictionaries/listAllDict.do?DICTIONARIES_ID=0', '1', '4', 'menu-icon fa fa-book purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('44', '代码生成器', '#', '9', '0', 'menu-icon fa fa-cogs brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('45', '七级菜单1', '#', '33', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('46', '七级菜单2', '#', '33', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('47', '八级菜单', 'login_default.do', '45', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('51', '图片列表', 'pictures/list.do', '7', '1', 'menu-icon fa fa-folder-open-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('52', '图片爬虫', 'pictures/goImageCrawler.do', '7', '2', 'menu-icon fa fa-cloud-download green', '1', '1');
INSERT INTO `sys_menu` VALUES ('53', '表单构建器', 'tool/goFormbuilder.do', '9', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('54', '数据库管理', '#', '0', '9', 'menu-icon fa fa-hdd-o blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('55', '数据库备份', 'brdb/listAllTable.do', '54', '1', 'menu-icon fa fa-cloud-upload blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('56', '数据库还原', 'brdb/list.do', '54', '3', 'menu-icon fa fa-cloud-download blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('57', '备份定时器', 'timingbackup/list.do', '54', '2', 'menu-icon fa fa-tachometer blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('58', 'SQL编辑器', 'sqledit/view.do', '54', '4', 'menu-icon fa fa-pencil-square-o blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('61', '反向生成', 'recreateCode/list.do', '44', '2', 'menu-icon fa fa-cogs blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('62', '正向生成', 'createCode/list.do', '44', '1', 'menu-icon fa fa-cogs green', '1', '1');
INSERT INTO `sys_menu` VALUES ('67', '首页管理', '#', '0', '11', 'menu-icon fa fa-globe green', '2', '1');
INSERT INTO `sys_menu` VALUES ('68', '网站信息', 'information/list.do', '67', '1', 'menu-icon fa fa-book blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('69', '轮播图片', 'image/list.do?TYPE=1', '67', '2', 'menu-icon fa fa-camera-retro green', '1', '1');
INSERT INTO `sys_menu` VALUES ('70', '项目案例', 'image/list.do?TYPE=2', '67', '3', 'menu-icon fa fa-camera-retro blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('71', '合作伙伴', 'image/list.do?TYPE=3', '67', '4', 'menu-icon fa fa-camera-retro purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('72', '技术团队', 'image/list.do?TYPE=4', '67', '5', 'menu-icon fa fa-camera-retro orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('73', '业务说明', 'ourbusiness/list.do', '67', '1', 'menu-icon fa fa-book green', '1', '1');
INSERT INTO `sys_menu` VALUES ('74', '公司理念', 'corporatephilosophy/list.do', '67', '1', 'menu-icon fa fa-book purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('75', '联系我们', 'contactus/list.do', '80', '5', 'menu-icon fa fa-home green', '1', '1');
INSERT INTO `sys_menu` VALUES ('76', '访客留言', 'leavemsg/list.do', '80', '6', 'menu-icon fa fa-bookmark blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('77', '关于我们', 'aboutus/list.do', '80', '1', 'menu-icon fa fa-home purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('78', '合作共赢', 'cooperation/list.do', '80', '3', 'menu-icon fa fa-fire green', '1', '1');
INSERT INTO `sys_menu` VALUES ('79', '产品案例', 'image/list.do?TYPE=5', '80', '2', 'menu-icon fa fa-camera-retro orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('80', '内容管理', '#', '0', '12', 'menu-icon fa fa-book blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('81', '新闻动态', 'news/list.do', '80', '4', 'menu-icon fa fa-pencil-square-o red', '1', '1');
INSERT INTO `sys_menu` VALUES ('82', '模版管理', '#', '0', '13', 'menu-icon fa fa-folder-open orange', '2', '1');
INSERT INTO `sys_menu` VALUES ('83', '模版一', '#', '82', '1', 'menu-icon fa fa-folder-open-o blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('84', '模版二', '#', '82', '2', 'menu-icon fa fa-folder-open-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('85', '模版三', '#', '82', '3', 'menu-icon fa fa-folder-open-o purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('86', '首页', 'codeeditor/goEdit.do?type=createHtml&ftl=indexTemplate', '83', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('87', '关于我们', 'codeeditor/goEdit.do?type=createHtml&ftl=aboutusTemplate', '83', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('88', '产品案例', 'codeeditor/goEdit.do?type=createHtml&ftl=productTemplate', '83', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('89', '合作共赢', 'codeeditor/goEdit.do?type=createHtml&ftl=cooperationTemplate', '83', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('90', '新闻动态', 'codeeditor/goEdit.do?type=createHtml&ftl=newsTemplate', '83', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('91', '联系我们', 'codeeditor/goEdit.do?type=createHtml&ftl=contactusTemplate', '83', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('92', '新闻详情', 'codeeditor/goEdit.do?type=createHtml&ftl=newsdetailTemplate', '83', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('93', '页头', 'codeeditor/goEdit.do?type=createHtml&ftl=headerTemplate', '83', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('94', '页尾', 'codeeditor/goEdit.do?type=createHtml&ftl=footerTemplate', '83', '9', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('95', '首页', 'codeeditor/goEdit.do?type=createHtml2&ftl=indexTemplate', '84', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('96', '关于我们', 'codeeditor/goEdit.do?type=createHtml2&ftl=aboutusTemplate', '84', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('97', '产品案例', 'codeeditor/goEdit.do?type=createHtml2&ftl=productTemplate', '84', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('98', '合作共赢', 'codeeditor/goEdit.do?type=createHtml2&ftl=cooperationTemplate', '84', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('99', '新闻动态', 'codeeditor/goEdit.do?type=createHtml2&ftl=newsTemplate', '84', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('100', '联系我们', 'codeeditor/goEdit.do?type=createHtml2&ftl=contactusTemplate', '84', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('101', '新闻详情', 'codeeditor/goEdit.do?type=createHtml2&ftl=newsdetailTemplate', '84', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('102', '页头', 'codeeditor/goEdit.do?type=createHtml2&ftl=headerTemplate', '84', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('103', '页尾', 'codeeditor/goEdit.do?type=createHtml2&ftl=footerTemplate', '84', '9', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('104', '首页', 'codeeditor/goEdit.do?type=createHtml3&ftl=indexTemplate', '85', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('105', '关于我们', 'codeeditor/goEdit.do?type=createHtml3&ftl=aboutusTemplate', '85', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('106', '产品案例', 'codeeditor/goEdit.do?type=createHtml3&ftl=productTemplate', '85', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('107', '合作共赢', 'codeeditor/goEdit.do?type=createHtml3&ftl=cooperationTemplate', '85', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('108', '新闻动态', 'codeeditor/goEdit.do?type=createHtml3&ftl=newsTemplate', '85', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('109', '联系我们', 'codeeditor/goEdit.do?type=createHtml3&ftl=contactusTemplate', '85', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('110', '新闻详情', 'codeeditor/goEdit.do?type=createHtml3&ftl=newsdetailTemplate', '85', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('111', '页头', 'codeeditor/goEdit.do?type=createHtml3&ftl=headerTemplate', '85', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('112', '页尾', 'codeeditor/goEdit.do?type=createHtml3&ftl=footerTemplate', '85', '9', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('113', '访问记录', 'statistics/grlist.do', '1', '7', 'menu-icon fa fa-globe orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('114', 'IP黑名单', 'blacklist/list.do', '1', '8', 'menu-icon fa fa-adjust black', '1', '1');
INSERT INTO `sys_menu` VALUES ('115', '流量统计', 'chartsstatistics/pvcharts.do', '1', '9', 'menu-icon fa fa-bar-chart-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('116', '模版四', '#', '82', '4', 'menu-icon fa fa-folder-open-o pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('117', '首页', 'codeeditor/goEdit.do?type=createHtml4&ftl=indexTemplate', '116', '1', 'menu-icon fa fa-folder red', '1', '1');
INSERT INTO `sys_menu` VALUES ('118', '关于我们', 'codeeditor/goEdit.do?type=createHtml4&ftl=aboutusTemplate', '116', '2', 'menu-icon fa fa-folder green', '1', '1');
INSERT INTO `sys_menu` VALUES ('119', '产品案例', 'codeeditor/goEdit.do?type=createHtml4&ftl=productTemplate', '116', '3', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('120', '合作共赢', 'codeeditor/goEdit.do?type=createHtml4&ftl=cooperationTemplate', '116', '4', 'menu-icon fa fa-folder purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('121', '新闻动态', 'codeeditor/goEdit.do?type=createHtml4&ftl=newsTemplate', '116', '5', 'menu-icon fa fa-folder pink', '1', '1');
INSERT INTO `sys_menu` VALUES ('122', '新闻详情', 'codeeditor/goEdit.do?type=createHtml4&ftl=newsdetailTemplate', '116', '6', 'menu-icon fa fa-folder blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('123', '联系我们', 'codeeditor/goEdit.do?type=createHtml4&ftl=contactusTemplate', '116', '7', 'menu-icon fa fa-folder grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('124', '页头', 'codeeditor/goEdit.do?type=createHtml4&ftl=headerTemplate', '116', '8', 'menu-icon fa fa-folder brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('125', '尾页', 'codeeditor/goEdit.do?type=createHtml4&ftl=footerTemplate', '116', '9', 'menu-icon fa fa-folder orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('126', '流程建模与配置', '#', '0', '14', 'menu-icon fa fa-leaf black', '2', '1');
INSERT INTO `sys_menu` VALUES ('127', '插件管理', 'groupInfo/listAllgroupInfo.do', '126', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('128', '流程管理', 'process_Define/listAllprocessDefine.do', '126', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('129', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理组', '680564733841876926786667281727923160014', '0', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('115b386ff04f4352b060dffcd2b5d1da', '中级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('1b67fc82ce89457a8347ae53e43a347e', '初级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('2', '会员组', '', '0', '0', '0', '0', '1');
INSERT INTO `sys_role` VALUES ('3', '注册用户', '', '1', '', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('3264c8e83d0248bb9e3ea6195b4c0216', '一级管理员', '147573389638682795998', '1', '36892925196425486294', '36892925196425486294', '36892925196425486294', '36892925196425486294');
INSERT INTO `sys_role` VALUES ('46294b31a71c4600801724a6eb06bb26', '职位组', '', '0', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('5466347ac07044cb8d82990ec7f3a90e', '主管', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('68f8e4a39efe47c7bb869e9d15ab925d', '二级管理员', '73786413343844589510', '1', '0', '0', '2251798773489606', '0');
INSERT INTO `sys_role` VALUES ('856849f422774ad390a4e564054d8cc8', '经理', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('8a941deb5633427d918f54ee86cf80d3', '流程管理员', '595494142111642311060905563005594370048', '1', '595494142111642311060905563005594370048', '595494142111642311060905563005594370048', '595494142111642311060905563005594370048', '595494142111642311060905563005594370048');
INSERT INTO `sys_role` VALUES ('8b70a7e67f2841e7aaba8a4d92e5ff6f', '高级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('c21cecf84048434b93383182b1d98cba', '组长', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('d449195cd8e7491080688c58e11452eb', '总监', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('de9de2f006e145a29d52dfadda295353', '三级管理员', '255211775190703847605022975027889308614', '1', '255284467346723335191822401976498389966', '255284467346723335191822401976498389966', '255284467346723335191822401976498389966', '255284467346723335191822401976498389966');

-- ----------------------------
-- Table structure for sys_role_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_fhbutton`;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `fbutton` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frole` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_fhbutton
-- ----------------------------
INSERT INTO `sys_role_fhbutton` VALUES ('1743733f366240c693c4295b527d1b0e', 'de9de2f006e145a29d52dfadda295353', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('469ffb4848ad49c389867d99560a4698', 'de9de2f006e145a29d52dfadda295353', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('4ee1e2bc03a64ef1bc578fcf2e2ea2c1', '68f8e4a39efe47c7bb869e9d15ab925d', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('5669c8754b4d4e368365ed5065f9fc10', '3264c8e83d0248bb9e3ea6195b4c0216', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('74203935bfa34ce3b9b80e81f2a2bcfe', '68f8e4a39efe47c7bb869e9d15ab925d', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('81d31bc5bf02490a85ce496b6755ef26', '3', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('8231c216fb514b4188e4162e629c6237', '3264c8e83d0248bb9e3ea6195b4c0216', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('88f66a65ee1642bea7979e0e1050ac5f', '3', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('8e478e8615ee455e95671ba05a29e457', 'de9de2f006e145a29d52dfadda295353', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('d80abc961d594f75b65e90d5b7437aa9', '3', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f0329033d0914faf8ea6e9ff252cc5e6', '68f8e4a39efe47c7bb869e9d15ab925d', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('f627982cc9d4479dbc03af726dc6ac58', 'de9de2f006e145a29d52dfadda295353', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f919c1f620634bdaa353a9f63194a2e0', '3', '3542adfbda73410c976e185ffe50ad06');

-- ----------------------------
-- Table structure for sys_statistics
-- ----------------------------
DROP TABLE IF EXISTS `sys_statistics`;
CREATE TABLE `sys_statistics` (
  `STATISTICS_ID` varchar(100) NOT NULL,
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP',
  `AREA` varchar(255) DEFAULT NULL COMMENT '地区',
  `OPERATOR` varchar(10) DEFAULT NULL COMMENT '运营商',
  `CDATE` varchar(32) DEFAULT NULL COMMENT '日期',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '时间',
  `REGION` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`STATISTICS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_statistics
-- ----------------------------
INSERT INTO `sys_statistics` VALUES ('030bfbef7e7f458fa8d97c3ad5c29f20', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:45', '局域网');
INSERT INTO `sys_statistics` VALUES ('043236beac9c43a8aec583e78b4f732f', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:01', '局域网');
INSERT INTO `sys_statistics` VALUES ('086d1bf9e5014c40bb0d7df746cee0b8', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:08', '局域网');
INSERT INTO `sys_statistics` VALUES ('09f4757b7337477c8384dfcabdc2606c', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:51:55', '局域网');
INSERT INTO `sys_statistics` VALUES ('0a9a16d4e0c2432d9bb58c52708884de', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:23:21', '');
INSERT INTO `sys_statistics` VALUES ('0c79bbe94ba94208816224512df5b6d0', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:56:05', '局域网');
INSERT INTO `sys_statistics` VALUES ('0dfc374b25324952aaa59942baa83959', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:58:07', '局域网');
INSERT INTO `sys_statistics` VALUES ('0f921b1a6bd5405f96e9470b8a9cd819', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:29:30', '局域网');
INSERT INTO `sys_statistics` VALUES ('0feab10647b748d8b61cbdb8d0ecacd7', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:25', '局域网');
INSERT INTO `sys_statistics` VALUES ('10ddbda091da4c29a486966af2b8a62e', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:58:24', '局域网');
INSERT INTO `sys_statistics` VALUES ('11e23d8a47c44094ab1bddfb5131eff0', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:05', '');
INSERT INTO `sys_statistics` VALUES ('1278a15833384fc8a0568bcf358f92d6', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:27:31', '局域网');
INSERT INTO `sys_statistics` VALUES ('141bf4b6742b4825b24e5ffd24fc11d8', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:31', '局域网');
INSERT INTO `sys_statistics` VALUES ('19eb2bdd1a6c4d199b421a9f0f47e324', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:09:55', '');
INSERT INTO `sys_statistics` VALUES ('1c4122adc9bc4165b8479c66fbdbac09', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:13:32', '');
INSERT INTO `sys_statistics` VALUES ('1f06d9f455b64faca01cf6689c13715b', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:45:06', '局域网');
INSERT INTO `sys_statistics` VALUES ('1f26120a8cd748f380a1cd9e0307ff6d', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-11', '2017-12-11 10:50:08', '');
INSERT INTO `sys_statistics` VALUES ('20581f94b507405c884fbe0978697eb5', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:37', '局域网');
INSERT INTO `sys_statistics` VALUES ('2684d1801cfd4ef9801e84a330abbd5a', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:17:26', '');
INSERT INTO `sys_statistics` VALUES ('28de97395ca146dcb62d6565406d7da3', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:01', '局域网');
INSERT INTO `sys_statistics` VALUES ('307138f966494b818fc339e5ab5cfac9', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:48:19', '局域网');
INSERT INTO `sys_statistics` VALUES ('3101f796ef8b43a1984a64be3d5259ad', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:27:49', '局域网');
INSERT INTO `sys_statistics` VALUES ('3249028fd54e46d194e6a157fa19f2fe', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:09:44', '');
INSERT INTO `sys_statistics` VALUES ('334d8e7c363d4447b53406c9ef0246e1', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:29:00', '局域网');
INSERT INTO `sys_statistics` VALUES ('3519fc0958094e3db93b1a6f87e5af2e', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:03:39', '');
INSERT INTO `sys_statistics` VALUES ('35a7c3c5df984c66b8b370231d40734d', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:24:56', '');
INSERT INTO `sys_statistics` VALUES ('35abb10b5dc24622890d3d793d696ced', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-27', '2017-10-27 15:21:01', '局域网');
INSERT INTO `sys_statistics` VALUES ('35b254772f54473c9d4501410d754eba', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:09', '');
INSERT INTO `sys_statistics` VALUES ('35b8be9ed8b34a4fa0213cb755f0cead', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:30:27', '局域网');
INSERT INTO `sys_statistics` VALUES ('3613f31808134ab09ccd1cb4b685d7a1', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:14:33', '');
INSERT INTO `sys_statistics` VALUES ('36d4ec729a5b44e09580c98e764cec34', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:56:49', '局域网');
INSERT INTO `sys_statistics` VALUES ('37ebf744289c42d5b8242297ac66ad9d', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:09:14', '');
INSERT INTO `sys_statistics` VALUES ('39d80a4c707f44949e9d655ea0b05ebc', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:58:56', '局域网');
INSERT INTO `sys_statistics` VALUES ('3cb78bb6b529478ca1e16c238e686fe0', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:27:15', '局域网');
INSERT INTO `sys_statistics` VALUES ('3d75b16a458f49e0a381f91490c02dc2', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:14:28', '');
INSERT INTO `sys_statistics` VALUES ('3e4ff30f9cb34e97aa0578111d50e135', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:46', '局域网');
INSERT INTO `sys_statistics` VALUES ('427d88f1b7a24eed896624fc265f47a6', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:15:39', '');
INSERT INTO `sys_statistics` VALUES ('482f4418750940678eba7ea790c9f95c', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:22:11', '局域网');
INSERT INTO `sys_statistics` VALUES ('48d3dd689f8d4839b5fade454a5e818b', '127.0.0.3', '内网IP   ', '内网IP', '2017-10-27', '2017-10-27 04:14:38', '北京');
INSERT INTO `sys_statistics` VALUES ('4a5e9bb8c3a743ed8b629dd9ebe0e53c', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:09:00', '');
INSERT INTO `sys_statistics` VALUES ('4ad7c72846f446a5b2cff85afcba997a', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:22:39', '');
INSERT INTO `sys_statistics` VALUES ('4c64fc0973aa4332859c17e9cd1abe99', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:48:15', '局域网');
INSERT INTO `sys_statistics` VALUES ('4cd51076bd204ef1a8d94b888da3b581', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:14:02', '');
INSERT INTO `sys_statistics` VALUES ('4ee0e14a18b04fb5a22ecd36f959bf87', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:45:09', '局域网');
INSERT INTO `sys_statistics` VALUES ('4eec99fa10a74946ba7c1c8f2af682d5', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 22:10:11', '局域网');
INSERT INTO `sys_statistics` VALUES ('4f1483fa68df4606b562c005c1a25c49', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:06:43', '局域网');
INSERT INTO `sys_statistics` VALUES ('4f5b8d10e1de464f8b4ce14a0302c073', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:08:09', '局域网');
INSERT INTO `sys_statistics` VALUES ('4f98f7b4f60749f1a2cbecae9a2a3dc9', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:09:25', '');
INSERT INTO `sys_statistics` VALUES ('5390df1e03c84496b27d6bbb8af82ec4', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:14:51', '');
INSERT INTO `sys_statistics` VALUES ('548aafa4955b4067b9b785a4f273b4ac', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:56:15', '局域网');
INSERT INTO `sys_statistics` VALUES ('56f4de8241a04f98af29041822366d83', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:25:06', '');
INSERT INTO `sys_statistics` VALUES ('57bd6415685a4d4cb97fc0caad09e959', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-27', '2017-10-27 11:29:48', '局域网');
INSERT INTO `sys_statistics` VALUES ('592f441e932e4d93bb44be0fd10ec882', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-03', '2017-12-03 16:38:58', '');
INSERT INTO `sys_statistics` VALUES ('5ab5ac57ec004537a743e2f3db196115', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:21', '局域网');
INSERT INTO `sys_statistics` VALUES ('5ebecce540414ba9886797622f976b0f', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:19', '');
INSERT INTO `sys_statistics` VALUES ('62aa00f314044db485d9d88730c3f95d', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:00:29', '');
INSERT INTO `sys_statistics` VALUES ('65215c79814e4170a7d181cac2e8515c', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:56:35', '局域网');
INSERT INTO `sys_statistics` VALUES ('669af70ecb21430b963e313252418f13', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:25:26', '局域网');
INSERT INTO `sys_statistics` VALUES ('66c40f547fdf4945816795d1214eda73', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-03', '2017-12-03 16:40:46', '');
INSERT INTO `sys_statistics` VALUES ('6db9653814ca450681e6ab6878aeb90a', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:22:50', '');
INSERT INTO `sys_statistics` VALUES ('6eb6ecb1aa1b4b0493f3db7e6680b5f7', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:58:16', '局域网');
INSERT INTO `sys_statistics` VALUES ('748dd69009894b7eaf5e2a3d172fc799', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:07:38', '局域网');
INSERT INTO `sys_statistics` VALUES ('75ecdf90e381443fb3481550af6ed917', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:09', '局域网');
INSERT INTO `sys_statistics` VALUES ('76456bc71a0c40628ed251ee469550dc', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:51:46', '局域网');
INSERT INTO `sys_statistics` VALUES ('789e01c3099a4284a026666d8f5033a7', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:08:23', '');
INSERT INTO `sys_statistics` VALUES ('79650aef18ed4c46857180e5d5568e16', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:17:35', '');
INSERT INTO `sys_statistics` VALUES ('7b6e92b05af64558a9fe8e1a97e5be1b', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:25:36', '');
INSERT INTO `sys_statistics` VALUES ('7c2591b45d394f23a5f7ff2ae50a2121', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:16:04', '');
INSERT INTO `sys_statistics` VALUES ('7c4e0ea8779c4eb38781e6bc7f6554b6', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:59:54', '局域网');
INSERT INTO `sys_statistics` VALUES ('7cadab9b3ce540bc97f598672a44ca59', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:55:04', '局域网');
INSERT INTO `sys_statistics` VALUES ('7d3bf6b2c4ac4d51aba4769fcdfaaead', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:17', '');
INSERT INTO `sys_statistics` VALUES ('7d951711e10c4cae815531bcc9c1ded8', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:23:09', '');
INSERT INTO `sys_statistics` VALUES ('7ec3fa47b07c4e549adefef5df8ca890', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:56:44', '局域网');
INSERT INTO `sys_statistics` VALUES ('7f091cb7d33a4de88b5c2866ed7634d2', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:24:48', '局域网');
INSERT INTO `sys_statistics` VALUES ('8433670411474184a1822794649099d0', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:18:05', '');
INSERT INTO `sys_statistics` VALUES ('85591a3126cb4cc28a76613cd3d65ebf', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:18:02', '');
INSERT INTO `sys_statistics` VALUES ('86e1d879dda345f3bf53d7ca50366385', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:07:30', '');
INSERT INTO `sys_statistics` VALUES ('893c98ff5cd140c6b77bc19f2e612584', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:25:56', '');
INSERT INTO `sys_statistics` VALUES ('89aea35a6acf4b1497a0dbae78d687ae', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:45:38', '局域网');
INSERT INTO `sys_statistics` VALUES ('89c7c06c3cd04b66ab6ea0ca77d0e5ed', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:44', '');
INSERT INTO `sys_statistics` VALUES ('8a6c7e4ae6244fd284f6d22b35042504', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 22:42:53', '局域网');
INSERT INTO `sys_statistics` VALUES ('8aa108398fb84ffc90741dda8a246cc1', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:22:32', '');
INSERT INTO `sys_statistics` VALUES ('8b941ee2ef2142e9b2c6028bf430bed2', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-27', '2017-10-27 15:20:07', '局域网');
INSERT INTO `sys_statistics` VALUES ('8c69b737cb6a4083a98d079003be3825', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-11', '2017-12-11 10:50:04', '');
INSERT INTO `sys_statistics` VALUES ('8df0e17328854527b38560d7768e12ef', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:48:46', '局域网');
INSERT INTO `sys_statistics` VALUES ('9005432da2f340309e95a46ac5750694', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:50', '');
INSERT INTO `sys_statistics` VALUES ('921c10e1c2454b55989026e042069fc7', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:15:33', '');
INSERT INTO `sys_statistics` VALUES ('92bf76a38a8c49a4b2a470a99b3f5ae1', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:07:46', '');
INSERT INTO `sys_statistics` VALUES ('955e0d6cb60d4bab97294c8377caa0d2', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:51:06', '局域网');
INSERT INTO `sys_statistics` VALUES ('956eb51539274ed8af5bd8d8cef893ad', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:56:18', '局域网');
INSERT INTO `sys_statistics` VALUES ('95e1c0fc3b284e62a68ad3c248db8904', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:21', '');
INSERT INTO `sys_statistics` VALUES ('972bb328ced8402bb6d4cb57387b7171', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:10:25', '');
INSERT INTO `sys_statistics` VALUES ('973ea0599e8c4c17812a3748ce32ce12', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:49:09', '局域网');
INSERT INTO `sys_statistics` VALUES ('97c89c91b52d4045a87ba99f1855e769', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:48:49', '局域网');
INSERT INTO `sys_statistics` VALUES ('97f74ed73841405cb90a0826039674b7', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:40', '');
INSERT INTO `sys_statistics` VALUES ('9aeb684c2ddf4b6f9ed6b68bcbdd6c44', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-11', '2017-12-11 10:50:34', '');
INSERT INTO `sys_statistics` VALUES ('9af1a44e1dbb4d7e927ce9217c9a0824', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:47', '局域网');
INSERT INTO `sys_statistics` VALUES ('9b34db28a9ea4a4e921b7e575787710a', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:14', '局域网');
INSERT INTO `sys_statistics` VALUES ('a1acc3347d1b46148352b10a887c1be7', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:51:50', '局域网');
INSERT INTO `sys_statistics` VALUES ('a4664108676d4f19b81bae9a89dadc07', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:49:39', '局域网');
INSERT INTO `sys_statistics` VALUES ('a4c4701eafd84f92870c376dbc6f2c85', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:25:22', '局域网');
INSERT INTO `sys_statistics` VALUES ('a6f1905ccb52405882489ca3822c4022', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:15:03', '');
INSERT INTO `sys_statistics` VALUES ('a787d4b37dc54bb691da4b53b0f638ad', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-27', '2017-10-27 15:37:10', '局域网');
INSERT INTO `sys_statistics` VALUES ('aa80f9c874c74219b3554927dac96d97', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:06:39', '');
INSERT INTO `sys_statistics` VALUES ('ab93d5a06820446aa95227cf39e8db2f', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:57:45', '局域网');
INSERT INTO `sys_statistics` VALUES ('ad09b18e050a47f29d270c692f9abc11', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-04', '2018-01-04 19:14:14', '');
INSERT INTO `sys_statistics` VALUES ('b151b79ef12c4ee780dbd2319d255000', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:55:05', '');
INSERT INTO `sys_statistics` VALUES ('b32582bb9fdc486ead1a2c2db1925c9f', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:48:29', '局域网');
INSERT INTO `sys_statistics` VALUES ('b44652fc07364abeb5c5a5e1b6c06ded', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:27:57', '局域网');
INSERT INTO `sys_statistics` VALUES ('b4723f964c664753835d6f776ab48464', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:06:00', '');
INSERT INTO `sys_statistics` VALUES ('bf74d755014249f08cdae6bb0397f074', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:25:26', '');
INSERT INTO `sys_statistics` VALUES ('c221a55d247944cfa8f68cdb72ba3e76', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:15:03', '');
INSERT INTO `sys_statistics` VALUES ('c2d9af33d6b140509fb92a3373c8767c', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:13:58', '');
INSERT INTO `sys_statistics` VALUES ('c525531a295a4733b96db8094833429c', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:48:59', '局域网');
INSERT INTO `sys_statistics` VALUES ('c58060a826b245e089f1e7e2c3ea8581', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:27:27', '局域网');
INSERT INTO `sys_statistics` VALUES ('c8a80ee9836c4ff48e904df0044ef21c', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:44:35', '局域网');
INSERT INTO `sys_statistics` VALUES ('c8b6955f59f8400dade9e7b3179946a2', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-03', '2017-12-03 16:34:33', '');
INSERT INTO `sys_statistics` VALUES ('c96e733b81834dc383b558ded9774b5a', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-12', '2018-01-12 00:25:19', '');
INSERT INTO `sys_statistics` VALUES ('cb875d3ac9f547b6ba8d52cc22181032', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-03', '2017-12-03 16:35:03', '');
INSERT INTO `sys_statistics` VALUES ('cbd32e3d54434848a58ebf5d8375e5be', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:14', '');
INSERT INTO `sys_statistics` VALUES ('cbd5d1406e664cd483e8769910cb7da1', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:54:16', '局域网');
INSERT INTO `sys_statistics` VALUES ('ccc11304644949fbb62667866fe0caba', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:46:37', '局域网');
INSERT INTO `sys_statistics` VALUES ('cde167135342433ca4a0458cd780c5da', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:58:37', '局域网');
INSERT INTO `sys_statistics` VALUES ('ce46cd51438f401d9254fc4c4aaa8fdc', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:31:01', '局域网');
INSERT INTO `sys_statistics` VALUES ('cfc0bd0bae9247618cca569b82558c69', '127.0.0.1', 'XX  XX 内网IP', '内网IP', '2019-06-20', '2019-06-20 10:42:08', 'XX');
INSERT INTO `sys_statistics` VALUES ('d1c25436bcd2418e87bf64256e48c1e8', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:52:17', '局域网');
INSERT INTO `sys_statistics` VALUES ('d382567e21bd4fb4bc7a86bf363ca670', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:20', '局域网');
INSERT INTO `sys_statistics` VALUES ('d3eeb0498b21431da7e6aea9bbdbc553', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:25:52', '局域网');
INSERT INTO `sys_statistics` VALUES ('d4558f95812b4d0bbf89158dcc588ef6', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:27:46', '局域网');
INSERT INTO `sys_statistics` VALUES ('d47e0da5bfc2428098b5dba25671d12b', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:55:07', '局域网');
INSERT INTO `sys_statistics` VALUES ('db991c116eb04aba8fd8baa5fdb9be58', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:50', '局域网');
INSERT INTO `sys_statistics` VALUES ('dc42de14853742cdb2ba196034b2d62b', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:08:33', '');
INSERT INTO `sys_statistics` VALUES ('dcbf0634d35a4db38e30d969506b2518', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:49:36', '局域网');
INSERT INTO `sys_statistics` VALUES ('dfc244656c52453b947312c591be36c8', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:45:00', '局域网');
INSERT INTO `sys_statistics` VALUES ('e17b68386edb4f87ab4ccc963aad0c07', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-15', '2017-12-15 19:15:54', '');
INSERT INTO `sys_statistics` VALUES ('e21b727d0b0948aa9a50302009c04125', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-04', '2018-01-04 19:14:29', '');
INSERT INTO `sys_statistics` VALUES ('e2fd771d10d846a9adefa810b1eb8cbe', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:29:55', '局域网');
INSERT INTO `sys_statistics` VALUES ('e378fd3c485f49139b5c77b333a8f6c6', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:10:31', '');
INSERT INTO `sys_statistics` VALUES ('e7b39e77228141d38d937361691171e6', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:56:35', '局域网');
INSERT INTO `sys_statistics` VALUES ('e8c31ba9c50148d996544e8df1f489f3', '192.168.0.8', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:17:56', '');
INSERT INTO `sys_statistics` VALUES ('e9bfbd7e8f2543c888e67dd201440471', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:02:37', '');
INSERT INTO `sys_statistics` VALUES ('ea812c73a7a640a6bca08ca8ddac4be4', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-15', '2017-12-15 19:15:33', '');
INSERT INTO `sys_statistics` VALUES ('eb52f163b79b432d9518c00de398d1fa', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:08:30', '');
INSERT INTO `sys_statistics` VALUES ('ed8b8a0b7f7a4fbaa5f58bf8ce35ca3b', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-12', '2018-01-12 00:25:57', '');
INSERT INTO `sys_statistics` VALUES ('ef3f05d740bc422f94f13bcd2199ce19', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 21:47:41', '局域网');
INSERT INTO `sys_statistics` VALUES ('f0066c6a47be48a394bafb4feac81161', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-12-03', '2017-12-03 16:40:48', '');
INSERT INTO `sys_statistics` VALUES ('f1e491c35fb141ba9a96bb019e5df75e', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:28:17', '局域网');
INSERT INTO `sys_statistics` VALUES ('f1f1974f0e8e41fa8e887c17a1e65ea8', '127.0.0.2', '内网IP   ', '内网IP', '2017-10-27', '2017-10-27 04:28:23', '局域网');
INSERT INTO `sys_statistics` VALUES ('f4d30465afb24299b748192b77d8b881', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-11', '2018-01-11 23:39:47', '');
INSERT INTO `sys_statistics` VALUES ('f4f0db84f07e4e6c96cdafa8de93cbc3', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:08:00', '');
INSERT INTO `sys_statistics` VALUES ('f77cea9da83a4532a4dd39087880c08e', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 02:57:54', '局域网');
INSERT INTO `sys_statistics` VALUES ('f78137d4368140e49f83d050a877dd29', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:46:25', '局域网');
INSERT INTO `sys_statistics` VALUES ('f85c2b8d40ef4e68bead269e3c52a6f8', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-12', '2018-01-12 00:27:05', '');
INSERT INTO `sys_statistics` VALUES ('f96e2af46e984cc58dba710756e93eb1', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:49:05', '局域网');
INSERT INTO `sys_statistics` VALUES ('fa40d3bfd20b4c63bcebcdab9a501f67', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:08:55', '');
INSERT INTO `sys_statistics` VALUES ('fa73383281a54ad3bb507e19a949cc6d', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:18:57', '局域网');
INSERT INTO `sys_statistics` VALUES ('fa8793bbbc0e45669e7cc05df99187ac', '127.0.0.1', '内网IP   内网IP', '内网IP', '2017-11-16', '2017-11-16 16:02:06', '');
INSERT INTO `sys_statistics` VALUES ('fae9fab0e95f41d2b39f8a4af8b6bec4', '127.0.0.1', '内网IP   ', '内网IP', '2017-10-28', '2017-10-28 23:44:39', '局域网');
INSERT INTO `sys_statistics` VALUES ('fcc5482162cd478e8c37c7b283633aaf', '127.0.0.1', '内网IP   内网IP', '内网IP', '2018-01-12', '2018-01-12 00:26:26', '');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'de41b7fb99201d8334c23c014db35ecd92df81bc', 'FH', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2019-11-08 19:22:13', '0:0:0:0:0:0:0:1', '0', 'admin', 'no-skin', 'QQ313596790@main.com', '001', '18788888888');
INSERT INTO `sys_user` VALUES ('51a10eeda4b847e7a2c9191ab87ca7b2', 'wk', 'd5e8274279a485c2038b51ae4b866ec622e84912', 'tt', '', 'de9de2f006e145a29d52dfadda295353', '2019-06-20 10:49:53', '0:0:0:0:0:0:0:1', '0', '', 'no-skin', 'jlfsj@qq.com', '1', '13876554367');
INSERT INTO `sys_user` VALUES ('9df0f6f38ace485d92dbfbabb1b0bfcb', 'wk123', 'b34e74745cf2e33e8c514ec88efb53c9ba234513', '测试', '', '8a941deb5633427d918f54ee86cf80d3', '2019-11-07 16:17:05', '0:0:0:0:0:0:0:1', '0', '', 'no-skin', '8989@qq.com', '3', '13554545454');
INSERT INTO `sys_user` VALUES ('eded77bdf35347249b2bacfa181c869d', 'w1', 'c46e5c325e9edfbf213d5d82018ba3c522eabbea', '1212', '', '68f8e4a39efe47c7bb869e9d15ab925d', '', '', '0', '111', 'no-skin', '313596790@qq.com', '112', '13566625555');

-- ----------------------------
-- Table structure for sys_userphoto
-- ----------------------------
DROP TABLE IF EXISTS `sys_userphoto`;
CREATE TABLE `sys_userphoto` (
  `USERPHOTO_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL COMMENT '用户名',
  `PHOTO0` varchar(255) DEFAULT NULL COMMENT '原图',
  `PHOTO1` varchar(100) DEFAULT NULL COMMENT '头像1',
  `PHOTO2` varchar(100) DEFAULT NULL COMMENT '头像2',
  `PHOTO3` varchar(100) DEFAULT NULL COMMENT '头像3',
  PRIMARY KEY (`USERPHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userphoto
-- ----------------------------

-- ----------------------------
-- Table structure for tb_pictures
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('03a694f394c54e6698cfd822130fe03a', '图片', '7862ba319dcb40d09194eeb803b65cd0.jpg', '20190505/7862ba319dcb40d09194eeb803b65cd0.jpg', '2019-05-05 09:39:31', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('20e6de875f76440ea6d8ae95ea0b25ee', '图片', 'b455c913d2ad4d1b8d42813e905d032e.jpg', '20190505/b455c913d2ad4d1b8d42813e905d032e.jpg', '2019-05-05 09:39:31', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('7026705c753e42cfa5ba30acce47b455', '图片', '87be116ac59e46a7856adfd08d9134d7.jpg', '20190505/87be116ac59e46a7856adfd08d9134d7.jpg', '2019-05-05 09:39:30', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('7d97170f47a3463586aa7e13ce8c80b5', '图片', 'c91e811378f6473187dafefe1d0f0c88.jpg', '20190505/c91e811378f6473187dafefe1d0f0c88.jpg', '2019-05-05 09:39:31', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('d7e3e49861b84027ba377b2bc7604e0e', '图片', 'e29d9543f5ed4df58361f1162edde238.png', '20190505/e29d9543f5ed4df58361f1162edde238.png', '2019-05-05 09:39:30', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('fbb3f9818a3447f19565fdf85f5c609e', '图片', '744314b360a64436b9612643cb1a1c8d.jpg', '20190505/744314b360a64436b9612643cb1a1c8d.jpg', '2019-05-05 09:39:30', '1', '图片管理处上传');

-- ----------------------------
-- Table structure for web_aboutus
-- ----------------------------
DROP TABLE IF EXISTS `web_aboutus`;
CREATE TABLE `web_aboutus` (
  `ABOUTUS_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`ABOUTUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_aboutus
-- ----------------------------
INSERT INTO `web_aboutus` VALUES ('1', '<p style=\"padding: 0px 0px 1em;margin-top: 0;margin-bottom: 0;line-height: 27px;font-size: 12px;color: rgb(90, 90, 90);font-family: 宋体;white-space: normal;text-indent: 32px;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 26.6667px;\"><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XMjk1Nzc0MjYxNg==/v.swf\" width=\"300\" height=\"180\" style=\"float: left\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></span></p><p style=\"padding: 0px 0px 1em;margin-top: 0;margin-bottom: 0;line-height: 27px;font-size: 12px;color: rgb(90, 90, 90);font-family: 宋体;white-space: normal;text-indent: 32px;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 26.6667px;\">中冶置业集团有限公司（以下简称中冶置业集团）是中冶集团独资的大型国有房地产开发企业，也是中冶集团房地产业务的核心企业，拥有房地产开发、物业管理两项一级资质。</span><br/></p><p style=\"padding: 0px 0px 1em;margin-top: 0;margin-bottom: 0;line-height: 22px;font-size: 12px;color: rgb(90, 90, 90);font-family: 宋体;white-space: normal;text-indent: 32px;background-color: rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"line-height: 26.6667px\">&nbsp; &nbsp; 2005年，作为国务院国资委首批16家房地产央企之一，中冶置业集团由此掀开了创新提升、做强做优的新篇章。公司全力打造以项目开发能力、资本整合能力、产业整合能力为基础的核心竞争力，坚持走精品化、专业化、品牌化的发展路径，全面布局三大经济圈热点城市，开创了统一品牌与区域化经营相结合的发展新纪元。2012年以来，中冶置业集团加快转型发展脚步，着力提升发展质量，不断推进“3+6”区域布局战略和“3+1”区域深耕战略，以“京津冀、长三角、珠三角”为中心，深耕北京、天津、上海、南京、广州、深圳、珠海等重点城市，积极向中原经济区、长江中游城市群等热点地区拓展，获取石家庄、郑州、保定、青岛等地优质项目，巩固西安、烟台、包头等已进入地区，形成区域协同发展的良好态势,通过五年的发展变革，中冶置业集团成功跻身中国房地产百强企业行列，荣获房地产百强企业第48位、百强盈利能力第8位、中国地产公司品牌价值10强、中国绿色地产开发企业30强、中国物业服务特色企业、中国物业服务专业化运营领先品牌等荣誉。</span></span><br/><span style=\"font-size:12px\"><span style=\"line-height: 26.6667px\">&nbsp; &nbsp; 中冶置业集团巩固以中高端住宅开发为主，商业地产、物业管理为辅的“一主两翼”的业务体系，倾力打造以“中冶·德贤公馆”、“中冶·锦绣华府”、“中冶·逸璟龙湾”为代表的中高端地产、以“中冶·盛世国际广场”命名的商业地产及中冶物业三张新名片，与清华大学、北京大学、SOM、KPF、华为等国内外知名机构建立战略合作关系，成为国际“金钥匙”物业联盟成员，实现了企业品牌向高端领域的华丽蜕变。我们联合全球行业优质资源，发挥产业整合优势，积极开拓文旅地产、康养地产、教育地产等新领域，实现从“一主两翼”到“一主N翼”的延伸拓展。我们以科技创新为依托，以人文精神为内涵，实施绿色科技地产战略，研发更加节能环保、自然舒适的人性化产品，将高品质和人文精神的元素源源不断地注入到我们开发的每一类产品中，致力于为客户缔造美好舒适的生活工作环境<br/></span></span><span style=\"font-size:12px\"><span style=\"line-height: 26.6667px\">&nbsp; &nbsp; 面向未来，中冶置业集团将秉承中冶集团“一天也不耽误，一天也不懈怠”朴实厚重的中冶精神，坚持以市场需求为导向，以创新创意为动力，大力提升质量效益，全力推进改革创新，履行国有资产保值增值责任和企业社会责任，以“品质地产”与“责任地产”为目标，为打造国内领先的房地产开发企业不懈努力！</span></span></p><p><br/></p>');

-- ----------------------------
-- Table structure for web_contactus
-- ----------------------------
DROP TABLE IF EXISTS `web_contactus`;
CREATE TABLE `web_contactus` (
  `CONTACTUS_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  `DIMENSION` varchar(200) DEFAULT NULL,
  `LONGITUDE` varchar(200) DEFAULT NULL,
  `PZOOM` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CONTACTUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_contactus
-- ----------------------------
INSERT INTO `web_contactus` VALUES ('1', '<p>全国免费资讯热线：400-000-0000</p><p>邮箱：service@aaa.com</p><p>网址：http://www.aaaa.com</p><p>地址 ：山东省济南市历城区</p>', '39.923432', '116.403485', '15');

-- ----------------------------
-- Table structure for web_cooperation
-- ----------------------------
DROP TABLE IF EXISTS `web_cooperation`;
CREATE TABLE `web_cooperation` (
  `COOPERATION_ID` varchar(100) NOT NULL,
  `CONTENT` text COMMENT '内容',
  PRIMARY KEY (`COOPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_cooperation
-- ----------------------------
INSERT INTO `web_cooperation` VALUES ('1', '<h1 style=\"padding: 0px; margin: 0px 0px 15px; font-size: 24px; font-weight: normal; line-height: 40px; text-align: center; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\">合作方式</h1><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: &#39;microsoft yahei&#39;, arial, tahoma, sans-serif; color: rgb(119, 119, 119); font-size: 12px; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;&nbsp;&nbsp;&nbsp;为了快速响应客户各种个性化需求，我们提供弹性的ODM/OEM合作模式，可为客户提供设计文件、软件映像文件、软件源代码、相关文档及PCB、PCBA、整机等。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">主要合作方式:</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;1</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">、完全研发项目：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">根据客户产品方案书或具体功能要求，选择CPU平台，进行软（系统级别）、硬件开发，制作样机，或针对客户原有产品进行软、硬件升级，样机制作，同时您还将得到专业的、技术人员培训、辅导服务以及终身技术维护，我们提供所有产品资料。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">2</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">、研发及生产项目：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">根据客户需求，定制研发客户规格产品，样机确认后批量生产，以最终整机交付客户。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">&nbsp;3</span><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">．标准产品销售：</span></strong><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">客户可以选购我们一系列的标准产品，直接下单采购，不需额外付任何研发费及模具费。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><br style=\"background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><img title=\"clip_image002.png\" border=\"0\" hspace=\"0\" src=\"http://info.emdoor.com/ueditor1.2.5/asp/upload/2014092858921669.png\" width=\"650\" height=\"236\" style=\"border: none; width: 650px; height: 236px; background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; text-align: center; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; background-repeat: no-repeat;\"><br style=\"background-repeat: no-repeat;\"/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: &#39;Microsoft Yahei&#39;, arial, Tahoma, sans-serif; font-size: 14px; white-space: normal; line-height: 21px; background-color: rgb(252, 252, 252); background-repeat: no-repeat;\"><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\">针对ODM方式，我们可以提供完整系统（包括硬件PCBA和操作系统及驱动程序），也可提供部分保证客户二次开发所必需的文件、线路图纸等，供客户灵活选择，以期让客户以最低廉的成本获得最具性价比的方案。</span></p><p><span style=\"font-family: 宋体; color: rgb(0, 0, 0); background-repeat: no-repeat;\"><br/></span></p><p><br/></p>');

-- ----------------------------
-- Table structure for web_corporatephilosophy
-- ----------------------------
DROP TABLE IF EXISTS `web_corporatephilosophy`;
CREATE TABLE `web_corporatephilosophy` (
  `CORPORATEPHILOSOPHY_ID` varchar(100) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL COMMENT '标题',
  `CONTENT` varchar(50) DEFAULT NULL COMMENT '内容',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '内容链接',
  PRIMARY KEY (`CORPORATEPHILOSOPHY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_corporatephilosophy
-- ----------------------------
INSERT INTO `web_corporatephilosophy` VALUES ('1', '解决方案', '无论您是什么行业,都能满足您的需求.', 'http://127.0.0.1/FH-WEB');
INSERT INTO `web_corporatephilosophy` VALUES ('2', '安全保障', '安全稳定的架构设计,构建稳固防盾.', 'http://127.0.0.1/FH-WEB/');
INSERT INTO `web_corporatephilosophy` VALUES ('3', '服务团队', '资深专家为您提供满意的私人服务.', 'http://127.0.0.1/FH-WEB');
INSERT INTO `web_corporatephilosophy` VALUES ('4', '核心服务', '为您提供全面的软件定制服务.', 'http://127.0.0.1/FH-WEB/');

-- ----------------------------
-- Table structure for web_image
-- ----------------------------
DROP TABLE IF EXISTS `web_image`;
CREATE TABLE `web_image` (
  `IMAGE_ID` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `IMGURL` varchar(255) DEFAULT NULL COMMENT '路径',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '链接',
  `TYPE` int(2) NOT NULL COMMENT '类型',
  `FORDER` varchar(11) DEFAULT NULL COMMENT '排序',
  `BZ` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`IMAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_image
-- ----------------------------
INSERT INTO `web_image` VALUES ('0d252569b3174a3390b293b31e82e3b5', '技术团队', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/5f95f8f881124b5aa3b41bf381dbba10.jpg', '', '4', '2', '2');
INSERT INTO `web_image` VALUES ('1193528722af455581e783d268a14dab', '技术团队', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/38b7d8147cf34f9d845e36c85dc8609e.jpg', '', '4', '3', '3');
INSERT INTO `web_image` VALUES ('1cd6bfd6f504452f968934094be3f03f', '1', 'http://localhost:8080/uploadFiles/uploadImgs/20190505/7862ba319dcb40d09194eeb803b65cd0.jpg', '', '1', '1', '1');
INSERT INTO `web_image` VALUES ('24e9857968314fd6b79cce6067ada8c8', '1', 'http://localhost:8080/uploadFiles/uploadImgs/20190505/e29d9543f5ed4df58361f1162edde238.png', '', '2', '1', '1');
INSERT INTO `web_image` VALUES ('26cf3e9ed7dd410b87ddb69c25970069', '产品案例6', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/ab1dc76421d9422289d256fdec763b32.jpg', '', '5', '6', '产品案例bz6');
INSERT INTO `web_image` VALUES ('32c90dfb3fae4b8ea75122d657369bfd', '合作伙伴', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/6824ff8ab8c945689f422fdd85f5a664.jpg', '', '3', '4', '合作伙伴备注');
INSERT INTO `web_image` VALUES ('3e4827aeaebd42c4a157a911242d9b49', '2', 'http://localhost:8080/uploadFiles/uploadImgs/20190505/b455c913d2ad4d1b8d42813e905d032e.jpg', '', '1', '2', '2');
INSERT INTO `web_image` VALUES ('49585afbceb54bb7832df02363325ca8', '产品案例5', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/e288e5ea8ceb4bac8b3f9f672155062e.jpg', '', '5', '5', '产品案例bz5');
INSERT INTO `web_image` VALUES ('5b9f58ba65d14cfa9ea766bf7582528f', '产品案例4', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/9fe2796f91f34bc2b45f2ff01c23a681.jpg', '', '5', '4', '产品案例bz4');
INSERT INTO `web_image` VALUES ('740e706d44bd419990fa2aef2adc1f27', '产品案例7', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/9ea1cd4b00d7405cb8091b44b4642ecd.jpg', '', '5', '7', '产品案例bz7');
INSERT INTO `web_image` VALUES ('7cdab770e4874b4490e3013bc54f0cf4', '产品案例2', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/ab1dc76421d9422289d256fdec763b32.jpg', '', '5', '2', '产品案例bz2');
INSERT INTO `web_image` VALUES ('7f88637876184343beef8943f19d0190', '技术团队', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/6824ff8ab8c945689f422fdd85f5a664.jpg', '', '4', '4', '4');
INSERT INTO `web_image` VALUES ('868d142966ee496ebdaa7cceb34c736d', '产品案例8', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/9fe2796f91f34bc2b45f2ff01c23a681.jpg', '', '5', '8', '产品案例bz8');
INSERT INTO `web_image` VALUES ('86b38827cfb342e1920b4182037a28ed', '合作伙伴', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/f89044e67c2240fe98e84f4b93e7aa1b.jpg', '', '3', '1', '合作伙伴备注');
INSERT INTO `web_image` VALUES ('8e4f60e715424be882fedc86e6b92d93', '3', 'http://localhost:8080/uploadFiles/uploadImgs/20190505/c91e811378f6473187dafefe1d0f0c88.jpg', '', '1', '3', '3');
INSERT INTO `web_image` VALUES ('96ef7fec72544d418462e31a485e9a78', '2', 'http://localhost:8080/uploadFiles/uploadImgs/20190505/744314b360a64436b9612643cb1a1c8d.jpg', '', '2', '2', '2');
INSERT INTO `web_image` VALUES ('a9b9e43575e54e0993977ae629b2fbf5', '产品案例1', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/e288e5ea8ceb4bac8b3f9f672155062e.jpg', 'http://www.baidu.com', '5', '1', '产品案例bz');
INSERT INTO `web_image` VALUES ('ae8f20808c4342d8a387a4bf6a3f0bc8', '4', 'http://localhost:8080/uploadFiles/uploadImgs/20190505/87be116ac59e46a7856adfd08d9134d7.jpg', '', '1', '4', '4');
INSERT INTO `web_image` VALUES ('d5fdedf1b9524adc8f47eaa4eecc041d', '产品案例3', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/9ea1cd4b00d7405cb8091b44b4642ecd.jpg', '', '5', '3', '产品案例bz3');
INSERT INTO `web_image` VALUES ('d7f3e47deb9d40a9a86f7779804b645f', '合作伙伴', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/38b7d8147cf34f9d845e36c85dc8609e.jpg', '', '3', '3', '合作伙伴备注');
INSERT INTO `web_image` VALUES ('d89785e23b2549ebb778f4a417d46939', '产品案例9', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171203/e288e5ea8ceb4bac8b3f9f672155062e.jpg', '', '5', '9', '产品案例bz9');
INSERT INTO `web_image` VALUES ('e1e1275dc4d948d8ac6f859740d93af0', '技术团队', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/f89044e67c2240fe98e84f4b93e7aa1b.jpg', '', '4', '1', '1');
INSERT INTO `web_image` VALUES ('eb683edddba3448491b4502cd7bd09cf', '合作伙伴', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/5f95f8f881124b5aa3b41bf381dbba10.jpg', '', '3', '2', '合作伙伴备注');

-- ----------------------------
-- Table structure for web_information
-- ----------------------------
DROP TABLE IF EXISTS `web_information`;
CREATE TABLE `web_information` (
  `INFORMATION_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '网站名称',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '标题',
  `KEYWORDS` varchar(100) DEFAULT NULL COMMENT '关键词',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '描述',
  `LOGO` varchar(200) DEFAULT NULL COMMENT 'logo',
  `TEL` varchar(20) DEFAULT NULL COMMENT '电话',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `FAX` varchar(20) DEFAULT NULL COMMENT '传真',
  `WEBURL` varchar(50) DEFAULT NULL COMMENT '官网',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `COPYRIGHT` varchar(20) DEFAULT NULL COMMENT '版权',
  `TECHNOLOGY` varchar(20) DEFAULT NULL COMMENT '技术支持',
  `BEIAN` varchar(15) DEFAULT NULL COMMENT '备案',
  `ABOUTUS1` varchar(255) DEFAULT NULL,
  `ABOUTUS2` varchar(255) DEFAULT NULL,
  `NEW1` varchar(255) DEFAULT NULL,
  `NEW2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`INFORMATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_information
-- ----------------------------
INSERT INTO `web_information` VALUES ('1', 'FH 网站模版', 'FH 网站模版', 'FH admin WEB', 'FH admin WEB', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/4af76f5612d94bd693d9172ff4865c8b.png', '0531-01215786', '313596790@qq.com', '313596790', '313596790', 'http://www.abcdef.com', '山东省济南市高新区', '©2017 fhadmin', '山东济南信息科技', '京-00000001', '为华语乐坛流行女歌手周笔畅演唱的歌曲。由李焯雄作词，梁翘柏作曲', '2015年作为出道第十年发表的首支EP单曲，周笔畅用这首 《关于我们》为十年证明', '国家发展改革委会同财政部印发《关于不动产登记收费标准等有关问题的通知》', '济南大明湖风景名胜区收费开放区域于2017年1月1日起对社会免费开放。');

-- ----------------------------
-- Table structure for web_leavemsg
-- ----------------------------
DROP TABLE IF EXISTS `web_leavemsg`;
CREATE TABLE `web_leavemsg` (
  `LEAVEMSG_ID` varchar(100) NOT NULL,
  `NAME` varchar(10) DEFAULT NULL COMMENT '姓名',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `ADDRESS` varchar(50) DEFAULT NULL COMMENT '地址',
  `LCONTENT` varchar(2000) DEFAULT NULL COMMENT '内容',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`LEAVEMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_leavemsg
-- ----------------------------

-- ----------------------------
-- Table structure for web_news
-- ----------------------------
DROP TABLE IF EXISTS `web_news`;
CREATE TABLE `web_news` (
  `NEWS_ID` varchar(100) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL COMMENT '标题',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '发表时间',
  `STEMFROM` varchar(100) DEFAULT NULL COMMENT '来源',
  `IMAGE` varchar(100) DEFAULT NULL COMMENT '图片',
  `SHORTCONTENT` varchar(5000) DEFAULT NULL COMMENT '简述',
  `CONTENT` longtext COMMENT '内容',
  `HIDE` varchar(5) DEFAULT NULL,
  `WEIGHT` int(11) DEFAULT NULL,
  PRIMARY KEY (`NEWS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_news
-- ----------------------------
INSERT INTO `web_news` VALUES ('2fa0b30b869740789079e9c8b3f656e8', '新闻标题', '2017-01-08 01:48:43', 'fhadmin', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171028/5d154ba6524b4e7ba22adb5f1885e34d.jpg', '美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。\"\"\"', '<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img alt=\"2016年美国大选以来，美国一直指责俄罗斯“用黑客行为干扰了美国大选”。\" src=\"http://p0.ifengimg.com/cmpp/2017/01/09/09/646af998-3028-4b60-af15-92cee999f2a8_size78_w500_h250.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\"/></p><p class=\"picIntro\" style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">2016年美国大选以来，美国一直指责俄罗斯“用黑客行为干扰了美国大选”。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">原标题：原标题：特朗普改口 首次承认俄罗斯黑客曾干扰美国大选</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">国际在线专稿：据路透社1月9日报道，当地时间1月8日，美国候任总统特朗普团队首次承认，俄罗斯黑客曾经入侵并干扰美国大选，并表示将采取应对措施。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">特朗普新任命的白宫办公厅主任赖因斯·普里巴斯表示，特朗普相信俄罗斯曾经干扰美国大选期间的民主党大会。但是，普里巴斯并未指出，特朗普是否认为普京曾经指使这一行为。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">“特朗普接受此案是俄罗斯团队所为的事实，”·普里巴斯在“周日福克斯新闻”节目上表示。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>这是特朗普团队首次承认，俄罗斯黑客曾经干扰美国大选。特朗普此前一直拒绝“俄罗斯黑客干扰美国大选”或是“俄罗斯黑客帮助特朗普赢得总统宝座”的类似言论。</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">随着1月20日的就职典礼日益临近，特朗普来自共和党内部的压力也越来越大，许多人认为，这位候任总统应该与美国情报部门更好的沟通与合作，并认可来自后者的最新线索。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">上周，美国情报部门发表报告指出，普京“导演了一个包括网络攻击在内的复杂的计划”，来干扰民主党的竞选进程。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>【早前新闻】</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>特朗普发言人：未发现俄罗斯试图影响美国大选的证据</strong></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">【环球网报道记者朱佩】美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。俄罗斯坚决否认这些指控，并表示，作为回应将采取“对等措施”。 日前， 美国候任总统特朗普发言人肖恩•斯派塞表示，美国没有发现俄罗斯试图影响美国大选的证据。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">据俄新社1月3日消息， 斯派塞在福克斯新闻网的直播节目中表示：“主要媒体倾向宣传俄罗斯曾对选举实施影响的消息。但没有任何俄罗斯真正影响选举的证据。”</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">他指出，“计算机网络是否被侵入——这完全是另一个事情”，和俄罗斯是否参与其中没有关系。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">此外，他还强调称，“计算机攻击是不正确的行为”。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">特朗普1月1日表示，希望获得美国情报部门有关网络袭击的消息，以便评估离任政府制裁措施的合理性。特朗普发言人曾表示，认为俄罗斯好像同网络袭击有关，就实施反俄新制裁，对该政策的合理性有些怀疑。</p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">奥巴马政府去年12月29日以“干涉选举”和“对美驻俄外交官施压”为由对9家俄机构、公司和个人实施了制裁，其中包括俄军总参谋部情报总局以及联邦安全局。此外，美方还将35名俄驻美外交官宣布为不受欢迎的人。对此，俄总统普京表示，莫斯科不会遣返美国外交官作为对华盛顿的行为的回应。<span class=\"ifengLogo\"><a href=\"http://www.ifeng.com/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(0, 66, 118); font-weight: bold;\"><img src=\"http://p2.ifengimg.com/a/2016/0810/204c433878d5cf9size1_w16_h16.png\" style=\"border: 0px; vertical-align: top; display: inline; margin: 0px; max-width: 100%; height: auto; padding-top: 3px;\"/></a></span></p><p><br/></p>', 'no', '21');
INSERT INTO `web_news` VALUES ('a28b54c614d142f9bb0cd6ac3f90f67d', 'iiii', '2017-10-21 15:23:21', 'iii', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171028/3bda5f97159d41d4990334dce29a991f.jpg', 'iii', '<p>iii</p>', 'no', '6');
INSERT INTO `web_news` VALUES ('b5739322b529419f958b92684a38aac3', 'ddd', '2017-10-21 15:22:47', 'ddd', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171016/cd2d13c4d62541b58c0a1e67e7451a34.jpg', 'ddd', '<p>dddd</p>', 'no', '1');
INSERT INTO `web_news` VALUES ('d3b7cd0ff0044038be260ad81a879be1', 'ww', '2017-12-11 10:51:33', 'www', 'http://127.0.0.1:8080/FH-WEB3/', 'www', '<p><img src=\"/FH-WEB3/plugins/ueditor/jsp/upload1/20171211/29211512960687460.png\" title=\"QQ截图20171207030605.png\"/></p>', 'no', '1');
INSERT INTO `web_news` VALUES ('eba04dd7092449bda6f925ab272756f0', '全国铁路今日调整列车运行图 增开多趟旅游专列', '2017-01-09 13:48:18', '新华网', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171028/ddebe5917b1b441cb5de2ba22e2a02fa.jpg', '美国情报机构发言人2016年10月曾称，俄罗斯黑客应对美国选举系统的网络攻击负责，因此宣布对俄实施制裁。此后，中情局通过媒体指责俄罗斯闯入民主党服务器，以帮助特朗普，使其在11月8日选举中获胜。但美国政府从未提出任何俄罗斯参与黑客攻击以影响总统选举结果的证据。\"\"\"\"', '<p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">中新网北京4月16日电（记者 张尼）今日零时起，全国铁路将实行新的列车运行图，调整后较调整前增开动车组列车25.5对，至此，全国铁路开行旅客列车总数达3615对。不少旅游专列的开通更将大大方便游客出行。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892669.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图 中新社记者 刘冉阳 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>增开动车组列车25.5对 客流饱满线路运力将扩大</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">此次调图，铁路部门共增开动车组列车25.5对，并安排37对现有动车组列车重联或大编组运行。调整后，全国铁路开行旅客列车总数达3615对，沪昆高铁、杭深线、南广、贵广、宁蓉、京广等客流饱满线路的运力将得到扩大。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">铁路部门还主动对接市场需求，挖掘高铁运输能力，对动卧列车开行方案进行了优化，增开部分白天动卧列车，中长途旅客的旅行体验或将得到改善。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">另外，全国还新增了多条动车线路。调图后，将首次新增昆明至合肥、福州、珠海、衡阳等动车。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">新增开的昆明至合肥G1398次列车，运行时间将由普速列车的34小时压缩至11小时50分；昆明至福州G1696次列车将由普速列车的37小时43分压缩至11小时28分。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">从郑州站将始发3趟至北京的直达高铁。郑州东站至广州南站的G545次变更到站至珠海，这也是郑州至珠海首次通行高铁，从郑州东站乘高铁至珠海仅需7小时26分。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892634.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图：站台上准备乘车的乘客 中新社记者 刘冉阳 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>多条路线运行时间压缩 昆明至北京用时不到11小时</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">除了运力增加，部分旅客列车旅行速度也得到了提高。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">例如，由昆明南始发至北京西的G404次高铁列车，运行时间压缩了2小时30分，实现单程10小时43分。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">昆明至武昌的K110次旅客列车，全程运行时间调图前为29小时16分，调图后为27小时01分，压缩2小时15分钟。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">成都至福州K390/1次旅行时间压缩5小时49分钟；杭州至成都K1271/4次旅行时间压缩4小时8分钟。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">另据济南铁路局介绍，青岛北至温州K1052/49K1050/1次、深圳至青岛T398/5次、青岛至南昌K344/1次也优化了列车运行区段。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">其中，青岛北至郑州K1634/5次列车在济南铁路局管内运行压缩1小时04分钟；青岛至曹县5022/3次旅行时间压缩48分钟。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892847.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图：安徽黄山风景区 李金刚 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>增开多趟旅游专列 上海至黄山每天开行2对高铁</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">此次调图，多地还增开了旅游专列，方便游客出行。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">云桂铁路沿线旅游资源丰富，此次调图，昆明铁路局增开了5对昆明至富宁的临时动车组。届时，每天往返昆明与富宁间的动车组将达到10对。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">上海铁路局将上海虹桥至萍乡北G1367/G1368次列车，运行区段改为上海虹桥至黄山北，车次改为G1519/8 G1517/20次。这样，上海至黄山每天开行高铁由原先的1对增加为2对，且虹桥站发车时间安排在8：42和18：07，最快4小时即可到黄山北站，更方便旅客出门游玩。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">武安、涉县、黎城等拥有诸多著名旅游景点的脱贫攻坚区域，在此次调图中也迎来好消息。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">北京铁路局将天津-涉县4481/2次原老式“绿皮车”升级为空调列车，并增加黎城和潞城作为停靠站；将石家庄北-阳泉4465/6次、阳泉-临西4464/14462/3次更换为空调列车；将铁路通勤列车6433次，增加西大庙站办理客运业务，方便沿线旅客出行。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">此外，北京铁路局还将开行畅游京津冀旅游专列15列。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(51, 102, 153); text-decoration: none;\"><img src=\"http://upload.cankaoxiaoxi.com/temp/2017/0416/1492296892723.jpg\" style=\"vertical-align: top; border-width: 0px; margin: 0px auto; max-width: 600px;\"/></a></p><p style=\"margin-top: -10px; margin-bottom: 0px; padding: 0px; line-height: 12px; text-align: center; text-indent: 2em; font-size: 12px; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"http://www.cankaoxiaoxi.com/\" target=\"_self\" style=\"color: rgb(255, 0, 0); text-decoration: none;\">点击图片进入下一页</a></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-align: center; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 22px; margin-bottom: 10px; font-size: 12px;\">资料图：北京西站 中新网记者 金硕 摄</span></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>优化区域交通：京津冀环形列车服务进一步提升</strong></p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">京津冀区域环形列车服务在此次调整中也将得到进一步优化。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">记者了解到，为助力京津冀协同发展，满足区域内人民群众“早进京津石 当晚可回家”工作、生活半小时、一小时交通圈出行需求，去年“5.15”调图，北京铁路局首次开行京津冀环形列车，近一年来让266.6万人享受到乘坐火车出行带来便利。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">在此基础上，此次新图调整进一步对区域内的旅客列车进行了优化。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">调图后，北京铁路局将环形列车中承德-石家庄K7754/1次列车由晚间改为白天运行，调整后列车从承德站7时49分始发，经停北京东站，满足了承德地区上午进京旅客的出行需求。</p><p style=\"margin-bottom: 0px; padding: 0px 0px 15px; line-height: 30px; text-indent: 2em; font-family: 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">为缓解天津市与滨海新区间交通运输压力，北京铁路局对经停塘沽站的列车进行了优化。在3月份增加10列经停列车的基础上，4月调图再增普速旅客列车2列，使经停塘沽站的旅客列车达到32列，其中，高铁15列、普速17列。（完）</p><p><br/></p>', 'no', '22');
INSERT INTO `web_news` VALUES ('f999d0c302f2419c9bf778ba6a979fff', 'ttt', '2017-10-21 15:23:06', 'tt', 'http://127.0.0.1:8080/FH-WEB3/uploadFiles/uploadImgs/20171016/0d9e5aabb6e246b4bddf345bbd5da72f.jpg', 'ttt', '<p>tt</p>', 'no', '2');

-- ----------------------------
-- Table structure for web_ourbusiness
-- ----------------------------
DROP TABLE IF EXISTS `web_ourbusiness`;
CREATE TABLE `web_ourbusiness` (
  `OURBUSINESS_ID` varchar(100) NOT NULL,
  `TITLE1` varchar(255) DEFAULT NULL COMMENT '介绍上',
  `TITLE2` varchar(255) DEFAULT NULL COMMENT '介绍下',
  `CONTENT1` varchar(255) DEFAULT NULL COMMENT '内容上',
  `CONTENT2` varchar(255) DEFAULT NULL COMMENT '内容上',
  `TOURL` varchar(255) DEFAULT NULL COMMENT '内容链接',
  `OTHER1` varchar(255) DEFAULT NULL,
  `OTHER2` varchar(255) DEFAULT NULL,
  `IMG1` varchar(255) DEFAULT NULL,
  `IMG2` varchar(255) DEFAULT NULL,
  `M3_TITLE` varchar(255) DEFAULT NULL,
  `M3_CONTENT1` varchar(1000) DEFAULT NULL,
  `M3_CONTENT2` varchar(1000) DEFAULT NULL,
  `M3_CONTENT3` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`OURBUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_ourbusiness
-- ----------------------------
INSERT INTO `web_ourbusiness` VALUES ('1', '哈喽,we are FH WEB', '我们创建网站和品牌标识', '我们相信  在质量设计', '任何创意项目都是独一无二的<br /> 具有适当的质量', 'http://www.fhadmin.org/', '被带领与<br />  & 伟大的人', '我们与前瞻性的客户创建<br /> 令人惊奇的事情带来积极的结果', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/f89044e67c2240fe98e84f4b93e7aa1b.jpg', 'http://192.168.0.8:8080/FH-WEB3/uploadFiles/uploadImgs/20171116/5f95f8f881124b5aa3b41bf381dbba10.jpg', '我们的客户说什么', '乱数假文悲哀坐特，consectetur adipiscing精英。所dapibus NEC ornare SED狮子座直径。SED科莫多nibh安特facilisis必比登悲哀feugiat在SED dapibus利奥NEC所ornare直径。', '乱数假文悲哀坐特，consectetur adipiscing精英。所dapibus NEC ornare SED狮子座直径。SED科莫多nibh安特facilisis必比登悲哀feugiat在SED dapibus利奥NEC所ornare直径。', '乱数假文悲哀坐特，consectetur adipiscing精英。所dapibus NEC ornare SED狮子座直径。SED科莫多nibh安特facilisis必比登悲哀feugiat在SED dapibus利奥NEC所ornare直径。');
