/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : online

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2020-02-27 11:06:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admi`
-- ----------------------------
DROP TABLE IF EXISTS `admi`;
CREATE TABLE `admi` (
  `aid` int(10) NOT NULL auto_increment,
  `aname` varchar(255) default NULL,
  `apassword` varchar(255) default NULL,
  `flag` int(1) default NULL,
  `phone` varchar(11) default NULL,
  `address` varchar(255) default NULL,
  `funds` double default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admi
-- ----------------------------
INSERT INTO `admi` VALUES ('1', '程子丰', 'czf123', '1', '18856633800', '安徽池州', '100000000');
INSERT INTO `admi` VALUES ('2', '杨某人', 'yjk123', '1', '17879651234', '上海', '1250');
INSERT INTO `admi` VALUES ('4', '张林虎', 'zlh123', '0', '18856623300', '无锡', '100');
INSERT INTO `admi` VALUES ('5', '张丽萍', 'zlp123', '1', '13305669874', '芜湖', '123');
INSERT INTO `admi` VALUES ('6', '张丽萍02', '124', null, '14569875236', '芜湖', '100');
INSERT INTO `admi` VALUES ('7', '程子丰02', '124', null, '13305669874', '芜湖', '20');
INSERT INTO `admi` VALUES ('8', '张林虎2', '951236', null, '18856623300', '无锡', '100');
INSERT INTO `admi` VALUES ('10', '张林虎4', '951236', '1', '18856623300', '无锡', '100');
INSERT INTO `admi` VALUES ('11', '张林虎4', '951236', '1', '18856623300', '无锡', '100');

-- ----------------------------
-- Table structure for `kind`
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `kid` int(10) NOT NULL auto_increment,
  `kname` varchar(255) default NULL,
  PRIMARY KEY  (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', '中古名表');
INSERT INTO `kind` VALUES ('2', '中古名包');
INSERT INTO `kind` VALUES ('3', '珠宝饰品');
INSERT INTO `kind` VALUES ('5', '艺术品收藏');
INSERT INTO `kind` VALUES ('6', '相机镜头');
INSERT INTO `kind` VALUES ('7', '日本手办');
INSERT INTO `kind` VALUES ('8', '铁壶茶具');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(10) NOT NULL auto_increment,
  `pname` varchar(255) default NULL,
  `firstprice` double default NULL,
  `pdesc` varchar(255) default NULL,
  `kid` int(10) default NULL,
  `lastprice` double default NULL,
  `picture` varchar(255) default NULL,
  `hours` int(200) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('9', '文泽东物品', '12533', '1970-76　 赤猿 中国共産党50周年記念', '5', '0', '/pic/096A8695CF454E1690928648D0BF99AF_sim.jpg', '24');
INSERT INTO `product` VALUES ('10', '極美品', '3200', '保存状態良好 連札 1967年 文1 ＃1500', '5', '0', '/pic/2C6781A2235746F8A1AD86BA1A4B32D2_sim (1).jpg', '7');
INSERT INTO `product` VALUES ('11', '赤猿', '2700', '赤猿　1980年　T46　8元', '5', '0', '/pic/D0931C7C138841C5AE05F0E9CA64F005_sim (2).jpg', '6');
INSERT INTO `product` VALUES ('12', '中国切手', '1400', '1973年革14オオパンダ2次6種完未使用NH', '5', '0', '/pic/AA88000F437E4785BC1C45FF64FDAC06_sim (3).jpg', '5');
INSERT INTO `product` VALUES ('13', '【SEIKO】【仕上済】', '29588', 'セイコー『グランドセイコー ダイバーズ』', '1', '0', '/pic/8CABFEC95611444E8F02680DC3CEFC8D_1463042.jpg', '48');
INSERT INTO `product` VALUES ('14', '【SEIKO】', '9999', '【’18年購入】セイコー『アストロン』', '1', '0', '/pic/D841F94F21D243319DE897AC64042C69_1463038.jpg', '6');
INSERT INTO `product` VALUES ('15', '【GaGa MILANO】', '2966', '【電池交換済】ガガミラノ『マヌアーレ スリム 46mm』', '1', '0', '/pic/D1C419844DD54BC18DA3836380165D72_1463035.jpg', '24');
INSERT INTO `product` VALUES ('16', '1円×3本 ', '963', '超硬タングステン&セラミック＆サファイアガラス風防 サファ', '1', '0', '/pic/AA6FF3E027E74AE789D25C374A27E95E_sim (5).jpg', '22');
INSERT INTO `product` VALUES ('17', '荒ぶる龍神', '2023', '定価15万→1円 高級機械式時計 ハリウッドブラン', '1', '0', '/pic/21CE0C2E0E7F42209784C7946033B8B6_sim (6).jpg', '7');
INSERT INTO `product` VALUES ('18', '【LOUIS VUITTON】', '4088', 'ルイヴィトン『モノグラム トータリーPM』M56688 ', '2', '0', '/pic/45D3EBF849F346C3B5875FFC168EB587_1463184.jpg', '24');
INSERT INTO `product` VALUES ('19', '【LOEWE】', '3366', 'ロエベ『アマソナ 35』352.79.B36 レディース ハンドバッグ 1', '2', '0', '/pic/AB72CE32646B47929528F69A06A5C52F_1463183.jpg', '22');
INSERT INTO `product` VALUES ('20', '【STELLA McCARTNEY】', '2499', 'ステラマッカートニー『ファラベラ シャギー ミニトート』', '2', '0', '/pic/47C9355368FC4B9FAAD858F62B0AE4F9_1463180.jpg', '7');
INSERT INTO `product` VALUES ('21', '◆S1283', '1393', 'ルイヴィトン モノグラム マルリー バンドリエール ショルダー', '2', '0', '/pic/2F5733FE2B67495DBC0FC98B7D323A3C_sim (7).jpg', '24');
INSERT INTO `product` VALUES ('22', '1円 ■美品■ HERMES', '1260', 'エルメス ガーデンパーティーPM トワルオフィシ', '2', '0', '/pic/2C94548A90E343539DD8273C25EA789B_sim (8).jpg', '6');
INSERT INTO `product` VALUES ('23', '【Cartier】', '7366', 'カルティエ『K18YG タンク ネックレス シトリン』1週間保証【中古】', '3', '0', '/pic/900A3A8E8A314C508CDBE32B7DA6B5E7_1463056.jpg', '24');
INSERT INTO `product` VALUES ('24', '【GUCCI】', '3999', 'グッチ『K18WG ネックレス クロスモチーフ』', '3', '0', '/pic/F5D0D24AE0644B669EFD3D2348BF05D8_1447088.jpg', '24');
INSERT INTO `product` VALUES ('25', '【Cartier】', '6088', '【ディアマン レジェ】カルティエ『K18PG サフィール レジェ', '3', '0', '/pic/70495D13E956462FBBBA8BE7208C5423_1428899.jpg', '6');
INSERT INTO `product` VALUES ('26', '最落無『憧れの最上級』', '2155', '0.35ct大粒天然ダイヤ Pt900フラワー鑑付', '3', '0', '/pic/CDE0424ADA224637813EFEF4C2A25F43_sim (9).jpg', '123');
INSERT INTO `product` VALUES ('27', '【恭】釜師', '763', '佐々木彦兵衛 非古銘 盛り上げ', '8', '0', '/pic/048B195BBA704462BC7D29E0B7716B85_sim (10).jpg', '22');
INSERT INTO `product` VALUES ('28', '⑨◆龍文堂造', '995', '斑紫銅蓋 亀甲紋 八面鉄瓶◆煎茶道具', '8', '0', '/pic/4BC45FB2C0054D2B853BE19B1B717962_sim (11).jpg', '18');
INSERT INTO `product` VALUES ('29', '《頑固》', '1526', '「砂鉄」小鉄瓶　釜師 名人　', '8', '0', '/pic/AE4694BE11A5443D95590E25C05D35C8_sim (12).jpg', '48');
INSERT INTO `product` VALUES ('30', '《頑固》', '1526', '硬鉄（砂鉄含有）鉄瓶　南部　名人釜師　', '8', '0', '/pic/9FD140589A9E4B78A80D35325AD4B06E_sim (13).jpg', '7');
INSERT INTO `product` VALUES ('31', 'Sony FE 600mm', '41438', 'F4 GM OSS Serial No. 1800700', '6', '0', '/pic/FB90CD15312F46A0AD495FA52880E010_sim (14).jpg', '7');
INSERT INTO `product` VALUES ('32', 'Nikon', '6630', 'ニコン AF-S 70-200mm 2.8 G ED VR II 2型', '6', '0', '/pic/0CBAFB08993845E095AA9E69B5853ED3_sim (15).jpg', '22');
INSERT INTO `product` VALUES ('33', '★☆ 極上品', '4642', 'Nikon ニコン AF-S NIKKOR 24-70mm f/2.8G ED ★☆', '6', '0', '/pic/ED5E78FE3BD04B289A8EB9BCBC0E04C9_sim (16).jpg', '24');
INSERT INTO `product` VALUES ('34', ' Nikon ', '4642', 'ニコン AF-S NIKKOR 24-70mm f/2.8G ED ', '6', '0', '/pic/2C2C4E0A388542FCA1D27B8F1D8D6D67_sim (17).jpg', '48');
INSERT INTO `product` VALUES ('35', 'ドラゴンボールセレクション', '33283', 'フルコンプ　新品！', '7', '0', '/pic/01964B36184B48BB9A1D26B051D6029E_sim (18).jpg', '32');
INSERT INTO `product` VALUES ('36', '1円～ 未開封 バンダイ', '663', ' METAL BUILD 機動戦士ガンダムSEED ', '7', '0', '/pic/67DFCE9F00EF469D8B8FDA6AEE780ABB_sim (19).jpg', '10');
INSERT INTO `product` VALUES ('37', 'バンプレスト', '166', '鬼滅の刃 フィギュア 絆ノ装 壱ノ型', '7', '0', '/pic/74420F64B49A4BA899C191BA8EBDD892_sim (20).jpg', '48');
INSERT INTO `product` VALUES ('38', '【1円スタート】', '160', 'リペイント ドラゴンボール', '7', '0', '/pic/054527E75115477FA66AA1EAA978DD4F_sim (21).jpg', '24');

-- ----------------------------
-- Table structure for `records`
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `id` int(10) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `pname` varchar(255) default NULL,
  `nowprice` double default NULL,
  `time` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES ('2', '测试人', '测试用例', '250', '2020/2/19 18:21');
INSERT INTO `records` VALUES ('9', '程子丰', '赤猿', '1300', '2020/02/19 19:31:51');
INSERT INTO `records` VALUES ('10', '程子丰', '赤猿', '1500', '2020/02/19 19:31:55');
INSERT INTO `records` VALUES ('11', '程子丰', '極美品', '1600', '2020/02/19 19:32:22');
INSERT INTO `records` VALUES ('12', '程子丰', '極美品', '1800', '2020/02/19 19:32:23');
INSERT INTO `records` VALUES ('13', '程子丰', '極美品', '2000', '2020/02/19 19:32:25');
INSERT INTO `records` VALUES ('14', '张林虎', '赤猿', '1700', '2020/02/19 19:33:24');
INSERT INTO `records` VALUES ('15', '张林虎', '赤猿', '1900', '2020/02/19 19:33:25');
INSERT INTO `records` VALUES ('16', '张林虎', '【SEIKO】【仕上済】', '29388', '2020/02/19 19:33:29');
INSERT INTO `records` VALUES ('17', '张林虎', '【SEIKO】【仕上済】', '29588', '2020/02/19 19:33:29');
INSERT INTO `records` VALUES ('18', '张林虎', '文泽东物品', '12333', '2020/02/19 19:33:38');
INSERT INTO `records` VALUES ('19', '张林虎', '文泽东物品', '12533', '2020/02/19 19:33:38');
INSERT INTO `records` VALUES ('20', '杨继坤', '赤猿', '2100', '2020/02/19 19:34:10');
INSERT INTO `records` VALUES ('21', '杨继坤', '赤猿', '2300', '2020/02/19 19:34:10');
INSERT INTO `records` VALUES ('22', '杨继坤', '極美品', '2200', '2020/02/19 19:34:14');
INSERT INTO `records` VALUES ('23', '杨继坤', '極美品', '2400', '2020/02/19 19:34:15');
INSERT INTO `records` VALUES ('24', '杨继坤', '極美品', '2600', '2020/02/19 20:07:10');
INSERT INTO `records` VALUES ('25', '杨继坤', '極美品', '2800', '2020/02/19 20:07:22');
INSERT INTO `records` VALUES ('26', '杨继坤', '極美品', '3000', '2020/02/19 20:07:24');
INSERT INTO `records` VALUES ('27', '程子丰', '《頑固》', '1526', '2020/02/19 20:09:14');
INSERT INTO `records` VALUES ('28', '程子丰', '赤猿', '2500', '2020/02/19 22:02:12');
INSERT INTO `records` VALUES ('29', '程子丰', '【GaGa MILANO】', '2566', '2020/02/19 22:13:20');
INSERT INTO `records` VALUES ('30', '程子丰', '【GaGa MILANO】', '2766', '2020/02/19 22:13:22');
INSERT INTO `records` VALUES ('31', '程子丰', '赤猿', '2700', '2020/02/23 16:36:16');
INSERT INTO `records` VALUES ('32', '程子丰', '極美品', '3200', '2020/02/23 19:29:18');
INSERT INTO `records` VALUES ('33', '程子丰', '中国切手', '1000', '2020/02/23 22:40:51');
INSERT INTO `records` VALUES ('34', '程子丰', '【GaGa MILANO】', '2966', '2020/02/24 10:26:10');
INSERT INTO `records` VALUES ('35', '程子丰', '【LOUIS VUITTON】', '3888', '2020/02/24 17:59:32');
INSERT INTO `records` VALUES ('36', '程子丰', '【LOUIS VUITTON】', '4088', '2020/02/24 17:59:33');
INSERT INTO `records` VALUES ('37', '张林虎', '1円×3本 ', '963', '2020/02/24 22:12:41');
INSERT INTO `records` VALUES ('38', '程子丰', '中国切手', '1200', '2020/02/27 10:53:04');
INSERT INTO `records` VALUES ('39', '程子丰', '中国切手', '1400', '2020/02/27 10:53:07');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `upassword` varchar(255) default NULL,
  `phone` varchar(11) default NULL,
  `address` varchar(255) default NULL,
  `funds` double default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', '张林虎', 'zlh123', '18856623300', '无锡', '100');
INSERT INTO `user` VALUES ('7', '杨继坤', 'yjk123', '12345678915', '无锡', '101');
INSERT INTO `user` VALUES ('8', '程子丰', 'czf123', '18856633800', '池州', '0');
