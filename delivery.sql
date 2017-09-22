

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dcy_delivery
-- ----------------------------
DROP TABLE IF EXISTS `dcy_delivery`;
CREATE TABLE `dcy_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_code` varchar(255) NOT NULL,
  `delivery_sort` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dcy_delivery
-- ----------------------------
INSERT INTO `dcy_delivery` VALUES ('1', '澳大利亚邮政', 'auspost', 'A');
INSERT INTO `dcy_delivery` VALUES ('2', 'AAE', 'aae', 'A');
INSERT INTO `dcy_delivery` VALUES ('3', '安信达', 'anxindakuaixi', 'A');
INSERT INTO `dcy_delivery` VALUES ('4', '百世汇通', 'huitongkuaidi', 'B');
INSERT INTO `dcy_delivery` VALUES ('5', 'BHT', 'bht', 'B');
INSERT INTO `dcy_delivery` VALUES ('6', '包裹/平邮/挂号信', 'youzhengguonei', 'B');
INSERT INTO `dcy_delivery` VALUES ('7', '邦送物流', 'bangsongwuliu', 'B');
INSERT INTO `dcy_delivery` VALUES ('8', '希伊艾斯（CCES）', 'cces', 'C');
INSERT INTO `dcy_delivery` VALUES ('9', '中国东方（COE）', 'coe', 'C');
INSERT INTO `dcy_delivery` VALUES ('10', '传喜物流', 'chuanxiwuliu', 'C');
INSERT INTO `dcy_delivery` VALUES ('11', '加拿大邮政Canada Post', 'canpost', 'C');
INSERT INTO `dcy_delivery` VALUES ('12', '加拿大邮政Canada Post', 'canpostfr', 'C');
INSERT INTO `dcy_delivery` VALUES ('13', '大田物流', 'datianwuliu', 'D');
INSERT INTO `dcy_delivery` VALUES ('14', '德邦物流', 'debangwuliu', 'D');
INSERT INTO `dcy_delivery` VALUES ('15', 'DPEX', 'dpex', 'D');
INSERT INTO `dcy_delivery` VALUES ('16', 'DHL-中国件', 'dhl', 'D');
INSERT INTO `dcy_delivery` VALUES ('17', 'DHL-国际件', 'dhlen', 'D');
INSERT INTO `dcy_delivery` VALUES ('18', 'DHL-德国件', 'dhlde', 'D');
INSERT INTO `dcy_delivery` VALUES ('19', 'D速快递', 'dsukuaidi', 'D');
INSERT INTO `dcy_delivery` VALUES ('20', '递四方', 'disifang', 'D');
INSERT INTO `dcy_delivery` VALUES ('21', 'EMS', 'ems', 'E');
INSERT INTO `dcy_delivery` VALUES ('22', 'E邮宝', 'ems', 'E');
INSERT INTO `dcy_delivery` VALUES ('23', 'EMS', 'emsen', 'E');
INSERT INTO `dcy_delivery` VALUES ('24', 'EMS-（中国-国际）件', 'emsguoji', 'E');
INSERT INTO `dcy_delivery` VALUES ('25', 'EMS', 'emsinten', 'E');
INSERT INTO `dcy_delivery` VALUES ('26', 'Fedex-国际件', 'fedex', 'F');
INSERT INTO `dcy_delivery` VALUES ('27', 'Fedex-国际件', 'fedexcn', 'F');
INSERT INTO `dcy_delivery` VALUES ('28', 'Fedex-美国件', 'fedexus', 'F');
INSERT INTO `dcy_delivery` VALUES ('29', '飞康达物流', 'feikangda', 'F');
INSERT INTO `dcy_delivery` VALUES ('30', '飞快达', 'feikuaida', 'F');
INSERT INTO `dcy_delivery` VALUES ('31', '凡客如风达', 'rufengda', 'F');
INSERT INTO `dcy_delivery` VALUES ('32', '风行天下', 'fengxingtianxia', 'F');
INSERT INTO `dcy_delivery` VALUES ('33', '飞豹快递', 'feibaokuaidi', 'F');
INSERT INTO `dcy_delivery` VALUES ('34', '港中能达', 'ganzhongnengda', 'G');
INSERT INTO `dcy_delivery` VALUES ('35', '国通快递', 'guotongkuaidi', 'G');
INSERT INTO `dcy_delivery` VALUES ('36', '广东邮政', 'guangdongyouzhengwuliu', 'G');
INSERT INTO `dcy_delivery` VALUES ('37', '挂号信', 'youzhengguonei', 'G');
INSERT INTO `dcy_delivery` VALUES ('38', '国内邮件', 'youzhengguonei', 'G');
INSERT INTO `dcy_delivery` VALUES ('39', '国际邮件', 'youzhengguoji', 'G');
INSERT INTO `dcy_delivery` VALUES ('40', 'GLS', 'gls', 'G');
INSERT INTO `dcy_delivery` VALUES ('41', '共速达', 'gongsuda', 'G');
INSERT INTO `dcy_delivery` VALUES ('42', '汇通快运', 'huitongkuaidi', 'H');
INSERT INTO `dcy_delivery` VALUES ('43', '汇强快递', 'huiqiangkuaidi', 'H');
INSERT INTO `dcy_delivery` VALUES ('44', '华宇物流', 'tiandihuayu', 'H');
INSERT INTO `dcy_delivery` VALUES ('45', '恒路物流', 'hengluwuliu', 'H');
INSERT INTO `dcy_delivery` VALUES ('46', '华夏龙', 'huaxialongwuliu', 'H');
INSERT INTO `dcy_delivery` VALUES ('47', '海航天天', 'tiantian', 'H');
INSERT INTO `dcy_delivery` VALUES ('48', '海外环球', 'haiwaihuanqiu', 'H');
INSERT INTO `dcy_delivery` VALUES ('49', '河北建华', 'hebeijianhua', 'H');
INSERT INTO `dcy_delivery` VALUES ('50', '海盟速递', 'haimengsudi', 'H');
INSERT INTO `dcy_delivery` VALUES ('51', '华企快运', 'huaqikuaiyun', 'H');
INSERT INTO `dcy_delivery` VALUES ('52', '山东海红', 'haihongwangsong', 'H');
INSERT INTO `dcy_delivery` VALUES ('53', '佳吉物流', 'jiajiwuliu', 'J');
INSERT INTO `dcy_delivery` VALUES ('54', '佳怡物流', 'jiayiwuliu', 'J');
INSERT INTO `dcy_delivery` VALUES ('55', '加运美', 'jiayunmeiwuliu', 'J');
INSERT INTO `dcy_delivery` VALUES ('56', '京广速递', 'jinguangsudikuaijian', 'J');
INSERT INTO `dcy_delivery` VALUES ('57', '急先达', 'jixianda', 'J');
INSERT INTO `dcy_delivery` VALUES ('58', '晋越快递', 'jinyuekuaidi', 'J');
INSERT INTO `dcy_delivery` VALUES ('59', 'jinyuekuaidi', 'jietekuaidi', 'J');
INSERT INTO `dcy_delivery` VALUES ('60', '金大物流', 'jindawuliu', 'J');
INSERT INTO `dcy_delivery` VALUES ('61', '嘉里大通', 'jialidatong', 'J');
INSERT INTO `dcy_delivery` VALUES ('62', '快捷速递', 'kuaijiesudi', 'K');
INSERT INTO `dcy_delivery` VALUES ('63', '康力物流', 'kangliwuliu', 'K');
INSERT INTO `dcy_delivery` VALUES ('64', '跨越物流', 'kuayue', 'K');
INSERT INTO `dcy_delivery` VALUES ('65', '联昊通', 'lianhaowuliu', 'L');
INSERT INTO `dcy_delivery` VALUES ('66', '龙邦物流', 'longbanwuliu', 'L');
INSERT INTO `dcy_delivery` VALUES ('67', '蓝镖快递', 'lanbiaokuaidi', 'L');
INSERT INTO `dcy_delivery` VALUES ('68', '乐捷递', 'lejiedi', 'L');
INSERT INTO `dcy_delivery` VALUES ('69', '联邦快递', 'lianbangkuaidi', 'L');
INSERT INTO `dcy_delivery` VALUES ('70', '联邦快递', 'lianbangkuaidien', 'L');
INSERT INTO `dcy_delivery` VALUES ('71', '立即送', 'lijisong', 'L');
INSERT INTO `dcy_delivery` VALUES ('72', '隆浪快递', 'longlangkuaidi', 'L');
INSERT INTO `dcy_delivery` VALUES ('73', '门对门', 'menduimen', 'M');
INSERT INTO `dcy_delivery` VALUES ('74', '美国快递', 'meiguokuaidi', 'M');
INSERT INTO `dcy_delivery` VALUES ('75', '明亮物流', 'mingliangwuliu', 'M');
INSERT INTO `dcy_delivery` VALUES ('76', 'OCS', 'OCS', 'O');
INSERT INTO `dcy_delivery` VALUES ('77', 'onTrac', 'ontrac', 'O');
INSERT INTO `dcy_delivery` VALUES ('78', '全晨快递', 'quanchenkuaidi', 'Q');
INSERT INTO `dcy_delivery` VALUES ('79', '全际通', 'quanjitong', 'Q');
INSERT INTO `dcy_delivery` VALUES ('80', '全日通', 'quanritongkuaidi', 'Q');
INSERT INTO `dcy_delivery` VALUES ('81', '全一快递', 'quanyikuaidi', 'Q');
INSERT INTO `dcy_delivery` VALUES ('82', '全峰快递', 'quanfengkuaidi', 'Q');
INSERT INTO `dcy_delivery` VALUES ('83', '七天连锁', 'sevendays', 'Q');
INSERT INTO `dcy_delivery` VALUES ('84', '如风达快递', 'rufengda', 'R');
INSERT INTO `dcy_delivery` VALUES ('85', '伸通', 'shentong', 'S');
INSERT INTO `dcy_delivery` VALUES ('86', '顺丰速递', 'shunfeng', 'S');
INSERT INTO `dcy_delivery` VALUES ('87', '顺丰', 'shunfengen', 'S');
INSERT INTO `dcy_delivery` VALUES ('88', '三态速递', 'santaisudi', 'S');
INSERT INTO `dcy_delivery` VALUES ('89', '盛辉物流', 'shenghuiwuliu', 'S');
INSERT INTO `dcy_delivery` VALUES ('90', '速尔物流', 'suer', 'S');
INSERT INTO `dcy_delivery` VALUES ('91', '盛丰物流', 'shengfengwuliu', 'S');
INSERT INTO `dcy_delivery` VALUES ('92', '上大物流', 'shangda', 'S');
INSERT INTO `dcy_delivery` VALUES ('93', '三态速递', 'santaisudi', 'S');
INSERT INTO `dcy_delivery` VALUES ('94', '山东海红', 'haihongwangsong', 'S');
INSERT INTO `dcy_delivery` VALUES ('95', '赛澳递', 'saiaodi', 'S');
INSERT INTO `dcy_delivery` VALUES ('96', '山东海红', 'haihongwangsong', 'S');
INSERT INTO `dcy_delivery` VALUES ('97', '山西红马甲', 'sxhongmajia', 'S');
INSERT INTO `dcy_delivery` VALUES ('98', '圣安物流', 'shenganwuliu', 'S');
INSERT INTO `dcy_delivery` VALUES ('99', '穗佳物流', 'suijiawuliu', 'S');
INSERT INTO `dcy_delivery` VALUES ('100', '天地华宇', 'tiandihuayu', 'T');
INSERT INTO `dcy_delivery` VALUES ('101', '天天快递', 'tiantian', 'T');
INSERT INTO `dcy_delivery` VALUES ('102', 'TNT', 'TNT', 'T');
INSERT INTO `dcy_delivery` VALUES ('103', 'TNT', 'tnten', 'T');
INSERT INTO `dcy_delivery` VALUES ('104', '通和天下', 'tonghetianxia', 'T');
INSERT INTO `dcy_delivery` VALUES ('105', 'UPS', 'ups', 'U');
INSERT INTO `dcy_delivery` VALUES ('106', 'UPS', 'UPS', 'U');
INSERT INTO `dcy_delivery` VALUES ('107', '优速物流', 'youshuwuliu', 'U');
INSERT INTO `dcy_delivery` VALUES ('108', 'USPS', 'usps', 'U');
INSERT INTO `dcy_delivery` VALUES ('109', '万家物流', 'wanjiawuliu', 'U');
INSERT INTO `dcy_delivery` VALUES ('110', '万象物流', 'wanxiangwuliu', 'U');
INSERT INTO `dcy_delivery` VALUES ('111', '微特派', 'weitepai', 'U');
INSERT INTO `dcy_delivery` VALUES ('112', '新邦物流', 'xinbangwuliu', 'X');
INSERT INTO `dcy_delivery` VALUES ('113', '信丰物流', 'xinbangwuliu', 'X');
INSERT INTO `dcy_delivery` VALUES ('114', '星晨急便', 'xingchengjibian', 'X');
INSERT INTO `dcy_delivery` VALUES ('115', '鑫飞鸿', 'xinhongyukuaidi', 'X');
INSERT INTO `dcy_delivery` VALUES ('116', '希伊艾斯(CCES)', 'cces', 'X');
INSERT INTO `dcy_delivery` VALUES ('117', '新邦物流', 'xinbangwuliu', 'X');
INSERT INTO `dcy_delivery` VALUES ('118', '新蛋奥硕物流', 'neweggozzo', 'X');
INSERT INTO `dcy_delivery` VALUES ('119', '香港邮政', 'hkpost', 'X');
INSERT INTO `dcy_delivery` VALUES ('120', '圆通速递', 'yuantong', 'Y');
INSERT INTO `dcy_delivery` VALUES ('121', '韵达快运', 'yunda', 'Y');
INSERT INTO `dcy_delivery` VALUES ('122', '运通快递', 'yuntongkuaidi', 'Y');
INSERT INTO `dcy_delivery` VALUES ('123', '邮政小包（国内），邮政包裹（国内）、邮政国内给据（国内）', 'youzhengguonei', 'Y');
INSERT INTO `dcy_delivery` VALUES ('124', '邮政小包（国际），邮政包裹（国际）、邮政国内给据（国际', 'youzhengguoji', 'Y');
INSERT INTO `dcy_delivery` VALUES ('125', '远成物流', 'yuanchengwuliu', 'Y');
INSERT INTO `dcy_delivery` VALUES ('126', '亚风速递', 'yafengsudi', 'Y');
INSERT INTO `dcy_delivery` VALUES ('127', '一邦速递', 'yibangwuliu', 'Y');
INSERT INTO `dcy_delivery` VALUES ('128', '优速物流', 'youshuwuliu', 'Y');
INSERT INTO `dcy_delivery` VALUES ('129', '源伟丰快递', 'yuanweifeng', 'Y');
INSERT INTO `dcy_delivery` VALUES ('130', '元智捷诚', 'yuanzhijiecheng', 'Y');
INSERT INTO `dcy_delivery` VALUES ('131', '越丰物流', 'yuefengwuliu', 'Y');
INSERT INTO `dcy_delivery` VALUES ('132', '源安达', 'yuananda', 'Y');
INSERT INTO `dcy_delivery` VALUES ('134', '原飞航', 'yuanfeihangwuliu', 'Y');
INSERT INTO `dcy_delivery` VALUES ('135', '芝麻开门', 'zhimakaimen', 'Y');
INSERT INTO `dcy_delivery` VALUES ('136', '银捷速递', 'yinjiesudi', 'Y');
INSERT INTO `dcy_delivery` VALUES ('137', '一统飞鸿', 'yitongfeihong', 'Y');
INSERT INTO `dcy_delivery` VALUES ('138', '中通速递', 'zhongtong', 'Z');
INSERT INTO `dcy_delivery` VALUES ('139', '宅急送', 'zhaijisong', 'Z');
INSERT INTO `dcy_delivery` VALUES ('140', '中邮物流', 'zhongyouwuliu', 'Z');
INSERT INTO `dcy_delivery` VALUES ('141', '忠信达', 'zhongxinda', 'Z');
INSERT INTO `dcy_delivery` VALUES ('142', '中速快件', 'zhongsukuaidi', 'Z');
INSERT INTO `dcy_delivery` VALUES ('143', '芝麻开门', 'zhimakaimen', 'Z');
INSERT INTO `dcy_delivery` VALUES ('144', '郑州建华', 'zhengzhoujianhua', 'Z');
INSERT INTO `dcy_delivery` VALUES ('145', '中天万运', 'zhongtianwanyun', 'Z');
