/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : ssm
Target Host     : localhost:3306
Target Database : ssm
Date: 2020-03-17 14:07:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `commodity_id` int(11) DEFAULT NULL,
  `user_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `commodity_id` (`commodity_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`commodity_id`) REFERENCES `commodity` (`commodity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('58', '3', '911', '1');
INSERT INTO `cart` VALUES ('60', '3', '842', '1');
INSERT INTO `cart` VALUES ('66', '2', '909', '1');
INSERT INTO `cart` VALUES ('77', '1', '67', null);
INSERT INTO `cart` VALUES ('78', '2', '95', '2');
INSERT INTO `cart` VALUES ('79', '1', '9', '2');
INSERT INTO `cart` VALUES ('82', '16', '15', '1');

-- ----------------------------
-- Table structure for cat
-- ----------------------------
DROP TABLE IF EXISTS `cat`;
CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cat
-- ----------------------------
INSERT INTO `cat` VALUES ('1', '电视');
INSERT INTO `cat` VALUES ('2', '盒子');
INSERT INTO `cat` VALUES ('3', '手机');
INSERT INTO `cat` VALUES ('4', '电话卡');
INSERT INTO `cat` VALUES ('5', '笔记本');
INSERT INTO `cat` VALUES ('6', '平板');
INSERT INTO `cat` VALUES ('7', '家电');
INSERT INTO `cat` VALUES ('8', '插线板');
INSERT INTO `cat` VALUES ('9', '出行');
INSERT INTO `cat` VALUES ('10', '穿戴');
INSERT INTO `cat` VALUES ('11', '智能');
INSERT INTO `cat` VALUES ('12', '路由器');
INSERT INTO `cat` VALUES ('13', '电源');
INSERT INTO `cat` VALUES ('14', '配件');
INSERT INTO `cat` VALUES ('15', '健康');
INSERT INTO `cat` VALUES ('16', '儿童');
INSERT INTO `cat` VALUES ('17', '耳机');
INSERT INTO `cat` VALUES ('18', '音箱');
INSERT INTO `cat` VALUES ('19', '生活');
INSERT INTO `cat` VALUES ('20', '箱包');
INSERT INTO `cat` VALUES ('25', '健身');
INSERT INTO `cat` VALUES ('42', '益智');
INSERT INTO `cat` VALUES ('43', '玩具');
INSERT INTO `cat` VALUES ('44', '科技');
INSERT INTO `cat` VALUES ('46', '科技3');
INSERT INTO `cat` VALUES ('47', '科技4');
INSERT INTO `cat` VALUES ('48', '科技5');
INSERT INTO `cat` VALUES ('53', '万华镜');
INSERT INTO `cat` VALUES ('54', '玩具2');
INSERT INTO `cat` VALUES ('55', '玩具3');
INSERT INTO `cat` VALUES ('57', '玩具6');
INSERT INTO `cat` VALUES ('58', '玩具7');
INSERT INTO `cat` VALUES ('70', '12');
INSERT INTO `cat` VALUES ('73', '15');
INSERT INTO `cat` VALUES ('79', '3');
INSERT INTO `cat` VALUES ('80', '33');
INSERT INTO `cat` VALUES ('83', '23424');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `commodity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `information` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `describe2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` double(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` int(4) NOT NULL DEFAULT '0',
  `postage` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`commodity_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `commodity_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `cat` (`cat_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=966 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', 'Redmi K30 4G', '8GB+256GB 紫玉幻境', ' 高通骁龙 730G 处理器', '120Hz高帧率流速屏 / 索尼6400万前后六摄 / 6.67\'\'小孔径全面屏 / 最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC', '0fab0d749c5e40eaabdb044811781dcbRedmi K30.jpg', '2199.00', '329', '1', '0', '3');
INSERT INTO `commodity` VALUES ('2', 'Redmi K30 5G', '8GB+256GB 深海微光', '高通骁龙 765G  5G 处理器', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'c8906eec3c56457a9d69028576f71d68Redmi K30 5G.jpg', '2899.00', '221', '1', '0', '3');
INSERT INTO `commodity` VALUES ('3', 'Redmi8A', '4+64G 耀光黑', '高通骁龙439八核处理器', '5000mAh大电量 / 最高可选4GB+64GB版本 / 支持18W快充 / Type-C充电接口 / 6.22\"水滴全面屏 / AI人脸解锁 / 骁龙八核处理器 / 超大音量 / 支持无线FM收音机', '3142c0104cc44c30a7d2152f51817161redmi8A.jpg', '699.00', '100', '1', '0', '3');
INSERT INTO `commodity` VALUES ('4', 'Redmi8', '4+64GB 宝石蓝', '高通骁龙439八核处理器', '5000mAh大电量 / 最高可选4GB+64GB版本 / 支持18W快充 / Type-C充电接口 / 6.22\"水滴全面屏 / 指纹识别+AI人脸解锁 / 骁龙八核处理器 / 超大音量 / 1200万AI双摄 / 支持红外遥控 / 支持无线FM收音机', '1db863fbe1914553ae118304f6ec3503Redmi8.jpg', '899.00', '107', '1', '0', '3');
INSERT INTO `commodity` VALUES ('5', '小米MIXAlpha', '敬请期待', '创新环绕屏，极具未来感的智能交互体验', '创新环绕屏，极具未来感的智能交互体验 / 1亿像素超高清相机，超大感光元件 / 5G双卡全网通超高速网络 / 骁龙855Plus旗舰处理器 / 纳米硅基锂离子4050mAh电池，40W超级快充 / 钛合金+精密陶瓷+蓝宝石镜片前沿工艺', '6fc8cd2d3fea486080bb703927534bbbxiaomiMIX Alpha.jpg', '19999.00', '0', '0', '100', '3');
INSERT INTO `commodity` VALUES ('6', '小米9', '8+256GB 全息幻彩蓝', '骁龙 855 旗舰处理器', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', 'f8087e5197a345bb977a825f67fe6c8bxiaomi9.jpg', '2699.00', '835', '1', '0', '3');
INSERT INTO `commodity` VALUES ('7', '小米9 Pro 5G', '12GB+512GB 梦之白', ' 骁龙855 Plus 高通最新旗舰处理器', '5G双卡全网通超高速网络 / 骁龙855Plus旗舰处理器 / 40W有线闪充+30W无线闪充+10W无线反充，4000mAh长续航 / 4800万全焦段三摄 / 超振感横向线性马达 / VC液冷散热 / 高色准三星AMOLED屏幕 / 多功能NFC / 赠送小米云服务1TB云存储', '81c5bdb545844e2f93a050fa63518e39xiaomi9pro.jpg', '4299.00', '166', '1', '0', '3');
INSERT INTO `commodity` VALUES ('8', 'RedmiNote8', '6+64GB 星云紫', ' 高通骁龙665八核处理器', '4800万全场景四摄 / 前置1300万美颜相机 / 骁龙665处理器 / 4000mAh超长续航 / 标配18W快充 / 超线性扬声器 / 90%高屏占比 / 康宁大猩猩保护玻璃 / 6.3英寸水滴全面屏', 'd39c50fa59a2407d8aa80edcf4c9b162RedmiNote8.jpg', '1099.00', '110', '1', '0', '3');
INSERT INTO `commodity` VALUES ('9', '小米CC9', '6GB+128GB 深蓝星球', '骁龙 710 八核处理器', '前置3200万自拍 / 索尼4800万超广角三摄 / 多色炫彩轻薄机身 / 6.39英寸三星 AMOLED水滴屏 /4030mAh大电量 / 骁龙710处理器 / 屏幕指纹 / NFC功能 / 红外遥控功能 / Game Turbo2.0游戏加速', 'ecd27f2c66f54dd680a6bd02a4697cf8xiaomicc9.jpg', '1699.00', '322', '1', '0', '3');
INSERT INTO `commodity` VALUES ('10', '小米CC9美图定制版', '8GB+256GB 标配', '骁龙 710 八核处理器', 'AI弱光人像，暗光环境也能拍出水光肌 / 全身美型，变美不变形 / 4030mAh大电量，足够尽兴玩一天 / 美图定制仙女配色、轻薄机身 / 6.39英寸三星 AMOLED水滴屏 / 骁龙710处理器 / 第七代屏幕指纹解锁 / 支持NFC和红外遥控', 'cee44a7e39f74b79b867e0066d49e613xiaomicc9mtu.jpg', '1999.00', '64', '1', '0', '3');
INSERT INTO `commodity` VALUES ('11', '小米CC9e', '6+128GB 暗夜王子', '骁龙 665八核处理器', '前置3200万自拍 / 索尼4800万超广角三摄 / 4030mAh大电量 / 3D全曲面玻璃机身，浪漫满分的全新配色 / 6.088英寸三星 AMOLED水滴屏 /第七代屏幕指纹 / 首发骁龙665处理器 / 全新Mimoji萌拍 / 红外遥控功能', 'd35c53e98a67490fabdeb97c0256b391xiaomicc9e.jpg', '1299.00', '199', '1', '0', '3');
INSERT INTO `commodity` VALUES ('12', '小米Max3', '8+128GB 黑色', ' 骁龙845 AIE 旗舰处理器', 'DxOMark拍照108分 / 磁动力滑盖全面屏 / 四曲面陶瓷机身 / 骁龙845旗舰处理器 / 包装盒内附赠10W无线充电器', '39b09b9463df48918f4ee55787fca30axiaomimax3.jpg', '2599.00', '51', '1', '0', '3');
INSERT INTO `commodity` VALUES ('13', '黑鲨手机2Pro', '12GB+512GB 电鸣黑', '骁龙855 Plus旗舰处理器', '骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级', 'e0ebb102b6b84988954b7c2757a1e5ebheishapro2.jpg', '3999.00', '217', '1', '0', '3');
INSERT INTO `commodity` VALUES ('14', 'Redmi7A', '3+32GB 雾光金', '高通骁龙SDM439 八核 处理器', '4000mAh超长续航 / 骁龙8核处理器 / 标配10W快充 / AI人脸解锁 / 大字体，大音量，无线收音机 / 整机生活防泼溅 / 极简模式，亲情守护', '2df4c4e76d5d44a8954f71b06d296bc5Redmi7A.jpg', '599.00', '55', '1', '0', '3');
INSERT INTO `commodity` VALUES ('15', 'Redmi K20 Pro 尊享版', '8GB+512GB 冰川蓝', '高通骁龙855 Plus处理器 ', '索尼4800万超广角三摄 / 前置2000万升降式相机 / 6.39\"AMOLED极界全面屏 / 3D四曲面玻璃机身 / 4000mAh超长续航 / 标配27W充电器 / 8层石墨立体散热 / 第七代屏下指纹解锁 / 多功能NFC / 双频GPS导航', 'a5fdd4821cc648c0974f41ce662290c7redmik20prok.jpg', '2399.00', '154', '1', '0', '3');
INSERT INTO `commodity` VALUES ('16', '住我行电话卡', '品牌 住我行', '免费办卡，免费包邮', '网络：联通网络,固定资费：5元 / 月，套餐包含(不含港澳台)：无，国内拨打：0.1元 / 分钟，国内接听：免费，国内短信(不含港澳台)：0.1元 / 条，套餐说明：套外流量 0.1元/MB', 'e6369724580742d38beb74b671f5acb2zwxdhk.jpg', '0.00', '1800', '1', '0', '4');
INSERT INTO `commodity` VALUES ('17', '吃到饱电话卡', '品牌 吃到饱', '免费办卡，免费包邮', '网络：可选联通/电信,固定资费：19元/ 月，套餐包含(不含港澳台)：1元/天流量任性用，国内拨打：包含60分钟0.1元 / 分钟，国内接听：免费，国内短信(不含港澳台)：0.1元 / 条，套餐说明：流量按天计，不用不花钱', '9ea9d7ebef39440cbf09a8282283064aCDB.jpg', '0.00', '967', '1', '0', '4');
INSERT INTO `commodity` VALUES ('18', '小米CC9 Pro', '8GB+128GB 魔法绿境', '骁龙730G', '1亿像素主摄 / 全场景五摄像头 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦 / 5260mAh ⼤电量 / 标配 30W疾速快充 / ⼩米⾸款超薄屏下指纹 / 德国莱茵低蓝光认证 / 多功能NFC / 红外万能遥控 / 1216超线性扬声器', 'ba7d46f38c714a93b2441a9dfcd444f1xiaomicc9pro.jpg', '2799.00', '144', '1', '0', '3');
INSERT INTO `commodity` VALUES ('19', 'Redmi Note 8 Pro', '8GB+256GB 冰翡绿', ' 专业游戏芯片 Helio G90T', '6400万旗舰级全场景四摄 / 前置2000万 AI美颜相机 / G90T专业游戏芯片，液冷散热 / 6.53英寸水滴全面屏 / 4500mAh大电量 / 标配18W快充 / 康宁大猩猩保护玻璃 / 多功能NFC / 红外遥控功能 / Game Turbo2.0游戏加速', '31afba53a83b41bd83672552c840955bredminote8pro2.png', '1799.00', '98', '1', '0', '3');
INSERT INTO `commodity` VALUES ('66', '小米电视4A  32英寸 ', '高清液晶屏', '人工智能系统', '屏幕尺寸：55英寸，分辨率：4K高清，处理器：64位四核 ，存储：1GB+4GB，HDMI：3个，', '2ecd4f2816274e62bf1b6cf219bf8565DC4A32YC.jpg', '699.00', '200', '1', '40', '1');
INSERT INTO `commodity` VALUES ('67', '小米全面屏电视E55C', '4K超高清+HDR', '全面屏设计', '屏幕尺寸：55英寸，分辨率：4K高清，处理器：64位四核，存储：2GB+8GB，HDMI：3个', 'd25b9d510edd4df7ae2effa4907378bdqmpDCE55C2.jpg', '1799.00', '69', '1', '50', '1');
INSERT INTO `commodity` VALUES ('68', '小米电视4A 65英寸', '4K超高清屏', '人工智能语音，支持壁挂', '屏幕尺寸：65英寸，分辨率：4K高清，处理器：64位四核，存储：2GB+8GB，HDMI：3个', '00f2163b708b4b11a7bf8fb9f5862f61DC4A65YC2.jpg', '2599.00', '296', '1', '0', '1');
INSERT INTO `commodity` VALUES ('69', '小米全面屏电视E43C', '全高清画质', '时尚全面屏设计，内置小爱同学', '屏幕尺寸：43英寸，分辨率：全高清，处理器：64位四核，存储：1GB+8GB，HDMI：2个', 'f60107ce3718489aa60dfb9043bf7a8cqmpDCE43C2.jpg', '1299.00', '109', '1', '79', '1');
INSERT INTO `commodity` VALUES ('70', '小米电视4A 55英寸 ', '超高清屏', '超窄边框，杜比解码，海量高清片源，支持壁挂', '屏幕尺寸：55英寸，分辨率：4K高清，处理器：64位四核，存储：2GB+8GB，HDMI：3个', '45109d52eec74bbeb62e7a98374b590fDC4A55YC2.jpg', '1699.00', '173', '1', '0', '1');
INSERT INTO `commodity` VALUES ('71', '小米全面屏电视E32A', '高清液晶屏', '纤薄机身，全面屏设计', '屏幕尺寸：32英寸，分辨率：高清，处理器：64位四核，存储：1GB+4GB，HDMI：2个', 'c5a63f23b486430993d75240f73f9932qmpDCE32A2.jpg', '799.00', '99', '1', '59', '1');
INSERT INTO `commodity` VALUES ('72', '小米电视4X 43英寸', 'FHD全高清屏', 'FHD全高清屏，人工智能语音，高效能', '屏幕尺寸：43英寸，分辨率：全高清，处理器：64位四核，存储：1GB+8GB，HDMI：2个', '1be92b32b6574412b05c5a749e69ac7bDC4X43YC2.jpg', '1199.00', '208', '1', '0', '1');
INSERT INTO `commodity` VALUES ('73', '小米全面屏电视E55A', '4K超高清+HDR', '全面屏设计，内置小爱同学', '屏幕尺寸：55英寸，分辨率：4K超高清，处理器：64位四核，存储：2GB+8GB，HDMI：3个', 'f87a321389954fb4b0e3900ad22daef8qmpDCE55A2.jpg', '1799.00', '133', '1', '10', '1');
INSERT INTO `commodity` VALUES ('74', '小米全面屏电视E65A', '4K超高清+HDR', '全面屏设计，内置小爱同学', '屏幕尺寸：65英寸，分辨率：4K超高清，处理器：64位四核，存储：2GB+8GB，HDMI：3个', '750ef09ac84e4a46b7fafbe1ba576422qmpDCE65A2.jpg', '2999.00', '133', '1', '0', '1');
INSERT INTO `commodity` VALUES ('75', '全面屏电视E65C', '4K超高清画质', '智能PatchWall系统', '屏幕尺寸：65英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个，', '8e3f886ba4334854bfb4bb2ac2496956qpmDS65YCE56C2.jpg', '2999.00', '297', '1', '30', '1');
INSERT INTO `commodity` VALUES ('76', '全面屏电视E55X', '4K超高清画质', '海量号内容，满足全家人的观看需求', '屏幕尺寸：55英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个，', '5e90eb64fa0b42c0861cdce064ef625aqmpDS55YCE55X2.jpg', '1799.00', '89', '1', '0', '1');
INSERT INTO `commodity` VALUES ('77', '小米电视4A 58英寸', '4K超高清+HDR', '语音搜片，震撼音效，高性能，大存储', '屏幕尺寸：58英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个，', '04c880775607440abf9fd2fbb164e371DS4A58YC2.jpg', '1999.00', '33', '1', '0', '1');
INSERT INTO `commodity` VALUES ('78', '小米电视4C 55英寸', '4K超高清+HDR', '钢琴烤漆，杜比音效，高性能，超窄边', '屏幕尺寸：55英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个，', '0583a13419a344f9b02c39159a71470cDS4C55YC2.png', '1699.00', '232', '0', '33', '1');
INSERT INTO `commodity` VALUES ('79', '小米电视4A 70英寸', '4K超高清70英寸巨屏', 'PatchWall智能系统，内置小爱同学', '屏幕尺寸：70英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+16GB，HDMI：3个，', '8436eff0ecea45c2baba81326935267fDS4A70YC2.jpg', '3799.00', '200', '0', '0', '1');
INSERT INTO `commodity` VALUES ('80', '小米电视4S 75英寸', '75英寸沉浸体验', '语音遥控器，PatchWall智能系统，丰富接口', '屏幕尺寸：75英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个', '6b8c80c02632466fad169e196e2efa51DS4S75YC2.jpg', '5999.00', '109', '1', '0', '1');
INSERT INTO `commodity` VALUES ('81', 'Redmi电视 70英寸', '4K超高清+HDR', '无线投屏，U盘文件直读轻松办公，', '屏幕尺寸：70英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+16GB，HDMI：3个，', 'dc76f3210fb84a6ab416947acf33fd7eRedmiDS70YC2.jpg', '3599.00', '98', '1', '0', '1');
INSERT INTO `commodity` VALUES ('82', '小米电视4S 58英寸', '4K超高清+HDR', '金属机身，人工智能语音', '屏幕尺寸：58英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个，', '9a7df96f1901403aa1606bcf01b1ee8eDS4S58YC2.jpg', '3299.00', '123', '1', '0', '1');
INSERT INTO `commodity` VALUES ('83', '小米电视4A 50英寸', '4K超高清+HDR', '人工智能，蓝牙语音遥控器，', '屏幕尺寸：50英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个，', '6273de66a7fb4993bfe6cad7165f9e62DS4A50YC2.jpg', '1499.00', '59', '0', '0', '1');
INSERT INTO `commodity` VALUES ('84', '全面屏电视proE43S', '4K超高清画质', '时尚金属全面屏设计', '屏幕尺寸：43英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+32GB，HDMI：2个', '752aa027b1014486afb278218c9f7675pmpDSproE43S43YC2.jpg', '1499.00', '33', '1', '10', '1');
INSERT INTO `commodity` VALUES ('85', '全面屏电视proE55S', '4K超高清画质', '支持8K视频解码', '屏幕尺寸：55英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+32GB，HDMI：3个', 'bb98979a1a8542f8a47621162e65e747qmpDSproE55S55YC2.jpg', '2399.00', '65', '1', '0', '1');
INSERT INTO `commodity` VALUES ('86', '全面屏电视proE65S ', '4K超高清画质', '支持8K解码', '屏幕尺寸：65英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+32GB，HDMI：3个', '109d85d72a98491c8790db55cf93dc3eqmpDSproE65S65YC2.jpg', '3399.00', '33', '1', '0', '1');
INSERT INTO `commodity` VALUES ('87', '小米电视5 55英寸', '4K广色域屏幕', '支持8K视频内容，时尚全面屏设计', '屏幕尺寸：55英寸，分辨率：4K超高 ，存储：3GB+32GB，HDMI：3个', '898749248ca444ee8c7d5f265824a98eDS555YC2.jpg', '2999.00', '78', '1', '12', '1');
INSERT INTO `commodity` VALUES ('88', '小米电视5 65英寸', '4K广色域屏幕', '支持8K视频内容，杜比音效', '屏幕尺寸：65英寸，分辨率：4K超高清，存储：3GB+32GB，HDMI：3个', '1f148c5c6b8f4d1782454e4f7519ca5eDS565YC2.jpg', '3999.00', '112', '1', '0', '1');
INSERT INTO `commodity` VALUES ('89', '全面屏电视proE55X', '4K超高清画质', '内置小爱用心，语音操控更方便', '屏幕尺寸：55英寸，分辨率：4K超高清，处理器：64位四核 ，存储：2GB+8GB，HDMI：3个', '9145c433652848f097209ae4b96ada61qmpDSE55X55YC2.png', '1799.00', '133', '0', '0', '1');
INSERT INTO `commodity` VALUES ('92', '小米盒子4 SE 套装版', '白色 4K HDR', '人工智能系统 ', '语音控制 / 海量片源 / 接口丰富 / 本套装包含小米盒子4 SE*1、小米高清数据线-1.5米*1', '3336896bd73c4ce091590c8a010c29d8hezi4SE.jpg', '189.00', '35', '1', '0', '2');
INSERT INTO `commodity` VALUES ('93', '小米盒子4', '白色 4K HDR', '人工智能语音', '第 4 代小米盒子，全新登场。更漂亮，也更好用了，搭载 PatchWall 人工智能语音系统，标配语音遥控器，想看什么，不用复杂的操作，告诉它，立刻就能帮你找到，还能让你体验用声音控制智能设备的乐趣。', '6d29045db20a4587bb811c361d2dce58hezi4.jpg', '299.00', '20', '1', '9', '2');
INSERT INTO `commodity` VALUES ('94', 'RedmiBook 13 独显', 'i7 8G 512G 银', 'NVIDIA® GeForce® MX250 独立显卡', '四窄边全面屏 / 全新十代酷睿™处理器 / 全金属超轻机身 / MX250 高性能独显 / 小米互传 / 专业「飓风」散热系统 / 11小时长续航', '26c3059080e44e9c8af3498ff2f265beredmibook13.jpg', '5499.00', '129', '1', '0', '5');
INSERT INTO `commodity` VALUES ('95', 'RedmiBook 14 增强版', 'i7 8G 512G 银', 'NVIDIA® GeForce® MX250 独立显卡', '全新十代酷睿处理器 / MX250独显 / 14英寸超窄边框高清屏 / 小米手环极速解锁 / 炫酷多彩任你挑选', 'f3b10c91e47745ab891d6de912b0d677redmiBook14zqb.jpg', '4999.00', '200', '1', '0', '5');
INSERT INTO `commodity` VALUES ('96', 'Air 12.5\" 2019款', 'i5 4G 256G SSD 银色', '英特尔® UHD Graphics 615集成显卡', '全高清屏幕 / 长续航全金属 / 超窄边框 / 像杂志一样随身携带 / 哈曼高品质扬声器', 'ea9993b46b1449f0a557d1662b1527f1air12.5.jpg', '4299.00', '300', '1', '0', '5');
INSERT INTO `commodity` VALUES ('97', 'Air 13.3\" 2019款', 'i7 8G 512G PCle 深空灰', 'NVIDIA GeForce MX250 独立显卡', '轻薄全金属机身 / MX250独立显卡 / 9.5小时超长续航 / FHD全高清屏幕 / 指纹解锁 / 兼顾办公娱乐与轻薄的高性能笔记本', '90b5c67704784d78b70805d33806322bair13.3.jpg', '5699.00', '222', '1', '0', '5');
INSERT INTO `commodity` VALUES ('98', 'Pro 15 增强版', ' i7 16GB 1TB PCIe  深空灰', 'NVIDIA® GeForce® MX250 独立显卡', '全新十代酷睿处理器 / 大满贯接口 / 100%sRGB高色域 / 全尺寸背光键盘', '8d6dd1177a9044d88eb33d04de918944pro15.5.jpg', '6999.00', '100', '1', '0', '5');
INSERT INTO `commodity` VALUES ('99', '小米笔记本15.6\" 2019款', 'i7 16G 512G SSD 白色', 'NVIDIA® GeForce RTX™ 2060', '九代酷睿标压处理器 / 144Hz 刷新率 / 3+2包围式热管 / 12V 台机级别散热风扇 / 72%色域', '7e3ef204ae5443879705e7a86e6612dbxiaomi15.5.jpg', '4799.00', '56', '1', '0', '5');
INSERT INTO `commodity` VALUES ('100', '小米游戏本15.6\"', 'i5 8G 1T', 'NVIDIA® GeForce® GTX 1060', '第八代酷睿处理器 ／ 72%NTSC高色域窄边框全高清屏 ／ 256G PCIe高速固态 ／ 双烤不限频不降频', 'fa9a99b0dbca48f6b7fba4f73ec88e83yxb.jpg', '7999.00', '300', '1', '0', '5');
INSERT INTO `commodity` VALUES ('101', '小米曲面显示器 34英寸', '34英寸 黑', '分辨率 3440 × 1440', '21:9宽广全景视野 /三星面板+2K超清分辨率 / 1500R极致大曲率 / 144Hz刷新率 / 121%sRGB宽广色域 / 支持升降,旋转,壁挂', 'b1fa24d1da864eb6991c8f23103bb062qmxsq.jpg', '2499.00', '90', '1', '10', '5');
INSERT INTO `commodity` VALUES ('102', '小米显示器 23.8英寸', '23.8英寸 黑', '1080P高清画质', '1080P高清画质 / 178°广阔视觉 / 超薄机身 / 3年质保 / 健康护眼 / 简约设计高颜值', '3c181e970253498d8425b1615ad2d239xsq.jpg', '699.00', '44', '1', '0', '5');
INSERT INTO `commodity` VALUES ('103', '小米平板4', '8英寸 LTE版 64GB 黑色', '骁龙 660 AIE处理器', '大电量，超长续航 / 支持AI人脸识别 / 后置1300万，前置500万摄像头 / 金属机身，超窄边框 / 骁龙660八核处理器', '21131175aa054d28afa33d580025f937pb4.jpg', '1499.00', '144', '1', '0', '6');
INSERT INTO `commodity` VALUES ('840', '风冷对开门冰箱', '银色', '483L大冰箱', '风冷无霜不结冰 / 环绕立体出风，长久锁水保鲜 / 全直流双变频，高效制冷低噪节能 / 低能耗，1天不到1度电 / 20格储物分区 / 自动恒温校准', '0f5fff6f41c040c8afd90a02ffb2c264bx.jpg', '2499.00', '571', '1', '40', '7');
INSERT INTO `commodity` VALUES ('841', '立式空调', '2匹/变频/超一级能效', 'APF值高达4.65', '立体送风，高效控温 / 直流变频，节能省电 / 自清洁，省心省力 / 全屋家电，智能互联 / 静音设计，静享生活 / 官网购买，免预约安装，签收后服务人员主动联系', '617a32d4c1354e3dbd60e8ce185059cdkt.jpg', '4999.00', '234', '1', '33', '7');
INSERT INTO `commodity` VALUES ('842', '壁挂空调', '大1匹/变频/超一级能效', 'APF值高达5.13', '高效制冷热 / 全直流变频，节能省电 / 自清洁，省心省力 / 全屋家电，智能互联 / 静音设计，静享生活 / 官网购买，免预约安装，签收后服务人员主动联系', 'e6024f301f7a4c2eb2e9aabbbc408d2fkt2.jpg', '2599.00', '158', '1', '9', '7');
INSERT INTO `commodity` VALUES ('843', '滚筒洗衣机', '10kg 白色', '产品尺寸 598 × 650 × 850mm，产品净重 71kg', '国标最高A+级洗净能力 / 智能空气洗 / 烘干除菌率达99.9%+ / 高温筒自洁 / 一级能效，省水省电', '5ed92d0030d746e5b088a8525b0dc59fxyj.jpg', '2299.00', '513', '1', '9', '7');
INSERT INTO `commodity` VALUES ('844', '全自动洗衣机', '1A 8kg 白色', '8kg大容量 ', '10种洗涤模式 / 10挡水位调节 / 耐腐蚀金属机身 / 桶自洁、桶风干模式避免细菌滋生 / 空气阻尼减震 / 免运费及基础安装费', '5dbaca4736e644208ab59797b84c4eceredmixyj.jpg', '899.00', '57', '1', '0', '7');
INSERT INTO `commodity` VALUES ('845', '小米净水器', '小米净水器S1 600G 白色', '800G超大通量', '制水速度翻一倍；“真”双出水，厨房用水全净化；新一代OLED屏显水龙头，水质清晰可见；一级水效，纯废水比最高可达3:1；横抽式滤芯设计，换滤芯更方便。', '7e070a823dd74a36a0c99762c560a4f7jsq.jpg', '2499.00', '232', '1', '0', '7');
INSERT INTO `commodity` VALUES ('846', '米家微波炉', '白色', '20L容量', '智能APP操控 / 平板式加热 / 专项分类解冻 /  30+精选食谱', '1b163d1f530b49c4b99565d45f19272awbl.jpg', '399.00', '158', '1', '0', '7');
INSERT INTO `commodity` VALUES ('847', '米家电烤箱', '白色', '32L大容积', '上下独立控温 / 旋转烤叉 / 热风循环 / 40°C恒温发酵 / 120分钟定时 / 支持免定时持续运行', 'd5fc27a553b84889ad3d3915fd5c719edkx.jpg', '299.00', '77', '1', '0', '7');
INSERT INTO `commodity` VALUES ('848', '扫地机器人', '白色', '高精度激光测距，智能规划路径', ' 1800Pa 大风压澎湃吸力 / 远程智能控制 ，定时清扫 / 大电池持久清扫', '1a4599607cd34ce9aceeef8e8ad23344sdjqr.jpg', '1999.00', '143', '1', '0', '7');
INSERT INTO `commodity` VALUES ('849', '吸尘器', '白色', '无线', '高端 9 锥气旋 / 99.9%深度除螨 / 10 万转无刷变频电机 / 净化器级洁净排放，拒绝 PM2.5 / 高达 30 分钟持续大吸力', '96c2a6b6bd614807a4893b2c2462dd25xcq.png', '999.00', '157', '1', '0', '7');
INSERT INTO `commodity` VALUES ('850', '空气净化器', '白色', '米家空气净化器MAX 增强版', '专业级除甲醛 / 澎湃净化力，适用84㎡大空间* / 高效净化PM2.5、过敏原和细菌', 'c8c9d0610a2e4099b2cff31741ad9920kqjhq.jpg', '1999.00', '228', '1', '0', '7');
INSERT INTO `commodity` VALUES ('852', '电饭煲', '电饭煲C1 5L 白色', ' 650W大功率', '支持20分钟热水快饭 / 一键调节加热时间 / 搭配可得24种模式', 'a39d31b0b9734590beb1c529a22ad8c3sfb.jpg', '249.00', '665', '1', '0', '7');
INSERT INTO `commodity` VALUES ('853', '电磁炉', '白色', '2100W功率', '99挡微调控火 / 支持低温烹饪 / 100+烹饪模式', 'bae640da035c479fb29cfd7a05c8c107dcl.jpg', '249.00', '65', '1', '0', '7');
INSERT INTO `commodity` VALUES ('854', '电水壶', '白色', '1.5L大容量', '快速沸腾 / 304不锈钢内胆 / 1.5L大容量 / 双层防烫 / 13cm大口径​', '9b4c7164c9cc49f49d50a3aede23b4b2dsh.jpg', '95.00', '241', '0', '0', '7');
INSERT INTO `commodity` VALUES ('855', '滤水壶', '白色', '多效滤芯', '可有效去除余氯及水垢 / 储水量大，可满足多人使用 / 进口食品级材质', 'a6682e985beb46a79c29103ee0a139e8lsh.png', '95.00', '412', '1', '0', '7');
INSERT INTO `commodity` VALUES ('856', '落地风扇', '白色', '23.1m³/min风量，无线连接', '模拟自然风算法 / 7 羽叶设计 / 长距离送风，低噪声直流电机 / 支持 AI 语音，多种智能控制 / APP 100挡 调速，140° 大角度摆头', '5e3768da0707434a807f888e4bfda571ldfs.png', '299.00', '74', '1', '0', '7');
INSERT INTO `commodity` VALUES ('857', '投影仪', '白色', '1080P 分辨率', '均值 500 ANSI 流明 / 一体式大音腔全密封光学系统', '5914019d3a3f4007bf052b37b4dad529tyy.jpg', '2299.00', '158', '1', '0', '7');
INSERT INTO `commodity` VALUES ('858', 'LED吸顶灯', '白色', 'Φ450mm 适合25m²以内', '色温亮度可调 | 墙壁开关切换光线 | 蓝牙网关 | 防尘防虫 | 快速安装', '5083d77d74d84d23887bfe64049d1e3bled.png', '349.00', '293', '1', '9', '7');
INSERT INTO `commodity` VALUES ('859', '插线板', '白色 通用', '含3口USB 2A快充', '美貌与安全并存的插线板 / 3个USB充电口 / 支持2A快充 / 3重安全保护 / 隐藏式提示灯 / 超薄小插头 / 迷你设计，仅1个铅笔盒大小', '94ffaef7563b4b20894fedad121a06dfcxb.jpg', '49.00', '199', '1', '0', '8');
INSERT INTO `commodity` VALUES ('860', '新风机', '白色', '150风量', '150m³/h 纯净风量，适用面积≤53㎡ / 高效抗霾除醛，换气富氧 / 节能轻音，24小时运行约8天用1度电 / PTC辅助加热，寒冷天气，柔和出风', '526d09f00d3d4ca09a809815dfc40221xfj.jpg', '1799.00', '51', '1', '0', '7');
INSERT INTO `commodity` VALUES ('861', '电暖器', '白色', ' 2200W对流速热', '智能舒适控制  / 居浴两用', '545b21fe8e1d4e219a4ecda269e05e8cdnq.jpg', '399.00', '71', '1', '0', '7');
INSERT INTO `commodity` VALUES ('862', '电压力锅', '白色', ' 全新 OLED 触控交互体验', '变压沸煮 / 智能微泄压 / 中途开盖 / 安全锁压结构 \r\n\r\n', 'bb3072d100b94f4ab6e304c8ac85c21fdylg.jpg', '499.00', '152', '1', '0', '7');
INSERT INTO `commodity` VALUES ('863', '料理机', '白色', ' 1.7升大容量 ', '高速破壁 / 八叶精钢刀头 / 降噪风道 / 智能APP联网控制 OLED屏幕操作', '47325ad716bc4591937fbc5338198f33llj.jpg', '599.00', '88', '1', '0', '7');
INSERT INTO `commodity` VALUES ('864', '电煮壶', '白色', '99级火力', '支持24种烹饪模式/ APP互联 / 英国STRIX温控器', 'd488987d2641441b87b10b086571d96bdzh.jpg', '299.00', '87', '0', '0', '7');
INSERT INTO `commodity` VALUES ('865', '小米手表', '尊享版 曜石黑', '表盘 康宁大猩猩3代玻璃，边框 铝合金，腕带 氟橡胶', '能打电话、独立上网 / 压力、睡眠、身体能量监测 / 36h超长续航 / 十大专业运动模式 / 多功能NFC / 小爱同学（ 以下功能iOS系统有部分限制：小米穿戴App暂未支持，后续支持情况以官方通知为准；手表无法控制iOS系统手机拨打电话；NFC仅支', 'c0af877cae6a4707bba2995c50d4621bxmsb.jpg', '1999.00', '261', '1', '0', '10');
INSERT INTO `commodity` VALUES ('866', '小米手环4', 'NFC版 黑色', '屏幕类型 AMOLED，屏幕分辨率 120X240 RGB', '全新 AMOLED 大屏彩显，支持77种个性主题。拥有20天的超长续航，能用支付宝抬手支付。50米防水，支持游泳模式。还能看微信、看来电、测心率、测睡眠。戴上它，你的改变从今天开始。', 'b79ba91494f54460b6c335d4b2c174dbxmsh4.png', '209.00', '198', '1', '0', '10');
INSERT INTO `commodity` VALUES ('867', '小米VR一体机', '白色 64GB', '骁龙 821 处理器', '多项性能优化算法 / 定制 VR 专用 Fast-Switch 2K 超清屏 Oculus 特殊调制衍射光学系统', 'a5cd654e792141b29ad9e007cae7a108vrytj.png', '1499.00', '71', '1', '0', '10');
INSERT INTO `commodity` VALUES ('868', '小米平衡车', '白色', '22公里超长续航 ', '年轻人的酷玩具 / 骑行遥控两种玩法 / 轻、小、便携 / 重心驱动 / 15重安全保障', '5ab84b01a65f4cc4b4d7be6acae25120phc.jpg', '1849.00', '158', '1', '9', '9');
INSERT INTO `commodity` VALUES ('869', '米家电动滑板车Pro', '黑色', ' 45 公里续航 ', '多功能控制面板 /6倍步行速度', '2077e83038694f5fa81e1ede178a8acbhbcpro.jpg', '2599.00', '241', '1', '0', '9');
INSERT INTO `commodity` VALUES ('870', '电动自行车 ', '新国标版 黑色', '40km助力骑行', '三种骑行模式 /  大尺寸光感显示屏', 'fa4e700e2d8940c49adb08f590fa04bbzxc.jpg', '2999.00', '158', '1', '0', '9');
INSERT INTO `commodity` VALUES ('871', '小米无线车充', '黑色', '20W 大功率闪充', ' 电动变形夹臂 / 双重散热更安全 / 智能兼容', '18ccc8ec460b42679e41b06bf77d1b23xmwxcc.jpg', '169.00', '158', '1', '0', '9');
INSERT INTO `commodity` VALUES ('873', '后视镜行车记录仪', '黑色', ' 5英寸IPS大屏 ', '语音控制 ／停车监控 ／ 前后双录', '15ca1f0e5e70499f849c8b7068f858fbhsj.png', '349.00', '16', '1', '0', '9');
INSERT INTO `commodity` VALUES ('874', '行车记录仪', '黑色', 'IPS大屏', '索尼 IMX307图像传感器 / 3D降噪 /  本地语音控制', 'ef43bf3c774441ccbb12c94287482340xcjly.jpg', '299.00', '413', '1', '8', '9');
INSERT INTO `commodity` VALUES ('875', '米家充气宝', '黑色', '数字胎压检测', '预设压力充到即停 / 内置锂电池 / 一机多用', 'd49e5ae45610475dba079ff58bb50206cqb.jpg', '199.00', '77', '1', '0', '9');
INSERT INTO `commodity` VALUES ('876', '平衡轮', '灰白', '双脚分离式设计 ', '三步轻松上手 / 无需穿脱，踩上就走 / 便携提手，拎着方便', 'f14a2fe2d4764819a75842e5d9769f67phl.jpg', '799.00', '66', '1', '0', '9');
INSERT INTO `commodity` VALUES ('877', '石英表', '经典版 白色', '316L精钢表盘', '进口机芯 / 精钢表壳 / 真皮表带/ 两年续航', '3fa1008fa3c14070ae8b6ae6d8274f22syb.jpg', '199.00', '48', '1', '0', '10');
INSERT INTO `commodity` VALUES ('878', 'MIJOY 临时停车牌', '黑色', '一键隐藏', ' 不惧暴晒 / 磁吸贴片', '10929374a37d4d72863942ba5d79c981lstcp.png', '16.90', '41', '1', '0', '9');
INSERT INTO `commodity` VALUES ('879', '照片打印机', '白色', '热升华打印，打印分辨率 300 x 300 dpi', '6寸高清照片 / 细腻还原真实色彩 / 自动覆膜长久保存 / 多尺寸证件照打印 / 多种无线快连 / 可远程打印', 'd6b641bab99943e18bcde661305fddcedyj.jpg', '479.00', '76', '1', '0', '11');
INSERT INTO `commodity` VALUES ('880', '喷墨打印机', '白色', '按需喷墨（热发泡打印技术）', '支持拍摄存档打印 / 微信小程序打印 / 远程打印 / 无需驱动一步安装 / 耗材实惠 / 打印尺寸最大A4', 'd070473ade294ed5a2994710b0ca6308pmdyj.jpg', '899.00', '166', '1', '0', '11');
INSERT INTO `commodity` VALUES ('881', '喷墨打印机墨水', '四色墨水套餐', '四色墨水', ' 彩打不贵 / 一步安装 / 缓解堵头 / 安全环保', '70c41b62435f469580c6077c9509afdfpmdyjms.jpg', '39.00', '678', '1', '9', '11');
INSERT INTO `commodity` VALUES ('882', '路由器AC2100', '黑色', 'MT7621A MIPS 双核880MHz', '2100M高速路由 / 全终端游戏加速 / 全千兆网口 / 双核CPU高速并发多任务 / 360°隐藏天线 / 全方向均匀覆盖', 'a7739f663f66427aa502d98670b5c317lyqac2100.jpg', '229.00', '261', '1', '17', '12');
INSERT INTO `commodity` VALUES ('883', '智能家庭', '白色', ' 米家无线开关', '米家多功能网关 / 米家人体传感器 / 米家门窗传感器', 'c59e177332704f0cabf9ab6d8f86ab39znjt.jpg', '228.00', '71', '1', '9', '11');
INSERT INTO `commodity` VALUES ('884', '对讲机', '黑色', '5W发射功率', 'UV双段 / IP65 / 超长待机 / 位置共享', '37111f535cca4820a2e2ddd960736c29djj.jpg', '429.00', '162', '1', '0', '11');
INSERT INTO `commodity` VALUES ('885', '无人机', '白色', '720P高清航拍', '精准悬停 / 360°空中翻滚 / 多机红外对战', 'fe9271a083bd4579997829ed7f0c6c4cwrj.jpg', '199.00', '74', '1', '0', '11');
INSERT INTO `commodity` VALUES ('886', '智能摄像机', '白色', '1080P高清画质', ' 360度云台全景视角 ／ 红外夜视 ／ 双向语音 / AI 增强移动侦测 / H.265 编码 / 倒置安装', '1f0262da67244cbf910954849ac1961eznsxj.jpg', '169.00', '254', '1', '9', '11');
INSERT INTO `commodity` VALUES ('887', '支架式自拍杆', '黑色', '铝合金防滑拉杆', '360°可旋转手机支架 / 独立式蓝牙遥控器', '539be83eb9514b509e7ebd07cc807ae1zjszpg.jpg', '89.00', '351', '1', '0', '11');
INSERT INTO `commodity` VALUES ('888', '智能门锁', ' 霸王锁体 磨砂金', '一体化3D活体指纹', '新增霸王锁体 / 直插芯C级智能锁芯 / 德国红点设计大奖  / 6大开锁方式 / 7大安全检测 / 十余项安全黑科技 / 丰富的智能联动', '60a93890be274e1f9b4d5894c5be4838znms.jpg', '1499.00', '176', '1', '29', '11');
INSERT INTO `commodity` VALUES ('889', '视频门铃', '白色', '人体监测，AI人脸识别 ', '双向对讲，变声对讲 / 极速安装，强拆警报', '4fd1ce26f2b847f098553f56ec974916spml.jpg', '249.00', '71', '1', '29', '11');
INSERT INTO `commodity` VALUES ('890', '小爱老师', '白色', '便携学习机', '科学背单词 / 优质听力资源 / 持久录音笔 / 海量内容持续引入 / 随身翻译机', '1e94b3bf721f44c092c41f44d39bfa9bxals.jpg', '429.00', '69', '1', '0', '11');
INSERT INTO `commodity` VALUES ('891', 'Redmi路由器', '白色', 'MT7621A MIPS 双核880MHz', '2033Mbps无线速率 / 2.4G/5G双频并发 / 全千兆网口 / 双核四线程CPU 6根高增益全向天线 / 6路高性能信号放大器 / 小米智能家居优化连接 / 128M大内存 / 内置网易UU游戏加速', '5ba0e83bda464dc6aacd8261af3133baredmilyq.jpg', '169.00', '158', '1', '19', '12');
INSERT INTO `commodity` VALUES ('892', '小爱音箱HD', '浅灰色', '小爱智能语音交互', '360° 全向音效 / 澎湃低音 / 精准拾音', '7912ca13fac94dada4f563395302d5c3xayxhd.jpg', '549.00', '41', '1', '0', '11');
INSERT INTO `commodity` VALUES ('893', '充电宝', '10000mAh 金色', '双向快充', '支持 USB-C 充电 / 高密度锂聚合物电芯  / 仅 12.58mm 薄', '549ec8bf894144fb99f5fc7b4460e1d6cdb.jpg', '149.00', '147', '1', '0', '13');
INSERT INTO `commodity` VALUES ('894', '无线充电宝', '10000mAh 白色', '有线无线都能充 / 双向快充', '0000mAh大容量 / 支持边充边放 ', '2f938ca66f134b49b264094f8157b96dwxcdb.jpg', '119.00', '176', '1', '0', '13');
INSERT INTO `commodity` VALUES ('895', 'USB-C数据线', '100cm 白色', '标准USB-C接口', ' 数据传输、充电二合一 / 充电迅速、传输稳定 / 严格测试、安全护航', 'dd74ad7703844a5d9faff520bb8e9d0fsjx.jpg', '9.90', '142', '1', '0', '14');
INSERT INTO `commodity` VALUES ('896', '无线车充', '黑色', '20W 大功率闪充', '电动变形夹臂 / 双重散热更安全 / 智能兼容', 'd0649839363347a5a0474706d4f760e9wxcc.jpg', '169.00', '139', '1', '0', '13');
INSERT INTO `commodity` VALUES ('897', '立式风冷无线充', '30W 雅酷白', '30W无线闪充', '立式充电，随放随充，无线束缚 / 30W无线闪充，兼容Qi标准无线充电电子设备 / 散热孔设计，主动散热，有效降温 / 内置静音风扇，体验生活场景静音 / 6重安全保护，确保手机安全稳定充电', '8379ae905201413988d8160cafa4a1aclswxc.jpg', '199.00', '177', '1', '0', '13');
INSERT INTO `commodity` VALUES ('898', '5号彩虹电池', '10粒装', '碱性10粒装5号环保电池，无汞无镉 ', '麦克赛尔监制电池核芯 / 电量持久，强劲有力 / 防泄漏技术，双重安全保障 / 十种绚丽色彩，送收纳盒 ', '4392ac4b6f484dc787e0ebb5ff88fa0f5hdc.jpg', '9.90', '142', '1', '0', '14');
INSERT INTO `commodity` VALUES ('899', '小米9 保护壳', '街头风  黑色', '时尚多彩', '细节出众 / 纤薄轻巧 / 是腕带也是支架', '77465f599d6e41e390ff17654a00237cxm9jtf.jpg', '49.00', '34', '1', '0', '14');
INSERT INTO `commodity` VALUES ('900', 'Redmi K30保护壳', '大魔王机甲壳 黑色', '精准开孔，强韧张力 ', '独特机甲设计/ 全面贴合机身，防止手机刮蹭', '16514ecfc924439cab378c6877e40984k30bhk.jpg', '49.00', '142', '1', '0', '14');
INSERT INTO `commodity` VALUES ('901', '手机膜', '小米9 标准高透贴膜', ' 耐磨防损', '高清透亮 / 疏油疏水 /精选材质 / 智能吸附', '40aa8f580a284e8e921b096ca1025962sjmxioam9.jpg', '19.90', '98', '1', '0', '14');
INSERT INTO `commodity` VALUES ('902', '平板保护膜', '标准高透保护膜', '极清高透', '透光率达到92%以上，雾度0.8%，接近极清高透。', 'ea8a3fcf038045098f60e3c6af2d5a2apbbhm.jpg', '19.90', '54', '1', '0', '14');
INSERT INTO `commodity` VALUES ('903', '自动洗手机', '白色', ' 99.9%有效抑菌 ', '免接触更卫生 / 植物精华，滋润舒适', 'cf98ff35661a44b28a7f52230c8f70e4xsj.jpg', '69.00', '379', '1', '0', '15');
INSERT INTO `commodity` VALUES ('904', '毛球修剪器', '白色', '90 分钟长久续航', '0.35mm 微弧护衣网 / 5 叶旋风浮动刀头 ', '0a5456eabf3f40fe93038298d35f0ba7mqxjq.jpg', '39.90', '142', '1', '0', '15');
INSERT INTO `commodity` VALUES ('905', '电动剃须刀', 'S500 黑色', '浮动贴面更干净 / 减压设计更舒适', '浮动贴面更干净 / 减压设计更舒适', 'f543e122b849458ba12a58bb44530b70txds500.jpg', '169.00', '320', '1', '0', '15');
INSERT INTO `commodity` VALUES ('906', '声波电动牙刷', 'T100 粉色', '进口纤密软毛 ', '高频震动 / 两档模式 /  长续航 / 强防水 / 轻整机', 'ea9ac5ae8ec341b5a130a34af356c11cys.jpg', '39.90', '26', '1', '0', '15');
INSERT INTO `commodity` VALUES ('907', '水离子吹风机', '白色', 'NTC 智能温控 ', '大风量 / 水离子护发 /  冷热风循环 / 磁吸式造型风嘴 / 360度自由旋转', 'e6938c3bcea144ba8bdcc6a8f46376ebcfj.jpg', '179.00', '121', '1', '0', '15');
INSERT INTO `commodity` VALUES ('908', '体重秤', '白色', ' 高精度锰钢传感器 ', '精准测量 / 起重低至100G / 一杯水都能测 / 身体平衡能力评估 / 单脚闭目即测即得 / 理想体重测算 了解自己应该多重\r\n\r\n', 'd9ecc4832b1e4429bde5dae6232e8c16tzc.jpg', '59.00', '198', '1', '0', '15');
INSERT INTO `commodity` VALUES ('909', '米兔智能故事机', '白色', ' 智能语音交互 ', '海量优质内容，讲故事更专业 / 微信远程互动 /材质安全耐用', '8146cc020b0b4091beb1d34a2bb8859fzngsj.jpg', '169.00', '66', '1', '0', '16');
INSERT INTO `commodity` VALUES ('910', '多彩指尖积木', '盲盒', '盲盒包装，惊喜不断', '解压神器，玩的自在 / 多彩配色，个性飞扬（因盲盒产品的特殊性，一经拆封无质量问题不予退换）', '01ec1c294be94d36a8015f653e6bc697dczjjm.jpg', '9.90', '156', '1', '0', '16');
INSERT INTO `commodity` VALUES ('911', '米兔儿童电话手表', '3C 4G 粉色', 'G双向高清通话', '7天超长待机 / 200万高清摄像头 / 手腕上的AI学习机，随时随地获取新知识 / 内置小爱同学 / AI实时定位，让定位更聪明 / IPX7级防水，淋雨玩水都不怕', 'c86e2d9b43fe421593152e7f33dc0435etsb.jpg', '349.00', '165', '1', '0', '16');
INSERT INTO `commodity` VALUES ('912', '米兔儿童滑板车', '蓝色', '双弹簧重力转向系统', ' 内部动力转化自发光灯珠 ／ 软胶包裹的C型把手 ／ 模式高度可调节', 'dccd2c95ca5e400caf6545f30c55f92bmtethbc.jpg', '219.00', '112', '1', '0', '16');
INSERT INTO `commodity` VALUES ('913', '米兔折叠婴儿推车', '米灰色', '四轮独立减震 ', '单手秒收 / 登机免托运 /  坐躺随心', '80fbcd30f70e4c2c968ff14a2b671213mtzdyec.png', '599.00', '102', '1', '0', '16');
INSERT INTO `commodity` VALUES ('914', '米兔儿童书包', '小号 浅粉色', '磁吸速开包扣', '专业减负系统 / 内部合理分区 / 分龄设计', 'eef6fbc34ddf403da875fc6eb35e9bdcmtetsb.jpg', '169.00', '142', '1', '0', '16');
INSERT INTO `commodity` VALUES ('915', '米兔婴儿理发器', '白色', '低音电机 ', '陶瓷刀头 / 5 种理发长度可选 / 支持全身水洗', 'cf56f48b2982445a8e76d59871f7e208yelfq.jpg', '89.00', '44', '1', '0', '16');
INSERT INTO `commodity` VALUES ('916', '米兔儿童保温杯', '蓝色', ' 316L不锈钢内胆材质', '萌趣外形 / 6 小时保温保冷 / 食品接触级材质 ', '9b6c4104b2fb4de7b31666f7edd7cf14mtetbwb.jpg', '129.00', '133', '1', '0', '16');
INSERT INTO `commodity` VALUES ('917', '健身车', '白色', 'NEXGIM AI功率', '数控阻力 / 教练课程 / 定量训练 / 游戏接入', 'ec0e6ea0011f4572b7db55545a3d9bb3jsc.jpg', '1699.00', '419', '1', '0', '15');
INSERT INTO `commodity` VALUES ('918', '走步机', '银灰色', '一体成型铝合金骨架 ', '折叠设计专利 / 脚感控速专利 / 省心免安装 / 联动米家APP / 支持小爱', 'eb27ac7afbb24ceca9e3a1ff12ef549azbj.jpg', '1699.00', '142', '1', '19', '15');
INSERT INTO `commodity` VALUES ('919', '米兔点读笔', '蓝色', '亲子教育专家倾情推荐', '7000+音效，生动有趣 / 22本精美绘本，为启蒙定制 / 1200+知识点，提升五大能力 / 2000+单词，学地道美式口语 ', 'b8d8a304676d46f885548abf6dbf1b09mtddb.jpg', '169.00', '13', '1', '0', '16');
INSERT INTO `commodity` VALUES ('920', '小米小爱音箱 Pro', '黑色', '750mL超大音腔容积', ' AUX IN 支持有线连接 / 组合立体声 / 专业级DTS音效 / Hi-Fi级音频芯片 / 支持红外遥控传统家电 / 蓝牙Mesh网关', '4d2c52617c6c4f15aca5c8b3f0130463xayxpro.jpg', '299.00', '175', '1', '0', '18');
INSERT INTO `commodity` VALUES ('921', '小爱音箱', '白色', '750mL超大音腔容积', 'AUX IN 支持有线连接 / 组合立体声 / 专业级DTS音效 / Hi-Fi级音频芯片 / 蓝牙Mesh网关', '262e672ee0334d0886264653fc032e6cxayx.jpg', '269.00', '144', '1', '0', '18');
INSERT INTO `commodity` VALUES ('922', '小爱音箱 Play', '量产版 白色', '智能设备控制 ', '人工智能语音对话 / 就近唤醒 / 趣味闹钟 / 孩子的超级故事王', '5cd1d98c75c54b978eed50126facc262xayxplay.jpg', '99.00', '115', '1', '0', '18');
INSERT INTO `commodity` VALUES ('923', '小米降噪耳机', 'Type-C版 黑色', '50-2000Hz 宽频主动降噪', 'USB Type-C接口 / 降噪与音乐性能兼顾的声学架构 / ', '5b85a0614b484bb3bce05f2ef65dea55jzej.jpg', '149.00', '122', '1', '0', '17');
INSERT INTO `commodity` VALUES ('924', 'Redmi AirDots 蓝牙耳机', '黑色', '新一代蓝牙5.0技术 ', '自动秒连，拿起耳机就能用 / 12小时长续航 / 双耳多功能按键，防误触 / 召唤语音助手', 'fbd09f163684407c910c448bfe0c6383wxej.jpg', '99.90', '278', '1', '0', '17');
INSERT INTO `commodity` VALUES ('925', '小米K歌耳机', '银白色', '一键美音 / 一键变声 / 原唱消音 / 耳返', '一键美音 / 一键变声 / 原唱消音 / 耳返', '02142529d7dd4246afe8cf3fb74322e3xmkgej.jpg', '179.00', '175', '1', '0', '17');
INSERT INTO `commodity` VALUES ('926', '黑鲨耳机', 'Type-C版 黑色', '黑鲨游戏DNA / 14mm超大驱动单元 / 半入耳式人体工学设计', '黑鲨游戏DNA / 14mm超大驱动单元 / 半入耳式人体工学设计', '758c1b65ee434ef8b277f9f80d869fb9hsej.jpg', '99.00', '51', '1', '0', '17');
INSERT INTO `commodity` VALUES ('927', '小钢炮蓝牙音箱', '黑色', '极简设计 / 专业喇叭 / 约7小时续航', '极简设计 / 专业喇叭 / 约7小时续航', '7e1a0f07026444ddae9cc3693df6e4edxmxgp.jpg', '129.00', '175', '1', '0', '18');
INSERT INTO `commodity` VALUES ('928', '小米AI音箱', '白色', '小米AI音箱 ', '能播音乐 / 讲故事 / 听相声 / 查路况 / 设闹钟 / 还能控制智能设备', 'a64347e1c5e647f798ad99f94fecb598xmaiyx.jpg', '199.00', '140', '1', '0', '18');
INSERT INTO `commodity` VALUES ('929', 'Redmi小爱音箱 Play', '白色', '听音乐、语音遥控家电的人工智能音箱', '听音乐、语音遥控家电的人工智能音箱', '586c866f4a57431d89313cb5ee8181e7redmixayx.jpg', '79.00', '105', '1', '0', '18');
INSERT INTO `commodity` VALUES ('930', '触屏音箱', '白色', '智能家居，看得见，触得到 ', ' 视频也可定制专属闹钟 / 连接门铃和摄像头，监控更方便 / 爱奇艺海量影视 / QQ音乐曲库', 'b25ed5ccd3064a55ae9571ef140d3668xacpyx.jpg', '199.00', '115', '1', '0', '18');
INSERT INTO `commodity` VALUES ('931', '小米小背包', '黄色', '10L容量', '4 级防泼水 / 轻盈背负 / YKK 拉链', '758dcc87e0f84d3e8670387a18ed400exbb.png', '29.00', '61', '1', '0', '20');
INSERT INTO `commodity` VALUES ('932', '都市双肩包', '深灰', '可容纳15.6英寸电脑', ' 耐磨防水 / 方形简约造型 / 轻巧坚固', 'd6b94f01f88141a0b497d502f6b7661ddssjb.jpg', '129.00', '25', '1', '0', '20');
INSERT INTO `commodity` VALUES ('933', '休闲胸包', '深灰', '可放入7寸平板电脑', '主袋内隔层丰富，分类收纳利用率高 / 后幅棉质内衬隔层，', 'ef66a927173e4454aefe498a56db895ctxxb.jpg', '59.00', '175', '1', '0', '20');
INSERT INTO `commodity` VALUES ('935', '真皮板鞋', '男款 黑色 42', '进口头层牛皮 ', ' 弹力 EVA 中底 / 更适合国人的特制楦头 / 130 多道手工工序打造', '0aa3772d41b842bb9f71d8f11e869d48zbbx.jpg', '99.50', '125', '1', '0', '19');
INSERT INTO `commodity` VALUES ('936', '智能衣物消毒烘干机', '白色 14L', '【有品精选】三重杀菌|柔热烘干|香薰加持|节能安全', '【有品精选】三重杀菌|柔热烘干|香薰加持|节能安全', '0b366539a2a9413c905fed782b3bd6behgj.jpg', '449.00', '61', '1', '0', '19');
INSERT INTO `commodity` VALUES ('937', '飞行员太阳镜', '椭圆框 灰色', 'UV400 有效阻隔紫外线', ' 有效过滤眩光 / 自修复能力 / 弹弓自适应结构', 'a0bd4ffe420e46f4be29dffb39e10edbtyj.jpg', '89.00', '45', '1', '0', '19');
INSERT INTO `commodity` VALUES ('938', '床垫', '咖啡金 0.9m×1.9m×0.08m', '泰国直釆天然乳胶 ', ' 0胶水分层设计 / 德国物理防螨内胆套 / 可拆洗 【由 成都趣睡科技有限公司 发货并提供售后 】', '0bc5891679f34c5d8d071fc4a1baeb9bcd.jpg', '549.00', '111', '1', '0', '19');
INSERT INTO `commodity` VALUES ('939', '护颈枕', '混灰色', ' 泰国天然乳胶', '分区颗粒凸起 / 三曲线护颈 / 抗菌外枕套', 'd28aad96f729457995242d93ee7a5f12zt.jpg', '169.00', '152', '1', '0', '19');
INSERT INTO `commodity` VALUES ('940', '飞天猪足金吊坠', '金色', '足金材质 / 3D 硬金工艺', '足金材质 / 3D 硬金工艺', '7deb38c501ed42518f5f138ec9154b11jdz.jpg', '799.00', '98', '1', '0', '19');
INSERT INTO `commodity` VALUES ('941', '螺丝刀', 'wiha 8合1棘轮', '隐藏式弹仓 / 内置式棘轮 / 分离式套筒 / 高精密咬合度的螺丝刀工具', '隐藏式弹仓 / 内置式棘轮 / 分离式套筒 / 高精密咬合度的螺丝刀工具', 'f2c7b91c21c445429331119d9ffb8744lsd.png', '89.00', '61', '1', '0', '19');
INSERT INTO `commodity` VALUES ('942', '自动折叠伞', '黑色', '防泼水伞布 / 高效遮阳防晒 / 一键自动开合 / 安全防反弹结构​', '防泼水伞布 / 高效遮阳防晒 / 一键自动开合 / 安全防反弹结构​', '4c35318322764936b5d76ff433db3080zds.jpg', '89.00', '71', '1', '0', '19');
INSERT INTO `commodity` VALUES ('943', '米家驱蚊器', '白色', '长效驱蚊', '智能操控 / 一键循环定时 / 室内自由摆放 / 无加热设计', '5cd74f057c5646e89ac1928edd588eb7qwq.jpg', '59.00', '254', '1', '0', '19');
INSERT INTO `commodity` VALUES ('944', '智能尤克里里', '原木色', '搭配APP游戏式教学 / 独具风格的专业琴声 / 练琴不枯燥 / 个性且精致', '搭配APP游戏式教学 / 独具风格的专业琴声 / 练琴不枯燥 / 个性且精致', '8ea12975e8064511afb57218abb8fbc9jt.jpg', '399.00', '288', '1', '0', '19');
INSERT INTO `commodity` VALUES ('945', '毛巾', '10条装） 素蓝', '阿瓦提长绒棉', '轻柔易干 / 3秒吸水 / 专利密封包装 ', '4ac07819b6ec4dcea74d42e090066829mj.jpg', '99.00', '25', '1', '0', '19');
INSERT INTO `commodity` VALUES ('946', '小米中性笔 ', '10支装 白色', '书写顺滑 / 轻盈握感 / 按压出芯 / 遇水不易洇', '书写顺滑 / 轻盈握感 / 按压出芯 / 遇水不易洇', 'a88574f9182e49c387256040b95a06c5xxzxb.jpg', '21.90', '413', '1', '0', '19');
INSERT INTO `commodity` VALUES ('947', '小米旅行箱', '灰色 24寸', '科思创PC材质 ', '坚韧轻巧 / 万向静音轮 / 坚固耐磨 / 顺滑拉杆', '5d250715d02e41a3be1540615383f4c8lxx.jpg', '349.00', '263', '1', '0', '20');
INSERT INTO `commodity` VALUES ('953', '米家互联网空调C1', '1.5匹/变频/一级能效', ' 全直流变频，节能省电', '自清洁，呵护全家健康 /高效制冷热 / 静音设计 / 全屋家电，智能互联 / 官网购买，免预约安装，签收后服务人员主动联', '56c3b58a8b994bca9ecc4ee9f1d514a3yjnx.jpg', '2599.00', '221', '1', '0', '7');

-- ----------------------------
-- Table structure for like2
-- ----------------------------
DROP TABLE IF EXISTS `like2`;
CREATE TABLE `like2` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) DEFAULT NULL,
  `user_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`like_id`),
  KEY `commodity_id` (`commodity_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `like2_ibfk_1` FOREIGN KEY (`commodity_id`) REFERENCES `commodity` (`commodity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `like2_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of like2
-- ----------------------------
INSERT INTO `like2` VALUES ('15', '848', '1');
INSERT INTO `like2` VALUES ('16', '897', '1');
INSERT INTO `like2` VALUES ('17', '842', '1');
INSERT INTO `like2` VALUES ('20', '15', '1');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `orderitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `price` double(11,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderitem_id`),
  KEY `order_id` (`order_id`),
  KEY `commodity_id` (`commodity_id`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`commodity_id`) REFERENCES `commodity` (`commodity_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('1', '小米9', 'f8087e5197a345bb977a825f67fe6c8bxiaomi9.jpg', '2699', '3', '6', '1');
INSERT INTO `orderitem` VALUES ('2', 'Redmi8A', '3142c0104cc44c30a7d2152f51817161redmi8A.jpg', '699', '2', '3', '2');
INSERT INTO `orderitem` VALUES ('3', 'RedmiK20Pro尊享版', 'a5fdd4821cc648c0974f41ce662290c7redmik20prok.jpg', '2999', '1', '9', '3');
INSERT INTO `orderitem` VALUES ('4', '小米Max3', '39b09b9463df48918f4ee55787fca30axiaomimax3.jpg', '2599', '5', '12', '4');
INSERT INTO `orderitem` VALUES ('5', 'Redmi7A', '2df4c4e76d5d44a8954f71b06d296bc5Redmi7A.jpg', '599', '2', '14', '5');
INSERT INTO `orderitem` VALUES ('6', '小米CC9e', 'd35c53e98a67490fabdeb97c0256b391xiaomicc9e.jpg', '1399', '2', '11', '6');
INSERT INTO `orderitem` VALUES ('7', 'Redmi8', '1db863fbe1914553ae118304f6ec3503Redmi8.jpg', '899', '9', '4', '7');
INSERT INTO `orderitem` VALUES ('8', 'RedmiNote8', 'd39c50fa59a2407d8aa80edcf4c9b162RedmiNote8.jpg', '1099', '1', '8', '8');
INSERT INTO `orderitem` VALUES ('9', '小米电视4A 65英寸', '00f2163b708b4b11a7bf8fb9f5862f61DC4A65YC2.jpg', '2599', '4', '68', '9');
INSERT INTO `orderitem` VALUES ('10', '小米电视5 65英寸', '1f148c5c6b8f4d1782454e4f7519ca5eDS565YC2.jpg', '3999', '5', '88', '10');
INSERT INTO `orderitem` VALUES ('12', '小米CC9', 'd35c53e98a67490fabdeb97c0256b391xiaomicc9e.jpg', '1699', '4', '15', '12');
INSERT INTO `orderitem` VALUES ('13', 'Redmi K30 4G', '0fab0d749c5e40eaabdb044811781dcbRedmi K30.jpg', '2199', '3', '1', '13');
INSERT INTO `orderitem` VALUES ('14', '小米旅行箱', '5d250715d02e41a3be1540615383f4c8lxx.jpg', '349', '3', '947', '14');
INSERT INTO `orderitem` VALUES ('15', '无线车充', 'd0649839363347a5a0474706d4f760e9wxcc.jpg', '169', '3', '896', '15');
INSERT INTO `orderitem` VALUES ('16', '米兔儿童电话手表', 'c86e2d9b43fe421593152e7f33dc0435etsb.jpg', '349', '1', '911', '16');
INSERT INTO `orderitem` VALUES ('17', '小爱音箱HD', '7912ca13fac94dada4f563395302d5c3xayxhd.jpg', '549', '3', '892', '17');
INSERT INTO `orderitem` VALUES ('18', '小米CC9e', 'd35c53e98a67490fabdeb97c0256b391xiaomicc9e.jpg', '1299', '1', '11', '18');
INSERT INTO `orderitem` VALUES ('19', '米兔智能故事机', '8146cc020b0b4091beb1d34a2bb8859fzngsj.jpg', '169', '1', '909', '19');
INSERT INTO `orderitem` VALUES ('20', '吸尘器', '96c2a6b6bd614807a4893b2c2462dd25xcq.png', '999', '1', '849', '20');
INSERT INTO `orderitem` VALUES ('21', '小米9', 'f8087e5197a345bb977a825f67fe6c8bxiaomi9.jpg', '2699', '2', '6', '21');
INSERT INTO `orderitem` VALUES ('22', 'Redmi8', '1db863fbe1914553ae118304f6ec3503Redmi8.jpg', '899', '3', '4', '22');
INSERT INTO `orderitem` VALUES ('23', 'Redmi电视 70英寸', 'dc76f3210fb84a6ab416947acf33fd7eRedmiDS70YC2.jpg', '3599', '1', '81', '23');
INSERT INTO `orderitem` VALUES ('24', '小米电视4A  32英寸 ', '2ecd4f2816274e62bf1b6cf219bf8565DC4A32YC.jpg', '699', '1', '66', '24');
INSERT INTO `orderitem` VALUES ('25', '小米盒子4', '6d29045db20a4587bb811c361d2dce58hezi4.jpg', '299', '4', '93', '25');
INSERT INTO `orderitem` VALUES ('26', 'Redmi K30 5G', 'c8906eec3c56457a9d69028576f71d68Redmi K30 5G.jpg', '2899', '2', '2', '26');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderbh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_time` datetime NOT NULL,
  `money` double NOT NULL,
  `postage` int(11) NOT NULL,
  `order_status` int(4) NOT NULL,
  `sendtime` datetime DEFAULT NULL,
  `kd` int(11) DEFAULT NULL,
  `closetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `orderitem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `ordertime_id` (`orderitem_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '20191125172600886240700', '2019-11-22 00:33:02', '8097.3', '0', '3', '2019-11-25 17:26:03', '1', '2019-11-24 14:26:01', '3', '1');
INSERT INTO `orders` VALUES ('2', '20191125172606665871171', '2019-11-14 00:00:00', '1398', '0', '3', '2019-11-25 17:26:06', '3', '2019-11-27 14:26:11', '6', '2');
INSERT INTO `orders` VALUES ('3', '20191219215522636003716', '2019-11-23 10:37:18', '2999', '0', '2', '2019-12-19 21:55:23', '1', null, '7', '3');
INSERT INTO `orders` VALUES ('4', '20191219215519157047072', '2019-11-16 10:38:19', '12995', '0', '2', '2019-12-19 21:55:20', '1', null, '2', '4');
INSERT INTO `orders` VALUES ('5', '20191127162512453018033', '2019-11-22 10:38:43', '1198', '0', '2', '2019-11-27 16:25:16', '4', null, '5', '5');
INSERT INTO `orders` VALUES ('6', '20191125172611287684262', '2019-11-23 17:19:19', '2798', '0', '3', '2019-11-25 17:26:12', '5', '2019-11-26 10:39:37', '6', '6');
INSERT INTO `orders` VALUES ('7', '20191219215536779965223', '2019-11-24 15:39:50', '1798', '0', '2', '2019-12-19 21:55:36', '1', null, '4', '7');
INSERT INTO `orders` VALUES ('8', '20191219215516705183187', '2019-11-24 11:13:10', '1099', '0', '2', '2019-12-19 21:55:16', '1', null, '3', '8');
INSERT INTO `orders` VALUES ('13', '20200210162020570203233', '2020-01-05 14:09:28', '6597', '0', '3', '2020-02-10 16:21:00', '1', '2020-02-11 18:29:19', '1', '13');
INSERT INTO `orders` VALUES ('14', null, '2020-01-06 18:45:53', '1047', '0', '1', null, null, null, '2', '14');
INSERT INTO `orders` VALUES ('15', '20200119233447388994681', '2020-01-06 18:49:03', '507', '0', '2', '2020-01-19 23:34:49', '1', null, '1', '15');
INSERT INTO `orders` VALUES ('16', null, '2020-01-07 12:20:24', '349', '0', '1', null, null, null, '1', '16');
INSERT INTO `orders` VALUES ('17', null, '2020-01-07 12:33:27', '1647', '0', '0', null, null, null, '2', '17');
INSERT INTO `orders` VALUES ('18', '20200119234219645961776', '2020-01-08 14:18:46', '1299', '0', '2', '2020-01-19 23:42:21', '6', null, '1', '18');
INSERT INTO `orders` VALUES ('19', '20200113143334546130623', '2020-01-09 17:04:10', '169', '0', '3', '2020-01-13 14:33:36', '6', '2020-01-13 14:37:42', '1', '19');
INSERT INTO `orders` VALUES ('20', '20200119225445454735474', '2020-01-09 17:07:49', '999', '0', '2', '2020-01-19 22:54:47', '6', null, '1', '20');
INSERT INTO `orders` VALUES ('21', null, '2020-01-15 13:56:02', '5398', '0', '0', null, null, null, '2', '21');
INSERT INTO `orders` VALUES ('22', null, '2020-01-15 13:56:34', '2697', '0', '0', null, null, null, '2', '22');
INSERT INTO `orders` VALUES ('23', null, '2020-01-20 16:31:41', '3599', '0', '0', null, null, null, '2', '23');
INSERT INTO `orders` VALUES ('24', null, '2020-01-20 16:55:47', '739', '40', '0', null, null, null, '1', '24');
INSERT INTO `orders` VALUES ('25', null, '2020-02-11 15:52:32', '1205', '9', '0', null, null, null, '1', '25');
INSERT INTO `orders` VALUES ('26', null, '2020-03-08 14:52:22', '5798', '0', '0', null, null, null, '1', '26');

-- ----------------------------
-- Table structure for remind
-- ----------------------------
DROP TABLE IF EXISTS `remind`;
CREATE TABLE `remind` (
  `remind_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `remind` int(11) NOT NULL,
  `remindtime` datetime NOT NULL,
  PRIMARY KEY (`remind_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `remind_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `remind_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of remind
-- ----------------------------
INSERT INTO `remind` VALUES ('16', '1', '16', '1', '2020-02-11 18:31:24');
INSERT INTO `remind` VALUES ('20', '2', '17', '0', '2020-02-10 15:10:07');
INSERT INTO `remind` VALUES ('21', '2', '21', '0', '2020-02-10 15:10:11');
INSERT INTO `remind` VALUES ('22', '2', '23', '0', '2020-02-10 15:10:13');
INSERT INTO `remind` VALUES ('23', '1', '24', '0', '2020-02-11 18:34:45');

-- ----------------------------
-- Table structure for shopinfo
-- ----------------------------
DROP TABLE IF EXISTS `shopinfo`;
CREATE TABLE `shopinfo` (
  `shopinfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(50) NOT NULL,
  `shop_address` varchar(50) NOT NULL,
  `shopblue` int(4) NOT NULL,
  `shopfs` int(11) NOT NULL,
  `shopimage` varchar(255) NOT NULL,
  `shopjs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shopinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of shopinfo
-- ----------------------------
INSERT INTO `shopinfo` VALUES ('1', '云米官方旗舰店', '浙江', '5', '2679', '4902bfac46884b36996a0fa7a24ffeacxiaomilogo.jpg', '云米公司成立于2010年4月，是一家专注于智能产品自主研发的移动互联网公司。“为发烧而生”是小米的产品理念。小米公司首创了用互联网模式开发手机操作系统、发烧友参与开发改进的模式。经营范围包括通讯设备、厨房用品、卫生用品、日用杂货、化妆品、玩具、体育用品、文化用品、服装鞋帽、钟表眼镜、家用电器、家具、照相器材、工艺品、礼品、计算机、软件及辅助设备、珠宝首饰、食用农产品、宠物食品、电子产品、摩托车等等......');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `cardid` varchar(50) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `zipcode` int(6) DEFAULT NULL,
  `level` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jyl', '123', '15257447514', '江云炼', '女', '330326199902027514', '浙江省宁波市海曙区24街53号测试', '325406', '0');
INSERT INTO `user` VALUES ('2', 'wansq', '123', '13844186741', '王舒晴', '女', '412124124124326323', '浙江宁波鄞州区xx路421号', '127421', '1');
INSERT INTO `user` VALUES ('3', 'cheng', '123', '11282486749', '陈功', '女', '330324231411241412', '浙江温州平阳县xx路51号', '136472', '1');
INSERT INTO `user` VALUES ('4', 'leiyj', '123', '13798586742', '雷永军', '男', '330523523523776523', '浙江杭州西湖区xx路27号', '141824', '1');
INSERT INTO `user` VALUES ('5', 'zhangzy', '123', '13868586622', '张志勇', '男', '590753285791073971', '江苏南京玄武区xx路11号', '613511', '1');
INSERT INTO `user` VALUES ('6', 'wanf2', '123', '13278631742', '王飞2', '女', '859379283518075012', '福建厦门鼓浪屿xx路62号', '168922', '1');
INSERT INTO `user` VALUES ('7', 'may', '123', '13818386700', '马宇', '男', '330322352687692515', '江苏南京秦淮区xx路71号', '611341', '1');
INSERT INTO `user` VALUES ('11', 'jylQQ群', '123', '15257447511', '江测试', '男', '330326199902025789', '浙江省宁波市海曙区xx接52号', '325405', '1');
