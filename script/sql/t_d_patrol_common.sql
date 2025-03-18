/*
 Navicat Premium Data Transfer

 Source Server         : 本机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : energy_platform

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 13/01/2025 17:17:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_d_patrol_common
-- ----------------------------
DROP TABLE IF EXISTS `t_d_patrol_common`;
CREATE TABLE `t_d_patrol_common`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `airport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '执行机场',
  `line_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `task_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务状态',
  `task_created_time` datetime NULL DEFAULT NULL COMMENT '任务创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_d_patrol_common
-- ----------------------------
INSERT INTO `t_d_patrol_common` VALUES (14, '110', '怀宁机场', '10kV金塘08线', '7', '2025-01-09 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (15, '1111', '怀宁机场', '10kV金塘08线', '8', '2025-01-09 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (16, 'ahdl@1234', '怀宁机场', '10kV金塘08线', '8', '2024-11-13 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (17, '10.24', '怀宁机场', '10kV金塘08线', '7', '2024-10-23 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (18, '日常巡视', '怀宁机场', '10kV月山13线', '7', '2024-10-23 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (19, '09', '怀宁机场', '10kV博瑞09线', '8', '2024-09-25 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (20, '10kV汪洋23线胜利支线#001杆-003', '怀宁机场', '10kV汪洋23线胜利支线', '8', '2024-09-09 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (21, '10kV汪洋23线胜利支线#006杆', '怀宁机场', '10kV汪洋23线胜利支线', '8', '2024-09-07 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (22, '10kV汪洋23线10kV汪洋23线胜利支线#002杆-#004杆', '怀宁机场', '10kV汪洋23线胜利支线', '7', '2024-09-05 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (23, '10kV汪洋23线胜利支线#001杆-008', '怀宁机场', '10kV汪洋23线胜利支线', '7', '2024-09-05 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (24, '10kV汪洋23线胜利支线#004杆', '怀宁机场', '10kV汪洋23线胜利支线', '8', '2024-09-05 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (25, '日常巡视', '怀宁机场', '10kV金塘08线', '2', '2024-09-01 16:00:00');
INSERT INTO `t_d_patrol_common` VALUES (26, '金唐线巡视', '怀宁机场', '10kV金塘08线', '2', '2024-08-06 16:00:00');

-- ----------------------------
-- Table structure for t_d_patrol_history_fault
-- ----------------------------
DROP TABLE IF EXISTS `t_d_patrol_history_fault`;
CREATE TABLE `t_d_patrol_history_fault`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `line_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区段',
  `fault_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '故障类型',
  `execute_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '执行状态',
  `alarm_time` datetime NULL DEFAULT NULL COMMENT '告警时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_d_patrol_history_fault
-- ----------------------------
INSERT INTO `t_d_patrol_history_fault` VALUES (36, '10kV金塘08线', '#013-#013', '4', '0', '2025-01-10 16:11:02');
INSERT INTO `t_d_patrol_history_fault` VALUES (37, '10kV金塘08线', '#013-#013', '4', '1', '2025-01-10 16:10:33');
INSERT INTO `t_d_patrol_history_fault` VALUES (38, '10kV陶亭07线', NULL, NULL, '2', '2025-01-07 15:41:59');
INSERT INTO `t_d_patrol_history_fault` VALUES (39, '10kV兴园10线', '#009-#009', '4', '1', '2024-12-27 17:14:38');
INSERT INTO `t_d_patrol_history_fault` VALUES (40, '10kV稼先04线凌桥支线1', '#001-#048', '4', '0', '2024-12-27 17:14:06');
INSERT INTO `t_d_patrol_history_fault` VALUES (41, '10kV博瑞09线', '#001-#010', '4', '1', '2024-11-07 08:07:52');
INSERT INTO `t_d_patrol_history_fault` VALUES (42, '10kV金塘08线', '#010-#013', '3', '7', '2024-11-07 08:06:39');
INSERT INTO `t_d_patrol_history_fault` VALUES (43, '10kV金塘08线', '#001-#010', '4', '1', '2024-10-30 15:17:56');
INSERT INTO `t_d_patrol_history_fault` VALUES (44, '10kV金塘08线', NULL, '3', '2', '2024-09-13 03:55:17');
INSERT INTO `t_d_patrol_history_fault` VALUES (45, '10kV金塘08线', '#077-#078', '3', '7', '2024-09-10 21:23:51');
INSERT INTO `t_d_patrol_history_fault` VALUES (46, '10kV金塘08线', '#001-#001', '3', '0', '2024-09-10 21:19:32');
INSERT INTO `t_d_patrol_history_fault` VALUES (47, '10kV博瑞09线', '#001-#001', '3', '0', '2024-09-10 20:14:48');
INSERT INTO `t_d_patrol_history_fault` VALUES (48, '10kV金塘08线', '#002-#002', '3', '0', '2024-09-10 20:13:37');
INSERT INTO `t_d_patrol_history_fault` VALUES (49, '10kV金塘08线', '#001-#001', '3', '0', '2024-09-10 20:08:01');
INSERT INTO `t_d_patrol_history_fault` VALUES (50, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#001杆-10kV汪洋23线胜利支线#001杆', '4', '1', '2024-09-10 09:36:28');
INSERT INTO `t_d_patrol_history_fault` VALUES (51, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#001杆-10kV汪洋23线胜利支线#004杆', '4', '1', '2024-09-09 16:25:53');
INSERT INTO `t_d_patrol_history_fault` VALUES (52, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#006杆-10kV汪洋23线胜利支线#008杆', '3', '7', '2024-09-09 11:07:19');
INSERT INTO `t_d_patrol_history_fault` VALUES (53, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#001杆-10kV汪洋23线胜利支线#008杆', '3', '1', '2024-09-09 10:06:47');
INSERT INTO `t_d_patrol_history_fault` VALUES (54, '10kV博瑞09线兴业路分支线', '#001-#005', '4', '1', '2024-09-09 07:00:26');
INSERT INTO `t_d_patrol_history_fault` VALUES (55, '10kV博瑞09线', '#018+08-#018+09', '4', '1', '2024-09-08 20:09:16');
INSERT INTO `t_d_patrol_history_fault` VALUES (56, '10kV月山13线经二路支线', '#008-#005', '4', '1', '2024-09-08 11:28:54');
INSERT INTO `t_d_patrol_history_fault` VALUES (57, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#007杆-10kV汪洋23线胜利支线#007杆', '4', '8', '2024-09-08 09:21:25');
INSERT INTO `t_d_patrol_history_fault` VALUES (58, '10kV兴园10线', '#009-#019', '4', '1', '2024-09-07 14:52:46');
INSERT INTO `t_d_patrol_history_fault` VALUES (59, '10kV博瑞09线', '#018+08-#018+20', '4', '1', '2024-09-07 13:45:48');
INSERT INTO `t_d_patrol_history_fault` VALUES (60, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#001杆-10kV汪洋23线胜利支线#001杆', '4', '1', '2024-09-06 10:35:07');
INSERT INTO `t_d_patrol_history_fault` VALUES (61, '10kV金塘08线', '纬十路东支线#037-纬十路东支线#037', '3', '1', '2024-09-06 10:12:36');
INSERT INTO `t_d_patrol_history_fault` VALUES (62, '10kV金塘08线', '纬十路东支线#037-纬十路东支线#037', '3', '7', '2024-09-06 10:00:48');
INSERT INTO `t_d_patrol_history_fault` VALUES (63, '10kV金塘08线', '纬十路东支线#037-纬十路东支线#039', '3', '7', '2024-09-06 09:24:43');
INSERT INTO `t_d_patrol_history_fault` VALUES (64, '10kV兴园10线', '#009-#009', '3', '1', '2024-09-02 11:05:27');
INSERT INTO `t_d_patrol_history_fault` VALUES (65, '10kV兴园10线', '#009-#009', '3', '1', '2024-08-16 18:31:57');
INSERT INTO `t_d_patrol_history_fault` VALUES (66, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#004杆-10kV汪洋23线胜利支线#007杆', '3', '1', '2024-08-07 16:49:51');
INSERT INTO `t_d_patrol_history_fault` VALUES (67, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#001杆-10kV汪洋23线胜利支线#005杆', '3', '7', '2024-08-07 15:47:21');
INSERT INTO `t_d_patrol_history_fault` VALUES (68, '10kV汪洋23线胜利支线', '10kV汪洋23线胜利支线#001杆-10kV汪洋23线胜利支线#001杆', '3', '0', '2024-08-07 14:33:33');
INSERT INTO `t_d_patrol_history_fault` VALUES (69, '10kV金塘08线', '纬十路东支线#037-纬十路东支线#037', '3', '0', '2024-08-07 14:27:42');
INSERT INTO `t_d_patrol_history_fault` VALUES (70, '10kV金塘08线', '纬十路东支线#037-纬十路东支线#038', '4', '0', '2024-08-07 14:16:03');

SET FOREIGN_KEY_CHECKS = 1;
