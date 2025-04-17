/*
 Navicat Premium Data Transfer

 Source Server         : 本地3306
 Source Server Type    : MySQL
 Source Server Version : 50519
 Source Host           : localhost:3306
 Source Schema         : 25uniapp_hospital

 Target Server Type    : MySQL
 Target Server Version : 50519
 File Encoding         : 65001

 Date: 12/03/2025 15:31:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1b8e431f4d68403f89296dd89985fb65', 'b0f3d4695d72438ca8cccabca2b52d5d', '1', '门诊电话多少', '2025-03-12 15:24:13');
INSERT INTO `chat` VALUES ('7ab78a5774964a6a8dc565833895ceb5', '1', 'b0f3d4695d72438ca8cccabca2b52d5d', '有的，24小时在线', '2025-03-12 15:23:56');
INSERT INTO `chat` VALUES ('ac4c06f87287480d8a7a589fdb697d10', '1', 'b0f3d4695d72438ca8cccabca2b52d5d', '6666-453123132', '2025-03-12 15:24:13');
INSERT INTO `chat` VALUES ('e5ab8d4c90cc402e96a7f80713fd61ea', 'b0f3d4695d72438ca8cccabca2b52d5d', '1', '急诊有外科医生嘛', '2025-03-12 15:23:56');

-- ----------------------------
-- Table structure for consult
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of consult
-- ----------------------------
INSERT INTO `consult` VALUES ('3a838f606307415e9da97e5e5832b295', '门诊电话多少', '6666-453123132', '2025-03-05 21:11:34');
INSERT INTO `consult` VALUES ('6382e4faba8841b3a675143b4800a802', '内科怎么走', '东门进入门诊楼2楼', '2025-03-05 21:11:20');
INSERT INTO `consult` VALUES ('ae9c93d0325f47a2bbf20298a113bda3', '急诊有外科医生嘛', '有的，24小时在线', '2025-03-05 21:12:01');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `post` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `specialty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Specialty',
  `focusareas` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Focus Areas',
  `hid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院名称',
  `sid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('091412fd97d24862acc56f361438316c', 'Benjamin Scott', 'Consultant Dermatologist', '207779bf-da66-485d-ac0f-61fda84383c7_do7.png', 'General Dermatology, Autoimmune Skin Disorders, Aesthetic Dermatology', 'Diagnosis and management of chronic skin conditions (eczema, psoriasis, rosacea)\nAutoimmune and inflammatory skin diseases (lupus, pemphigus, dermatomyositis)\nLaser treatments and non-invasive aesthetic dermatology\nSkin cancer screening and mole assessment', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '1234', '1234');
INSERT INTO `doctor` VALUES ('1984158924db492ab77ea910d3214eb8', 'Sophia Harris', 'Consultant OB-GYN', '90d79953-21d3-4ab9-b1df-50ff811d97e7_do1.png', ' Obstetrics, High-Risk Pregnancy, Reproductive Medicine', 'Management of high-risk pregnancies and maternal-fetal medicine\nAssisted reproductive technologies (IVF, IUI, fertility treatments)\nPrenatal screening and fetal anomaly diagnosis\nMinimally invasive gynecological surgeries', '3fc886970ce5449d85e841b92e024ea9', '525f08bd6d334d93916d4792e58cd5e6', '7845645', '123456a');
INSERT INTO `doctor` VALUES ('3499d369fc3747ed9cc0e71f8beb5376', 'Daniel Clark', 'Attending Physician', '7c95e796-8809-4d4f-a68f-badb94c3f51a_do3.png', 'General Obstetrics & Gynecology, Family Planning', 'Routine prenatal and postnatal care\nContraceptive counseling and family planning\nTreatment of menstrual disorders and polycystic ovary syndrome (PCOS)\nDiagnosis and management of endometriosis and fibroids', '3fc886970ce5449d85e841b92e024ea9', '525f08bd6d334d93916d4792e58cd5e6', '687455413', '123456a');
INSERT INTO `doctor` VALUES ('47c262019fef4bf9b996e9aa34407364', 'Emily Baker', 'Attending Dermatologist', 'b0e4d87b-2b41-457e-8029-80564543c780_do9.png', 'Pediatric and Cosmetic Dermatology', 'Diagnosis and treatment of pediatric dermatologic conditions (birthmarks, atopic dermatitis)\nAcne treatment and scar reduction therapy\nManagement of hyperpigmentation and melasma\nChemical peels, dermal fillers, and anti-aging skin treatments', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', 'Emily Baker', '123456a');
INSERT INTO `doctor` VALUES ('7b9cf2eb79214ffe801d1d6efb5f2bd3', 'Ethan Walker', 'Senior Specialist', '6b043eb0-e986-4a54-9834-23a137b30269_do5.png', 'Pediatric Cardiology, Congenital Heart Disorders', 'Diagnosis and management of congenital and acquired heart diseases in children\nPediatric echocardiography and non-invasive cardiac imaging\nInterventional cardiology procedures for congenital defects\nLong-term follow-up and rehabilitation for pediatric cardiac patients', '3fc886970ce5449d85e841b92e024ea9', '7b828e489d6540e1b644ae5087c17479', '45645643', '123456a');
INSERT INTO `doctor` VALUES ('88934395c4b04c979b458ae41edb90fe', 'Richard Taylor', 'Senior Specialist', '35c5da97-2d57-440e-b1ea-8204ae538fec_d5.png', 'Orthopedic Surgery, Musculoskeletal Disorders', 'Joint replacement surgery (hip, knee, and shoulder)\nSports injuries and arthroscopic procedures\nSpinal surgeries and degenerative bone disorders\nFracture management and trauma reconstruction', '3fc886970ce5449d85e841b92e024ea9', 'a120fcfd44634cc18ffab55b6e9447d2', '75645341', '123456a');
INSERT INTO `doctor` VALUES ('9ec6a6936fa14ee78719812608eaa0dc', 'Grace Hall', 'Grace Hall ', '4c4e3093-10e2-40fb-889d-965b28f95ae5_do6.png', 'Pediatric Endocrinology, Adolescent Medicine', 'Management of childhood diabetes and insulin resistance\nGrowth hormone disorders and pediatric obesity treatment\nHormonal and puberty-related issues in adolescents\nNutritional and metabolic disorder management in children', '3fc886970ce5449d85e841b92e024ea9', '7b828e489d6540e1b644ae5087c17479', '456453431', '123456a');
INSERT INTO `doctor` VALUES ('a5e2d641c15d455ea57d310750b17d50', 'Emma Wilson', 'Attending Physician', 'ee7908e4-8a7e-41e2-a4d6-09138e6c0b2d_d3.png', 'Endocrinology and Metabolic Disorders, Women\'s Health', 'Thyroid disorders (hyperthyroidism, hypothyroidism, nodular goiter)\nPolycystic ovary syndrome (PCOS) and menstrual irregularities\nComprehensive management of diabetes and insulin resistance\nOsteoporosis and calcium-phosphorus metabolism disorders', '3fc886970ce5449d85e841b92e024ea9', '5c055c874adc402e9875f9c325d2ca48', '456125343', '123456a');
INSERT INTO `doctor` VALUES ('afd6315c2e614d28bc0f2cee891a44ab', 'Charlotte White', 'Attending Surgeon', '2904a69b-f71d-4554-817d-f98e07429f5d_d6.png', 'Cardiothoracic Surgery, Vascular Surgery', 'Coronary artery bypass grafting (CABG)\nAortic aneurysm and dissection management\nThoracic oncology surgery (lung cancer resections)\nEndovascular and open vascular repair techniques', '3fc886970ce5449d85e841b92e024ea9', 'a120fcfd44634cc18ffab55b6e9447d2', '53745353', '123456a');
INSERT INTO `doctor` VALUES ('c737a2a7ac9d4ed0aebdbee2f164734b', 'Matthew Adams', 'Senior Specialist', 'd177ce44-540f-4b8e-b815-d085bed5a264_do8.png', 'Surgical Dermatology, Skin Oncology', 'Mohs micrographic surgery for skin cancer treatment\nSurgical removal of benign and malignant skin tumors\nAdvanced wound care and reconstructive dermatologic procedures\nPhotodynamic therapy (PDT) and cryotherapy for precancerous lesions', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '2345234231', '123456a');
INSERT INTO `doctor` VALUES ('cb171f9d21a04f46bbe68c2f407f0112', 'Olivia Martin', 'Senior Specialist', '50f29ea1-6fab-4ef3-b1f0-260c04367ca5_do2.png', ' Gynecologic Oncology, Pelvic Floor Disorders', 'Diagnosis and treatment of gynecologic cancers (ovarian, uterine, cervical)\nAdvanced laparoscopic and robotic-assisted gynecologic surgery\nPelvic organ prolapse and urinary incontinence management\nHormonal therapy for menopause and reproductive health', '3fc886970ce5449d85e841b92e024ea9', '525f08bd6d334d93916d4792e58cd5e6', '4564564663', '123456a');
INSERT INTO `doctor` VALUES ('d7bc403a74db4cdeb39a76c3f8272a59', 'William Brown', 'Consultant Surgeon', '395c83c5-081b-4931-be62-270ca39dc454_d4.png', 'General Surgery, Minimally Invasive Procedures, Trauma Surgery', 'Laparoscopic and robotic-assisted surgeries\nEmergency and trauma surgery\nHepatobiliary and pancreatic surgery\nPostoperative care and recovery optimization', '3fc886970ce5449d85e841b92e024ea9', 'a120fcfd44634cc18ffab55b6e9447d2', '1354553', '123456a');
INSERT INTO `doctor` VALUES ('dba9f1be43004c4f96b434a9dd21a572', 'Thomas Lewis', 'Consultant Pediatrician', '0c15c26d-8105-4bbb-9a76-84e9b6f5cac1_do4.png', 'General Pediatrics, Neonatology, Pediatric Infectious Diseases', 'Diagnosis and management of neonatal and infant health conditions\nTreatment of complex pediatric infectious diseases\nGrowth and developmental disorders in children', '3fc886970ce5449d85e841b92e024ea9', '7b828e489d6540e1b644ae5087c17479', '345453', '123456a');
INSERT INTO `doctor` VALUES ('ea9d1d17a06b4bf8bf15e10e752ebb1b', 'James Smith', 'Consultant', '40486c77-5826-43b7-8525-0cc3ebab73c1_d1.png', 'General Internal Medicine, Gastrointestinal Diseases, Chronic Disease Management', 'Gastrointestinal disorders (e.g., gastroesophageal reflux disease, irritable bowel syndrome)\nChronic liver diseases (fatty liver disease, cirrhosis)\nMetabolic syndrome (diabetes, hypertension, obesity)\nEndoscopic examination and minimally invasive treatments', '3fc886970ce5449d85e841b92e024ea9', '5c055c874adc402e9875f9c325d2ca48', '123456', '123456a');
INSERT INTO `doctor` VALUES ('ec795409e63649e3b24892a4db40d429', 'David Johnson', 'Senior Specialist', 'b6ac0eac-87f4-4454-8a52-bc074c19f085_d2.png', 'Cardiology, Geriatric Medicine', 'Early diagnosis and intervention for hypertension and coronary artery disease\nPrecision management of heart failure\nNon-invasive treatment of arrhythmias and atrial fibrillation', '3fc886970ce5449d85e841b92e024ea9', '5c055c874adc402e9875f9c325d2ca48', '789456', '123456a');

-- ----------------------------
-- Table structure for hospital
-- ----------------------------
DROP TABLE IF EXISTS `hospital`;
CREATE TABLE `hospital`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hospital
-- ----------------------------
INSERT INTO `hospital` VALUES ('085cd3b126d84eada2f2f32b0fb3b99e', '833b7a99-1e20-4f02-bbe0-a63331290172_.png', '大学医院（University College Hospital）', '1', '2025-03-04 00:18:30');
INSERT INTO `hospital` VALUES ('2fa4cc0b3f5c4e909c7edcf9a9ed17fc', 'fe2e56b0-d9d3-4515-8f4b-76fbfe05190b_.png', '阿尔法医院（alpha Hospital）', '1', '2025-03-04 00:19:26');
INSERT INTO `hospital` VALUES ('3fc886970ce5449d85e841b92e024ea9', '1aec85be-fcf3-4ed2-8098-c7d95428dc13_.png', '凯撒（Kaiser Hospital）', '123', '2025-03-04 00:19:42');
INSERT INTO `hospital` VALUES ('47065c3cbb744e599a5ca43384a11e82', '82682d90-648b-4a90-a538-fdbddd205977_.png', '弗里曼医院（Freeman Hospital）​', '1', '2025-03-04 00:18:51');
INSERT INTO `hospital` VALUES ('f94417ee762e401082c7e9d5e6f04aec', 'cee5142a-ed01-4e01-b5ec-ad817d42640c_.png', '威斯敏斯特医院（Westminster Hospital）', '1', '2025-03-04 00:19:09');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', '1234', '管理员');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `hid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院id',
  `sid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室id',
  `quantum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间段',
  `date` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `hname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生名称',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `time` datetime NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊断',
  `drug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开药',
  `did` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('01e36895c90a425b9bddacdf34edbf5d', 'b0f3d4695d72438ca8cccabca2b52d5d', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '10:00 - 11:00', '2025-03-05', 'Benjamin Scott', '皮肤科（Dermatology）', '2025-03-05 09:15:17', '未诊断', NULL, NULL, '091412fd97d24862acc56f361438316c');
INSERT INTO `orders` VALUES ('146d2e0c610b41e88312bfe03c976803', 'b0f3d4695d72438ca8cccabca2b52d5d', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '10:00 - 11:00', '2025-03-05', 'Benjamin Scott', '皮肤科（Dermatology）', '2025-03-05 09:16:24', '未诊断', NULL, NULL, '091412fd97d24862acc56f361438316c');
INSERT INTO `orders` VALUES ('4a0aaf04777445b8abeb50a03c32d1e4', 'b0f3d4695d72438ca8cccabca2b52d5d', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '10:00 - 11:00', '2025-03-05', 'Benjamin Scott', '皮肤科（Dermatology）', '2025-03-05 09:19:05', '已诊断', '头疼', '阿莫西林，罗红霉素', '091412fd97d24862acc56f361438316c');
INSERT INTO `orders` VALUES ('6cccab8957fb471da3ebbea7da01dc06', 'b0f3d4695d72438ca8cccabca2b52d5d', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '10:00 - 11:00', '2025-03-05', 'Benjamin Scott', '皮肤科（Dermatology）', '2025-03-05 09:16:32', '未诊断', NULL, NULL, '091412fd97d24862acc56f361438316c');
INSERT INTO `orders` VALUES ('8d4f058487124f98917edfb2e51d52ea', 'b0f3d4695d72438ca8cccabca2b52d5d', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '10:00 - 11:00', '2025-03-05', 'Benjamin Scott', '皮肤科（Dermatology）', '2025-03-05 09:15:43', '未诊断', NULL, NULL, '091412fd97d24862acc56f361438316c');
INSERT INTO `orders` VALUES ('9ffd38fb0c6a4af59126de607c9e7c82', 'b0f3d4695d72438ca8cccabca2b52d5d', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '10:00 - 11:00', '2025-03-05', 'Benjamin Scott', '皮肤科（Dermatology）', '2025-03-05 09:16:14', '未诊断', NULL, NULL, '091412fd97d24862acc56f361438316c');
INSERT INTO `orders` VALUES ('c5ccc595f0334e81b17533edc6cddb7b', 'b0f3d4695d72438ca8cccabca2b52d5d', '3fc886970ce5449d85e841b92e024ea9', 'ed5ffe8348fc4658a637ab895466b4f0', '09:00 - 10:00', '2025-03-09', 'Benjamin Scott', '皮肤科（Dermatology）', '2025-03-09 08:42:38', '未诊断', NULL, NULL, '091412fd97d24862acc56f361438316c');

-- ----------------------------
-- Table structure for remind
-- ----------------------------
DROP TABLE IF EXISTS `remind`;
CREATE TABLE `remind`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reminder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of remind
-- ----------------------------

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tid` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `parentname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('525f08bd6d334d93916d4792e58cd5e6', '妇产科（Obstetrics & Gynecology）', '3fc886970ce5449d85e841b92e024ea9', '2025-03-04 08:52:13', NULL);
INSERT INTO `section` VALUES ('5c055c874adc402e9875f9c325d2ca48', '内科（Internal Medicine）', '3fc886970ce5449d85e841b92e024ea9', '2025-03-03 11:25:44', '内科');
INSERT INTO `section` VALUES ('7b828e489d6540e1b644ae5087c17479', '儿科（Pediatrics）', '3fc886970ce5449d85e841b92e024ea9', '2025-03-04 08:52:23', NULL);
INSERT INTO `section` VALUES ('a120fcfd44634cc18ffab55b6e9447d2', '外科（Surgery）', '3fc886970ce5449d85e841b92e024ea9', '2025-03-03 11:21:09', NULL);
INSERT INTO `section` VALUES ('ed5ffe8348fc4658a637ab895466b4f0', '皮肤科（Dermatology）', '3fc886970ce5449d85e841b92e024ea9', '2025-03-04 08:52:58', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('b0f3d4695d72438ca8cccabca2b52d5d', '123', '123', '145c2c40-a71a-4f61-8b32-f39401e350ad_h6.png', '张三111', '19656236987', '2025-03-04 20:44:29', '男', 36);

SET FOREIGN_KEY_CHECKS = 1;
