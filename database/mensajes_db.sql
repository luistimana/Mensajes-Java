/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : mensajes_db

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 12/12/2021 19:56:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mensajes
-- ----------------------------
DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE `mensajes`  (
  `id_mensaje` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(280) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autor` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha` datetime(0) NOT NULL,
  PRIMARY KEY (`id_mensaje`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mensajes
-- ----------------------------
INSERT INTO `mensajes` VALUES (1, 'Hola como estas', 'Luis', '2021-12-12 14:28:48');
INSERT INTO `mensajes` VALUES (2, 'Hola como te va', 'Miguel', '2021-12-12 14:28:48');
INSERT INTO `mensajes` VALUES (4, 'Hola mundo', 'Geor', '2021-12-12 14:54:40');
INSERT INTO `mensajes` VALUES (5, 'Hola desde Main', 'Main', '2021-12-12 19:49:15');
INSERT INTO `mensajes` VALUES (6, 'Hola desde Main', 'Main', '2021-12-12 19:49:53');
INSERT INTO `mensajes` VALUES (7, 'Hola desde Main', 'Main', '2021-12-12 19:50:56');
INSERT INTO `mensajes` VALUES (8, 'Hola editado', 'web', '2021-12-12 19:55:24');

SET FOREIGN_KEY_CHECKS = 1;
