/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : yunje

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 06/06/2021 00:19:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for additional
-- ----------------------------
DROP TABLE IF EXISTS `additional`;
CREATE TABLE `additional`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of additional
-- ----------------------------

-- ----------------------------
-- Table structure for avgscore
-- ----------------------------
DROP TABLE IF EXISTS `avgscore`;
CREATE TABLE `avgscore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avgid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classavgscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gradeavgscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avgscore
-- ----------------------------
INSERT INTO `avgscore` VALUES (1, '1', '70', '70');
INSERT INTO `avgscore` VALUES (2, '2', '9', '8');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '1', 'C++（归档）');
INSERT INTO `course` VALUES (2, '2', 'C语言程序设计（理学）');
INSERT INTO `course` VALUES (3, '25', '离散数学');
INSERT INTO `course` VALUES (4, '3', '高级程序设计');
INSERT INTO `course` VALUES (5, '4', '程序设计基础（A）');
INSERT INTO `course` VALUES (6, '27', '单片微型计算机原理及应用A');
INSERT INTO `course` VALUES (7, '5', '课程设计--软件综合');
INSERT INTO `course` VALUES (8, '6', '算法与数据结构');
INSERT INTO `course` VALUES (9, '34', '测试用课程');
INSERT INTO `course` VALUES (10, '9', '软件工程实践');
INSERT INTO `course` VALUES (11, '10', '高级程序设计（Java）');
INSERT INTO `course` VALUES (12, '11', '计算机科学导论（24）');
INSERT INTO `course` VALUES (13, '12', '网络程序设计');
INSERT INTO `course` VALUES (14, '13', '计算机科学导论（32）');
INSERT INTO `course` VALUES (15, '14', 'Web程序设计');
INSERT INTO `course` VALUES (16, '15', '程序设计基础（补考）');
INSERT INTO `course` VALUES (17, '16', 'Oracle数据库');
INSERT INTO `course` VALUES (18, '17', '编译方法');
INSERT INTO `course` VALUES (19, '18', '数据库原理');
INSERT INTO `course` VALUES (20, '19', 'C语言程序设计(留学生)');
INSERT INTO `course` VALUES (21, '21', 'C语言--题库');
INSERT INTO `course` VALUES (22, '23', '计算机综合训练');
INSERT INTO `course` VALUES (23, '22', '操作系统');
INSERT INTO `course` VALUES (24, '24', '数据结构--题库');
INSERT INTO `course` VALUES (25, '26', '课程设计--数据结构');
INSERT INTO `course` VALUES (26, '28', '计算机图形学');
INSERT INTO `course` VALUES (27, '29', '计算机网络原理');
INSERT INTO `course` VALUES (28, '30', '2017-2018(1)程序设计基础');
INSERT INTO `course` VALUES (29, '31', '2017-2018(1)Java语言程序设计');
INSERT INTO `course` VALUES (30, '32', '2017-2018（1）网络操作系统');
INSERT INTO `course` VALUES (31, '33', '综合测试');
INSERT INTO `course` VALUES (32, '35', '辽宁大学测试课程');
INSERT INTO `course` VALUES (33, '36', '数据库基础');

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opinion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES (1, '1', '本知识点掌握较为优秀', ' 保持学习进度');
INSERT INTO `details` VALUES (2, '2', '本知识点掌握较为优秀', ' 保持学习进度');
INSERT INTO `details` VALUES (3, '3', '本知识点掌握较为优秀', ' 保持学习进度');
INSERT INTO `details` VALUES (4, '4', '本知识点掌握较为差', '需要重点学习');
INSERT INTO `details` VALUES (5, '5', ' 本知识点掌握较为优秀', ' 保持学习进度');
INSERT INTO `details` VALUES (6, '6', '迟到-20分', '以后要注意时间观念，不能迟到');
INSERT INTO `details` VALUES (7, '7', '上课睡觉-30分', '以后要注意听讲');
INSERT INTO `details` VALUES (8, '8', '本次实验较为优秀', '实验认真，完成结果较好，继续保持');
INSERT INTO `details` VALUES (9, '9', '本次实验较差', '实验不认真，完成结果较差，应端正学习态度');
INSERT INTO `details` VALUES (10, '10', '本次实验较为优秀', '实验认真，完成结果较好，继续保持');
INSERT INTO `details` VALUES (11, '11', '本次实验较为优秀', '实验认真，完成结果较好，继续保持');
INSERT INTO `details` VALUES (12, '12', '该同学学习时间较短，作业较为优秀，实验较差，考试较差', '加强该学生的学习时间，实验和考试');
INSERT INTO `details` VALUES (13, '13', '该同学各方面都很优秀', '保持学习进度，继续努力');
INSERT INTO `details` VALUES (14, '14', '该同学学习时间较长，各方面都需要加强', '同学学习有困难需要教师重点观察');

-- ----------------------------
-- Table structure for experiment
-- ----------------------------
DROP TABLE IF EXISTS `experiment`;
CREATE TABLE `experiment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `etext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of experiment
-- ----------------------------
INSERT INTO `experiment` VALUES (1, '1', '抽象', '抽象过程', '第一次实验');
INSERT INTO `experiment` VALUES (2, '2', '一切都是对象', '用引用操作对象', '第二次实验');
INSERT INTO `experiment` VALUES (3, '3', '操作符', '更简单的打印语句', '第三次实验');
INSERT INTO `experiment` VALUES (4, '4', '控制执行流程', '用构造体确保初始化', '第四次实验');

-- ----------------------------
-- Table structure for experimentstudent
-- ----------------------------
DROP TABLE IF EXISTS `experimentstudent`;
CREATE TABLE `experimentstudent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of experimentstudent
-- ----------------------------
INSERT INTO `experimentstudent` VALUES (1, '3', 'stadmin', '12', '1', '8', '1', '1');
INSERT INTO `experimentstudent` VALUES (2, '3', 'stadmin', '13', '2', '10', '2', '2');
INSERT INTO `experimentstudent` VALUES (3, '3', 'stadmin', '14', '3', '9', '3', '3');
INSERT INTO `experimentstudent` VALUES (4, '3', 'stadmin', '15', '4', '11', '4', '4');

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `htid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES (1, '3', 'stadmin', '第1次作业', '8', '1', '1');
INSERT INTO `homework` VALUES (3, '3', 'stadmin', '第2次作业', '9', '2', '1');
INSERT INTO `homework` VALUES (4, '3', 'stadmin', '第3次作业', '10', '3', '1');
INSERT INTO `homework` VALUES (5, '3', 'stadmin', '第4次作业', '11', '4', '1');
INSERT INTO `homework` VALUES (6, '4', 'stadmin', '第1次作业', '1', '5', '5');

-- ----------------------------
-- Table structure for homeworktopic
-- ----------------------------
DROP TABLE IF EXISTS `homeworktopic`;
CREATE TABLE `homeworktopic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `htid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homeworktopic
-- ----------------------------
INSERT INTO `homeworktopic` VALUES (1, '1', '1', '1', '1', '1', '1');
INSERT INTO `homeworktopic` VALUES (2, '1', '2', '2', '2', '2', '2');
INSERT INTO `homeworktopic` VALUES (3, '1', '3', '3', '3', '3', '3');
INSERT INTO `homeworktopic` VALUES (4, '1', '4', '4', '4', '4', '4');
INSERT INTO `homeworktopic` VALUES (5, '1', '5', '5', '5', '5', '5');
INSERT INTO `homeworktopic` VALUES (6, '2', '5', '5', '5', '5', '5');
INSERT INTO `homeworktopic` VALUES (7, '2', '4', '4', '4', '4', '4');
INSERT INTO `homeworktopic` VALUES (8, '2', '3', '3', '3', '3', '3');
INSERT INTO `homeworktopic` VALUES (9, '2', '2', '2', '2', '2', '2');
INSERT INTO `homeworktopic` VALUES (10, '2', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kid` tinyint(1) NULL DEFAULT NULL,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avgid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES (1, 1, '3', 'stadmin', '13', '1', '1', '10');
INSERT INTO `kind` VALUES (2, 0, '5', 'stadmin', '12', '2', '3', '12');
INSERT INTO `kind` VALUES (3, 0, '3', '2011040101226', '14', '1', '2', '13');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ktext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES (1, '1', '指针', '指针的联系');
INSERT INTO `knowledge` VALUES (2, '2', '文件', '文件的第二次应用');
INSERT INTO `knowledge` VALUES (3, '3', '结构体', '结构体和指针的联系');
INSERT INTO `knowledge` VALUES (4, '4', '链表', '链表遍历');
INSERT INTO `knowledge` VALUES (5, '5', '类', '类的第一次应用');

-- ----------------------------
-- Table structure for onlinetime
-- ----------------------------
DROP TABLE IF EXISTS `onlinetime`;
CREATE TABLE `onlinetime`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sumtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avgtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of onlinetime
-- ----------------------------
INSERT INTO `onlinetime` VALUES (1, 'stadmin', '98', '1', '3', '50');
INSERT INTO `onlinetime` VALUES (2, 'stadmin', '98', '5', '4', '60');

-- ----------------------------
-- Table structure for ranking
-- ----------------------------
DROP TABLE IF EXISTS `ranking`;
CREATE TABLE `ranking`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classranking` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graderanking` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ranking
-- ----------------------------
INSERT INTO `ranking` VALUES (1, '1', '5', '30');
INSERT INTO `ranking` VALUES (2, '2', '6', '45');
INSERT INTO `ranking` VALUES (3, '3', '7', '30');
INSERT INTO `ranking` VALUES (4, '4', '5', '20');
INSERT INTO `ranking` VALUES (5, '5', '6', '80');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sumscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, '1', '14', '20');
INSERT INTO `score` VALUES (2, '2', '16', '20');
INSERT INTO `score` VALUES (3, '3', '16', '20');
INSERT INTO `score` VALUES (4, '4', '13', '20');
INSERT INTO `score` VALUES (5, '5', '14', '20');
INSERT INTO `score` VALUES (6, '6', '80', '100');
INSERT INTO `score` VALUES (7, '7', '70', '100');
INSERT INTO `score` VALUES (8, '8', '73', '100');
INSERT INTO `score` VALUES (9, '9', '65', '100');
INSERT INTO `score` VALUES (10, '10', '80', '100');
INSERT INTO `score` VALUES (11, '11', '90', '100');
INSERT INTO `score` VALUES (12, '12', '70', '100');
INSERT INTO `score` VALUES (13, '13', '90', '100');
INSERT INTO `score` VALUES (14, '14', '60', '100');
INSERT INTO `score` VALUES (15, '15', '80', '100');
INSERT INTO `score` VALUES (16, '16', '85', '100');
INSERT INTO `score` VALUES (17, '17', '74.3', '100');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cla` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (2, 'stadmin', '运佳恩', '123', '软件1701');
INSERT INTO `student` VALUES (3, '__backend_user__20022410', '张荣博', '0b3aefd33b8533480c53d4ef85946f43', NULL);
INSERT INTO `student` VALUES (4, '2011040101226', '徐恩明', '123456', '网络1701');
INSERT INTO `student` VALUES (5, '2012040101052', '刘霖', '123456', NULL);
INSERT INTO `student` VALUES (6, '2012040101132', '张德生', '123456', NULL);
INSERT INTO `student` VALUES (7, '2012040101133', '张锚', '123456', NULL);
INSERT INTO `student` VALUES (8, '2012040101158', '崔志军', '123456', NULL);
INSERT INTO `student` VALUES (9, '2012040101172', '陆荣斌', '2012040101172', NULL);
INSERT INTO `student` VALUES (10, '2011040101164', '黄一心', '123456', NULL);
INSERT INTO `student` VALUES (11, '2011040101179', '王长', '11223344', NULL);
INSERT INTO `student` VALUES (12, '2011040101188', '张阳', '123456', NULL);
INSERT INTO `student` VALUES (13, '2012040101178', '王禹', '180236', NULL);
INSERT INTO `student` VALUES (14, '2012040101180', '徐新鹏', '123456', NULL);
INSERT INTO `student` VALUES (15, '2012040101186', '郑名洋', '123456', NULL);
INSERT INTO `student` VALUES (16, '2012040101213', '何胜强', 'AAA1993911', NULL);
INSERT INTO `student` VALUES (17, '2012040101232', '肖建军', '123456', NULL);
INSERT INTO `student` VALUES (18, '2012040101274', '魏南来', '123456', NULL);
INSERT INTO `student` VALUES (19, '2013040101151', '王远远', 'wyy951005', NULL);
INSERT INTO `student` VALUES (20, '2013040101152', '徐睿阳', '123456', NULL);
INSERT INTO `student` VALUES (21, '2013040101153', '邹鹏华', 'zph0609', NULL);
INSERT INTO `student` VALUES (22, '2013040101154', '王奕', 'wangyi0311', NULL);
INSERT INTO `student` VALUES (23, '2013040101155', '李静', '123456', NULL);
INSERT INTO `student` VALUES (24, '2013040101156', '马婧婧', 'zmhjing06', NULL);
INSERT INTO `student` VALUES (25, '2013040101158', '韩天中', '123456', NULL);
INSERT INTO `student` VALUES (26, '2013040101159', '李宝全', 'lbq19950117', NULL);
INSERT INTO `student` VALUES (27, '2013040101160', '李遇塘', '19921221', NULL);
INSERT INTO `student` VALUES (28, '2013040101161', '张振鑫', '123456', NULL);
INSERT INTO `student` VALUES (29, '2013040101162', '黄一凡', 'ainihyf080', NULL);
INSERT INTO `student` VALUES (30, '2013040101163', '刘怀义', '123456', NULL);
INSERT INTO `student` VALUES (31, '2013040101164', '周兴荣', '123456', NULL);
INSERT INTO `student` VALUES (32, '2013040101166', '董强强', '123456', NULL);
INSERT INTO `student` VALUES (33, '2013040101167', '朱岭杰', '921027', NULL);
INSERT INTO `student` VALUES (34, '2013040101169', '何宇峰', 'a8450123', NULL);
INSERT INTO `student` VALUES (35, '2013040101171', '万德福', 'lovewan2song2', NULL);
INSERT INTO `student` VALUES (36, '2013040101172', '曹鑫宇', '110136', NULL);
INSERT INTO `student` VALUES (37, '2013040101173', '高庆阳', 'yang1994', NULL);
INSERT INTO `student` VALUES (38, '2013040101175', '李伊', '654321', NULL);
INSERT INTO `student` VALUES (39, '2013040101176', '李绪有', '123456', NULL);
INSERT INTO `student` VALUES (40, '2013040101177', '隋世旭', '06298230', NULL);
INSERT INTO `student` VALUES (41, '2013040101179', '张萌萌', '123456', NULL);
INSERT INTO `student` VALUES (42, '2013040101180', '王鼎', '365864', NULL);
INSERT INTO `student` VALUES (43, '2013040101181', '习志敏', '711314', NULL);
INSERT INTO `student` VALUES (44, '2013040101183', '沈聪', '123456', NULL);
INSERT INTO `student` VALUES (45, '2013040101185', '石开洪', 'skh13342453020', NULL);
INSERT INTO `student` VALUES (46, '2012040101136', '张腾霄', '19931112', NULL);
INSERT INTO `student` VALUES (47, '2011040101166', '金艳军', '2011040101166', NULL);
INSERT INTO `student` VALUES (48, '2013040101168', '朱民福', '2013040101168', NULL);
INSERT INTO `student` VALUES (49, '2013040101178', '万延正', '11163318', NULL);
INSERT INTO `student` VALUES (50, '2013040101182', '吕仲恒', '2013040101182', NULL);
INSERT INTO `student` VALUES (51, '2013040101184', '罗传帅', 'kkxdtX58', NULL);
INSERT INTO `student` VALUES (52, '__backend_user__19911437', '施国君', 'a25ae6c842e0dd24b6a77f0b279dbc1e', NULL);
INSERT INTO `student` VALUES (53, '2013040103001', '王珏莹', '123456', NULL);
INSERT INTO `student` VALUES (54, '2013040103002', '刘慧颖', 'lhy924', NULL);
INSERT INTO `student` VALUES (55, '2013040103003', '刘威', '708182', NULL);
INSERT INTO `student` VALUES (56, '2013040103005', '张鹏飞', 'gf9290104', NULL);
INSERT INTO `student` VALUES (57, '2013040103006', '高阳团', 'gyt13342445911', NULL);
INSERT INTO `student` VALUES (58, '2013040103007', '王章博', 'wzb34010301', NULL);
INSERT INTO `student` VALUES (59, '2013040103008', '苏晓辉', '1017', NULL);
INSERT INTO `student` VALUES (60, '2013040103010', '秦冲', '123456', NULL);
INSERT INTO `student` VALUES (61, '2013040103011', '王克城', '15114292393', NULL);
INSERT INTO `student` VALUES (62, '2013040103012', '李飞', '009292527', NULL);
INSERT INTO `student` VALUES (63, '2013040103013', '谭兆庭', 'barcelona', NULL);
INSERT INTO `student` VALUES (64, '2013040103016', '陈福春', 'a13942414829a', NULL);
INSERT INTO `student` VALUES (65, '2013040103017', '王忠鹏', 'dapengbuaini1230', NULL);
INSERT INTO `student` VALUES (66, '2013040103018', '张鹏达', '12205016', NULL);
INSERT INTO `student` VALUES (67, '2013040103019', '王心舒', '0196908050', NULL);
INSERT INTO `student` VALUES (68, '2013040103020', '孙仁凯', 'sun123456', NULL);
INSERT INTO `student` VALUES (69, '2013040103021', '刘毓奇', '1995315', NULL);
INSERT INTO `student` VALUES (70, '2013040103023', '胡存夫', '512512ZY', NULL);
INSERT INTO `student` VALUES (71, '2013040103026', '白松', 'baisong6666', NULL);
INSERT INTO `student` VALUES (72, '2013040103027', '张智聪', '01282617', NULL);
INSERT INTO `student` VALUES (73, '2013040103030', '张为', 'zhangwei11208781', NULL);
INSERT INTO `student` VALUES (74, '2013040103031', '赵鸿基', '01259237', NULL);
INSERT INTO `student` VALUES (75, '2013040103032', '白云辉', 'byh994329.', NULL);
INSERT INTO `student` VALUES (76, '2013040103033', '叶小钰', '123456', NULL);
INSERT INTO `student` VALUES (77, '2013040103034', '于江龙', '123456', NULL);
INSERT INTO `student` VALUES (78, '2013040103035', '石峰宜', '123456', NULL);
INSERT INTO `student` VALUES (79, '2013040103009', '刘奕男', 'lz555666', NULL);
INSERT INTO `student` VALUES (80, '2013040103022', '刘晓晨', '123456', NULL);
INSERT INTO `student` VALUES (81, '2013040103025', '赵洋漾', '08310319', NULL);
INSERT INTO `student` VALUES (82, '2013040103028', '赵书茗', 'q123456', NULL);
INSERT INTO `student` VALUES (83, '__backend_user__19951863', '张维君', 'f896e8b768bf74da12b81a2ffe9bfd05', NULL);
INSERT INTO `student` VALUES (84, '__backend_user__19951879', '潘琢金', 'cd3cb31cfabb3200374894f4fecd923d', NULL);
INSERT INTO `student` VALUES (85, '__backend_user__19961935', '董燕举', 'b344122e895273261a0bd66f736b2e33', NULL);
INSERT INTO `student` VALUES (86, '__backend_user__19961940', '李胜宇', 'f370b9d1ff9ce8fdd1fe700ec7880241', NULL);
INSERT INTO `student` VALUES (87, '__backend_user__19961942', '胡光元', 'a482d45dbfe52dd521dddecda06cf107', NULL);
INSERT INTO `student` VALUES (88, '__backend_user__19982072', '刘香芹', 'ab5065e91279014d7237e8b5df9cccf3', NULL);
INSERT INTO `student` VALUES (89, '__backend_user__19982073', '毛艳娥', '4613dfbb8e7ef2fce360c35bf20aaa3b', NULL);
INSERT INTO `student` VALUES (90, '__backend_user__19982074', '张翼飞', '00369a30add2f734c3e0c3d8daba957a', NULL);
INSERT INTO `student` VALUES (91, '__backend_user__19982088', '刘鲲', 'd638605f2e7b0cb3727b4ccdce3f3ff6', NULL);
INSERT INTO `student` VALUES (92, '__backend_user__19982091', '庄威', '143011c56719382a0fa5510177e61b67', NULL);
INSERT INTO `student` VALUES (93, '__backend_user__19992176', '周振辉', 'de4a98b6ef5c3ff178c7e18eb5c6b1f5', NULL);
INSERT INTO `student` VALUES (94, '__backend_user__19992178', '王鑫', 'a21d8bdcb64aca9904b44c171b7867aa', NULL);
INSERT INTO `student` VALUES (95, '__backend_user__19971999', '孙伟东', 'f0c11eeaa3267dd86fae2dcd5d300d0d', NULL);
INSERT INTO `student` VALUES (96, '__backend_user__19961946', '王丹', 'b7d1443899f039fc3f08b3ea97aed3c5', NULL);
INSERT INTO `student` VALUES (97, '__backend_user__20112272', '拱长青', '3856432552192bde1aa6ab306f788fb8', NULL);
INSERT INTO `student` VALUES (98, '__backend_user__20012340', '周大海', '0f4bf6d6baab6189cca1b70ac655bd70', NULL);
INSERT INTO `student` VALUES (99, '__backend_user__20022365', '訾学博', '6ef6eb698d1251396a7388ddcd7385d3', NULL);
INSERT INTO `student` VALUES (100, '__backend_user__20022396', '孙恩岩', '20f7da6ef00c538464eb168923099075', NULL);
INSERT INTO `student` VALUES (101, '__backend_user__20022411', '李席广', '60e49ddb205647cb0c02dc65c2c37897', NULL);
INSERT INTO `student` VALUES (102, '__backend_user__20022420', '曹一鹏', '1beb5e06c02562b65ab23a80db18a66c', NULL);
INSERT INTO `student` VALUES (103, '__backend_user__20022442', '郑志勇', '8459a958f9b33bab76a8d4993995f6eb', NULL);
INSERT INTO `student` VALUES (104, '__backend_user__20032508', '罗振', '13a31794ca464b4b69117f74dcc651aa', NULL);
INSERT INTO `student` VALUES (105, '__backend_user__20032518', '李晓明', '84deccadff284bee1a408e683882e558', NULL);
INSERT INTO `student` VALUES (106, '__backend_user__20032569', '王岩', '0ca3de16bdbe4398434b346a47fbffd7', NULL);
INSERT INTO `student` VALUES (107, '__backend_user__20032570', '李照奎', 'a518fe2ba058fecf7a7304e4a4a5b757', NULL);
INSERT INTO `student` VALUES (108, '__backend_user__20042649', '于影杰', '4d1bf4e5aea448c66993e2b486a47a9b', NULL);
INSERT INTO `student` VALUES (109, '__backend_user__20052786', '林娜', 'd6890f47808da68c18a92fff9bbe5da6', NULL);
INSERT INTO `student` VALUES (110, '__backend_user__20062862', '毕静', 'd52792e1e1391358fa65e498dc3fcf02', NULL);
INSERT INTO `student` VALUES (111, '__backend_user__20072917', '杨华', '0d74e08e4a42616942f5ef27287541ca', NULL);
INSERT INTO `student` VALUES (112, '__backend_user__20072972', '杜玲', 'fc1787705d8b825705b251b0220ad308', NULL);
INSERT INTO `student` VALUES (113, '__backend_user__20072973', '刘芳', '982d75ef6765671288bec7996c850670', NULL);
INSERT INTO `student` VALUES (114, '__backend_user__20093076', '王传云', '6172476ae84de4583e9903b9e0b42bcf', NULL);
INSERT INTO `student` VALUES (115, '__backend_user__20093092', '周美艳', '4378685621ae298973af8ef06e1e70db', NULL);
INSERT INTO `student` VALUES (116, '__backend_user__20093093', '王应天', '77e248e0f3106cd781c338d729be85c3', NULL);
INSERT INTO `student` VALUES (117, '__backend_user__20103144', '王飞', '32b08865cf535bb9a8c24c9d64d8921e', NULL);
INSERT INTO `student` VALUES (118, '__backend_user__20123284', '张德园', '59ff4655955fa1730a35ddb3f77aede9', NULL);
INSERT INTO `student` VALUES (119, '__backend_user__20123311', '丁国辉', 'cc3ff37f8685ca55e6d97589ac50e39a', NULL);
INSERT INTO `student` VALUES (120, '__backend_user__20123314', '郭薇', '217c2624b4d5ec46f5225eb17d50f0a8', NULL);
INSERT INTO `student` VALUES (121, '__backend_user__20123315', '郭振洲', 'd6e406fa5133ee4fb82c3bf7a7fdc1e0', NULL);
INSERT INTO `student` VALUES (122, '__backend_user__20133366', '高得伦', '83a01012227e6f314408de991d3b4da5', NULL);
INSERT INTO `student` VALUES (123, '__backend_user__20002224', '高利军', '7b37c9fbdf76341be10dbe9a2a182991', NULL);
INSERT INTO `student` VALUES (124, '__backend_user__20012345', '许莉', 'e89fefdaf438537267941aec47d370fb', NULL);
INSERT INTO `student` VALUES (125, '__backend_user__20022419', '安云哲', '4d5b6337ac3aafeba277a9b004aee3a1', NULL);
INSERT INTO `student` VALUES (126, '__backend_user__19952509', '张国栋', '393ea0ece698c9ceacdfbbaab4004081', NULL);
INSERT INTO `student` VALUES (127, '__backend_user__19961927', '杨灏', 'e1a42649ecf43efdf6d1fd76a63d9392', NULL);
INSERT INTO `student` VALUES (128, '__backend_user__19971982', '范纯龙', '0ef972904b92812fe6580d32be9d14a1', NULL);
INSERT INTO `student` VALUES (129, '__backend_user__20022449', '曹辉', '0f8912c7a5a49a0f0d26a505aae67f13', NULL);
INSERT INTO `student` VALUES (130, '__backend_user__20052683', '石祥滨', '1763a77f3eab160df9f48616aeb831ff', NULL);
INSERT INTO `student` VALUES (131, '__backend_user__19921762', '丛丽晖', '7092b0c679ee4dee33f29479565faf2e', NULL);
INSERT INTO `student` VALUES (132, '__backend_user__20032472', '刘启文', '05542a89eb01a37c4ec6d96da24ce4d6', NULL);
INSERT INTO `student` VALUES (133, '__backend_user__20032485', '张潞', '7046160e8be87d83fb055dbc9567eeff', NULL);
INSERT INTO `student` VALUES (134, '__backend_user__20072971', '王越', '7de2cb5a78873b56531b4506e30d4a71', NULL);
INSERT INTO `student` VALUES (135, '__backend_user__19830122', '徐蕾', 'fd894a528045d311148c60ae43f01592', NULL);
INSERT INTO `student` VALUES (136, '__backend_user__19840130', '许清', '1fa64f678fce4f56d4bbc8ba5e686169', NULL);
INSERT INTO `student` VALUES (137, '__backend_user__19961917', '丁一军', '2fc2efa7ea145c6f279b510794517c9e', NULL);
INSERT INTO `student` VALUES (138, '2012040101057', '赵曼迪', '2012040101057', NULL);
INSERT INTO `student` VALUES (139, '2012040101055', '张晓庆', '2012040101055', NULL);
INSERT INTO `student` VALUES (140, '2012040101051', '李驰', '2012040101051', NULL);
INSERT INTO `student` VALUES (141, '2011040101058', '左宁', '2011040101058', NULL);
INSERT INTO `student` VALUES (142, '2010040101076', '张岩', '2010040101076', NULL);
INSERT INTO `student` VALUES (143, '2012040101038', '周正', '2012040101038', NULL);
INSERT INTO `student` VALUES (144, '2012040101037', '朱博', '2012040101037', NULL);
INSERT INTO `student` VALUES (145, '2012040101033', '张维健', '2012040101033', NULL);
INSERT INTO `student` VALUES (146, '2012040101029', '魏永鹏', '2012040101029', NULL);
INSERT INTO `student` VALUES (147, '2012040101028', '王圣和', '19930609', NULL);
INSERT INTO `student` VALUES (148, '2012040101027', '王明辉', '2012040101027', NULL);
INSERT INTO `student` VALUES (149, '2012040101026', '王宏宇', '2012040101026', NULL);
INSERT INTO `student` VALUES (150, '2012040101024', '孙皓', '2012040101024', NULL);
INSERT INTO `student` VALUES (151, '2012040101022', '马乐', '2012040101022', NULL);
INSERT INTO `student` VALUES (152, '2012040101020', '刘爽', '2012040101020', NULL);
INSERT INTO `student` VALUES (153, '2012040101019', '刘澈', '123456', NULL);
INSERT INTO `student` VALUES (154, '2012040101018', '刘博文', '2012040101018', NULL);
INSERT INTO `student` VALUES (155, '2012040101015', '黄朝林', '2012040101015', NULL);
INSERT INTO `student` VALUES (156, '2012040101014', '韩治宇', '2012040101014', NULL);
INSERT INTO `student` VALUES (157, '2012040101011', '谷进杰', '2012040101011', NULL);
INSERT INTO `student` VALUES (158, '2012040101009', '程琛', '2012040101009', NULL);
INSERT INTO `student` VALUES (159, '153401010521', '李少鹏', '111111', NULL);
INSERT INTO `student` VALUES (160, '153401010522', '张国成', '19961009', NULL);
INSERT INTO `student` VALUES (161, '153401010523', '常远', 'sltn3277', NULL);
INSERT INTO `student` VALUES (162, '153401010524', '马超群', 'm873022690', NULL);
INSERT INTO `student` VALUES (163, '153401010525', '郭靖', '17954opute', NULL);
INSERT INTO `student` VALUES (164, '153401010526', '王之光', '970908', NULL);
INSERT INTO `student` VALUES (165, '153401010527', '周磊', '111111', NULL);
INSERT INTO `student` VALUES (166, '153401010528', '何胜元', 'hetieliang1', NULL);
INSERT INTO `student` VALUES (167, '153401010529', '李赫', '970128', NULL);
INSERT INTO `student` VALUES (168, '153401010530', '王屹超', '111111', NULL);
INSERT INTO `student` VALUES (169, '153401010531', '李廉颇', 'Lianpo213LI', NULL);
INSERT INTO `student` VALUES (170, '153401010532', '毕振国', '111111', NULL);
INSERT INTO `student` VALUES (171, '153401010533', '荆浩', '970903', NULL);
INSERT INTO `student` VALUES (172, '153401010534', '杨颢', 'YH555888', NULL);
INSERT INTO `student` VALUES (173, '143401010406', '郭晓乐', '143401010406', NULL);
INSERT INTO `student` VALUES (174, '153401010333', '武福林', '071165', NULL);
INSERT INTO `student` VALUES (175, '153401010332', '张亚州', '960416', NULL);
INSERT INTO `student` VALUES (176, '153401010331', '李宗健', '970223789', NULL);
INSERT INTO `student` VALUES (177, '153401010330', '赵梓旭', '999999', NULL);
INSERT INTO `student` VALUES (178, '153401010329', '庚洋洋', '111111', NULL);
INSERT INTO `student` VALUES (179, '153401010328', '张庆民', '111110', NULL);
INSERT INTO `student` VALUES (180, '153401010327', '秦鹤领', '111111', NULL);
INSERT INTO `student` VALUES (181, '153401010326', '崔卓越', '222222', NULL);
INSERT INTO `student` VALUES (182, '153401010325', '易成辉', '111111', NULL);
INSERT INTO `student` VALUES (183, '153401010324', '周根升', '111111', NULL);
INSERT INTO `student` VALUES (184, '153401010323', '李军辉', '111111', NULL);
INSERT INTO `student` VALUES (185, '153401010322', '韩栋', '125125', NULL);
INSERT INTO `student` VALUES (186, '153401010321', '袁坤', 'yuankobe24', NULL);
INSERT INTO `student` VALUES (187, '153401010319', '刘傲', '111111', NULL);
INSERT INTO `student` VALUES (188, '153401010318', '雷建', '19960411', NULL);
INSERT INTO `student` VALUES (189, '153401010317', '董志斌', '584120', NULL);
INSERT INTO `student` VALUES (190, '153401010316', '刘智', 'mxx520', NULL);
INSERT INTO `student` VALUES (191, '153401010315', '赵三元', '111111', NULL);
INSERT INTO `student` VALUES (192, '153401010314', '王军宏', '951214', NULL);
INSERT INTO `student` VALUES (193, '153401010313', '霍超然', '05120015', NULL);
INSERT INTO `student` VALUES (194, '153401010312', '何聪', '159654', NULL);
INSERT INTO `student` VALUES (195, '153401010311', '陈坤', 'ck199512252715', NULL);
INSERT INTO `student` VALUES (196, '153401010310', '翁超', '81645', NULL);
INSERT INTO `student` VALUES (197, '153401010309', '吴琼', '111111', NULL);
INSERT INTO `student` VALUES (198, '153401010308', '许晴', '111111', NULL);
INSERT INTO `student` VALUES (199, '153401010307', '贺延俏', '201121', NULL);
INSERT INTO `student` VALUES (200, '153401010306', '杨卓辰', '111111', NULL);
INSERT INTO `student` VALUES (201, '153401010305', '祁萁', '111111', NULL);
INSERT INTO `student` VALUES (202, '153401010304', '于瑶', '111111', NULL);
INSERT INTO `student` VALUES (203, '153401010303', '孙杰', 'chenxi0726', NULL);
INSERT INTO `student` VALUES (204, '153401010302', '朱玉', '111111', NULL);
INSERT INTO `student` VALUES (205, '153401010301', '龙永梅', '202020', NULL);
INSERT INTO `student` VALUES (206, '2013040101034', '张威', '2013040101034', NULL);
INSERT INTO `student` VALUES (207, '2011040101118', '林子豪', '123456', NULL);
INSERT INTO `student` VALUES (208, '2011040101053', '奎嘉莹', '1994621', NULL);
INSERT INTO `student` VALUES (209, '165152010603', '王路', '111111', NULL);
INSERT INTO `student` VALUES (210, '153403040424', '吕伟华', '153403040424', NULL);
INSERT INTO `student` VALUES (211, '20150001', '李胜宇', '20150001', NULL);
INSERT INTO `student` VALUES (212, '19960001', 'Lisy', '19960001', NULL);
INSERT INTO `student` VALUES (213, '2013040101261', '张壮壮', '2013040101261.sh', NULL);
INSERT INTO `student` VALUES (214, '123456', '许莉', '123456', NULL);
INSERT INTO `student` VALUES (215, '2012040101004', '孙敏学', '2012040101004', NULL);
INSERT INTO `student` VALUES (216, '2012040101006', '于双双', '2012040101006', NULL);
INSERT INTO `student` VALUES (217, '2012040101008', '陈政禹', '2012040101008', NULL);
INSERT INTO `student` VALUES (218, '153401010504', '雷镓', '111111', NULL);
INSERT INTO `student` VALUES (219, '153401010505', '张兴慧', '111111', NULL);
INSERT INTO `student` VALUES (220, '153401010506', '司佳宇', 'asjy1997001217', NULL);
INSERT INTO `student` VALUES (221, '153401010507', '柴伊凡', '123456', NULL);
INSERT INTO `student` VALUES (222, '153401010508', '徐兴', '111111', NULL);
INSERT INTO `student` VALUES (223, '153401010509', '罗品川', '961017', NULL);
INSERT INTO `student` VALUES (224, '153401010510', '刘亚', '111111', NULL);
INSERT INTO `student` VALUES (225, '153401010511', '王作', '09077210', NULL);
INSERT INTO `student` VALUES (226, '153401010512', '刘科宏', '111111', NULL);
INSERT INTO `student` VALUES (227, '153401010513', '曾小杰', '2197030521700710', NULL);
INSERT INTO `student` VALUES (228, '153401010515', '高阳', '111111', NULL);
INSERT INTO `student` VALUES (229, '153401010516', '陈大千', '18309360374abc', NULL);
INSERT INTO `student` VALUES (230, '153401010517', '蒋尚泽', 'JIANG1995sz.', NULL);
INSERT INTO `student` VALUES (231, '153401010518', '刘浪', '111111', NULL);
INSERT INTO `student` VALUES (232, '153401010519', '王斌', '111111', NULL);
INSERT INTO `student` VALUES (233, '153401010520', '李子涵', '153401010520', NULL);
INSERT INTO `student` VALUES (234, '2011040101158', '张頔', '2011040101158', NULL);
INSERT INTO `student` VALUES (235, '2012040101003', '李洋洋', '2012040101003', NULL);
INSERT INTO `student` VALUES (236, '2012040101002', '崔昊洋', '2012040101002', NULL);
INSERT INTO `student` VALUES (237, '153401010536', '苏阔', '111111', NULL);
INSERT INTO `student` VALUES (238, '153401010535', '张闯', 'sldsz0179.', NULL);
INSERT INTO `student` VALUES (239, '153401010501', '辛娟娟', '121633', NULL);
INSERT INTO `student` VALUES (240, '153401010401', '白璐', '111111', NULL);
INSERT INTO `student` VALUES (241, '153401010402', '陈婷', '520209', NULL);
INSERT INTO `student` VALUES (242, '153401010403', '何旭', '741125', NULL);
INSERT INTO `student` VALUES (243, '153401010404', '刘诗琪', '111111', NULL);
INSERT INTO `student` VALUES (244, '153401010405', '郭洋', '111111', NULL);
INSERT INTO `student` VALUES (245, '153401010406', '刘子博', '111111', NULL);
INSERT INTO `student` VALUES (246, '153401010407', '候婷婷', '111111', NULL);
INSERT INTO `student` VALUES (247, '153401010408', '赵心宁', '111111', NULL);
INSERT INTO `student` VALUES (248, '153401010409', '饶光宇', '111111', NULL);
INSERT INTO `student` VALUES (249, '153401010410', '吴永强', '111111', NULL);
INSERT INTO `student` VALUES (250, '153401010411', '闫鸿儒', '111111', NULL);
INSERT INTO `student` VALUES (251, '153401010412', '邓子枫', '111111', NULL);
INSERT INTO `student` VALUES (252, '153401010413', '常远星', 'wxdqxyw88', NULL);
INSERT INTO `student` VALUES (253, '153401010414', '王海鹏', '111111', NULL);
INSERT INTO `student` VALUES (254, '153401010415', '刘程瑞', '111111', NULL);
INSERT INTO `student` VALUES (255, '153401010416', '钟裕营', '111111', NULL);
INSERT INTO `student` VALUES (256, '153401010417', '张洁', 'lbb1111', NULL);
INSERT INTO `student` VALUES (257, '153401010418', '廖宇', '111111', NULL);
INSERT INTO `student` VALUES (258, '153401010419', '孔令宇', '111111', NULL);
INSERT INTO `student` VALUES (259, '153401010420', '许超飞', '111111', NULL);
INSERT INTO `student` VALUES (260, '153401010421', '吕家尧', '111111', NULL);
INSERT INTO `student` VALUES (261, '153401010423', '毕堃', 'bk666896bk', NULL);
INSERT INTO `student` VALUES (262, '153401010424', '付港华', '199720', NULL);
INSERT INTO `student` VALUES (263, '153401010425', '张云飞', 'zyf11010427', NULL);
INSERT INTO `student` VALUES (264, '153401010426', '张成威', '295494', NULL);
INSERT INTO `student` VALUES (265, '153401010427', '王泽鹏', '199610', NULL);
INSERT INTO `student` VALUES (266, '153401010428', '姜淼', '1345678jmok', NULL);
INSERT INTO `student` VALUES (267, '153401010429', '吴东翰', 'wdh.19960324', NULL);
INSERT INTO `student` VALUES (268, '153401010430', '徐世超', '111111', NULL);
INSERT INTO `student` VALUES (269, '153401010431', '王灵杰', '111111', NULL);
INSERT INTO `student` VALUES (270, '153401010432', '向浩伟', '111111', NULL);
INSERT INTO `student` VALUES (271, '153401010433', '张泽中', '111111', NULL);
INSERT INTO `student` VALUES (272, '2010040102034', '张晟', '111111', NULL);
INSERT INTO `student` VALUES (273, '153401010502', '蔡沛沛', '123456haha', NULL);
INSERT INTO `student` VALUES (274, '153401010503', '李苗', 'lmlmlm', NULL);
INSERT INTO `student` VALUES (275, '153401050133', '袁野', 'Ye19960629', NULL);
INSERT INTO `student` VALUES (276, '153401050132', '关雨丰', 'qadnbsaq', NULL);
INSERT INTO `student` VALUES (277, '153401050131', '徐滔', 'xutao+9.3', NULL);
INSERT INTO `student` VALUES (278, '153401050130', '杨明', 'yanglan055.....', NULL);
INSERT INTO `student` VALUES (279, '153401050129', '白雨豪', 'zy13891041883', NULL);
INSERT INTO `student` VALUES (280, '153401050128', '刘恩泽', 'ENZE0210', NULL);
INSERT INTO `student` VALUES (281, '2011040101262', '黄文汉', '2011040101262', NULL);
INSERT INTO `student` VALUES (282, '153401050127', '周兆宠', '12141511', NULL);
INSERT INTO `student` VALUES (283, '153401050126', '宫铭', '123456', NULL);
INSERT INTO `student` VALUES (284, '153401050125', '李明曌', '111111', NULL);
INSERT INTO `student` VALUES (285, '153401050124', '沈书凯', '559521', NULL);
INSERT INTO `student` VALUES (286, '153401050123', '刘玉生', 'liuyusheng', NULL);
INSERT INTO `student` VALUES (287, '153401050122', '王东伟', '1234', NULL);
INSERT INTO `student` VALUES (288, '153401050121', '宫傲', 'ao1996', NULL);
INSERT INTO `student` VALUES (289, '153401050120', '赵德伟', '19970601', NULL);
INSERT INTO `student` VALUES (290, '153401050119', '于栋', '0', NULL);
INSERT INTO `student` VALUES (291, '153401050118', '李博', '02231710', NULL);
INSERT INTO `student` VALUES (292, '153401050117', '张笑宁', '123456', NULL);
INSERT INTO `student` VALUES (293, '153401050116', '高铃策', '0', NULL);
INSERT INTO `student` VALUES (294, '153401050115', '高飞', 'gf5201314', NULL);
INSERT INTO `student` VALUES (295, '153401050114', '孙一飞', 'yifei1209@', NULL);
INSERT INTO `student` VALUES (296, '153401050113', '姚顺宇', '13651240790yao', NULL);
INSERT INTO `student` VALUES (297, '153401050112', '安鹏飞', '6498384814apf', NULL);
INSERT INTO `student` VALUES (298, '153401050111', '肖鑫', '654123', NULL);
INSERT INTO `student` VALUES (299, '654321', '王丹', '654321', NULL);
INSERT INTO `student` VALUES (300, '153401050109', '翁云瑶', 'zhang1314', NULL);
INSERT INTO `student` VALUES (301, '153401050108', '肖正洪', '994994', NULL);
INSERT INTO `student` VALUES (302, '153401050107', '马磊', '272284575', NULL);
INSERT INTO `student` VALUES (303, '153401050106', '姬文婷', '123456', NULL);
INSERT INTO `student` VALUES (304, '153401050105', '王嘉尧', 'JYproject2926', NULL);
INSERT INTO `student` VALUES (305, '153401050104', '孙亚男', '5322', NULL);
INSERT INTO `student` VALUES (306, '153401050103', '张佳琪', 'ZHANGJIAQI0729.', NULL);
INSERT INTO `student` VALUES (307, '153401050101', '李艺君', 'lyj961229', NULL);
INSERT INTO `student` VALUES (308, '1', '1', '1', NULL);
INSERT INTO `student` VALUES (309, '	2010040101021', '孙志鑫', '123456', NULL);
INSERT INTO `student` VALUES (310, '__backend_user__19951859', '武卫东', 'dffa1688c0ac63be66b183fc6ae05e7f', NULL);
INSERT INTO `student` VALUES (311, '1111', '测试', '1111', NULL);
INSERT INTO `student` VALUES (312, '2012040101121', '蒲建国', '2012040101121', NULL);
INSERT INTO `student` VALUES (313, '2013040101133', '吴小勇', '2013040101133', NULL);
INSERT INTO `student` VALUES (314, '153401010101', '陈露', '153401010101', NULL);
INSERT INTO `student` VALUES (315, '2013040101132', '郝一', 'hao1q2w3e', NULL);
INSERT INTO `student` VALUES (316, '2013040101131', '赵伟莨', 'zwl02726480', NULL);
INSERT INTO `student` VALUES (317, '2013040101130', '仝威', '2013040101130', NULL);
INSERT INTO `student` VALUES (318, '2013040101129', '戴易', '2013040101129', NULL);
INSERT INTO `student` VALUES (319, '2013040101127', '宋成鑫', '2013040101127', NULL);
INSERT INTO `student` VALUES (320, '2013040101126', '李恩贺', '2013040101126', NULL);
INSERT INTO `student` VALUES (321, '2013040101125', '常秉玉', '2013040101125', NULL);
INSERT INTO `student` VALUES (322, '2013040101124', '吕天一', '2013040101124', NULL);
INSERT INTO `student` VALUES (323, '2013040101123', '张艺鑫', '094326', NULL);
INSERT INTO `student` VALUES (324, '2013040101122', '程长江', '2013040101122', NULL);
INSERT INTO `student` VALUES (325, '2013040101121', '张子昭', '2013040101121', NULL);
INSERT INTO `student` VALUES (326, '2013040101120', '吴太康', '2013040101120', NULL);
INSERT INTO `student` VALUES (327, '2013040101119', '杨睿', '2013040101119', NULL);
INSERT INTO `student` VALUES (328, '2013040101118', '许勇', '2013040101118', NULL);
INSERT INTO `student` VALUES (329, '2013040101117', '李伟亮', '2013040101117', NULL);
INSERT INTO `student` VALUES (330, '2013040101116', '孟辉', '2013040101116', NULL);
INSERT INTO `student` VALUES (331, '2013040101115', '吴多吉', '2013040101115', NULL);
INSERT INTO `student` VALUES (332, '2013040101114', '明仁江', 'mingrenjiang25', NULL);
INSERT INTO `student` VALUES (333, '2013040101112', '赵海东', '2013040101112', NULL);
INSERT INTO `student` VALUES (334, '2013040101111', '王栋', '2013040101111', NULL);
INSERT INTO `student` VALUES (335, '2013040101110', '李全清', '454292', NULL);
INSERT INTO `student` VALUES (336, '2013040101109', '吕健雄', '2013040101109', NULL);
INSERT INTO `student` VALUES (337, '2013040101108', '胡林状', '2013040101108', NULL);
INSERT INTO `student` VALUES (338, '2013040101107', '秦燕彬', '2013040101107', NULL);
INSERT INTO `student` VALUES (339, '2013040101106', '孙杏子', '2013040101106', NULL);
INSERT INTO `student` VALUES (340, '2013040101105', '杜娟', '2013040101105', NULL);
INSERT INTO `student` VALUES (341, '2013040101104', '王晶淼', '2013040101104', NULL);
INSERT INTO `student` VALUES (342, '2013040101103', '刘璐', '2013040101103', NULL);
INSERT INTO `student` VALUES (343, '2013040101102', '孙乐', '2013040101102', NULL);
INSERT INTO `student` VALUES (344, '2013040101101', '王珊', '2013040101101', NULL);
INSERT INTO `student` VALUES (345, '2012040101268', '史俊峰', '2012040101268', NULL);
INSERT INTO `student` VALUES (346, '2012040101261', '鞠伟东', '2012040101261', NULL);
INSERT INTO `student` VALUES (347, '2012040101265', '刘峥界', '2012040101265', NULL);
INSERT INTO `student` VALUES (348, '2012040101157', '包维峰', '2012040101157', NULL);
INSERT INTO `student` VALUES (349, '2012040101153', '李纭涵', '2012040101153', NULL);
INSERT INTO `student` VALUES (350, '2012040101271', '宋健', '2012040101271', NULL);
INSERT INTO `student` VALUES (351, '2012040101276', '徐楷然', '2012040101276', NULL);
INSERT INTO `student` VALUES (352, '2012040101223', '孙建林', '2012040101223', NULL);
INSERT INTO `student` VALUES (353, '2012040101221', '马小亮', '2012040101221', NULL);
INSERT INTO `student` VALUES (354, '2012040101219', '刘洋', '2012040101219', NULL);
INSERT INTO `student` VALUES (355, '2012040101218', '刘思孟', '2012040101218', NULL);
INSERT INTO `student` VALUES (356, '2012040101217', '厉原通', '2012040101217', NULL);
INSERT INTO `student` VALUES (357, '2012040101214', '李伯壮', '2012040101214', NULL);
INSERT INTO `student` VALUES (358, '2012040101212', '方朋朋', '2012040101212', NULL);
INSERT INTO `student` VALUES (359, '2012040101211', '范文耀', '2012040101211', NULL);
INSERT INTO `student` VALUES (360, '2012040101208', '陈冠宇', '2012040101208', NULL);
INSERT INTO `student` VALUES (361, '2012040101207', '鲍礼彬', '2012040101207', NULL);
INSERT INTO `student` VALUES (362, '2012040101205', '王莉', '2012040101205', NULL);
INSERT INTO `student` VALUES (363, '2012040101204', '刘思文', '600629he', NULL);
INSERT INTO `student` VALUES (364, '2012040101202', '陈政秀', '2012040101202', NULL);
INSERT INTO `student` VALUES (365, '2012040101201', '车香玉', '2012040101201', NULL);
INSERT INTO `student` VALUES (366, '2012040101187', '周旺', '2012040101187', NULL);
INSERT INTO `student` VALUES (367, '2012040101183', '张凯', '2012040101183', NULL);
INSERT INTO `student` VALUES (368, '2012040101182', '杨英华', '2012040101182', NULL);
INSERT INTO `student` VALUES (369, '2012040101181', '徐宗亮', '2012040101181', NULL);
INSERT INTO `student` VALUES (370, '2012040101179', '王紫阳', '2012040101179', NULL);
INSERT INTO `student` VALUES (371, '2012040101177', '王昊', '2012040101177', NULL);
INSERT INTO `student` VALUES (372, '2012040101175', '孙阳健', '2012040101175', NULL);
INSERT INTO `student` VALUES (373, '2012040101171', '陆畅', '2012040101171', NULL);
INSERT INTO `student` VALUES (374, '2012040101170', '刘玉龙', '2012040101170', NULL);
INSERT INTO `student` VALUES (375, '2012040101163', '姜文奇', '2012040101163', NULL);
INSERT INTO `student` VALUES (376, '2012040101164', '金锦贵', '2012040101164', NULL);
INSERT INTO `student` VALUES (377, '2012040101165', '李世元', '2012040101165', NULL);
INSERT INTO `student` VALUES (378, '2012040101167', '李岩', '199320', NULL);
INSERT INTO `student` VALUES (379, '2012040101160', '胡广飞', '2012040101160', NULL);
INSERT INTO `student` VALUES (380, '163401050101', '钟雨晴', '506817', NULL);
INSERT INTO `student` VALUES (381, '2012040101155', '潘禹婷', '2012040101155', NULL);
INSERT INTO `student` VALUES (382, '2012040101156', '周思源', '2012040101156', NULL);
INSERT INTO `student` VALUES (383, '2012040101260', '姜经纬', '2012040101260', NULL);
INSERT INTO `student` VALUES (384, '2012040101263', '李尧', '2012040101263', NULL);
INSERT INTO `student` VALUES (385, '2012040101254', '雷雯婷', '2012040101254', NULL);
INSERT INTO `student` VALUES (386, '2012040101259', '姜德栋', 'amber120901', NULL);
INSERT INTO `student` VALUES (387, '2011040101159', '陈琛', '2011040101159', NULL);
INSERT INTO `student` VALUES (388, '2011040101177', '石龙飞', '2011040101177', NULL);
INSERT INTO `student` VALUES (389, '2011040101208', '程超', '2011040101208', NULL);
INSERT INTO `student` VALUES (390, '2012040101184', '张林菲', '2012040101184', NULL);
INSERT INTO `student` VALUES (391, '2012040101264', '刘星显', '2012040101264', NULL);
INSERT INTO `student` VALUES (392, '2012040101269', '司阳', 'sos12345', NULL);
INSERT INTO `student` VALUES (393, '2012040101166', '李亚霖', '2012040101166', NULL);
INSERT INTO `student` VALUES (394, '2013040101272', '吴辉宇', '2013040101272', NULL);
INSERT INTO `student` VALUES (395, '2013040101270', '仲崇岩', '2013040101270', NULL);
INSERT INTO `student` VALUES (396, '2013040101269', '郭佳宁', '2013040101269', NULL);
INSERT INTO `student` VALUES (397, '2013040101268', '申毅凡', '2013040101268', NULL);
INSERT INTO `student` VALUES (398, '2013040101267', '陈朋宇', '2013040101267', NULL);
INSERT INTO `student` VALUES (399, '2013040101266', '杨亚星', '2013040101266', NULL);
INSERT INTO `student` VALUES (400, '2013040101265', '刘德秋', '2013040101265', NULL);
INSERT INTO `student` VALUES (401, '2013040101263', '孙强龙', '2013040101263', NULL);
INSERT INTO `student` VALUES (402, '2013040101262', '孙书', '2013040101262', NULL);
INSERT INTO `student` VALUES (403, '2013040101260', '王秀军', '2013040101260', NULL);
INSERT INTO `student` VALUES (404, '2013040101259', '杨思琦', '2013040101259', NULL);
INSERT INTO `student` VALUES (405, '2013040101258', '张金秋', '000000000l', NULL);
INSERT INTO `student` VALUES (406, '2013040101257', '郑深予', '2013040101257', NULL);
INSERT INTO `student` VALUES (407, '2013040101256', '戎玥', '2013040101256', NULL);
INSERT INTO `student` VALUES (408, '2013040101254', '杜姗', '2013040101254', NULL);
INSERT INTO `student` VALUES (409, '2013040101252', '李杰', '2013040101252', NULL);
INSERT INTO `student` VALUES (410, '2013040101251', '张玉', '2013040101251', NULL);
INSERT INTO `student` VALUES (411, '2013040101234', '谢明峰', '2013040101234', NULL);
INSERT INTO `student` VALUES (412, '2013040101232', '方棋桢', '2013040101232', NULL);
INSERT INTO `student` VALUES (413, '2013040101231', '张天奇', '12118310', NULL);
INSERT INTO `student` VALUES (414, '2013040101230', '文世杰', '2013040101230', NULL);
INSERT INTO `student` VALUES (415, '2013040101229', '肖冉', '2013040101229', NULL);
INSERT INTO `student` VALUES (416, '2013040101228', '张远桥', '2013040101228', NULL);
INSERT INTO `student` VALUES (417, '2013040101226', '张义栋', '2013040101226', NULL);
INSERT INTO `student` VALUES (418, '2013040101225', '李维', '2013040101225', NULL);
INSERT INTO `student` VALUES (419, '2013040101224', '马钰喆', '2013040101224', NULL);
INSERT INTO `student` VALUES (420, '2013040101223', '冯鑫', '2013040101223', NULL);
INSERT INTO `student` VALUES (421, '2013040101222', '朱鹏儒', 'zpr19941025', NULL);
INSERT INTO `student` VALUES (422, '2013040101221', '杨帅', '2013040101221', NULL);
INSERT INTO `student` VALUES (423, '2013040101220', '王宇', '2013040101220', NULL);
INSERT INTO `student` VALUES (424, '2013040101219', '穆兵浩', '2013040101219', NULL);
INSERT INTO `student` VALUES (425, '2013040101218', '刘锋', '2013040101218', NULL);
INSERT INTO `student` VALUES (426, '2013040101217', '宋建军', '2013040101217', NULL);
INSERT INTO `student` VALUES (427, '2013040101216', '蔡新建', '2013040101216', NULL);
INSERT INTO `student` VALUES (428, '2013040101215', '王路', '2013040101215', NULL);
INSERT INTO `student` VALUES (429, '2013040101214', '戴维', '2013040101214', NULL);
INSERT INTO `student` VALUES (430, '2013040101212', '周洋', '2013040101212', NULL);
INSERT INTO `student` VALUES (431, '2013040101211', '李浩渊', '2013040101211', NULL);
INSERT INTO `student` VALUES (432, '2013040101210', '杨天根', '2013040101210', NULL);
INSERT INTO `student` VALUES (433, '2013040101209', '毛丽莎', '2013040101209', NULL);
INSERT INTO `student` VALUES (434, '2013040101208', '孙嘉琳', '2013040101208', NULL);
INSERT INTO `student` VALUES (435, '2013040101207', '刘婷婷', '2013040101207', NULL);
INSERT INTO `student` VALUES (436, '2013040101206', '栾雪娇', '2013040101206', NULL);
INSERT INTO `student` VALUES (437, '2013040101205', '何莎', '2013040101205', NULL);
INSERT INTO `student` VALUES (438, '2013040101201', '罗惠颖', '2013040101201', NULL);
INSERT INTO `student` VALUES (439, '2013040101202', '陈金梅', '2013040101202', NULL);
INSERT INTO `student` VALUES (440, '2013040101203', '韩金谕', '2013040101203', NULL);
INSERT INTO `student` VALUES (441, '2013040101204', '孙思', '2013040101204', NULL);
INSERT INTO `student` VALUES (442, '2012040101314', '勾廷涛', '111111', NULL);
INSERT INTO `student` VALUES (443, '2011040101211', '杜青飞', '2011040101211', NULL);
INSERT INTO `student` VALUES (444, '2013040101273', '吴飞虎', '2013040101273', NULL);
INSERT INTO `student` VALUES (445, '2013040101274', '赵国弼', '2013040101274', NULL);
INSERT INTO `student` VALUES (446, '2013040101275', '陈冠宇', '2013040101275', NULL);
INSERT INTO `student` VALUES (447, '2013040101276', '闫涛', '2013040101276', NULL);
INSERT INTO `student` VALUES (448, '2013040101277', '李金阳', '2013040101277', NULL);
INSERT INTO `student` VALUES (449, '2013040101278', '敬茂林', '159836', NULL);
INSERT INTO `student` VALUES (450, '2013040101279', '徐涛', '2013040101279', NULL);
INSERT INTO `student` VALUES (451, '2013040101281', '张檀', '2013040101281', NULL);
INSERT INTO `student` VALUES (452, '2013040101282', '包恒彬', '2013040101282', NULL);
INSERT INTO `student` VALUES (453, '2013040101283', '于翔帆', '2013040101283', NULL);
INSERT INTO `student` VALUES (454, '2012040101079', '王鹏', '2012040101079', NULL);
INSERT INTO `student` VALUES (455, '2013040101255', '邹鑫宇', '7135605', NULL);
INSERT INTO `student` VALUES (456, '2013040101271', '李嘉睿', '2013040101271', NULL);
INSERT INTO `student` VALUES (457, '2013040101280', '范迪', '2013040101280', NULL);
INSERT INTO `student` VALUES (458, '2013040101284', '季磊', '2013040101284', NULL);
INSERT INTO `student` VALUES (459, '2013040101285', '杨蜀东', '2013040101285', NULL);
INSERT INTO `student` VALUES (460, '计算机1501', '153401010105', '孟柳', NULL);
INSERT INTO `student` VALUES (461, '计算机1503', '153401010310', '翁超', NULL);
INSERT INTO `student` VALUES (462, '143401010101', '徐亚宁', 'dx15877763286', NULL);
INSERT INTO `student` VALUES (463, '08412325', '张荣博', '123456', NULL);
INSERT INTO `student` VALUES (464, '143401010102', '黄珂锐', '131496', NULL);
INSERT INTO `student` VALUES (465, '143401010103', '刘馨', 'cc820931', NULL);
INSERT INTO `student` VALUES (466, '143401010105', '周晓宇', 'yu950724', NULL);
INSERT INTO `student` VALUES (467, '143401010106', '王心恬', 'wxt13934922688', NULL);
INSERT INTO `student` VALUES (468, '143401010107', '刘珊珊', '1213402X', NULL);
INSERT INTO `student` VALUES (469, '143401010108', '蒋王震', '143401010108', NULL);
INSERT INTO `student` VALUES (470, '143401010109', '方宇', 'fy651267', NULL);
INSERT INTO `student` VALUES (471, '143401010111', '张波', 'zhbo971117', NULL);
INSERT INTO `student` VALUES (472, '143401010112', '梁煜其', 'lyq123', NULL);
INSERT INTO `student` VALUES (473, '143401010113', '李泽', '143401010113', NULL);
INSERT INTO `student` VALUES (474, '143401010114', '亢建强', 'qq2575032083', NULL);
INSERT INTO `student` VALUES (475, '143401010115', '贾猛', 'ning10058037', NULL);
INSERT INTO `student` VALUES (476, '143401010116', '刘文祥', '960310', NULL);
INSERT INTO `student` VALUES (477, '143401010117', '乔闯', 'qc000000', NULL);
INSERT INTO `student` VALUES (478, '143401010119', '赵耀', '123580', NULL);
INSERT INTO `student` VALUES (479, '143401010120', '黄明帅', '1995', NULL);
INSERT INTO `student` VALUES (480, '143401010121', '杨仁波', 'RENBO1994', NULL);
INSERT INTO `student` VALUES (481, '143401010122', '孙一铭', '11180919', NULL);
INSERT INTO `student` VALUES (482, '143401010123', '陈天毅', '19960907ctyd!@@', NULL);
INSERT INTO `student` VALUES (483, '143401010124', '李云龙', '143401010124', NULL);
INSERT INTO `student` VALUES (484, '143401010125', '杨旭', '143401010125', NULL);
INSERT INTO `student` VALUES (485, '143401010126', '姚欢', 'yaohuan520123456', NULL);
INSERT INTO `student` VALUES (486, '143401010127', '李洋洋', '143401010127', NULL);
INSERT INTO `student` VALUES (487, '143401010128', '骈瑞杰', '08251633', NULL);
INSERT INTO `student` VALUES (488, '143401010129', '石欣伟', '5323ls', NULL);
INSERT INTO `student` VALUES (489, '143401010130', '张明智', '806974043', NULL);
INSERT INTO `student` VALUES (490, '143401010131', '王曦霆', '10070313', NULL);
INSERT INTO `student` VALUES (491, '143401010132', '李鹏霖', 'a13942518896', NULL);
INSERT INTO `student` VALUES (492, '143401010133', '王竞韬', 'Asd310859535', NULL);
INSERT INTO `student` VALUES (493, '2012040101021', '马长羽', '123456', NULL);
INSERT INTO `student` VALUES (494, '143401010201', '焦倩倩', '10270551', NULL);
INSERT INTO `student` VALUES (495, '143401010202', '王明真', 'aiye701107', NULL);
INSERT INTO `student` VALUES (496, '143401010203', '潘子帅', '961011', NULL);
INSERT INTO `student` VALUES (497, '143401010204', '高扬', 'gaoyang19961028', NULL);
INSERT INTO `student` VALUES (498, '143401010205', '黄玥', '143401010205', NULL);
INSERT INTO `student` VALUES (499, '143401010206', '孟相旭', '951116', NULL);
INSERT INTO `student` VALUES (500, '143401010207', '王丹', '143401010207', NULL);
INSERT INTO `student` VALUES (501, '143401010208', '曹碧碧', 'a13856706025', NULL);
INSERT INTO `student` VALUES (502, '143401010210', '王月雨', '950208', NULL);
INSERT INTO `student` VALUES (503, '143401010211', '高宇轩', '143401010211', NULL);
INSERT INTO `student` VALUES (504, '143401010212', '杨岩', 'yy520921', NULL);
INSERT INTO `student` VALUES (505, '143401010213', '孙小平', '123456', NULL);
INSERT INTO `student` VALUES (506, '143401010214', '赵恒泰', '0okm9ijn8uhb', NULL);
INSERT INTO `student` VALUES (507, '143401010215', '陈旗召', '123886', NULL);
INSERT INTO `student` VALUES (508, '143401010217', '杨晓帅', '10270551', NULL);
INSERT INTO `student` VALUES (509, '143401010218', '徐青松', 'xqs963852', NULL);
INSERT INTO `student` VALUES (510, '143401010219', '王磊', '1995', NULL);
INSERT INTO `student` VALUES (511, '143401010220', '单正华', '15804089907', NULL);
INSERT INTO `student` VALUES (512, '143401010221', '陈乐云', '03240037', NULL);
INSERT INTO `student` VALUES (513, '143401010222', '张帆', '849489782', NULL);
INSERT INTO `student` VALUES (514, '143401010223', '曲昌昊', 'zxy521', NULL);
INSERT INTO `student` VALUES (515, '143401010224', '高振超', '143401010224', NULL);
INSERT INTO `student` VALUES (516, '143401010225', '宋丰年', 'sfn941201', NULL);
INSERT INTO `student` VALUES (517, '143401010226', '程浩', 'ch521314', NULL);
INSERT INTO `student` VALUES (518, '143401010228', '荣富成', '2351187620', NULL);
INSERT INTO `student` VALUES (519, '143401010229', '谢园', 'love249454', NULL);
INSERT INTO `student` VALUES (520, '143401010231', '李保', 'TBMKLB', NULL);
INSERT INTO `student` VALUES (521, '143401010232', '关宇生', 'asdasd123', NULL);
INSERT INTO `student` VALUES (522, '143401010233', '徐晓飞', '1434010102', NULL);
INSERT INTO `student` VALUES (523, '2013040101077', '韩昊天', '2013040101077', NULL);
INSERT INTO `student` VALUES (524, '143401010301', '王璐', '143401010301', NULL);
INSERT INTO `student` VALUES (525, '143401010302', '张玉', '5548496320301', NULL);
INSERT INTO `student` VALUES (526, '143401010303', '王林峰', 'wanglinfeng', NULL);
INSERT INTO `student` VALUES (527, '143401010304', '程嘉鑫', '143401010304', NULL);
INSERT INTO `student` VALUES (528, '143401010305', '赵云鸽', '729685', NULL);
INSERT INTO `student` VALUES (529, '143401010306', '杨建华', '00003789yang', NULL);
INSERT INTO `student` VALUES (530, '143401010307', '牟鑫明', '5257family', NULL);
INSERT INTO `student` VALUES (531, '143401010308', '祝良海', '143401010308', NULL);
INSERT INTO `student` VALUES (532, '143401010309', '谢雨豪', 'xyh123', NULL);
INSERT INTO `student` VALUES (533, '143401010310', '李泽阳', '11033012', NULL);
INSERT INTO `student` VALUES (534, '143401010311', '林锦洲', '26401500', NULL);
INSERT INTO `student` VALUES (535, '143401010313', '胡永发', '143401010313', NULL);
INSERT INTO `student` VALUES (536, '143401010314', '张雁博', '143401010314zyb', NULL);
INSERT INTO `student` VALUES (537, '143401010315', '熊高远', 'DASH392291803', NULL);
INSERT INTO `student` VALUES (538, '143401010316', '曾洪鑫', '143401010316', NULL);
INSERT INTO `student` VALUES (539, '143401010317', '骆成利', '143401010317', NULL);
INSERT INTO `student` VALUES (540, '143401010318', '彭俊涛', '143401010318', NULL);
INSERT INTO `student` VALUES (541, '143401010319', '薛冬', '143401010319', NULL);
INSERT INTO `student` VALUES (542, '143401010320', '季城宇', '1178130226', NULL);
INSERT INTO `student` VALUES (543, '143401010321', '杨建宇', 'yjy143401010321', NULL);
INSERT INTO `student` VALUES (544, '143401010322', '甘盛岐', '143401010322', NULL);
INSERT INTO `student` VALUES (545, '143401010323', '李旭', '143401010323', NULL);
INSERT INTO `student` VALUES (546, '143401010324', '孙唱', '143401010324', NULL);
INSERT INTO `student` VALUES (547, '143401010325', '张玉川', '143401010325', NULL);
INSERT INTO `student` VALUES (548, '143401010326', '王志东', '143401010326', NULL);
INSERT INTO `student` VALUES (549, '143401010327', '王常辉', '143401010327', NULL);
INSERT INTO `student` VALUES (550, '143401010329', '刘阳', '143401010329', NULL);
INSERT INTO `student` VALUES (551, '143401010330', '陶继康', '111111', NULL);
INSERT INTO `student` VALUES (552, '143401010332', '刘明也', '820141', NULL);
INSERT INTO `student` VALUES (553, '143401010333', '赫智明', '143401010333', NULL);
INSERT INTO `student` VALUES (554, '2013040101128', '谢伟', '2013040101128', NULL);
INSERT INTO `student` VALUES (555, '2013040101134', '刘泽良', '2013040101134', NULL);
INSERT INTO `student` VALUES (556, '2013040101135', '彭扬阳', '2013040101135', NULL);
INSERT INTO `student` VALUES (557, '143401010402', '曾春', '143401010402', NULL);
INSERT INTO `student` VALUES (558, '143401010403', '牟羽', '08222313', NULL);
INSERT INTO `student` VALUES (559, '143401010404', '袁雅婷', '143401010404', NULL);
INSERT INTO `student` VALUES (560, '143401010405', '张斌斌', 'PASSWORDnmb0909', NULL);
INSERT INTO `student` VALUES (561, '143401010407', '白晓琪', '07070822', NULL);
INSERT INTO `student` VALUES (562, '143401010408', '吴阳', '143401010408', NULL);
INSERT INTO `student` VALUES (563, '143401010409', '黄伟', 'Hw123456', NULL);
INSERT INTO `student` VALUES (564, '143401010410', '尤游', 'yoyomyth960822', NULL);
INSERT INTO `student` VALUES (565, '143401010412', '彭雪峰', '143401010412', NULL);
INSERT INTO `student` VALUES (566, '143401010413', '余浩', 'yuhaoyuye', NULL);
INSERT INTO `student` VALUES (567, '143401010414', '张慧鑫', '18204043377', NULL);
INSERT INTO `student` VALUES (568, '143401010415', '王向阳', '1434010104', NULL);
INSERT INTO `student` VALUES (569, '143401010416', '孙闯', '143401010416', NULL);
INSERT INTO `student` VALUES (570, '143401010417', '张思睿', '02223760860', NULL);
INSERT INTO `student` VALUES (571, '143401010418', '张元爽', '143401010418', NULL);
INSERT INTO `student` VALUES (572, '143401010419', '马啸天', '928715', NULL);
INSERT INTO `student` VALUES (573, '143401010420', '田嘉文', '143401010420', NULL);
INSERT INTO `student` VALUES (574, '143401010421', '张国庆', 'guoqing', NULL);
INSERT INTO `student` VALUES (575, '143401010422', '涂杨', '143401010422', NULL);
INSERT INTO `student` VALUES (576, '143401010423', '于勤操', 'liu123456', NULL);
INSERT INTO `student` VALUES (577, '143401010424', '王海汀', 'wht19960219', NULL);
INSERT INTO `student` VALUES (578, '143401010425', '李鑫', '143401010425', NULL);
INSERT INTO `student` VALUES (579, '143401010426', '郭星辰', '19950609GXC', NULL);
INSERT INTO `student` VALUES (580, '143401010427', '夏国平', '19941015', NULL);
INSERT INTO `student` VALUES (581, '143401010428', '张航', 'zhh1995314', NULL);
INSERT INTO `student` VALUES (582, '143401010429', '刘羽霏', '11190909', NULL);
INSERT INTO `student` VALUES (583, '143401010430', '霍思通', 'pxy19960928', NULL);
INSERT INTO `student` VALUES (584, '143401010432', '张旭', 'zx53374881', NULL);
INSERT INTO `student` VALUES (585, '143401010433', '赵峻', '143401010433', NULL);
INSERT INTO `student` VALUES (586, '143401010434', '杨浩', '143401010434', NULL);
INSERT INTO `student` VALUES (587, '143401010501', '曹瑞', '2461380239', NULL);
INSERT INTO `student` VALUES (588, '143401010502', '王娇', '143401010520', NULL);
INSERT INTO `student` VALUES (589, '143401010503', '宋金', 'ymlkw520520', NULL);
INSERT INTO `student` VALUES (590, '143401010504', '李嘉琪', 'lijiaqi', NULL);
INSERT INTO `student` VALUES (591, '143401010505', '孙悦', '12255346123', NULL);
INSERT INTO `student` VALUES (592, '143401010506', '彭博', '11292020pb', NULL);
INSERT INTO `student` VALUES (593, '143401010507', '孙佳丽', '960305', NULL);
INSERT INTO `student` VALUES (594, '143401010508', '姜懿芙', 'jyf19961521.', NULL);
INSERT INTO `student` VALUES (595, '143401010509', '李曌', '19960214', NULL);
INSERT INTO `student` VALUES (596, '143401010510', '罗松', '143401010510', NULL);
INSERT INTO `student` VALUES (597, '143401010511', '李强胜', '000000', NULL);
INSERT INTO `student` VALUES (598, '143401010512', '张书逸', '143401010512', NULL);
INSERT INTO `student` VALUES (599, '143401010513', '李栎', '143401010513', NULL);
INSERT INTO `student` VALUES (600, '143401010514', '王晓华', '143401010514', NULL);
INSERT INTO `student` VALUES (601, '143401010515', '武建新', '12254510', NULL);
INSERT INTO `student` VALUES (602, '143401010516', '徐建磊', '147258', NULL);
INSERT INTO `student` VALUES (603, '143401010517', '许博文', 'xubowen0822A', NULL);
INSERT INTO `student` VALUES (604, '143401010518', '韩冰', 'xiaohan-960928', NULL);
INSERT INTO `student` VALUES (605, '143401010519', '郦铸辉', '143401010519', NULL);
INSERT INTO `student` VALUES (606, '143401010520', '王浩', '124947', NULL);
INSERT INTO `student` VALUES (607, '143401010521', '凌霄', '143401010521', NULL);
INSERT INTO `student` VALUES (608, '143401010522', '阎德宽', '1574565658', NULL);
INSERT INTO `student` VALUES (609, '143401010523', '宋栿尧', '19951014', NULL);
INSERT INTO `student` VALUES (610, '143401010524', '孙玉', 'sy123456', NULL);
INSERT INTO `student` VALUES (611, '143401010525', '王香友', 'x123456789', NULL);
INSERT INTO `student` VALUES (612, '143401010526', '岳洋', 'Yjr5211314', NULL);
INSERT INTO `student` VALUES (613, '143401010527', '李良伟', '143401010527', NULL);
INSERT INTO `student` VALUES (614, '143401010528', '张天舒', 'wszy1026', NULL);
INSERT INTO `student` VALUES (615, '143401010531', '孙健', '5223280123', NULL);
INSERT INTO `student` VALUES (616, '143401010532', '曹春润', '143401010532', NULL);
INSERT INTO `student` VALUES (617, '143401010533', '闵际达', '143401010533', NULL);
INSERT INTO `student` VALUES (618, '143401010534', '李柏强', '143401010534', NULL);
INSERT INTO `student` VALUES (619, '143401050101', '蒋文艺', '199803JWY', NULL);
INSERT INTO `student` VALUES (620, '143401050102', '胡佳慧', '143401050102', NULL);
INSERT INTO `student` VALUES (621, '143401050103', '乔超楠', '123456', NULL);
INSERT INTO `student` VALUES (622, '143401050104', '邹艳秋', '143401050104', NULL);
INSERT INTO `student` VALUES (623, '143401050105', '宋若仙', '19960904MNBV', NULL);
INSERT INTO `student` VALUES (624, '143401050106', '刘丽鑫', '143401050106', NULL);
INSERT INTO `student` VALUES (625, '143401050107', '吕倩倩', '143401050107', NULL);
INSERT INTO `student` VALUES (626, '143401050108', '赵双', 'zsggsddu', NULL);
INSERT INTO `student` VALUES (627, '143401050109', '刘瑶', '46212109', NULL);
INSERT INTO `student` VALUES (628, '143401050110', '杨淼', '143401050110', NULL);
INSERT INTO `student` VALUES (629, '143401050111', '马思雨', 'jsj627498', NULL);
INSERT INTO `student` VALUES (630, '143401050112', '胡贺光', 'wo9420..', NULL);
INSERT INTO `student` VALUES (631, '143401050113', '李金毅', '143401050113', NULL);
INSERT INTO `student` VALUES (632, '143401050114', '杨海青', '646721', NULL);
INSERT INTO `student` VALUES (633, '143401050115', '庄高航', '537896zf', NULL);
INSERT INTO `student` VALUES (634, '143401050116', '赵猛', 'zm948767691', NULL);
INSERT INTO `student` VALUES (635, '143401050117', '刘金铭', '143401050117', NULL);
INSERT INTO `student` VALUES (636, '143401050118', '杨传业', '143401050118', NULL);
INSERT INTO `student` VALUES (637, '143401050119', '陈志祥', 'abc123456', NULL);
INSERT INTO `student` VALUES (638, '143401050120', '白新华', 'bxh123456', NULL);
INSERT INTO `student` VALUES (639, '143401050123', '丁彩胤', '01143401050123', NULL);
INSERT INTO `student` VALUES (640, '143401050124', '于毅', '090600', NULL);
INSERT INTO `student` VALUES (641, '143401050125', '李宇轩', '143401050125', NULL);
INSERT INTO `student` VALUES (642, '143401050126', '王绪锐', 'mygodfaker.', NULL);
INSERT INTO `student` VALUES (643, '143401050127', '李岩康', '143401050127', NULL);
INSERT INTO `student` VALUES (644, '143401050128', '周广义', 'ZHGYDEM1MA', NULL);
INSERT INTO `student` VALUES (645, '143401050129', '王茂强', '960506', NULL);
INSERT INTO `student` VALUES (646, '143401050130', '曲世顺', '10241813', NULL);
INSERT INTO `student` VALUES (647, '143401050131', '陈佳泽', '143401050131', NULL);
INSERT INTO `student` VALUES (648, '143401050132', '高一鸣', '02253210', NULL);
INSERT INTO `student` VALUES (649, '143401050133', '郭东成', 'g79160252', NULL);
INSERT INTO `student` VALUES (650, '143401050134', '高洪伟', 'benben21', NULL);
INSERT INTO `student` VALUES (651, '143401050135', '佟昱霖', '143401050135', NULL);
INSERT INTO `student` VALUES (652, '143401040101', '袁淑琴', '143401040101', NULL);
INSERT INTO `student` VALUES (653, '143401040102', '李媛媛', '143401040102', NULL);
INSERT INTO `student` VALUES (654, '143401040103', '陈明', 'chenming3152876', NULL);
INSERT INTO `student` VALUES (655, '143401040104', '许世惠', '143401040104', NULL);
INSERT INTO `student` VALUES (656, '143401040105', '赵晶', 'zhao217929', NULL);
INSERT INTO `student` VALUES (657, '143401040106', '李明熹', '143401040106', NULL);
INSERT INTO `student` VALUES (658, '143401040107', '巩天瑶', '19961011521gty', NULL);
INSERT INTO `student` VALUES (659, '143401040108', '郭婷', 'GT19951214', NULL);
INSERT INTO `student` VALUES (660, '143401040109', '王欣瑶', 'wangxinyao2018', NULL);
INSERT INTO `student` VALUES (661, '143401040110', '雍笑盈', '145236', NULL);
INSERT INTO `student` VALUES (662, '143401040111', '王晓红', 'wxh941125', NULL);
INSERT INTO `student` VALUES (663, '143401040112', '王馨悦', 'yueyuejiayou818', NULL);
INSERT INTO `student` VALUES (664, '143401040113', '李雪玉', '9503093644', NULL);
INSERT INTO `student` VALUES (665, '143401040114', '杨莹莹', '143401040114', NULL);
INSERT INTO `student` VALUES (666, '143401040115', '姜梦媛', 'bETTER.9', NULL);
INSERT INTO `student` VALUES (667, '143401040116', '汪敏新', '111111', NULL);
INSERT INTO `student` VALUES (668, '143401040117', '方鹏', '123456', NULL);
INSERT INTO `student` VALUES (669, '143401040118', '甘天灿', '143401040118', NULL);
INSERT INTO `student` VALUES (670, '143401040120', '刘子杰', 'LIU19970530', NULL);
INSERT INTO `student` VALUES (671, '143401040121', '任成清', '03311912', NULL);
INSERT INTO `student` VALUES (672, '143401040122', '周博孝', 'a1533880208', NULL);
INSERT INTO `student` VALUES (673, '143401040123', '郭亮', 'GUOLIANG', NULL);
INSERT INTO `student` VALUES (674, '143401040124', '边朕仡', 'bzymy5218..', NULL);
INSERT INTO `student` VALUES (675, '143401040125', '李家名', 'ljm1996m', NULL);
INSERT INTO `student` VALUES (676, '143401040127', '李明睿', '143401040127', NULL);
INSERT INTO `student` VALUES (677, '143401040129', '亓俣权', '143401040129', NULL);
INSERT INTO `student` VALUES (678, '143401040130', '马郡泽', 'majunze', NULL);
INSERT INTO `student` VALUES (679, '143401040131', '于洋', '143401040131', NULL);
INSERT INTO `student` VALUES (680, '143401040132', '刘宏哲', '03168219', NULL);
INSERT INTO `student` VALUES (681, '143401040133', '万致宏', '143401040133', NULL);
INSERT INTO `student` VALUES (682, '143401040134', '陈昊楠', 'CCsm1315', NULL);
INSERT INTO `student` VALUES (683, '143401040135', '钟诗瑫', '143401040135', NULL);
INSERT INTO `student` VALUES (684, '2013040102032', '刘雨衡', '2013040102032', NULL);
INSERT INTO `student` VALUES (685, '143401040201', '李俐颖', 'lh640328', NULL);
INSERT INTO `student` VALUES (686, '143401040203', '栾佳宇', 'qweasd', NULL);
INSERT INTO `student` VALUES (687, '143401040204', '张雪童', '143401040204', NULL);
INSERT INTO `student` VALUES (688, '143401040205', '胡益华', 'hua970110', NULL);
INSERT INTO `student` VALUES (689, '143401040206', '齐芮同', 'ningmeng8', NULL);
INSERT INTO `student` VALUES (690, '143401040207', '沈傲', '143401040207', NULL);
INSERT INTO `student` VALUES (691, '143401040208', '门雪', '143401040208', NULL);
INSERT INTO `student` VALUES (692, '143401040209', '杨凯淇', '02181822', NULL);
INSERT INTO `student` VALUES (693, '143401040210', '王萌萌', '2334752.3540', NULL);
INSERT INTO `student` VALUES (694, '143401040211', '李月红', '143401040211', NULL);
INSERT INTO `student` VALUES (695, '143401040212', '时雅鑫', 'syx19970423*', NULL);
INSERT INTO `student` VALUES (696, '143401040213', '郝虹阳', 'hhy1018', NULL);
INSERT INTO `student` VALUES (697, '143401040214', '胡启蕃', 'huqifan', NULL);
INSERT INTO `student` VALUES (698, '143401040215', '孙秀梅', '143401040215', NULL);
INSERT INTO `student` VALUES (699, '143401040216', '马坚', '143401040216', NULL);
INSERT INTO `student` VALUES (700, '143401040218', '龚海', '199508', NULL);
INSERT INTO `student` VALUES (701, '143401040219', '胡从刚', 'hcg1994428', NULL);
INSERT INTO `student` VALUES (702, '143401040220', '袁荐青', 'yJq1996129', NULL);
INSERT INTO `student` VALUES (703, '143401040221', '常家兴', '04301510', NULL);
INSERT INTO `student` VALUES (704, '143401040222', '何孝瀚', '13032503272', NULL);
INSERT INTO `student` VALUES (705, '143401040223', '邓玉铎', 'dengyuduo0205', NULL);
INSERT INTO `student` VALUES (706, '143401040224', '王昱凯', '08223011', NULL);
INSERT INTO `student` VALUES (707, '143401040225', '马浩轩', '741362322472415', NULL);
INSERT INTO `student` VALUES (708, '143401040226', '张云鹏', '201308252354', NULL);
INSERT INTO `student` VALUES (709, '143401040227', '李昕竺', 'lxz2898989', NULL);
INSERT INTO `student` VALUES (710, '143401040228', '陈晟柬', 'csj19950603', NULL);
INSERT INTO `student` VALUES (711, '143401040229', '赵新铭', '04070633', NULL);
INSERT INTO `student` VALUES (712, '143401040230', '翟禹龙', 'long73244804', NULL);
INSERT INTO `student` VALUES (713, '143401040231', '牛牧天', '199628tt', NULL);
INSERT INTO `student` VALUES (714, '143401040232', '孙浩凯', '123456', NULL);
INSERT INTO `student` VALUES (715, '143401040233', '白宁', '4841bn1613', NULL);
INSERT INTO `student` VALUES (716, '143401040234', '刘峥', '(liuzheng)2318', NULL);
INSERT INTO `student` VALUES (717, '2013040102069', '李匀程', '2013040102069', NULL);
INSERT INTO `student` VALUES (718, '2013040102077', '王国建', '2013040102077', NULL);
INSERT INTO `student` VALUES (719, '2013040102080', '王凤武', '2013040102080', NULL);
INSERT INTO `student` VALUES (720, '143401060101', '黄雪茵', '159357', NULL);
INSERT INTO `student` VALUES (721, '143401060102', '朱文文', '1919827837', NULL);
INSERT INTO `student` VALUES (722, '143401060103', '张玉洁', '143401060103', NULL);
INSERT INTO `student` VALUES (723, '143401060104', '谢延延', '19951028', NULL);
INSERT INTO `student` VALUES (724, '143401060105', '刘嘉梦', '143401060105', NULL);
INSERT INTO `student` VALUES (725, '143401060106', '郭紫月', '13664131663', NULL);
INSERT INTO `student` VALUES (726, '143401060107', '李亚楠', '143401060107', NULL);
INSERT INTO `student` VALUES (727, '143401060108', '刘梓琳', '143401060108', NULL);
INSERT INTO `student` VALUES (728, '143401060109', '金伟峰', '143401060109', NULL);
INSERT INTO `student` VALUES (729, '143401060110', '宿坤福', '02204816', NULL);
INSERT INTO `student` VALUES (730, '143401060111', '杨照荣', '143401060111', NULL);
INSERT INTO `student` VALUES (731, '143401060112', '张庆友', '02057192', NULL);
INSERT INTO `student` VALUES (732, '143401060113', '麻可可', 'mk928124', NULL);
INSERT INTO `student` VALUES (733, '143401060115', '郑诩川', '143401060115', NULL);
INSERT INTO `student` VALUES (734, '143401060116', '李东政', '19941116', NULL);
INSERT INTO `student` VALUES (735, '143401060117', '周正强', '143401060117', NULL);
INSERT INTO `student` VALUES (736, '143401060118', '张凌云', '143401060118', NULL);
INSERT INTO `student` VALUES (737, '143401060120', '陈紫宇', '143401060120', NULL);
INSERT INTO `student` VALUES (738, '143401060121', '李德霖', 'lee940322', NULL);
INSERT INTO `student` VALUES (739, '143401060122', '王皓冉', '18842317880', NULL);
INSERT INTO `student` VALUES (740, '143401060123', '张春阳', 'zcy3110', NULL);
INSERT INTO `student` VALUES (741, '143401060124', '孙笛宇', '143401060124', NULL);
INSERT INTO `student` VALUES (742, '143401060125', '王德辉', 'wang199601', NULL);
INSERT INTO `student` VALUES (743, '143401060126', '周钰程', '88781392', NULL);
INSERT INTO `student` VALUES (744, '143401060127', '王永强', '4216wyq', NULL);
INSERT INTO `student` VALUES (745, '143401060128', '王奂清', '674157512', NULL);
INSERT INTO `student` VALUES (746, '143401060129', '任世成', 'wjl19941222', NULL);
INSERT INTO `student` VALUES (747, '143401060130', '邓尚坤', '143401060130', NULL);
INSERT INTO `student` VALUES (748, '143401060131', '唐成航', '143401060131', NULL);
INSERT INTO `student` VALUES (749, '143401060132', '陈睿奇', '143401060132', NULL);
INSERT INTO `student` VALUES (750, '143401060133', '严靖平', '143401060133', NULL);
INSERT INTO `student` VALUES (751, '143401060134', '许霄涵', '150874', NULL);
INSERT INTO `student` VALUES (752, '143401060135', '赵晟钰', '961129', NULL);
INSERT INTO `student` VALUES (753, '143401060136', '周昌洋', '143401060136', NULL);
INSERT INTO `student` VALUES (754, '143401060137', '卢致刚', 'ABC1234567891812', NULL);
INSERT INTO `student` VALUES (755, '__backend_user__c001', '助教1', '9f32ef87e1d85f411d80e7b14bea2a42', NULL);
INSERT INTO `student` VALUES (756, '2012040101112', '揭浪', '2012040101112', NULL);
INSERT INTO `student` VALUES (757, '2012040101118', '马龙', '2012040101118', NULL);
INSERT INTO `student` VALUES (758, '2011040101014', '黄殿鑫', '2011040101014', NULL);
INSERT INTO `student` VALUES (759, '2013040101057', '崔松杰', '2013040101057', NULL);
INSERT INTO `student` VALUES (760, '2012040101128', '吴希尧', 'w10060', NULL);
INSERT INTO `student` VALUES (761, '2013040101028', '徐宏磊', '2013040101028', NULL);
INSERT INTO `student` VALUES (762, '2013040101069', '孙煜佳', '2013040101069', NULL);
INSERT INTO `student` VALUES (763, '2012040101032', '于浩', '2012040101032', NULL);
INSERT INTO `student` VALUES (764, '2012040101216', '李玉纯', '2012040101216', NULL);
INSERT INTO `student` VALUES (765, '2012040101235', '张庭飞', '2012040101235', NULL);
INSERT INTO `student` VALUES (766, '2011040101139', '邹黎', 'zouli630308', NULL);
INSERT INTO `student` VALUES (767, '2012040101125', '孙辉', '2012040101125', NULL);
INSERT INTO `student` VALUES (768, '2012040101209', '陈涛', '2012040101209', NULL);
INSERT INTO `student` VALUES (769, '2012040101102', '李楠楠', '2012040101102', NULL);
INSERT INTO `student` VALUES (770, '__backend_user__20140049', '李佳佳', '545c91c2ab1c3fa63ecd6495eb347b88', NULL);
INSERT INTO `student` VALUES (771, '2012040101007', '张新敏', '2012040101007', NULL);
INSERT INTO `student` VALUES (772, '2012040101023', '宋国鹏', '2012040101023', NULL);
INSERT INTO `student` VALUES (773, '2012040101230', '王豪', 'whde12580', NULL);
INSERT INTO `student` VALUES (774, '2012040101060', '胡正扬', '1994710', NULL);
INSERT INTO `student` VALUES (775, '2012040101062', '姜治昊', '2012040101062', NULL);
INSERT INTO `student` VALUES (776, '2012040101064', '焦童', '2012040101064', NULL);
INSERT INTO `student` VALUES (777, '2012040101065', '解义斌', '2012040101065', NULL);
INSERT INTO `student` VALUES (778, '2012040101066', '景楷楠', '2012040101066', NULL);
INSERT INTO `student` VALUES (779, '2012040101067', '兰洋', '2012040101067', NULL);
INSERT INTO `student` VALUES (780, '2012040101068', '李基杲', '2012040101068', NULL);
INSERT INTO `student` VALUES (781, '2012040101069', '李明明', '2012040101069', NULL);
INSERT INTO `student` VALUES (782, '2012040101070', '梁程', 'lth19930130', NULL);
INSERT INTO `student` VALUES (783, '2012040101071', '刘俊伯', '2012040101071', NULL);
INSERT INTO `student` VALUES (784, '2012040101072', '刘凯宇', 'liukaiyu123456', NULL);
INSERT INTO `student` VALUES (785, '2012040101077', '田嘉欣', '2012040101077', NULL);
INSERT INTO `student` VALUES (786, '2012040101078', '王德胜', '2012040101078', NULL);
INSERT INTO `student` VALUES (787, '2012040101081', '殷昕旺', '2012040101081', NULL);
INSERT INTO `student` VALUES (788, '2012040101084', '袁烁', 'ys9527', NULL);
INSERT INTO `student` VALUES (789, '2012040101087', '邹健健', '2012040101087', NULL);
INSERT INTO `student` VALUES (790, '2012040101104', '谭梦蝶', '2012040101104', NULL);
INSERT INTO `student` VALUES (791, '2012040101109', '郭凤堂', '2012040101109', NULL);
INSERT INTO `student` VALUES (792, '2012040101110', '郭昱宇', '2012040101110', NULL);
INSERT INTO `student` VALUES (793, '2012040101111', '何建霆', '2012040101111', NULL);
INSERT INTO `student` VALUES (794, '2012040101114', '梁福晨', '2012040101114', NULL);
INSERT INTO `student` VALUES (795, '2012040101120', '牛报', '2012040101120', NULL);
INSERT INTO `student` VALUES (796, '2012040101122', '秦耕', '2012040101122', NULL);
INSERT INTO `student` VALUES (797, '2012040101123', '任金波', 'rjb0121', NULL);
INSERT INTO `student` VALUES (798, '2012040101127', '王庆贺', '2012040101127', NULL);
INSERT INTO `student` VALUES (799, '2012040101130', '辛得玉', '2012040101130', NULL);
INSERT INTO `student` VALUES (800, '2012040101131', '续振涛', '2012040101131', NULL);
INSERT INTO `student` VALUES (801, '2012040101134', '张强', 'zdq0523', NULL);
INSERT INTO `student` VALUES (802, '2012040101017', '金福鹏', '2012040101017', NULL);
INSERT INTO `student` VALUES (803, '2012040101058', '曹原丰', '2012040101058', NULL);
INSERT INTO `student` VALUES (804, '2012040101083', '于磊', '2012040101083', NULL);
INSERT INTO `student` VALUES (805, '2012040101220', '刘振华', '2012040101220', NULL);
INSERT INTO `student` VALUES (806, '2012040101116', '刘朔', '123456', NULL);
INSERT INTO `student` VALUES (807, '2012040101119', '马旭', '2012040101119', NULL);
INSERT INTO `student` VALUES (808, '143401050122', '金彦圳', '5xifan1wr', NULL);
INSERT INTO `student` VALUES (809, '12345678', '教师公共测试帐号', '12345678', NULL);
INSERT INTO `student` VALUES (810, '2011040101122', '栾佳才', '123456', NULL);
INSERT INTO `student` VALUES (811, '153401060101', '张雯茜', 'zhwq1012', NULL);
INSERT INTO `student` VALUES (812, '153401060102', '周梓童', 'lucky00', NULL);
INSERT INTO `student` VALUES (813, '153401060103', '贾艳枫', '135696zb', NULL);
INSERT INTO `student` VALUES (814, '153401060104', '姚宗琦', '1230321022', NULL);
INSERT INTO `student` VALUES (815, '153401060105', '张银', 'zy19951021', NULL);
INSERT INTO `student` VALUES (816, '153401060106', '谭宇茹', '19971060888ZY', NULL);
INSERT INTO `student` VALUES (817, '153401060107', '于颜菲', 'yjm1996...', NULL);
INSERT INTO `student` VALUES (818, '153401060108', '沙明瑞', 'beyourselfsmr', NULL);
INSERT INTO `student` VALUES (819, '153401060109', '赵晓雪', 'xiaoxue110', NULL);
INSERT INTO `student` VALUES (820, '153401060110', '杨丹', 'abcde123456789.', NULL);
INSERT INTO `student` VALUES (821, '153401060111', '莫傲', 'ILYIverson,AB', NULL);
INSERT INTO `student` VALUES (822, '153401060112', '杨双松', '1546166201', NULL);
INSERT INTO `student` VALUES (823, '153401060113', '杨毅', '1997518412yy', NULL);
INSERT INTO `student` VALUES (824, '153401060114', '李彬', 'lbyq123456', NULL);
INSERT INTO `student` VALUES (825, '153401060115', '李军', '602531', NULL);
INSERT INTO `student` VALUES (826, '153401060116', '尹中康', 'zhongkang12345', NULL);
INSERT INTO `student` VALUES (827, '153401060117', '李鹏浩', 'li4691248638', NULL);
INSERT INTO `student` VALUES (828, '153401060118', '马浩', 'ma3839', NULL);
INSERT INTO `student` VALUES (829, '2013040102026', '李禹锋', '2013040102026', NULL);
INSERT INTO `student` VALUES (830, '153401060120', '李廉哲', '135696zb', NULL);
INSERT INTO `student` VALUES (831, '2012040101080', '吴卓', '787918', NULL);
INSERT INTO `student` VALUES (832, '153401060123', '顾聪', '12282514', NULL);
INSERT INTO `student` VALUES (833, '153401060124', '封其学', '961031', NULL);
INSERT INTO `student` VALUES (834, '153401060125', '巴德福', '123456', NULL);
INSERT INTO `student` VALUES (835, '153401060126', '顾梓钰', '960512', NULL);
INSERT INTO `student` VALUES (836, '153401060127', '张紫睿', '07213017', NULL);
INSERT INTO `student` VALUES (837, '153401060128', '何佳蔚', '353620890', NULL);
INSERT INTO `student` VALUES (838, '153401060129', '郑旋', '191954ZX', NULL);
INSERT INTO `student` VALUES (839, '153401060130', '梁润东', '1879795', NULL);
INSERT INTO `student` VALUES (840, '153401060134', '丁健恒', '12253516', NULL);
INSERT INTO `student` VALUES (841, '153401060135', '杨文程', 'ywc199712', NULL);
INSERT INTO `student` VALUES (842, '153401010102', '孟鲜鲜', '070781821', NULL);
INSERT INTO `student` VALUES (843, '153401010104', '王宁', '02197228', NULL);
INSERT INTO `student` VALUES (844, '153401010105', '孟柳', 'woshinvshen521', NULL);
INSERT INTO `student` VALUES (845, '153401010106', '胡泊', '153401010100', NULL);
INSERT INTO `student` VALUES (846, '153401010107', '刘子君', 'lzj740322', NULL);
INSERT INTO `student` VALUES (847, '153401010108', '吕晓云', 'l123456', NULL);
INSERT INTO `student` VALUES (848, '153401010109', '金姝含', '153401010109', NULL);
INSERT INTO `student` VALUES (849, '153401010110', '冯玉正', '19970805', NULL);
INSERT INTO `student` VALUES (850, '153401010111', '徐善泽', '1234.xsz11.1.', NULL);
INSERT INTO `student` VALUES (851, '153401010112', '陈卓', 'zxf5201314', NULL);
INSERT INTO `student` VALUES (852, '153401010113', '张天齐', '600384626075tq', NULL);
INSERT INTO `student` VALUES (853, '153401010114', '汪江峰', '153401010114', NULL);
INSERT INTO `student` VALUES (854, '153401010115', '刘鹏飞', 'HWP1314520LPF', NULL);
INSERT INTO `student` VALUES (855, '153401010116', '徐东', '970288*', NULL);
INSERT INTO `student` VALUES (856, '153401010117', '刘亚', '1724701386', NULL);
INSERT INTO `student` VALUES (857, '153401010118', '刘学烨', '153401010118', NULL);
INSERT INTO `student` VALUES (858, '153401010119', '张林', 'zhang6628048', NULL);
INSERT INTO `student` VALUES (859, '153401010120', '李艺博', '13721606726bo', NULL);
INSERT INTO `student` VALUES (860, '153401010122', '王亚龙', 'cg612024', NULL);
INSERT INTO `student` VALUES (861, '153401010123', '姚斯齐', 'ysq19961125', NULL);
INSERT INTO `student` VALUES (862, '153401010124', '江民亮', 'wasd110120', NULL);
INSERT INTO `student` VALUES (863, '153401010125', '曾子辉', 'zzh645985790', NULL);
INSERT INTO `student` VALUES (864, '153401010126', '管欣宇', '1544197145zaq', NULL);
INSERT INTO `student` VALUES (865, '153401010127', '张子扬', 'wzzyznb110', NULL);
INSERT INTO `student` VALUES (866, '153401010128', '吕思达', 'lsd7112', NULL);
INSERT INTO `student` VALUES (867, '153401010129', '李卓儒', 'zorulee1996sy', NULL);
INSERT INTO `student` VALUES (868, '153401010130', '胡德广', '153401010130', NULL);
INSERT INTO `student` VALUES (869, '153401010131', '梁恒', 'LH19961030', NULL);
INSERT INTO `student` VALUES (870, '153401010132', '尉安瑞', '03272118', NULL);
INSERT INTO `student` VALUES (871, '153401010133', '郝志荣', 'haoZHIrong810.', NULL);
INSERT INTO `student` VALUES (872, '153401010134', '李星明', 'lxm19970204', NULL);
INSERT INTO `student` VALUES (873, '153401010135', '何涛', '905723ht', NULL);
INSERT INTO `student` VALUES (874, '153401010136', '蒲雪冰', '631010104351', NULL);
INSERT INTO `student` VALUES (875, '153401010137', '付昌雨', '163429', NULL);
INSERT INTO `student` VALUES (876, '153401010201', '王永利', '153401010201', NULL);
INSERT INTO `student` VALUES (877, '153401010202', '倪灿灿', 's114n1997', NULL);
INSERT INTO `student` VALUES (878, '153401010203', '李娜', '153401010203', NULL);
INSERT INTO `student` VALUES (879, '153401010204', '郭志欢', '153401010204', NULL);
INSERT INTO `student` VALUES (880, '153401010205', '姜恩源', 'linmeimei2', NULL);
INSERT INTO `student` VALUES (881, '153401010206', '李雪娇', '790404', NULL);
INSERT INTO `student` VALUES (882, '153401010207', '顾舒婷', '153401010207', NULL);
INSERT INTO `student` VALUES (883, '153401010208', '张瑀桐', '15340102', NULL);
INSERT INTO `student` VALUES (884, '153401010209', '黄津梓', '520812', NULL);
INSERT INTO `student` VALUES (885, '153401010210', '徐敏', 'sau12345', NULL);
INSERT INTO `student` VALUES (886, '153401010211', '庞广东', '6021023mol', NULL);
INSERT INTO `student` VALUES (887, '153401010212', '姚晶华', '960314', NULL);
INSERT INTO `student` VALUES (888, '153401010213', '罗航', '153401010213', NULL);
INSERT INTO `student` VALUES (889, '153401010214', '庞大雷', 'gansuygf12138', NULL);
INSERT INTO `student` VALUES (890, '153401010216', '王松', 'w2101404423s', NULL);
INSERT INTO `student` VALUES (891, '153401010217', '敖贵', '1534010102', NULL);
INSERT INTO `student` VALUES (892, '153401010218', '杨天瑞', '971004t', NULL);
INSERT INTO `student` VALUES (893, '153401010219', '张荣盛', '123.', NULL);
INSERT INTO `student` VALUES (894, '153401010220', '胡宜虎', 'hy1026', NULL);
INSERT INTO `student` VALUES (895, '153401010221', '柴立轩', 'tmacweareyoung', NULL);
INSERT INTO `student` VALUES (896, '153401010222', '王扶霖', '9471', NULL);
INSERT INTO `student` VALUES (897, '153401010223', '张义', 'Zhangyi960220YF', NULL);
INSERT INTO `student` VALUES (898, '153401010224', '谢沛良', '3141592654', NULL);
INSERT INTO `student` VALUES (899, '153401010225', '熊星', '5667035632', NULL);
INSERT INTO `student` VALUES (900, '153401010226', '王屿涵', '727397', NULL);
INSERT INTO `student` VALUES (901, '153401010227', '代福琳', '06143310', NULL);
INSERT INTO `student` VALUES (902, '153401010228', '齐鸿瑞', '153401010228', NULL);
INSERT INTO `student` VALUES (903, '153401010229', '王圣尧', '139428a', NULL);
INSERT INTO `student` VALUES (904, '153401010230', '郭金鑫', '153401010230', NULL);
INSERT INTO `student` VALUES (905, '153401010231', '刘以晨', 'lyc123123', NULL);
INSERT INTO `student` VALUES (906, '153401010232', '张晓涛', '774276296', NULL);
INSERT INTO `student` VALUES (907, '153401010233', '刘博闻', '153401010233', NULL);
INSERT INTO `student` VALUES (908, '153401010234', '董栖文', 'DongQW533022', NULL);
INSERT INTO `student` VALUES (909, '153401010235', '关新宇', '2577151481', NULL);
INSERT INTO `student` VALUES (910, '153401010237', '何佳宇', 'hjy090811', NULL);
INSERT INTO `student` VALUES (911, '__backend_user__c002', '助教2', '9f32ef87e1d85f411d80e7b14bea2a42', NULL);
INSERT INTO `student` VALUES (912, '__backend_user__c003', '助教3', '9f32ef87e1d85f411d80e7b14bea2a42', NULL);
INSERT INTO `student` VALUES (913, '2013040501020', '邱兴', '123456', NULL);
INSERT INTO `student` VALUES (914, '153414020118', '彭彦锴', '123456', NULL);
INSERT INTO `student` VALUES (915, '153414020119', '邓逸凡', '123456', NULL);
INSERT INTO `student` VALUES (916, '153414020120', '张福震', '312568', NULL);
INSERT INTO `student` VALUES (917, '153414020121', '王义柱', '123456', NULL);
INSERT INTO `student` VALUES (918, '153414020122', '吕存超', '19960625', NULL);
INSERT INTO `student` VALUES (919, '153414020123', '徐浩哲', '123456', NULL);
INSERT INTO `student` VALUES (920, '153414020124', '李圣光', '123456', NULL);
INSERT INTO `student` VALUES (921, '153414020125', '万飞', '123456', NULL);
INSERT INTO `student` VALUES (922, '153414020126', '仲一涛', '4049826', NULL);
INSERT INTO `student` VALUES (923, '153414020127', '杨弥超', 'y1592062693', NULL);
INSERT INTO `student` VALUES (924, '153414020128', '高正', '123456', NULL);
INSERT INTO `student` VALUES (925, '153414020129', '任文波', '@123456', NULL);
INSERT INTO `student` VALUES (926, '153414020130', '马文亮', 'mwl123@@', NULL);
INSERT INTO `student` VALUES (927, '143414010221', '姜茂强', '123456', NULL);
INSERT INTO `student` VALUES (928, '143414010137', '赵宏宇', '123456', NULL);
INSERT INTO `student` VALUES (929, '2013041401072', '董佳奇', '123456', NULL);
INSERT INTO `student` VALUES (930, '2013041401054', '李敬双', '123456', NULL);
INSERT INTO `student` VALUES (931, '153414020107', '宋应妙', '960307', NULL);
INSERT INTO `student` VALUES (932, '153414020108', '荣慧德', '07180513', NULL);
INSERT INTO `student` VALUES (933, '153414020109', '连东旭', '123456', NULL);
INSERT INTO `student` VALUES (934, '153414020110', '张嘉俊', '123456', NULL);
INSERT INTO `student` VALUES (935, '153414020111', '孙天傲', '123456', NULL);
INSERT INTO `student` VALUES (936, '153414020112', '李若深', '123456', NULL);
INSERT INTO `student` VALUES (937, '153414020113', '季德龙', '123456', NULL);
INSERT INTO `student` VALUES (938, '153414020114', '闫安', '715419', NULL);
INSERT INTO `student` VALUES (939, '153414020115', '李晓雨', '1015741X', NULL);
INSERT INTO `student` VALUES (940, '153414020116', '黄禄山', '123456', NULL);
INSERT INTO `student` VALUES (941, '153414020117', '陈健国', '123456', NULL);
INSERT INTO `student` VALUES (942, '153414020106', '蔡梦豪', '57028038', NULL);
INSERT INTO `student` VALUES (943, '153414020104', '姚承君', '123456', NULL);
INSERT INTO `student` VALUES (944, '153414020103', '梁红玉', '123456', NULL);
INSERT INTO `student` VALUES (945, '153414020102', '赵旭', '123456', NULL);
INSERT INTO `student` VALUES (946, '153414020101', '贺业秀', '123456', NULL);
INSERT INTO `student` VALUES (947, '153414010230', '张诚', '123456', NULL);
INSERT INTO `student` VALUES (948, '153414010229', '韩永鹏', '123456', NULL);
INSERT INTO `student` VALUES (949, '153414010228', '黄进', '123456', NULL);
INSERT INTO `student` VALUES (950, '153414010227', '孙敬鹏', '123456', NULL);
INSERT INTO `student` VALUES (951, '153414010226', '孙立辰', '123456', NULL);
INSERT INTO `student` VALUES (952, '153414010225', '刘树敏', 'ALSM123456', NULL);
INSERT INTO `student` VALUES (953, '153414010224', '董文皓', '123456', NULL);
INSERT INTO `student` VALUES (954, '153414010223', '杨国庆', '123456', NULL);
INSERT INTO `student` VALUES (955, '153414010222', '陈正凯', '123456', NULL);
INSERT INTO `student` VALUES (956, '153414010221', '李思远', '123456', NULL);
INSERT INTO `student` VALUES (957, '153414010220', '陈星旭', '123456', NULL);
INSERT INTO `student` VALUES (958, '153414010219', '张佳节', '123456', NULL);
INSERT INTO `student` VALUES (959, '153414010218', '徐本钰', '123456', NULL);
INSERT INTO `student` VALUES (960, '153414010217', '王湛杰', '970325', NULL);
INSERT INTO `student` VALUES (961, '153414010215', '张振', '123456', NULL);
INSERT INTO `student` VALUES (962, '153414010214', '潘稳稳', '123456', NULL);
INSERT INTO `student` VALUES (963, '153414010213', '白文文', '123456', NULL);
INSERT INTO `student` VALUES (964, '153414010212', '李焱鑫', '123456', NULL);
INSERT INTO `student` VALUES (965, '153414010211', '丁建丽', '123456', NULL);
INSERT INTO `student` VALUES (966, '153414010210', '姚莹莹', '123456', NULL);
INSERT INTO `student` VALUES (967, '153414010209', '吕丹阳', '123456', NULL);
INSERT INTO `student` VALUES (968, '153414010208', '宪超', '123456', NULL);
INSERT INTO `student` VALUES (969, '153414010207', '王梦甜', '123456', NULL);
INSERT INTO `student` VALUES (970, '153414010206', '陈一佳', '123456', NULL);
INSERT INTO `student` VALUES (971, '153414010205', '张婧文', '123456', NULL);
INSERT INTO `student` VALUES (972, '153414010204', '王思诺', '123456', NULL);
INSERT INTO `student` VALUES (973, '153414010203', '李亚非', '123456', NULL);
INSERT INTO `student` VALUES (974, '153414010202', '王朦朦', '123456', NULL);
INSERT INTO `student` VALUES (975, '153414010201', '李璐', '123456', NULL);
INSERT INTO `student` VALUES (976, '153414010130', '刘壹潇', '123456', NULL);
INSERT INTO `student` VALUES (977, '153414010129', '路彪', '581506', NULL);
INSERT INTO `student` VALUES (978, '153414010128', '于松民', '123456', NULL);
INSERT INTO `student` VALUES (979, '153414010127', '靳豪奇', '123456', NULL);
INSERT INTO `student` VALUES (980, '153414010126', '高启明', '123456', NULL);
INSERT INTO `student` VALUES (981, '153414010125', '刘洋', '123456', NULL);
INSERT INTO `student` VALUES (982, '153414010124', '刘成志', '123456', NULL);
INSERT INTO `student` VALUES (983, '153414010123', '尚洪博', '123456', NULL);
INSERT INTO `student` VALUES (984, '153414010122', '张义鑫', '123456', NULL);
INSERT INTO `student` VALUES (985, '153414010121', '张添夫', '654321', NULL);
INSERT INTO `student` VALUES (986, '153414010120', '李瑞', '188566', NULL);
INSERT INTO `student` VALUES (987, '153414010119', '任伟', '123456', NULL);
INSERT INTO `student` VALUES (988, '153414010118', '吕海栋', '123456', NULL);
INSERT INTO `student` VALUES (989, '153414010117', '丁浩浩', '123456', NULL);
INSERT INTO `student` VALUES (990, '153414010116', '张子晨', '123456', NULL);
INSERT INTO `student` VALUES (991, '153414010115', '王成', '123456', NULL);
INSERT INTO `student` VALUES (992, '153414010114', '王瑞端', '123456', NULL);
INSERT INTO `student` VALUES (993, '153414010113', '吕妍', '123456', NULL);
INSERT INTO `student` VALUES (994, '153414010112', '黄馨慧', '123456', NULL);
INSERT INTO `student` VALUES (995, '153414010111', '张凯月', '123456', NULL);
INSERT INTO `student` VALUES (996, '153414010110', '姜金霞', '123456', NULL);
INSERT INTO `student` VALUES (997, '153414010109', '高泽鑫', '123456', NULL);
INSERT INTO `student` VALUES (998, '153414010108', '杨佳良', '123456', NULL);
INSERT INTO `student` VALUES (999, '153414010107', '陈谦', '123456', NULL);
INSERT INTO `student` VALUES (1000, '153414010105', '郎贺', '123456', NULL);
INSERT INTO `student` VALUES (1001, '153414010106', '王冬月', '123456', NULL);

-- ----------------------------
-- Table structure for submissions
-- ----------------------------
DROP TABLE IF EXISTS `submissions`;
CREATE TABLE `submissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `submissions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avgsubmissions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submissions
-- ----------------------------
INSERT INTO `submissions` VALUES (1, '1', '30', '90');
INSERT INTO `submissions` VALUES (2, '2', '20', '90');
INSERT INTO `submissions` VALUES (3, '3', '15', '30');
INSERT INTO `submissions` VALUES (4, '4', '60', '90');
INSERT INTO `submissions` VALUES (5, '5', '60', '80');

-- ----------------------------
-- Table structure for sumscore
-- ----------------------------
DROP TABLE IF EXISTS `sumscore`;
CREATE TABLE `sumscore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tratio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uratio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `escore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eratio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hratio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sumscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `additionalscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ssumscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avgid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sumscore
-- ----------------------------
INSERT INTO `sumscore` VALUES (1, 'stadmin', '3', '70', '50%', '80', '10%', '70', '20%', '60', '20%', '75', '5', '100', '2', '2', '12');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '123',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 'admin', '运佳恩1', '123');
INSERT INTO `teacher` VALUES (2, '20022410', '张荣博', '0b3aefd33b8533480c53d4ef85946f43');
INSERT INTO `teacher` VALUES (3, '19911437', '施国君', '123456');
INSERT INTO `teacher` VALUES (4, '19951863', '张维君', '123456');
INSERT INTO `teacher` VALUES (5, '19951879', '潘琢金', '123456');
INSERT INTO `teacher` VALUES (6, '19961935', '董燕举', '123456');
INSERT INTO `teacher` VALUES (7, '19961940', '李胜宇', '123456');
INSERT INTO `teacher` VALUES (8, '19961942', '胡光元', '2012040101172');
INSERT INTO `teacher` VALUES (9, '19982072', '刘香芹', '123456');
INSERT INTO `teacher` VALUES (10, '19982073', '毛艳娥', '11223344');
INSERT INTO `teacher` VALUES (11, '19982074', '张翼飞', '123456');
INSERT INTO `teacher` VALUES (12, '19982088', '刘鲲', '180236');
INSERT INTO `teacher` VALUES (13, '19982091', '庄威', '123456');
INSERT INTO `teacher` VALUES (14, '19992176', '周振辉', '123456');
INSERT INTO `teacher` VALUES (15, '19992178', '王鑫', 'AAA1993911');
INSERT INTO `teacher` VALUES (16, '19971999', '孙伟东', '123456');
INSERT INTO `teacher` VALUES (17, '19961946', '王丹', '123456');
INSERT INTO `teacher` VALUES (18, '20112272', '拱长青', 'wyy951005');
INSERT INTO `teacher` VALUES (19, '20012340', '周大海', '123456');
INSERT INTO `teacher` VALUES (20, '20022365', '訾学博', 'zph0609');
INSERT INTO `teacher` VALUES (21, '20022396', '孙恩岩', 'wangyi0311');
INSERT INTO `teacher` VALUES (22, '20022411', '李席广', '123456');
INSERT INTO `teacher` VALUES (23, '20022420', '曹一鹏', 'zmhjing06');
INSERT INTO `teacher` VALUES (24, '20022442', '郑志勇', '123456');
INSERT INTO `teacher` VALUES (25, '20032508', '罗振', 'lbq19950117');
INSERT INTO `teacher` VALUES (26, '20032518', '李晓明', '19921221');
INSERT INTO `teacher` VALUES (27, '20032569', '王岩', '123456');
INSERT INTO `teacher` VALUES (28, '20032570', '李照奎', 'ainihyf080');
INSERT INTO `teacher` VALUES (29, '20042649', '于影杰', '123456');
INSERT INTO `teacher` VALUES (30, '20052786', '林娜', '123456');
INSERT INTO `teacher` VALUES (31, '20062862', '毕静', '123456');
INSERT INTO `teacher` VALUES (32, '20072917', '杨华', '921027');
INSERT INTO `teacher` VALUES (33, '20072972', '杜玲', 'a8450123');
INSERT INTO `teacher` VALUES (34, '20072973', '刘芳', 'lovewan2song2');
INSERT INTO `teacher` VALUES (35, '20093076', '王传云', '110136');
INSERT INTO `teacher` VALUES (36, '20093092', '周美艳', 'yang1994');
INSERT INTO `teacher` VALUES (37, '20093093', '王应天', '654321');
INSERT INTO `teacher` VALUES (38, '20103144', '王飞', '123456');
INSERT INTO `teacher` VALUES (39, '20123284', '张德园', '06298230');
INSERT INTO `teacher` VALUES (40, '20123311', '丁国辉', '123456');
INSERT INTO `teacher` VALUES (41, '20123314', '郭薇', '365864');
INSERT INTO `teacher` VALUES (42, '20123315', '郭振洲', '711314');
INSERT INTO `teacher` VALUES (43, '20133366', '高得伦', '123456');
INSERT INTO `teacher` VALUES (44, '20002224', '高利军', 'skh13342453020');
INSERT INTO `teacher` VALUES (45, '20012345', '许莉', '19931112');
INSERT INTO `teacher` VALUES (46, '20022419', '安云哲', '2011040101166');
INSERT INTO `teacher` VALUES (47, '19952509', '张国栋', '2013040101168');
INSERT INTO `teacher` VALUES (48, '19961927', '杨灏', '11163318');
INSERT INTO `teacher` VALUES (49, '19971982', '范纯龙', '2013040101182');
INSERT INTO `teacher` VALUES (50, '20022449', '曹辉', 'kkxdtX58');
INSERT INTO `teacher` VALUES (51, '20052683', '石祥滨', 'a25ae6c842e0dd24b6a77f0b279dbc1e');
INSERT INTO `teacher` VALUES (52, '19921762', '丛丽晖', '123456');
INSERT INTO `teacher` VALUES (53, '20032472', '刘启文', 'lhy924');
INSERT INTO `teacher` VALUES (54, '20032485', '张潞', '708182');
INSERT INTO `teacher` VALUES (55, '20072971', '王越', 'gf9290104');
INSERT INTO `teacher` VALUES (56, '19830122', '徐蕾', 'gyt13342445911');
INSERT INTO `teacher` VALUES (57, '19840130', '许清', 'wzb34010301');
INSERT INTO `teacher` VALUES (58, '19961917', '丁一军', '1017');
INSERT INTO `teacher` VALUES (59, '20170022', '孙盼盼', '123456');
INSERT INTO `teacher` VALUES (60, 'ojadmin', 'ojadmin', '15114292393');
INSERT INTO `teacher` VALUES (61, 'c001', '助教1', '009292527');
INSERT INTO `teacher` VALUES (62, '20140049', '李佳佳', 'barcelona');
INSERT INTO `teacher` VALUES (63, '19951859', '武卫东', 'a13942414829a');
INSERT INTO `teacher` VALUES (64, '20150014', '刘向宇', 'dapengbuaini1230');
INSERT INTO `teacher` VALUES (65, '100', 'z测试', '12205016');
INSERT INTO `teacher` VALUES (66, 'cpp02', '助教2', '0196908050');
INSERT INTO `teacher` VALUES (67, '20170012', '朱睿', 'sun123456');
INSERT INTO `teacher` VALUES (68, 'c003', '助教3', '1995315');
INSERT INTO `teacher` VALUES (69, 'c002', '助教2', '512512ZY');
INSERT INTO `teacher` VALUES (70, '20179999', 'OJ助教', 'baisong6666');
INSERT INTO `teacher` VALUES (71, '19931776', '吴杰宏', '01282617');
INSERT INTO `teacher` VALUES (72, '19850130', '夏秀峰', 'zhangwei11208781');
INSERT INTO `teacher` VALUES (73, 'cpp01', '助教1', '01259237');
INSERT INTO `teacher` VALUES (74, '123abc', '在在在', 'byh994329.');
INSERT INTO `teacher` VALUES (75, '20150013', '刘翠微', '123456');
INSERT INTO `teacher` VALUES (76, 'lnutest', '辽宁大学测试账号', '123456');
INSERT INTO `teacher` VALUES (77, '20160034', '滕一平', '123456');
INSERT INTO `teacher` VALUES (78, '20180001', '戚晗', 'lz555666');
INSERT INTO `teacher` VALUES (79, '80015002', '宫照煊', '123456');
INSERT INTO `teacher` VALUES (80, 'huguangyuan', '', '08310319');
INSERT INTO `teacher` VALUES (81, '20170069', '宗传玉', 'q123456');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ttid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ratio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '3', 'stadmin', '8', '期末考试', '1', '1', '60%');
INSERT INTO `test` VALUES (2, '3', 'stadmin', '9', '第一次考试', '2', '1', '10%');
INSERT INTO `test` VALUES (3, '3', 'stadmin', '10', '第二次考试', '3', '1', '10%');
INSERT INTO `test` VALUES (4, '3', 'stadmin', '11', '第三次考试', '4', '1', '10%');
INSERT INTO `test` VALUES (5, '3', 'stadmin', '12', '第四次考试', '5', '1', '10%');
INSERT INTO `test` VALUES (6, '3', 'stadmin', '17', '考试总分', '5', NULL, '总分');

-- ----------------------------
-- Table structure for testtopic
-- ----------------------------
DROP TABLE IF EXISTS `testtopic`;
CREATE TABLE `testtopic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ttid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testtopic
-- ----------------------------
INSERT INTO `testtopic` VALUES (1, '1', '1', '1', '1', '1', '1');
INSERT INTO `testtopic` VALUES (2, '1', '2', '2', '2', '2', '2');
INSERT INTO `testtopic` VALUES (3, '1', '3', '3', '3', '3', '3');
INSERT INTO `testtopic` VALUES (4, '1', '4', '4', '4', '4', '4');
INSERT INTO `testtopic` VALUES (5, '1', '5', '5', '5', '5', '5');
INSERT INTO `testtopic` VALUES (6, '2', '5', '5', '5', '5', '5');
INSERT INTO `testtopic` VALUES (7, '2', '4', '4', '4', '4', '4');
INSERT INTO `testtopic` VALUES (8, '2', '3', '3', '3', '3', '3');
INSERT INTO `testtopic` VALUES (9, '2', '2', '2', '2', '2', '2');
INSERT INTO `testtopic` VALUES (10, '2', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toptext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topkind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (1, '1', '数组中查找指定数据', '【问题描述】用子函数完成在数组中查找制定元素。输入一个正整数n（1<n<=10）,然后输入n个整数存入数组中，再输入一个整数x，在数组a中查找x，如果找到则输出相应的最小下标，否则输出Not found\r\n【输入形式】正整数n，n个整数，x\r\n【输出形式】最小下标或者Not found\r\n【样例输入】6  2  3  4  5  4  6  4\r\n【样例输出】2\r\n【样例说明】\r\n【评分标准】', '第一题');
INSERT INTO `topic` VALUES (2, '2', '数组元素交换', '【问题描述】输入两个各包含5个元素的数组，输入交换位置的开始位置m和结束位置n，输出交换后的两个数组。\r\n【输入形式】输入两个数组和交换数据的开始位置和结束位置\r\n【输出形式】输出交换后的两个数组\r\n【样例输入】3 4 2 1 6 97 12 23 43 1 3 4\r\n【样例输出】3 4 23 43 6 97 12 2 1 1\r\n【样例说明】数据之间用单个空格隔开\r\n【评分标准】要用指针完成对数组的访问，否则记为0分。', '第二题');
INSERT INTO `topic` VALUES (3, '3', '（用指针求解）规格化数据程序', '【问题描述】输入 n 个正整数，负数代表输入结束。将其中最小的数与第一个数对换，把最大的数与最后一个数对换。\r\n【输入形式】从键盘输入 n 个正整数，负数代表输入结束。\r\n【输出形式】输出对换后的正整数序列。\r\n【样例输入】10 25 6 15 87 3 26 31 85 7 -6\r\n【样例输出】3 25 6 15 7 10 26 31 85 87\r\n【样例说明】\r\n【评分标准】', '第三题');
INSERT INTO `topic` VALUES (4, '4', '求指定数组元素的和', '【问题描述】输入数组元素个数和数组元素值，用函数完成求该数组中下标为偶数的元素之和。\r\n\r\n                    请用指针完成题目要求。\r\n【输入形式】输入数组元素个数，和数组元素值，数组元素类型为整数\r\n【输出形式】数组中下标为偶数的元素之和\r\n\r\n【样例输入】8 0 1 2 3 4 5 6 7\r\n【样例输出】12\r\n【样例说明】\r\n【评分标准】', '第四题');
INSERT INTO `topic` VALUES (5, '5', '字符串的回文判断', '【问题描述】输入一串字符，判断该串字符是否是回文。用指针完成对字符串的访问。\r\n【输入形式】输入一串字符。\r\n【输出形式】yes或者no\r\n【样例输入】abbc\r\n【样例输出】no\r\n\r\n \r\n\r\n【样例输入】abba\r\n【样例输出】yes\r\n【样例说明】\r\n【评分标准】必须用指针完成字符串的访问。', '第五题');

-- ----------------------------
-- Table structure for usual
-- ----------------------------
DROP TABLE IF EXISTS `usual`;
CREATE TABLE `usual`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avgid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usual
-- ----------------------------
INSERT INTO `usual` VALUES (1, '3', 'stadmin', '6', '6', '1', '1');
INSERT INTO `usual` VALUES (2, '5', 'stadmin', '7', '7', '2', '2');

SET FOREIGN_KEY_CHECKS = 1;
