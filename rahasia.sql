/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100422 (10.4.22-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : rahasia

 Target Server Type    : MySQL
 Target Server Version : 100422 (10.4.22-MariaDB)
 File Encoding         : 65001

 Date: 08/12/2024 21:23:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `id_activity` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` datetime NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 704 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (3, 1, 'User Membuka Dashboard', '2024-11-21 08:53:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (4, 1, 'User Melakukan Log Out', '2024-11-21 08:55:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (11, 2, 'User Membuka Dashboard', '2024-11-21 10:05:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (12, 2, 'User Membuka Menu Profile', '2024-11-21 10:05:53', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (13, 2, 'User Membuka Menu Profile', '2024-11-21 10:06:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (14, 2, 'User Melakukan Edit Profile', '2024-11-21 10:06:47', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (15, 2, 'User Membuka Menu Profile', '2024-11-21 10:06:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (16, 2, 'User Mengganti Password Lama ke Baru', '2024-11-21 10:06:57', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (17, 2, 'User Membuka Menu Profile', '2024-11-21 10:06:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (18, 2, 'User Mengganti Password Lama ke Baru', '2024-11-21 10:07:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (19, 2, 'User Membuka Menu Profile', '2024-11-21 10:07:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (20, 2, 'User Mengganti Password Lama ke Baru', '2024-11-21 10:08:45', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (21, 2, 'User Membuka Menu Profile', '2024-11-21 10:08:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (22, 2, 'User Melakukan Log Out', '2024-11-21 10:08:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (25, 2, 'User Membuka Dashboard', '2024-11-21 10:09:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (26, 2, 'User Membuka Dashboard', '2024-11-21 10:10:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (27, 2, 'User Membuka Dashboard', '2024-11-21 10:11:40', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (28, 2, 'User Membuka Dashboard', '2024-11-21 10:11:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (29, 2, 'User Melakukan Log Out', '2024-11-21 10:12:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (30, NULL, 'User ke Halaman Login', '2024-11-21 10:12:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (31, NULL, 'User melakukan Login', '2024-11-21 10:12:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (32, 1, 'User Membuka Dashboard', '2024-11-21 10:12:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (33, 1, 'User Membuka Menu Setting', '2024-11-21 10:19:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (34, 1, 'User Melakukan Edit Setting', '2024-11-21 10:19:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (35, 1, 'User Membuka Menu Setting', '2024-11-21 10:19:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (36, 1, 'User Melakukan Edit Setting', '2024-11-21 10:20:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (37, 1, 'User Membuka Menu Setting', '2024-11-21 10:20:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (38, 1, 'User Melakukan Log Out', '2024-11-21 10:20:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (39, NULL, 'User ke Halaman Login', '2024-11-21 10:20:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (40, NULL, 'User melakukan Login', '2024-11-21 10:20:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (41, 1, 'User Membuka Dashboard', '2024-11-21 10:20:53', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (42, 1, 'User Membuka Menu Setting', '2024-11-21 10:20:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (43, 1, 'User Melakukan Edit Setting', '2024-11-21 10:30:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (44, 1, 'User Membuka Menu Setting', '2024-11-21 10:30:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (45, 1, 'User membuka Log Activity', '2024-11-21 10:31:47', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (46, 1, 'User Melakukan Hapus Activity', '2024-11-21 10:31:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (47, 1, 'User membuka Log Activity', '2024-11-21 10:31:57', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (48, NULL, 'User Membuka Dashboard', '2024-11-23 10:20:53', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (49, NULL, 'User ke Halaman Login', '2024-11-23 10:24:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (50, NULL, 'User melakukan Login', '2024-11-23 10:24:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (51, 1, 'User Membuka Dashboard', '2024-11-23 10:24:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (52, 1, 'User Membuka Menu User', '2024-11-23 10:45:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (53, 1, 'User Melakukan Tambah User', '2024-11-23 10:45:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (54, 1, 'User Membuka Menu User', '2024-11-23 10:45:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (55, 1, 'User Melakukan Edit User', '2024-11-23 10:45:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (56, 1, 'User Membuka Menu User', '2024-11-23 10:45:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (57, 1, 'User Membuka Menu User', '2024-11-23 10:49:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (58, 1, 'User Melakukan Edit User', '2024-11-23 10:49:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (59, 1, 'User Membuka Menu User', '2024-11-23 10:49:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (60, 1, 'User Membuka Menu User', '2024-11-23 10:54:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (61, 1, 'User Melakukan Edit User', '2024-11-23 10:54:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (62, 1, 'User Membuka Menu User', '2024-11-23 10:54:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (63, 1, 'User Membuka Menu User', '2024-11-23 11:01:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (64, 1, 'User Membuka Menu User', '2024-11-23 11:05:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (65, 1, 'User Membuka Menu User', '2024-11-23 11:05:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (66, 1, 'User Membuka Menu User', '2024-11-23 11:06:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (67, 1, 'User Membuka Menu Restore Edit User', '2024-11-23 11:06:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (68, 1, 'User Restore Data User', '2024-11-23 11:06:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (69, 1, 'User Membuka Menu User', '2024-11-23 11:06:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (70, 1, 'User Membuka Menu User', '2024-11-23 11:12:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (71, 1, 'User Membuka Menu Restore Hapus User', '2024-11-23 11:12:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (72, 1, 'User Membuka Menu User', '2024-11-23 11:12:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (73, 1, 'User melakukan Hapus User', '2024-11-23 11:13:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (74, 1, 'User Membuka Menu User', '2024-11-23 11:13:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (75, 1, 'User Membuka Menu Restore Hapus User', '2024-11-23 11:13:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (76, 1, 'User melakukan Restore User', '2024-11-23 11:13:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (77, 1, 'User Membuka Menu User', '2024-11-23 11:13:37', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (78, 1, 'User melakukan Hapus User', '2024-11-23 11:14:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (79, 1, 'User Membuka Menu User', '2024-11-23 11:14:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (80, 1, 'User Membuka Menu Restore Hapus User', '2024-11-23 11:14:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (81, 1, 'User melakukan Penghapusan Data User Permanen', '2024-11-23 11:14:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (82, 1, 'User Membuka Menu User', '2024-11-23 11:14:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (83, NULL, 'User ke Halaman Login', '2024-11-25 08:30:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (84, NULL, 'User melakukan Login', '2024-11-25 08:30:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (85, 1, 'User Membuka Dashboard', '2024-11-25 08:30:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (86, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:09:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (87, 1, 'User Membuka Dashboard', '2024-11-25 10:10:53', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (88, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:17:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (89, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:17:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (90, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:18:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (91, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:21:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (92, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:21:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (93, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:38:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (94, 1, 'User Melakukan Tambah Rahasia', '2024-11-25 10:38:53', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (95, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:38:53', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (96, 1, 'User Membuka Menu Rahasia', '2024-11-25 10:39:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (97, NULL, 'User ke Halaman Login', '2024-11-27 08:32:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (98, NULL, 'User ke Halaman Login', '2024-11-27 08:34:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (99, NULL, 'User melakukan Login', '2024-11-27 08:34:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (100, 1, 'User Membuka Dashboard', '2024-11-27 08:34:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (101, 1, 'User Membuka Dashboard', '2024-11-27 08:35:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (102, 1, 'User Membuka Dashboard', '2024-11-27 08:36:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (103, 1, 'User Membuka Dashboard', '2024-11-27 08:36:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (104, 1, 'User Membuka Menu Restore Hapus User', '2024-11-27 08:37:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (105, 1, 'User Membuka Menu Restore Edit User', '2024-11-27 08:37:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (106, 1, 'User Membuka Menu Restore Edit User', '2024-11-27 08:37:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (107, 1, 'User Membuka Menu User', '2024-11-27 08:37:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (108, 1, 'User Membuka Menu Rahasia', '2024-11-27 08:37:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (109, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:00:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (110, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:00:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (111, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:10:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (112, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:14:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (113, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:18:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (114, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:20:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (115, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:26:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (116, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:28:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (117, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:50:02', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (118, 1, 'User Membuka Menu Rahasia', '2024-11-27 09:56:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (119, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:01:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (120, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:08:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (121, 1, 'User Melakukan Log Out', '2024-11-27 10:09:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (122, NULL, 'User ke Halaman Login', '2024-11-27 10:09:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (123, NULL, 'User melakukan Login', '2024-11-27 10:09:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (124, 1, 'User Membuka Dashboard', '2024-11-27 10:09:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (125, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:09:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (126, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:14:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (127, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:15:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (128, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:16:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (129, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:17:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (130, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:19:02', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (131, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:20:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (132, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:22:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (133, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:26:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (134, 1, 'User Membuka Menu Rahasia', '2024-11-27 10:28:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (135, 1, 'User Membuka Menu Rahasia', '2024-11-27 23:30:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (136, 1, 'User Membuka Menu Rahasia', '2024-11-27 23:35:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (137, 1, 'User Membuka Menu Rahasia', '2024-11-27 23:45:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (138, 1, 'User Melakukan Edit Data Rahasia', '2024-11-27 23:48:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (139, 1, 'User Membuka Menu Rahasia', '2024-11-27 23:48:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (140, 1, 'User Melakukan Log Out', '2024-11-27 23:51:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (141, NULL, 'User ke Halaman Login', '2024-11-27 23:51:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (142, NULL, 'User ke Halaman Login', '2024-11-27 23:51:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (143, NULL, 'User melakukan Login', '2024-11-27 23:51:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (144, 2, 'User Membuka Dashboard', '2024-11-27 23:51:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (145, 2, 'User Membuka Menu Rahasia', '2024-11-27 23:52:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (146, 2, 'User Membuka Menu Rahasia', '2024-11-27 23:55:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (147, 2, 'User Membuka Menu Rahasia', '2024-11-27 23:56:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (148, 2, 'User Membuka Menu Rahasia', '2024-11-27 23:58:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (149, 2, 'User Membuka Menu Rahasia', '2024-11-27 23:59:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (150, 2, 'User Melakukan Edit Data Rahasia', '2024-11-28 00:00:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (151, 2, 'User Membuka Menu Rahasia', '2024-11-28 00:00:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (152, 2, 'User Membuka Menu Rahasia', '2024-11-28 00:02:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (153, 2, 'User melakukan Penghapusan Data Rahasia', '2024-11-28 00:03:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (154, 2, 'User Membuka Menu Rahasia', '2024-11-28 00:03:57', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (155, 2, 'User Membuka Menu Rahasia', '2024-11-28 00:05:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (156, 2, 'User Membuka Menu Profile', '2024-11-28 00:05:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (157, 2, 'User Mengganti Password Lama ke Baru', '2024-11-28 00:06:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (158, 2, 'User Membuka Menu Profile', '2024-11-28 00:06:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (159, 2, 'User Melakukan Log Out', '2024-11-28 00:06:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (160, NULL, 'User ke Halaman Login', '2024-11-28 00:06:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (161, NULL, 'User melakukan Login', '2024-11-28 00:06:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (162, 2, 'User Membuka Dashboard', '2024-11-28 00:06:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (163, 2, 'User Membuka Menu Profile', '2024-11-28 00:06:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (164, 2, 'User Mengganti Password Lama ke Baru', '2024-11-28 00:07:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (165, 2, 'User Membuka Menu Profile', '2024-11-28 00:07:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (166, 2, 'User Melakukan Log Out', '2024-11-28 00:07:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (167, NULL, 'User ke Halaman Login', '2024-11-28 00:07:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (168, NULL, 'User ke Halaman Login', '2024-11-28 00:07:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (169, NULL, 'User melakukan Login', '2024-11-28 00:08:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (170, 2, 'User Membuka Dashboard', '2024-11-28 00:08:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (171, 2, 'User Melakukan Log Out', '2024-11-28 00:08:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (172, NULL, 'User ke Halaman Login', '2024-11-28 00:08:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (173, NULL, 'User Membuka Sign Up', '2024-11-28 00:08:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (174, NULL, 'User melakukan Sign Up', '2024-11-28 00:09:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (175, NULL, 'User ke Halaman Login', '2024-11-28 00:09:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (176, NULL, 'User melakukan Login', '2024-11-28 00:09:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (177, 4, 'User Membuka Dashboard', '2024-11-28 00:09:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (178, 4, 'User Membuka Menu Rahasia', '2024-11-28 00:09:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (179, 4, 'User Melakukan Log Out', '2024-11-28 00:09:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (180, NULL, 'User ke Halaman Login', '2024-11-28 00:09:57', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (181, NULL, 'User Membuka Sign Up', '2024-11-28 00:11:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (182, NULL, 'User Membuka Sign Up', '2024-11-28 00:13:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (183, NULL, 'User melakukan Sign Up', '2024-11-28 00:13:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (184, NULL, 'User Membuka Sign Up', '2024-11-28 00:13:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (185, NULL, 'User Membuka Sign Up', '2024-11-28 00:15:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (186, NULL, 'User melakukan Sign Up', '2024-11-28 00:15:47', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (187, NULL, 'User Membuka Sign Up', '2024-11-28 00:15:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (188, NULL, 'User ke Halaman Login', '2024-11-28 08:59:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (189, NULL, 'User ke Halaman Login', '2024-11-28 08:59:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (190, NULL, 'User Membuka Sign Up', '2024-11-28 09:38:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (191, NULL, 'User ke Halaman Login', '2024-12-03 08:51:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (192, NULL, 'User melakukan Login', '2024-12-03 08:51:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (193, 1, 'User Membuka Dashboard', '2024-12-03 08:51:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (194, 1, 'User Membuka Menu Rahasia', '2024-12-03 08:53:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (195, 1, 'User Membuka Menu Rahasia', '2024-12-03 08:54:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (196, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 08:55:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (197, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 08:59:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (198, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 09:07:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (199, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 11:03:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (200, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 11:28:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (201, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 11:34:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (202, 1, 'User Membuka Dashboard', '2024-12-03 11:41:02', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (203, 1, 'User Membuka Menu User', '2024-12-03 11:41:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (204, 1, 'User Membuka Menu Rahasia', '2024-12-03 11:41:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (205, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 11:41:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (206, 1, 'User Membuka Dashboard', '2024-12-03 11:46:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (207, 1, 'User Membuka Menu Rahasia', '2024-12-03 11:46:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (208, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 11:46:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (209, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 11:59:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (210, 1, 'User Melakukan Tambah Rahasia', '2024-12-03 12:00:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (211, 1, 'User Membuka Menu Rahasia', '2024-12-03 12:00:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (212, 1, 'User Membuka Menu Rahasia', '2024-12-03 12:02:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (213, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 12:02:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (214, 1, 'User Melakukan Tambah Rahasia', '2024-12-03 12:03:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (215, 1, 'User Membuka Menu Rahasia', '2024-12-03 12:03:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (216, 1, 'User Membuka Menu Rahasia', '2024-12-03 12:45:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (217, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 12:45:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (218, 1, 'User Melakukan Tambah Rahasia', '2024-12-03 12:46:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (219, 1, 'User Membuka Menu Rahasia', '2024-12-03 12:46:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (220, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 12:47:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (221, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 13:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (222, 1, 'User Melakukan Tambah Rahasia', '2024-12-03 13:00:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (223, 1, 'User Membuka Menu Rahasia', '2024-12-03 13:00:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (224, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 13:01:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (225, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-03 13:03:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (226, 1, 'User Melakukan Tambah Rahasia', '2024-12-03 13:04:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (227, 1, 'User Membuka Menu Rahasia', '2024-12-03 13:04:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (228, 1, 'User Membuka Menu Profile', '2024-12-03 13:16:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (229, 1, 'User Membuka Menu Profile', '2024-12-03 13:37:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (230, 1, 'User Melakukan Edit Profile', '2024-12-03 13:37:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (231, 1, 'User Membuka Menu Profile', '2024-12-03 13:37:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (232, 1, 'User Melakukan Edit Profile', '2024-12-03 13:37:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (233, 1, 'User Membuka Menu Profile', '2024-12-03 13:37:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (234, 1, 'User Membuka Menu Profile', '2024-12-03 13:43:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (235, 1, 'User Membuka Menu Profile', '2024-12-03 13:43:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (236, 1, 'User Membuka Menu Profile', '2024-12-03 13:45:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (237, 1, 'User Membuka Menu Profile', '2024-12-03 13:48:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (238, 1, 'User Membuka Menu Profile', '2024-12-03 14:03:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (239, 1, 'User Membuka Menu Profile', '2024-12-03 14:05:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (240, 1, 'User Membuka Menu Profile', '2024-12-03 14:06:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (241, 1, 'User Membuka Menu Profile', '2024-12-03 14:06:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (242, 1, 'User Membuka Menu Profile', '2024-12-03 14:06:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (243, 1, 'User Membuka Menu Profile', '2024-12-03 14:08:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (244, 1, 'User Melakukan Log Out', '2024-12-03 14:08:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (245, NULL, 'User ke Halaman Login', '2024-12-03 14:08:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (246, NULL, 'User melakukan Login', '2024-12-03 14:09:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (247, 4, 'User Membuka Dashboard', '2024-12-03 14:09:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (248, 4, 'User Membuka Menu Profile', '2024-12-03 14:09:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (249, 4, 'User Membuka Menu Profile', '2024-12-03 14:09:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (250, 4, 'User Membuka Menu Profile', '2024-12-03 14:18:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (251, 4, 'User Melakukan Log Out', '2024-12-03 14:18:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (252, NULL, 'User ke Halaman Login', '2024-12-03 14:18:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (253, NULL, 'User melakukan Login', '2024-12-03 14:18:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (254, 4, 'User Membuka Dashboard', '2024-12-03 14:18:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (255, 4, 'User Membuka Menu Profile', '2024-12-03 14:18:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (256, 4, 'User Membuka Menu Profile', '2024-12-03 14:19:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (257, 4, 'User Melakukan Log Out', '2024-12-03 14:20:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (258, NULL, 'User ke Halaman Login', '2024-12-03 14:20:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (259, NULL, 'User melakukan Login', '2024-12-03 14:21:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (260, 4, 'User Membuka Dashboard', '2024-12-03 14:21:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (261, 4, 'User Membuka Menu Profile', '2024-12-03 14:22:02', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (262, 4, 'User Membuka Menu Profile', '2024-12-03 14:22:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (263, 4, 'User Melakukan Log Out', '2024-12-03 14:24:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (264, NULL, 'User ke Halaman Login', '2024-12-03 14:24:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (265, NULL, 'User melakukan Login', '2024-12-03 14:24:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (266, 4, 'User Membuka Dashboard', '2024-12-03 14:24:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (267, 4, 'User Membuka Menu Profile', '2024-12-03 14:24:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (268, 4, 'User Membuka Menu Profile', '2024-12-03 14:25:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (269, 4, 'User Melakukan Log Out', '2024-12-03 14:26:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (270, NULL, 'User ke Halaman Login', '2024-12-03 14:26:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (271, NULL, 'User melakukan Login', '2024-12-03 14:26:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (272, 4, 'User Membuka Dashboard', '2024-12-03 14:26:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (273, 4, 'User Melakukan Log Out', '2024-12-03 14:26:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (274, NULL, 'User ke Halaman Login', '2024-12-03 14:26:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (275, NULL, 'User melakukan Login', '2024-12-03 14:26:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (276, 1, 'User Membuka Dashboard', '2024-12-03 14:26:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (277, 1, 'User Membuka Menu Profile', '2024-12-03 14:26:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (278, 1, 'User Membuka Menu Profile', '2024-12-03 14:26:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (279, 1, 'User Membuka Menu Profile', '2024-12-03 14:29:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (280, 1, 'User Membuka Menu Profile', '2024-12-03 14:29:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (281, 1, 'User Membuka Menu Profile', '2024-12-03 14:30:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (282, 1, 'User Membuka Menu Profile', '2024-12-03 14:31:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (283, 1, 'User Membuka Dashboard', '2024-12-03 14:32:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (284, 1, 'User Membuka Menu Profile', '2024-12-03 14:32:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (285, 1, 'User Membuka Menu Profile', '2024-12-03 14:38:47', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (286, 1, 'User Membuka Menu Profile', '2024-12-03 14:39:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (287, 1, 'User Membuka Menu Profile', '2024-12-03 14:39:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (288, 1, 'User Membuka Menu Profile', '2024-12-03 14:39:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (289, 1, 'User Membuka Menu Profile', '2024-12-03 14:44:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (290, 1, 'User Membuka Menu Profile', '2024-12-03 14:44:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (291, 1, 'User Membuka Menu Profile', '2024-12-03 14:44:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (292, 1, 'User Membuka Menu Profile', '2024-12-03 14:45:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (293, 1, 'User Membuka Menu Profile', '2024-12-03 14:45:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (294, 1, 'User Membuka Menu Profile', '2024-12-03 14:45:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (295, 1, 'User Membuka Menu Profile', '2024-12-03 14:48:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (296, 1, 'User Membuka Menu Profile', '2024-12-03 14:49:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (297, 1, 'User Membuka Menu Profile', '2024-12-03 14:49:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (298, 1, 'User Membuka Menu Profile', '2024-12-03 14:50:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (299, 1, 'User Membuka Menu Profile', '2024-12-03 14:50:54', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (300, 1, 'User Membuka Menu Profile', '2024-12-03 14:51:45', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (301, 1, 'User Membuka Menu Profile', '2024-12-03 14:51:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (302, 1, 'User Membuka Menu Profile', '2024-12-03 14:52:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (303, 1, 'User Membuka Menu Profile', '2024-12-03 14:55:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (304, 1, 'User Membuka Menu Profile', '2024-12-03 14:55:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (305, 1, 'User Membuka Menu Profile', '2024-12-03 14:59:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (306, 1, 'User Membuka Menu Profile', '2024-12-03 15:00:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (307, 1, 'User Membuka Menu Profile', '2024-12-03 15:00:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (308, NULL, 'User ke Halaman Login', '2024-12-04 07:24:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (309, NULL, 'User melakukan Login', '2024-12-04 07:25:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (310, NULL, 'User ke Halaman Login', '2024-12-04 07:25:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (311, NULL, 'User melakukan Login', '2024-12-04 07:25:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (312, 1, 'User Membuka Dashboard', '2024-12-04 07:25:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (313, 1, 'User Membuka Menu Profile', '2024-12-04 07:25:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (314, 1, 'User Membuka Menu Profile', '2024-12-04 07:28:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (315, 1, 'User Membuka Menu Profile', '2024-12-04 07:29:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (316, 1, 'User Membuka Menu Profile', '2024-12-04 07:31:45', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (317, 1, 'User Membuka Menu Profile', '2024-12-04 07:32:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (318, 1, 'User Membuka Menu Profile', '2024-12-04 07:33:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (319, 1, 'User Membuka Menu Rahasia', '2024-12-04 07:33:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (320, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-04 07:33:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (321, 1, 'User Membuka Menu Rahasia', '2024-12-04 07:33:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (322, 1, 'User Melakukan Log Out', '2024-12-04 07:33:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (323, NULL, 'User ke Halaman Login', '2024-12-04 07:33:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (324, NULL, 'User ke Halaman Login', '2024-12-04 07:34:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (325, NULL, 'User melakukan Login', '2024-12-04 07:34:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (326, 1, 'User Membuka Dashboard', '2024-12-04 07:34:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (327, 1, 'User Membuka Menu Rahasia', '2024-12-04 07:34:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (328, 1, 'User Melakukan Log Out', '2024-12-04 07:34:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (329, NULL, 'User ke Halaman Login', '2024-12-04 07:34:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (330, NULL, 'User melakukan Login', '2024-12-04 07:34:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (331, 1, 'User Membuka Dashboard', '2024-12-04 07:34:47', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (332, 1, 'User Membuka Menu Profile', '2024-12-04 07:34:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (333, 1, 'User Membuka Menu Profile', '2024-12-04 07:35:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (334, 1, 'User Melakukan Log Out', '2024-12-04 07:35:40', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (335, NULL, 'User ke Halaman Login', '2024-12-04 07:35:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (336, NULL, 'User ke Halaman Login', '2024-12-04 12:57:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (337, NULL, 'User melakukan Login', '2024-12-04 13:03:02', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (338, NULL, 'User ke Halaman Login', '2024-12-04 13:03:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (339, NULL, 'User melakukan Login', '2024-12-04 13:03:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (340, 1, 'User Membuka Dashboard', '2024-12-04 13:03:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (341, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:04:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (342, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:18:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (343, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:18:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (344, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:29:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (345, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:33:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (346, 1, 'User Membuka Menu Profile', '2024-12-04 13:33:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (347, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:33:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (348, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:38:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (349, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:38:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (350, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (351, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (352, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (353, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (354, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (355, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (356, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (357, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (358, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:38:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (359, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (360, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (361, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (362, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (363, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (364, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (365, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (366, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (367, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:42:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (368, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (369, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (370, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (371, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (372, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (373, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (374, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (375, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (376, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:44:51', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (377, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (378, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (379, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (380, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (381, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (382, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (383, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (384, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (385, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:48:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (386, 1, 'User Melakukan Edit Data Rahasia', '2024-12-04 13:49:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (387, 1, 'User Membuka Menu Rahasia', '2024-12-04 13:49:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (388, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (389, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (390, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (391, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (392, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (393, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (394, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (395, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (396, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:49:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (397, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (398, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (399, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (400, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (401, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (402, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (403, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (404, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (405, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (406, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (407, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (408, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (409, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (410, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (411, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (412, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (413, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (414, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (415, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (416, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (417, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (418, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (419, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (420, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (421, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (422, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (423, 1, 'User Membuka Menu Edit Rahasia', '2024-12-04 13:50:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (424, NULL, 'User ke Halaman Login', '2024-12-08 14:59:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (425, NULL, 'User melakukan Login', '2024-12-08 14:59:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (426, NULL, 'User ke Halaman Login', '2024-12-08 14:59:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (427, NULL, 'User melakukan Login', '2024-12-08 14:59:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (428, NULL, 'User ke Halaman Login', '2024-12-08 14:59:57', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (429, NULL, 'User melakukan Login', '2024-12-08 15:00:02', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (430, NULL, 'User ke Halaman Login', '2024-12-08 15:00:02', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (431, NULL, 'User melakukan Login', '2024-12-08 15:00:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (432, 4, 'User Membuka Dashboard', '2024-12-08 15:00:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (433, 4, 'User Membuka Menu Profile', '2024-12-08 15:00:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (434, 4, 'User Melakukan Log Out', '2024-12-08 16:10:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (435, NULL, 'User ke Halaman Login', '2024-12-08 16:10:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (436, NULL, 'User melakukan Login', '2024-12-08 16:10:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (437, 4, 'User Membuka Dashboard', '2024-12-08 16:10:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (438, 4, 'User Membuka Menu Rahasia', '2024-12-08 16:11:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (439, 4, 'User Membuka Menu Tambah Rahasia', '2024-12-08 16:20:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (440, 4, 'User Melakukan Tambah Rahasia', '2024-12-08 16:20:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (441, 4, 'User Membuka Menu Rahasia', '2024-12-08 16:20:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (442, 4, 'User Melakukan Log Out', '2024-12-08 16:20:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (443, NULL, 'User ke Halaman Login', '2024-12-08 16:20:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (444, NULL, 'User melakukan Login', '2024-12-08 16:23:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (445, 1, 'User Membuka Dashboard', '2024-12-08 16:23:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (446, 1, 'User Membuka Menu Rahasia', '2024-12-08 16:25:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (447, 1, 'User melakukan Penghapusan Data Rahasia', '2024-12-08 16:25:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (448, 1, 'User Membuka Menu Rahasia', '2024-12-08 16:25:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (449, 1, 'User melakukan Penghapusan Data Rahasia', '2024-12-08 16:25:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (450, 1, 'User Membuka Menu Rahasia', '2024-12-08 16:25:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (451, 1, 'User melakukan Penghapusan Data Rahasia', '2024-12-08 16:25:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (452, 1, 'User Membuka Menu Rahasia', '2024-12-08 16:25:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (453, 1, 'User melakukan Penghapusan Data Rahasia', '2024-12-08 16:25:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (454, 1, 'User Membuka Menu Rahasia', '2024-12-08 16:25:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (455, 1, 'User Membuka Dashboard', '2024-12-08 16:25:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (456, 1, 'User Membuka Menu Rahasia', '2024-12-08 16:34:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (457, 1, 'User Membuka Menu Tambah Rahasia', '2024-12-08 16:34:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (458, 1, 'User Membuka Dashboard', '2024-12-08 16:34:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (459, 1, 'User Membuka Menu Rahasia', '2024-12-08 16:34:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (460, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (461, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (462, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (463, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (464, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (465, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (466, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (467, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (468, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 16:35:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (469, 1, 'User Membuka Menu User', '2024-12-08 16:41:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (470, 1, 'User Membuka Menu User', '2024-12-08 16:41:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (471, 1, 'User Membuka Menu User', '2024-12-08 16:41:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (472, 1, 'User Membuka Menu Restore Edit User', '2024-12-08 17:02:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (473, 1, 'User Membuka Menu Restore Hapus User', '2024-12-08 17:03:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (474, 1, 'User membuka Log Activity', '2024-12-08 17:15:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (475, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (476, 1, 'User membuka Log Activity', '2024-12-08 17:15:12', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (477, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (478, 1, 'User membuka Log Activity', '2024-12-08 17:15:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (479, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (480, 1, 'User membuka Log Activity', '2024-12-08 17:15:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (481, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (482, 1, 'User membuka Log Activity', '2024-12-08 17:15:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (483, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (484, 1, 'User membuka Log Activity', '2024-12-08 17:15:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (485, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (486, 1, 'User membuka Log Activity', '2024-12-08 17:15:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (487, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (488, 1, 'User membuka Log Activity', '2024-12-08 17:15:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (489, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (490, 1, 'User membuka Log Activity', '2024-12-08 17:15:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (491, 1, 'User Melakukan Hapus Activity', '2024-12-08 17:15:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (492, 1, 'User membuka Log Activity', '2024-12-08 17:15:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (493, 1, 'User Membuka Menu Setting', '2024-12-08 17:27:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (494, 1, 'User Membuka Menu Rahasia', '2024-12-08 17:40:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (495, 1, 'User Membuka Menu User', '2024-12-08 17:42:54', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (496, 1, 'User Membuka Menu Restore Edit User', '2024-12-08 17:43:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (497, 1, 'User Membuka Menu User', '2024-12-08 17:59:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (498, 1, 'User Membuka Menu Rahasia', '2024-12-08 18:23:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (499, 1, 'User Membuka Menu Rahasia', '2024-12-08 18:24:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (500, 1, 'User Melakukan Log Out', '2024-12-08 18:24:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (501, NULL, 'User ke Halaman Login', '2024-12-08 18:24:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (502, NULL, 'User melakukan Login', '2024-12-08 18:24:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (503, 1, 'User Membuka Dashboard', '2024-12-08 18:24:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (504, 1, 'User Membuka Menu Rahasia', '2024-12-08 18:24:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (505, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (506, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (507, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (508, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (509, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (510, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (511, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (512, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (513, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:25:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (514, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:40', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (515, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (516, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (517, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (518, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (519, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (520, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (521, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (522, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:31:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (523, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (524, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (525, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (526, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (527, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (528, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (529, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (530, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (531, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 18:35:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (532, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (533, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (534, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (535, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (536, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (537, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (538, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (539, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (540, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (541, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:14:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (542, 1, 'User Membuka Menu Rahasia', '2024-12-08 20:15:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (543, 1, 'User Membuka Menu Rahasia', '2024-12-08 20:15:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (544, 1, 'User Membuka Menu Rahasia', '2024-12-08 20:15:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (545, 1, 'User Membuka Dashboard', '2024-12-08 20:16:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (546, 1, 'User Membuka Menu User', '2024-12-08 20:16:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (547, 1, 'User Membuka Menu Rahasia', '2024-12-08 20:16:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (548, 1, 'User Membuka Menu User', '2024-12-08 20:16:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (549, 1, 'User Melakukan Log Out', '2024-12-08 20:16:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (550, NULL, 'User ke Halaman Login', '2024-12-08 20:16:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (551, NULL, 'User melakukan Login', '2024-12-08 20:16:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (552, 1, 'User Membuka Dashboard', '2024-12-08 20:16:34', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (553, 1, 'User Membuka Menu Rahasia', '2024-12-08 20:16:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (554, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (555, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (556, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (557, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (558, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:17', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (559, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (560, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (561, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (562, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:17:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (563, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (564, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (565, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (566, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (567, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (568, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (569, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (570, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (571, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (572, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (573, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (574, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (575, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (576, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (577, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (578, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (579, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (580, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:20:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (581, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (582, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (583, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (584, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (585, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (586, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (587, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (588, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (589, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:22:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (590, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (591, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (592, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (593, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (594, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (595, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (596, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (597, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (598, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:23:19', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (599, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:40', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (600, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (601, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (602, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (603, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (604, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:41', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (605, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (606, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (607, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:28:42', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (608, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (609, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:23', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (610, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (611, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (612, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (613, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (614, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (615, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (616, 1, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:29:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (617, 1, 'User Membuka Dashboard', '2024-12-08 20:30:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (618, 1, 'User Membuka Menu User', '2024-12-08 20:31:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (619, 1, 'User Melakukan Tambah User', '2024-12-08 20:31:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (620, 1, 'User Membuka Menu User', '2024-12-08 20:31:59', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (621, 1, 'User Melakukan Log Out', '2024-12-08 20:32:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (622, NULL, 'User ke Halaman Login', '2024-12-08 20:32:04', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (623, NULL, 'User melakukan Login', '2024-12-08 20:32:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (624, 5, 'User Membuka Dashboard', '2024-12-08 20:32:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (625, 5, 'User Membuka Menu Rahasia', '2024-12-08 20:32:11', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (626, 5, 'User Membuka Menu Tambah Rahasia', '2024-12-08 20:32:13', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (627, 5, 'User Melakukan Tambah Rahasia', '2024-12-08 20:32:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (628, 5, 'User Membuka Menu Rahasia', '2024-12-08 20:32:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (629, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (630, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (631, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (632, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (633, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (634, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (635, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (636, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (637, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:33:25', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (638, 5, 'User Membuka Dashboard', '2024-12-08 20:33:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (639, 5, 'User Membuka Menu Profile', '2024-12-08 20:33:47', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (640, 5, 'User Membuka Menu Profile', '2024-12-08 20:34:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (641, 5, 'User Melakukan Log Out', '2024-12-08 20:34:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (642, NULL, 'User ke Halaman Login', '2024-12-08 20:34:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (643, NULL, 'User ke Halaman Login', '2024-12-08 20:37:26', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (644, NULL, 'User melakukan Login', '2024-12-08 20:37:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (645, 1, 'User Membuka Dashboard', '2024-12-08 20:37:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (646, 1, 'User Membuka Menu Profile', '2024-12-08 20:37:40', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (647, 1, 'User Melakukan Log Out', '2024-12-08 20:37:45', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (648, NULL, 'User ke Halaman Login', '2024-12-08 20:37:45', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (649, NULL, 'User melakukan Login', '2024-12-08 20:37:53', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (650, 5, 'User Membuka Dashboard', '2024-12-08 20:37:54', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (651, 5, 'User Melakukan Log Out', '2024-12-08 20:38:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (652, NULL, 'User ke Halaman Login', '2024-12-08 20:38:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (653, NULL, 'User melakukan Login', '2024-12-08 20:41:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (654, 5, 'User Membuka Dashboard', '2024-12-08 20:41:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (655, 5, 'User Membuka Menu Rahasia', '2024-12-08 20:41:39', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (656, 5, 'User Membuka Menu Tambah Rahasia', '2024-12-08 20:41:48', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (657, 5, 'User Melakukan Tambah Rahasia', '2024-12-08 20:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (658, 5, 'User Membuka Menu Rahasia', '2024-12-08 20:42:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (659, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (660, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (661, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:29', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (662, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (663, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (664, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (665, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (666, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (667, 5, 'User Membuka Menu Edit Rahasia', '2024-12-08 20:43:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (668, 5, 'User Membuka Menu Profile', '2024-12-08 20:44:15', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (669, 5, 'User Melakukan Log Out', '2024-12-08 20:44:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (670, NULL, 'User ke Halaman Login', '2024-12-08 20:44:28', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (671, NULL, 'User ke Halaman Login', '2024-12-08 20:45:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (672, NULL, 'User melakukan Login', '2024-12-08 20:45:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (673, 1, 'User Membuka Dashboard', '2024-12-08 20:45:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (674, 1, 'User Melakukan Log Out', '2024-12-08 20:45:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (675, NULL, 'User ke Halaman Login', '2024-12-08 20:45:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (676, NULL, 'User melakukan Login', '2024-12-08 20:46:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (677, 1, 'User Membuka Dashboard', '2024-12-08 20:46:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (678, 1, 'User Membuka Menu Profile', '2024-12-08 20:47:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (679, 1, 'User Mengedit Foto Profile', '2024-12-08 20:47:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (680, 1, 'User Membuka Menu Profile', '2024-12-08 20:47:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (681, 1, 'User Membuka Menu User', '2024-12-08 20:48:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (682, 1, 'User Melakukan Tambah User', '2024-12-08 20:48:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (683, 1, 'User Membuka Menu User', '2024-12-08 20:48:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (684, 1, 'User Melakukan Edit User', '2024-12-08 20:48:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (685, 1, 'User Membuka Menu User', '2024-12-08 20:48:50', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (686, 1, 'User melakukan Hapus User', '2024-12-08 20:48:54', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (687, 1, 'User Membuka Menu User', '2024-12-08 20:48:54', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (688, 1, 'User Membuka Menu Restore Hapus User', '2024-12-08 20:49:01', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (689, 1, 'User melakukan Restore User', '2024-12-08 20:49:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (690, 1, 'User Membuka Menu User', '2024-12-08 20:49:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (691, 1, 'User Membuka Menu Restore Edit User', '2024-12-08 20:49:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (692, 1, 'User Restore Data User', '2024-12-08 20:49:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (693, 1, 'User Membuka Menu User', '2024-12-08 20:49:16', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (694, 1, 'User melakukan Hapus User', '2024-12-08 20:49:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (695, 1, 'User Membuka Menu User', '2024-12-08 20:49:21', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (696, 1, 'User Membuka Menu Restore Hapus User', '2024-12-08 20:49:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (697, 1, 'User melakukan Penghapusan Data User Permanen', '2024-12-08 20:49:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (698, 1, 'User Membuka Menu User', '2024-12-08 20:49:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (699, 1, 'User Membuka Menu Restore Hapus User', '2024-12-08 20:49:30', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (700, 1, 'User membuka Log Activity', '2024-12-08 20:49:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (701, 1, 'User Membuka Menu Setting', '2024-12-08 20:49:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (702, 1, 'User Melakukan Edit Setting', '2024-12-08 20:49:54', '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_activity` VALUES (703, 1, 'User Membuka Menu Setting', '2024-12-08 20:49:54', '0000-00-00 00:00:00', NULL);

-- ----------------------------
-- Table structure for tb_otp
-- ----------------------------
DROP TABLE IF EXISTS `tb_otp`;
CREATE TABLE `tb_otp`  (
  `id_otp` int NOT NULL AUTO_INCREMENT,
  `otp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_otp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_otp
-- ----------------------------
INSERT INTO `tb_otp` VALUES (1, '872643', '2024-11-27 09:50:24');
INSERT INTO `tb_otp` VALUES (2, '949710', '2024-11-27 09:56:46');
INSERT INTO `tb_otp` VALUES (3, '115266', '2024-11-27 10:01:47');
INSERT INTO `tb_otp` VALUES (4, '315310', '2024-11-27 10:08:41');
INSERT INTO `tb_otp` VALUES (5, '440740', '2024-11-27 10:09:53');
INSERT INTO `tb_otp` VALUES (6, '903033', '2024-11-27 10:15:28');
INSERT INTO `tb_otp` VALUES (7, '634703', '2024-11-27 10:16:25');
INSERT INTO `tb_otp` VALUES (8, '788167', '2024-11-27 10:18:03');
INSERT INTO `tb_otp` VALUES (9, '644428', '2024-11-27 10:19:18');
INSERT INTO `tb_otp` VALUES (10, '621603', '2024-11-27 10:22:47');
INSERT INTO `tb_otp` VALUES (11, '639927', '2024-11-27 10:26:54');
INSERT INTO `tb_otp` VALUES (12, '488247', '2024-11-27 10:28:32');
INSERT INTO `tb_otp` VALUES (17, '833704', '2024-12-03 14:05:38');
INSERT INTO `tb_otp` VALUES (18, '881002', '2024-12-03 14:07:19');
INSERT INTO `tb_otp` VALUES (19, '784584', '2024-12-03 14:09:33');
INSERT INTO `tb_otp` VALUES (20, '306777', '2024-12-03 14:18:59');
INSERT INTO `tb_otp` VALUES (21, '192470', '2024-12-03 14:22:17');
INSERT INTO `tb_otp` VALUES (22, '224915', '2024-12-03 14:25:07');
INSERT INTO `tb_otp` VALUES (23, '462252', '2024-12-03 14:26:47');
INSERT INTO `tb_otp` VALUES (24, '291839', '2024-12-03 14:29:39');
INSERT INTO `tb_otp` VALUES (25, '233619', '2024-12-03 14:30:35');
INSERT INTO `tb_otp` VALUES (26, '533501', '2024-12-03 14:32:16');
INSERT INTO `tb_otp` VALUES (27, '820134', '2024-12-03 14:38:52');
INSERT INTO `tb_otp` VALUES (28, '923468', '2024-12-03 14:44:18');
INSERT INTO `tb_otp` VALUES (29, '893212', '2024-12-03 14:45:21');
INSERT INTO `tb_otp` VALUES (30, '732387', '2024-12-03 14:49:04');
INSERT INTO `tb_otp` VALUES (31, '795796', '2024-12-03 14:50:59');
INSERT INTO `tb_otp` VALUES (32, '970130', '2024-12-03 14:51:49');
INSERT INTO `tb_otp` VALUES (33, '137786', '2024-12-03 14:52:18');
INSERT INTO `tb_otp` VALUES (34, '662918', '2024-12-03 14:52:35');
INSERT INTO `tb_otp` VALUES (35, '579525', '2024-12-03 14:55:34');
INSERT INTO `tb_otp` VALUES (36, '158041', '2024-12-03 14:59:14');
INSERT INTO `tb_otp` VALUES (49, '398375', '2024-12-08 17:40:22');
INSERT INTO `tb_otp` VALUES (50, '456803', '2024-12-08 18:23:12');
INSERT INTO `tb_otp` VALUES (51, '329633', '2024-12-08 18:23:42');
INSERT INTO `tb_otp` VALUES (53, '728875', '2024-12-08 20:15:36');
INSERT INTO `tb_otp` VALUES (54, '476128', '2024-12-08 20:15:39');
INSERT INTO `tb_otp` VALUES (55, '807324', '2024-12-08 20:15:45');

-- ----------------------------
-- Table structure for tb_rahasia
-- ----------------------------
DROP TABLE IF EXISTS `tb_rahasia`;
CREATE TABLE `tb_rahasia`  (
  `id_rahasia` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isi_rahasia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_rahasia`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rahasia
-- ----------------------------
INSERT INTO `tb_rahasia` VALUES (1, 1, 'Bai', 'KOSO', NULL, NULL);
INSERT INTO `tb_rahasia` VALUES (7, 1, 'hb,hb', 'jh hjbhbh', '1733205651_9674b6d1e75156a16076.jpg', '1733205875_2fab91cd7f374ae66a7f.mp4');
INSERT INTO `tb_rahasia` VALUES (8, 4, 'tes', 'benge', '', '');
INSERT INTO `tb_rahasia` VALUES (9, 5, 'tes', 'ada ka', '1733664778_3d3c9cb9d91a182c4a66.jpg', '1733664778_08bcdbadf66249c2b5a9.mp4');
INSERT INTO `tb_rahasia` VALUES (10, 5, 'tes', 'ada la', '1733665369_2667617b015ea8f1c22e.jpg', '1733665369_2e0d8abacd1b1fa1db35.mp4');

-- ----------------------------
-- Table structure for tb_setting
-- ----------------------------
DROP TABLE IF EXISTS `tb_setting`;
CREATE TABLE `tb_setting`  (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `nama_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_tab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_dashboard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_setting
-- ----------------------------
INSERT INTO `tb_setting` VALUES (1, 'Raha', 'logo-sph_1.png', 'engine bay.jpg', 'logo-sph_3.png');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  `backup_at` datetime NULL DEFAULT NULL,
  `backup_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'leonardojaylenson28@gmail.com', '1733665638_72106afc5bd8634ee4f6.jpg', 'L', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (2, 'pelanggan', 'c4ca4238a0b923820dcc509a6f75849b', 'pelanggan@gmail.com', 'avatar-3.png', 'L', '2', '2024-11-28 00:07:08', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (4, 'coba', 'c4ca4238a0b923820dcc509a6f75849b', 'leonardojaylenson28@gmail.com', 'avatar-3.png', 'L', '2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (5, 'tes', 'c4ca4238a0b923820dcc509a6f75849b', 'lieerwin514@gmail.com', 'avatar-3.png', 'L', '2', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_user_backup
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_backup`;
CREATE TABLE `tb_user_backup`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  `backup_at` datetime NULL DEFAULT NULL,
  `backup_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_backup
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
