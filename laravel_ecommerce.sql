/*
 Navicat Premium Data Transfer

 Source Server         : Local - Mysql Server
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel_ecommerce

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 06/03/2019 22:07:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ayar
-- ----------------------------
DROP TABLE IF EXISTS `ayar`;
CREATE TABLE `ayar`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `anahtar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deger` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ayar
-- ----------------------------
INSERT INTO `ayar` VALUES (1, 'anasayfa_slider_urun_adet', '8');
INSERT INTO `ayar` VALUES (2, 'anasayfa_liste_urun_adet', '8');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int(11) NULL DEFAULT NULL,
  `kategori_adi` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `olusturma_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guncelleme_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `silinme_tarihi` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, NULL, 'Elektronik', 'elektronik', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (2, 1, 'Bilgisayar/Tablet', 'bilgisayar-tablet', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (3, 1, 'Telefon', 'telefon', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (4, 1, 'TV ve Ses Sistemleri', 'tv-ses-sistemleri', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (5, 1, 'Kamera', 'kamera', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (6, NULL, 'Kitap', 'kitap', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (7, 6, 'Edebiyat', 'edebiyat', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (8, 6, 'Çocuk', 'cocuk', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (9, 6, 'Bilgisayar', 'bilgisayar', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (10, 6, 'Sınavlara Hazırlık', 'sinavlara-hazirlik', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (11, NULL, 'Dergi', 'dergi', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (12, NULL, 'Mobilya', 'mobilya', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (13, NULL, 'Dekorasyon', 'dekorasyon', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (14, NULL, 'Kozmetik', 'kozmetik', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (15, NULL, 'Kişisel Bakım', 'kisisel-bakim', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (16, NULL, 'Giyim ve Moda', 'giyim-moda', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (17, NULL, 'Anne ve Çocuk', 'anne-cocuk', '2017-10-29 13:49:05', '2017-10-29 13:49:05', NULL);
INSERT INTO `kategori` VALUES (18, 1, 'Elektronik Alt Kategori 2', 'elektronik-alt-kategori-2', '2018-01-06 11:45:47', '2018-01-06 12:28:24', '2018-01-06 12:28:24');
INSERT INTO `kategori` VALUES (20, NULL, 'Test Örnek', 'test', '2018-01-06 15:00:35', '2018-01-07 15:57:06', NULL);
INSERT INTO `kategori` VALUES (21, NULL, 'test', 'test', '2018-01-06 15:16:44', '2018-01-06 15:16:53', '2018-01-06 15:16:53');
INSERT INTO `kategori` VALUES (22, NULL, 'test2', 'test2', '2018-01-06 19:17:47', '2018-03-25 17:55:48', '2018-03-25 17:55:48');

-- ----------------------------
-- Table structure for kategori_urun
-- ----------------------------
DROP TABLE IF EXISTS `kategori_urun`;
CREATE TABLE `kategori_urun`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `urun_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kategori_urun_kategori_id_foreign`(`kategori_id`) USING BTREE,
  INDEX `kategori_urun_urun_id_foreign`(`urun_id`) USING BTREE,
  CONSTRAINT `kategori_urun_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `kategori_urun_urun_id_foreign` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori_urun
-- ----------------------------
INSERT INTO `kategori_urun` VALUES (2, 6, 3);
INSERT INTO `kategori_urun` VALUES (3, 7, 3);
INSERT INTO `kategori_urun` VALUES (5, 1, 1);
INSERT INTO `kategori_urun` VALUES (6, 1, 2);
INSERT INTO `kategori_urun` VALUES (8, 1, 1);
INSERT INTO `kategori_urun` VALUES (16, 1, 37);
INSERT INTO `kategori_urun` VALUES (17, 1, 31);
INSERT INTO `kategori_urun` VALUES (18, 5, 31);
INSERT INTO `kategori_urun` VALUES (19, 1, 36);
INSERT INTO `kategori_urun` VALUES (20, 1, 30);
INSERT INTO `kategori_urun` VALUES (21, 1, 29);
INSERT INTO `kategori_urun` VALUES (22, 3, 29);
INSERT INTO `kategori_urun` VALUES (23, 1, 28);
INSERT INTO `kategori_urun` VALUES (24, 14, 28);
INSERT INTO `kategori_urun` VALUES (25, 15, 28);
INSERT INTO `kategori_urun` VALUES (26, 16, 27);
INSERT INTO `kategori_urun` VALUES (27, 16, 26);
INSERT INTO `kategori_urun` VALUES (28, 16, 6);
INSERT INTO `kategori_urun` VALUES (29, 6, 9);
INSERT INTO `kategori_urun` VALUES (30, 6, 10);
INSERT INTO `kategori_urun` VALUES (31, 1, 12);
INSERT INTO `kategori_urun` VALUES (32, 16, 7);
INSERT INTO `kategori_urun` VALUES (33, 6, 8);
INSERT INTO `kategori_urun` VALUES (34, 6, 25);

-- ----------------------------
-- Table structure for kullanici
-- ----------------------------
DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE `kullanici`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifre` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktivasyon_anahtari` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `aktif_mi` tinyint(1) NOT NULL DEFAULT 0,
  `yonetici_mi` tinyint(1) NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `olusturma_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guncelleme_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `silinme_tarihi` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kullanici_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kullanici
-- ----------------------------
INSERT INTO `kullanici` VALUES (1, 'Cem Gündüzoğlu', 'cem@eticaret.test', '$2y$10$VMGPWO.DQiwHcFIP6qRFDuRNikIYhdyXh2I2dEPWqhLKTN9Nnh1Lu', NULL, 1, 1, 'ekYmoxOs8I1g1eYZHGbIR3fOqTzUzT5HCbU2OKllxdTZVuGoEQxjcSteUpMy', '2018-01-01 11:07:34', '2018-12-16 00:52:06', NULL);
INSERT INTO `kullanici` VALUES (2, 'Esra', 'esra@eticaret.test', '$2y$10$8mBzL1CN5SLB5XBOadlC8OhYwhtIe/zTtqacL3M4Qj5zSOvQfB3mu', NULL, 1, 0, 'nrUYamhJ3xsfesQJPNyzhf4evnCUlouBL1O3CqBrIzYuM8RhnPlmcQVw5A9S', '2018-01-01 11:07:34', '2018-06-19 21:47:43', NULL);
INSERT INTO `kullanici` VALUES (3, 'Carlo Boyle', 'mateo36@example.net', '$2y$10$KCBsICkaP9UUCgH0j6PQeeXRMecvhbTNTnMB5v9RCKlB4xO2V0d2O', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (4, 'Alan Koch Sr.', 'reinger.marcella@example.net', '$2y$10$WOc58Cyw2OAX.6GFSRvKT.l24DEigWf6VIKApg6Tz5VJRKnOonwFW', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (5, 'Chelsea Cassin II', 'wblock@example.net', '$2y$10$VwyGvx2IHi.2vTY6IDVDx.izQ0MDjzSsB9s1mvoZfs8U7blhsTi3q', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (6, 'Miss Norma Marks Jr.', 'boehm.nico@example.com', '$2y$10$SlHRe.rFepant9HNEGgiTOu5ACR3tAOVulolFflBx715t6Y3mg7k2', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (7, 'Anais Veum', 'dooley.kattie@example.org', '$2y$10$uBdV4scYKD7LFRhYCXiCS.BPKQ0c6JtO7FWnTY8TJOzsDSuvTZqW.', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (8, 'Devyn Schimmel', 'meghan.rosenbaum@example.net', '$2y$10$JDf10Ed2SeBIOzQS8zUmKe299svG06bEAfPSoPSJod3OWyE4VNGpu', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (9, 'Miss Daphnee Deckow DDS', 'xtowne@example.com', '$2y$10$5Dnp5o7Csfm3QKwkos5bQuLL24yzESYZki6Ef5AiGNqPRVLdAODyi', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (10, 'Miss Kelsi Kozey', 'rae.marvin@example.net', '$2y$10$xM7f9hpUXMbyW.TyRduE2O23QSRSs5ONyuLSrLzIlR8DKR2iCNrzq', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (11, 'Celine Beier', 'ephraim31@example.com', '$2y$10$igoY5z8Mh1YI7C3mRT5wsudnuEUo.C4En13mP8ouDg9W3WvkO9UAW', NULL, 1, 0, NULL, '2018-01-01 11:07:35', '2018-01-01 11:07:35', NULL);
INSERT INTO `kullanici` VALUES (12, 'Miss Adaline Konopelski', 'xzavier78@example.org', '$2y$10$s8vvNKc/ajyNevGU5rN68u7CYk1W0TMYrlfaXEKN1wV4WypGjuBwO', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (13, 'Providenci Schuster', 'ubaldo74@example.org', '$2y$10$2GxSN6ttu8e9FXo8QeiEk.zHOMJwH8F/r/P7bwIW/7rMAnEh5lK/i', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (14, 'Nakia Kirlin', 'rosamond.kshlerin@example.net', '$2y$10$cVYu/bgjXuZsspYG.s60MuA7QDx1NgMH6/vuU5dNp4NQc3ro6FIZm', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (15, 'Miss Meagan Cole DDS', 'htorp@example.org', '$2y$10$VRSlrn.qII4DRZjxeFK9POuaHCb.Te1hmR1QwWmyI4vQG7MBxJnRe', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (16, 'Ms. Anahi Marvin Sr.', 'mtoy@example.com', '$2y$10$17CShlIvpkX58ngSGAK/z.0tRYrGnDkK5UsrTbSB9kp19HAXkpw9W', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (17, 'Ms. Keara Kuvalis II', 'sanford.turner@example.net', '$2y$10$uf9GfN2pLzYIL2HMm6M5y.11hijKBH9KkLdb2hmA/KkmrOSRn0jDW', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (18, 'Mr. Gabe Fadel', 'durgan.melvin@example.net', '$2y$10$EuP8JrZjyJ0tpmAd/NoJoeLLoFTkgDk3OYu3pKg/HQRQiy/QbiUw6', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (19, 'Joyce Wilkinson', 'coty.schoen@example.org', '$2y$10$teeKaFqGlaJUPjhiInSHYeQpEAZ4r19.tYFEbnP53BbvfW5wKap4e', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (20, 'Dr. Bert Pfannerstill PhD', 'ratke.odessa@example.com', '$2y$10$sD7VMDuWLMPBxYuK0Y2DNu59YbOYz5bcgTC1ejl0.fCoIxMbaWyxu', NULL, 1, 0, NULL, '2018-01-01 11:07:36', '2018-01-01 11:07:36', NULL);
INSERT INTO `kullanici` VALUES (21, 'Ms. Eda Gutkowski', 'solon.abernathy@example.net', '$2y$10$5WUOGrAzkv/dB0lAiNADP.mgg8q5vhE66Z1CROS64Babl99v58bfW', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (22, 'Rae Klocko', 'cristal.considine@example.net', '$2y$10$BfvfBKblsVTC0XKxW63uKe7rMzUwxxJoquoUjISWzISm/XlFnoP96', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (23, 'Miss Giovanna Schneider', 'batz.alexzander@example.org', '$2y$10$ovezqJ7VrW6uX1Hxgc1Qi.VF7m0ImYk4fXRrV6rEXLurnvfVFoUzy', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (24, 'Aiyana Torp', 'drew78@example.net', '$2y$10$5CruXEvSAJmYAi5MJSDTHuIbM2ypT434O/E8daZ6hqkFsk5NpvYOu', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (25, 'Mr. Royal Ortiz', 'ladarius89@example.net', '$2y$10$qE4E3YKLtf1FFK0sgtaQ5.pnAFiBxWIvxISddTwKbxBA.yQgw30Z6', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (26, 'Mr. Cloyd Yundt DDS', 'devin11@example.com', '$2y$10$hLN2J/IeR0.YlMOSLIp1gOO0hkz8WSBIg3SDr0.1vye2Z6uuzFcSq', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (27, 'Dr. Travis O\'Reilly', 'billy02@example.net', '$2y$10$4UNL0v7PPFRAgmI15qqw.OuYAQbEv5pLsYyDAq8kvI0DgVs8spMWy', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (28, 'Kolby Wilkinson', 'effertz.wallace@example.com', '$2y$10$7l28/LO9PdzfxBMPl/bUkeDhBcjNMXFANO58ChrRl8xFgb7p/hbni', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (29, 'Dr. Claude Quitzon', 'tfritsch@example.org', '$2y$10$l0M6JW4K0BOS4eEHH2coqe9O5NbeRb4CgK/1vmztAaBikupaTA7ZW', NULL, 1, 0, NULL, '2018-01-01 11:07:37', '2018-01-01 11:07:37', NULL);
INSERT INTO `kullanici` VALUES (30, 'Lucienne Kohler I', 'curtis49@example.com', '$2y$10$1nswmOvIT6VxAStF04B2/.Q6KJbWnNxjbQwkMqsWhXD6YMswwlVYu', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (31, 'Bud Cummings MD', 'thompson.lulu@example.net', '$2y$10$0mQGtopjjjpS2jl4mZhLhuk8EkWJlKxH3sA/5kmbrauTIBTJf3IAe', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (32, 'Talia Rath', 'eschulist@example.net', '$2y$10$C.Ad2gUT7L9oYOEY0HroEeB0X7QxtmDJH31Hd07KTt0W5NT3fATYS', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (33, 'Rachael Schaden', 'mayert.sylvester@example.com', '$2y$10$nOL2AJCuFAd0pp/yif3Nauy.fESWZ2XbO1bfEDe7vrA3qlb6jkUTi', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (34, 'Desiree Harvey', 'will.jackie@example.net', '$2y$10$yHdx3y5X/lK2H5AhqqMZu.LLxz.aofWWnNXG6VRECczh5VekcAD/K', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (35, 'Dr. Peyton Hirthe Jr.', 'bpagac@example.org', '$2y$10$zrA/nq5eZSq2blh4rhkZ7elCz65KeTa0rXByNFcRbUF5U8PPDRVE.', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (36, 'Julius Schoen', 'zquigley@example.net', '$2y$10$zNl1ZYy9YJOM34PQGeL8O.Dw41FddfzdJeBYa.Jnzvm5D8yRncjx2', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (37, 'Della Jerde', 'ali96@example.net', '$2y$10$sbShAeFlFdsxqjh3.Go3euG7eMRlHCVI2huyJHRyZWvuMJbfhWvi.', NULL, 1, 0, NULL, '2018-01-01 11:07:38', '2018-01-01 11:07:38', NULL);
INSERT INTO `kullanici` VALUES (38, 'Charley Jacobi', 'aframi@example.net', '$2y$10$VuH0lJDW1lYmbf5s4SIGB.di91g/.1vTYwoLth8DMdOWGc4cQ/YMa', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (39, 'Ahmed Kulas', 'ziemann.kacie@example.org', '$2y$10$mdOQETYLxnPLcPxRKw7o5uXuoztHfev0KANx7N3RtOQA/tutQ7EZW', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (40, 'Dr. Elliot Toy V', 'holden24@example.com', '$2y$10$9oQVzIOeWNVdsuzzXHLwQePbKjkKAr6sZbmHXFdhAyymfn/G32PfK', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (41, 'Bret Heller', 'ymayert@example.com', '$2y$10$M47CMGOrHQfEZ9HVXJIKFuNbyK5dV0Bf0Mq8vcCI.0UwJi1qDWITS', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (42, 'Elijah Nikolaus', 'ludie.ferry@example.org', '$2y$10$U/.o70/t0uMiCt2bm7Y1jelYhcyl6UwHPziH8wz0Jpl2Dq/Ldade6', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (43, 'Marcelo Rempel', 'ewill@example.net', '$2y$10$/p6NNcuqEqJaybH5fQyA6.GPh9.NK4EiwKZvBbOdMt7CXtDbYpZm6', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (44, 'Vena Kutch III', 'rico.cole@example.com', '$2y$10$bTqw2xTQEIIn0XE04I7VUug1NIQFsgfgrwgks2pSCsiB7neR79yP2', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (45, 'Dr. Camilla Bogisich PhD', 'glind@example.net', '$2y$10$5DAitbnq1CSLX84xDIs2fOG2sPxkl0s6KyQteaQZ9gEGdJyftsHz6', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (46, 'Carson Okuneva MD', 'pearline63@example.com', '$2y$10$jAdYpSGKV9jqtPNkQzYTZOFtbo65sjySUSTAXVoC8pvANWdjy9kGO', NULL, 1, 0, NULL, '2018-01-01 11:07:39', '2018-01-01 11:07:39', NULL);
INSERT INTO `kullanici` VALUES (47, 'Ms. Itzel Schuster', 'carmelo66@example.net', '$2y$10$xMNdkm61NhH1N7JvMr33ruBiBurChv/OYaJVmEWBQ2kGoVWs9FrBG', NULL, 1, 0, NULL, '2018-01-01 11:07:40', '2018-01-01 11:07:40', NULL);
INSERT INTO `kullanici` VALUES (48, 'Melody Jacobi', 'nienow.casey@example.net', '$2y$10$kgAXu/pB7VMNd.YWenfs7.GhF2.KI66apOKYarMg4S7uPHjGmaQv.', NULL, 1, 0, NULL, '2018-01-01 11:07:40', '2018-01-01 11:07:40', NULL);
INSERT INTO `kullanici` VALUES (49, 'Rosalind Leuschke', 'noemie.prosacco@example.org', '$2y$10$MFAXumSza4F5ooxzYH0rm.lt.pYrVm1UsWby3bQmVeL.gQtFncigm', NULL, 1, 0, NULL, '2018-01-01 11:07:40', '2018-01-01 11:07:40', NULL);
INSERT INTO `kullanici` VALUES (50, 'Earl Cormier', 'kathlyn.stanton@example.org', '$2y$10$O4SY5NinJdt6TPXBi4j7au4zpAIabaAj1gYHUhTwHAC1g2GUaGCcG', NULL, 1, 0, NULL, '2018-01-01 11:07:40', '2018-01-01 11:07:40', NULL);
INSERT INTO `kullanici` VALUES (51, 'Iliana Quitzon DDS', 'schroeder.darrion@example.net', '$2y$10$dwjYsEOEN0TinFauAO0Sfem6Jc5K8yfYr5NXr4HB80A3lKcpCrb/i', NULL, 1, 0, NULL, '2018-01-01 11:07:40', '2018-01-01 11:07:40', NULL);

-- ----------------------------
-- Table structure for kullanici_detay
-- ----------------------------
DROP TABLE IF EXISTS `kullanici_detay`;
CREATE TABLE `kullanici_detay`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(10) UNSIGNED NOT NULL,
  `adres` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telefon` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ceptelefonu` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kullanici_detay_kullanici_id_foreign`(`kullanici_id`) USING BTREE,
  CONSTRAINT `kullanici_detay_kullanici_id_foreign` FOREIGN KEY (`kullanici_id`) REFERENCES `kullanici` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kullanici_detay
-- ----------------------------
INSERT INTO `kullanici_detay` VALUES (1, 1, 'Ankara', '(312) 444 55 66', '(555) 444 55 66');
INSERT INTO `kullanici_detay` VALUES (2, 2, '4329 Beatty Lodge Suite 933\nNew Lisandrofort, AL 83051', '+1477074631461', '+4397275602429');
INSERT INTO `kullanici_detay` VALUES (3, 3, '668 Lyla Meadows\nLake Sophia, WA 46872', '+3306046139674', '+3854006685929');
INSERT INTO `kullanici_detay` VALUES (4, 4, '6826 Mante Rapid Apt. 720\nPort Eladio, OK 67524', '+4505930994067', '+8384675832311');
INSERT INTO `kullanici_detay` VALUES (5, 5, '284 Jerde Row Apt. 890\nNicolastown, MI 06362-0612', '+6604668993556', '+7139302513970');
INSERT INTO `kullanici_detay` VALUES (6, 6, '11204 Santa Mills Apt. 108\nSouth Muhammad, KY 04752', '+7798600249444', '+3101317391358');
INSERT INTO `kullanici_detay` VALUES (7, 7, '62430 Alek Prairie\nRathchester, VT 43386-8124', '+3298495428835', '+5097223406308');
INSERT INTO `kullanici_detay` VALUES (8, 8, '2592 Roxane Walk\nShanahanstad, SD 55320', '+4338841289367', '+3543454401253');
INSERT INTO `kullanici_detay` VALUES (9, 9, '6679 Yolanda Flat Apt. 963\nHarveyshire, TX 48654-9776', '+2822314705428', '+6125313077195');
INSERT INTO `kullanici_detay` VALUES (10, 10, '2722 O\'Conner Radial Suite 432\nNorth Nichole, DE 35680-7780', '+7595891270895', '+1882541391119');
INSERT INTO `kullanici_detay` VALUES (11, 11, '471 Chadrick Light Apt. 330\nNorth Regan, MD 11244-6116', '+4442671863572', '+4536299928909');
INSERT INTO `kullanici_detay` VALUES (12, 12, '761 Rippin Terrace\nRunolfsdottirland, RI 79921-0006', '+4576390645778', '+5221889745571');
INSERT INTO `kullanici_detay` VALUES (13, 13, '995 Zulauf Hollow Suite 777\nDollyberg, AL 40267-8570', '+2602765004269', '+5416801683323');
INSERT INTO `kullanici_detay` VALUES (14, 14, '5705 Hertha Mountains Suite 293\nStiedemannview, MO 95964', '+5791793491380', '+6689305744399');
INSERT INTO `kullanici_detay` VALUES (15, 15, '486 Corwin Bridge Suite 584\nJoefort, ND 38966', '+2046811080624', '+3142164759341');
INSERT INTO `kullanici_detay` VALUES (16, 16, '8862 Fay Cliffs\nNorth Christina, ND 71571', '+6877835100958', '+8745395593752');
INSERT INTO `kullanici_detay` VALUES (17, 17, '2653 Blick Spur Apt. 247\nNew Ebbatown, NV 89335', '+6421851597634', '+7402950650551');
INSERT INTO `kullanici_detay` VALUES (18, 18, '176 Misty Junction\nWest Sisterberg, PA 02821-8018', '+6209986393515', '+5007155378751');
INSERT INTO `kullanici_detay` VALUES (19, 19, '724 Thiel Loop Suite 397\nUllrichstad, NY 54893', '+2319844815254', '+8133681614139');
INSERT INTO `kullanici_detay` VALUES (20, 20, '43578 Aufderhar Manor Suite 629\nSigridland, OR 76330', '+7108506898245', '+2887486523800');
INSERT INTO `kullanici_detay` VALUES (21, 21, '1105 Matilda Point\nMallorymouth, NM 32090', '+7425947857853', '+5122174821094');
INSERT INTO `kullanici_detay` VALUES (22, 22, '740 Amira Crest Suite 850\nVeldahaven, ID 19965-3048', '+8406948666141', '+2737083357287');
INSERT INTO `kullanici_detay` VALUES (23, 23, '895 Moore Lights\nPort Rozella, MD 50702-9650', '+9484722929143', '+7020091000778');
INSERT INTO `kullanici_detay` VALUES (24, 24, '80757 Barrows Squares Apt. 151\nWest Larue, WA 05848-3699', '+9269992096664', '+1472578739458');
INSERT INTO `kullanici_detay` VALUES (25, 25, '576 Bernhard Tunnel\nEast Zoestad, WA 57476', '+2932490377710', '+2150141264447');
INSERT INTO `kullanici_detay` VALUES (26, 26, '228 Rosella Burgs\nEast Heidifort, OK 55541', '+5950007225067', '+9575950346664');
INSERT INTO `kullanici_detay` VALUES (27, 27, '3291 Treutel Expressway Suite 096\nSouth Arne, OH 09882-8432', '+4195510537972', '+2638244018796');
INSERT INTO `kullanici_detay` VALUES (28, 28, '816 Angelita Meadows\nRigobertoborough, TN 05096-4212', '+6120930489309', '+4481932009270');
INSERT INTO `kullanici_detay` VALUES (29, 29, '962 Jones Mews\nJerodchester, RI 44783-6397', '+5186303015175', '+8419421249043');
INSERT INTO `kullanici_detay` VALUES (30, 30, '14332 Corbin Court\nAnnabellshire, SC 75067-4080', '+6004867711877', '+8348745220944');
INSERT INTO `kullanici_detay` VALUES (31, 31, '2001 Godfrey Bridge Apt. 051\nWatershaven, OH 06544-5321', '+4489919013797', '+1481235336167');
INSERT INTO `kullanici_detay` VALUES (32, 32, '482 Laury Coves Suite 247\nPort Danteland, VA 24149-0176', '+7870273242982', '+9464898890689');
INSERT INTO `kullanici_detay` VALUES (33, 33, '778 Dashawn Inlet\nFaheyton, LA 22345', '+6292219422924', '+3891881593462');
INSERT INTO `kullanici_detay` VALUES (34, 34, '387 Adams Rapid\nLake Valentineburgh, IL 69866', '+6618296148644', '+7846426201347');
INSERT INTO `kullanici_detay` VALUES (35, 35, '6720 Lolita Crest Suite 917\nPort Joan, CO 55229-4900', '+3476307454048', '+8821656046791');
INSERT INTO `kullanici_detay` VALUES (36, 36, '745 Sophie Ramp Suite 132\nRoselynchester, KS 67364-3536', '+1195005300781', '+1691068026829');
INSERT INTO `kullanici_detay` VALUES (37, 37, '13273 Auer Islands Apt. 696\nPort Michelebury, MS 72227', '+2264879777329', '+9917816640359');
INSERT INTO `kullanici_detay` VALUES (38, 38, '56587 Brown Square Apt. 545\nHattieside, VT 36553-6640', '+6620733170814', '+8683420058788');
INSERT INTO `kullanici_detay` VALUES (39, 39, '7837 Leo Parkway Apt. 549\nConnfurt, ME 71198', '+5824169678994', '+4284077772432');
INSERT INTO `kullanici_detay` VALUES (40, 40, '5506 Christy Mount Suite 083\nLaylamouth, AL 39987-7299', '+1810092281046', '+8471982423013');
INSERT INTO `kullanici_detay` VALUES (41, 41, '150 Erwin Viaduct Apt. 459\nSatterfieldfurt, AL 62254-8199', '+5689818347607', '+3592693940091');
INSERT INTO `kullanici_detay` VALUES (42, 42, '1160 Gracie Haven\nJonesmouth, NH 57514', '+5989959067510', '+2201036768167');
INSERT INTO `kullanici_detay` VALUES (43, 43, '1878 Isabel Spring\nSchillershire, AZ 86141', '+9544339882735', '+8464091485615');
INSERT INTO `kullanici_detay` VALUES (44, 44, '2355 Cordia Valley\nLake Durward, CO 94996-2974', '+3438075680734', '+5940733652177');
INSERT INTO `kullanici_detay` VALUES (45, 45, '24670 Daniella Stravenue\nWymanberg, WY 09126', '+1522551621686', '+9533415004715');
INSERT INTO `kullanici_detay` VALUES (46, 46, '47116 Katlyn Landing Suite 413\nBillport, LA 33315-1045', '+7164076740844', '+9434869311090');
INSERT INTO `kullanici_detay` VALUES (47, 47, '2463 Willms Stravenue Suite 238\nLake Whitneyside, NM 66450', '+9922892568152', '+9818486426246');
INSERT INTO `kullanici_detay` VALUES (48, 48, '4143 Mosciski Keys\nWiegandmouth, OH 65306', '+2600502105315', '+1074711057726');
INSERT INTO `kullanici_detay` VALUES (49, 49, '461 Zemlak Drives Apt. 467\nNew Dinaville, MD 31542-8458', '+2119660667282', '+8288908628993');
INSERT INTO `kullanici_detay` VALUES (50, 50, '7749 Zulauf Square Apt. 321\nEast Ryderchester, OH 95353', '+4108914492606', '+7371160536364');
INSERT INTO `kullanici_detay` VALUES (51, 51, '711 Bart Grove\nWest Annabellmouth, CO 44223-3149', '+5836412432240', '+8510494315457');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (2, '2017_10_17_183408_create_kategori_table', 1);
INSERT INTO `migrations` VALUES (3, '2017_10_29_114953_create_urun_table', 2);
INSERT INTO `migrations` VALUES (4, '2017_11_02_170735_create_kategori_urun_table', 3);
INSERT INTO `migrations` VALUES (5, '2017_11_05_101237_create_urun_detay_table', 4);
INSERT INTO `migrations` VALUES (8, '2017_11_10_191439_create_kullanici_table', 5);
INSERT INTO `migrations` VALUES (9, '2017_11_17_200454_create_sepet_table', 6);
INSERT INTO `migrations` VALUES (13, '2017_11_19_184606_create_sepet_urun_table', 7);
INSERT INTO `migrations` VALUES (16, '2017_11_26_131901_create_siparis_table', 8);
INSERT INTO `migrations` VALUES (17, '2017_11_26_133711_create_kullanici_detay_table', 8);
INSERT INTO `migrations` VALUES (18, '2018_06_19_194441_create_ayar_table', 9);

-- ----------------------------
-- Table structure for sepet
-- ----------------------------
DROP TABLE IF EXISTS `sepet`;
CREATE TABLE `sepet`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(10) UNSIGNED NOT NULL,
  `olusturma_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guncelleme_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `silinme_tarihi` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sepet_kullanici_id_foreign`(`kullanici_id`) USING BTREE,
  CONSTRAINT `sepet_kullanici_id_foreign` FOREIGN KEY (`kullanici_id`) REFERENCES `kullanici` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sepet
-- ----------------------------
INSERT INTO `sepet` VALUES (2, 1, '2017-11-26 16:33:52', '2017-11-26 16:33:52', NULL);
INSERT INTO `sepet` VALUES (3, 1, '2017-11-26 18:53:30', '2017-11-26 18:53:30', NULL);
INSERT INTO `sepet` VALUES (4, 1, '2017-11-26 19:13:00', '2017-11-26 19:13:00', NULL);
INSERT INTO `sepet` VALUES (5, 1, '2017-12-03 21:56:16', '2017-12-03 21:56:16', NULL);
INSERT INTO `sepet` VALUES (6, 1, '2017-12-04 19:33:39', '2017-12-04 19:33:39', NULL);
INSERT INTO `sepet` VALUES (7, 2, '2018-02-03 12:57:40', '2018-02-03 12:57:40', NULL);
INSERT INTO `sepet` VALUES (8, 2, '2018-02-03 13:50:33', '2018-02-03 13:50:33', NULL);
INSERT INTO `sepet` VALUES (9, 1, '2018-05-06 18:53:48', '2018-05-06 18:53:48', NULL);
INSERT INTO `sepet` VALUES (10, 2, '2018-06-02 21:42:21', '2018-06-02 21:42:21', NULL);

-- ----------------------------
-- Table structure for sepet_urun
-- ----------------------------
DROP TABLE IF EXISTS `sepet_urun`;
CREATE TABLE `sepet_urun`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sepet_id` int(10) UNSIGNED NOT NULL,
  `urun_id` int(10) UNSIGNED NOT NULL,
  `adet` int(11) NOT NULL,
  `fiyati` decimal(5, 2) NOT NULL,
  `durum` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `olusturma_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guncelleme_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `silinme_tarihi` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sepet_urun_sepet_id_foreign`(`sepet_id`) USING BTREE,
  INDEX `sepet_urun_urun_id_foreign`(`urun_id`) USING BTREE,
  CONSTRAINT `sepet_urun_sepet_id_foreign` FOREIGN KEY (`sepet_id`) REFERENCES `sepet` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sepet_urun_urun_id_foreign` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sepet_urun
-- ----------------------------
INSERT INTO `sepet_urun` VALUES (4, 2, 30, 2, 14.64, 'Beklemede', '2017-10-26 16:33:52', '2018-03-02 23:00:32', NULL);
INSERT INTO `sepet_urun` VALUES (5, 2, 8, 2, 12.58, 'Beklemede', '2017-10-26 16:34:00', '2018-03-02 23:00:36', NULL);
INSERT INTO `sepet_urun` VALUES (6, 3, 6, 1, 15.50, 'Beklemede', '2017-11-26 18:53:30', '2017-11-26 18:53:30', NULL);
INSERT INTO `sepet_urun` VALUES (7, 4, 13, 1, 2.14, 'Beklemede', '2017-11-26 19:13:00', '2017-11-26 19:13:00', NULL);
INSERT INTO `sepet_urun` VALUES (8, 4, 10, 2, 5.41, 'Beklemede', '2017-11-26 21:04:05', '2017-11-26 21:04:10', NULL);
INSERT INTO `sepet_urun` VALUES (9, 5, 30, 1, 14.64, 'Beklemede', '2017-12-03 21:56:16', '2017-12-03 21:56:16', NULL);
INSERT INTO `sepet_urun` VALUES (10, 6, 7, 1, 6.41, 'Beklemede', '2017-12-04 19:36:41', '2017-12-31 23:59:37', '2017-12-31 23:59:37');
INSERT INTO `sepet_urun` VALUES (11, 6, 8, 2, 12.58, 'Beklemede', '2017-12-04 19:36:41', '2017-12-31 23:59:37', '2017-12-31 23:59:37');
INSERT INTO `sepet_urun` VALUES (12, 6, 11, 3, 13.24, 'Beklemede', '2017-12-04 19:36:41', '2017-12-31 23:59:37', '2017-12-31 23:59:37');
INSERT INTO `sepet_urun` VALUES (13, 6, 13, 1, 2.14, 'Beklemede', '2018-01-04 19:58:56', '2018-03-02 23:00:46', '2017-12-31 23:59:37');
INSERT INTO `sepet_urun` VALUES (14, 7, 3, 1, 14.00, 'Beklemede', '2018-02-03 13:09:33', '2018-02-03 13:09:33', NULL);
INSERT INTO `sepet_urun` VALUES (15, 8, 12, 8, 34.00, 'Beklemede', '2018-03-02 23:14:37', '2018-03-02 23:15:16', NULL);
INSERT INTO `sepet_urun` VALUES (16, 6, 28, 4, 89.00, 'Beklemede', '2018-03-06 18:16:26', '2018-03-06 18:16:26', NULL);
INSERT INTO `sepet_urun` VALUES (17, 9, 8, 4, 12.00, 'Beklemede', '2018-11-30 19:26:53', '2018-12-15 21:52:01', NULL);

-- ----------------------------
-- Table structure for siparis
-- ----------------------------
DROP TABLE IF EXISTS `siparis`;
CREATE TABLE `siparis`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sepet_id` int(10) UNSIGNED NOT NULL,
  `siparis_tutari` decimal(10, 4) NOT NULL,
  `durum` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `adsoyad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `adres` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telefon` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ceptelefonu` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `banka` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `taksit_sayisi` int(11) NULL DEFAULT NULL,
  `olusturma_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guncelleme_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `silinme_tarihi` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `siparis_sepet_id_unique`(`sepet_id`) USING BTREE,
  CONSTRAINT `siparis_sepet_id_foreign` FOREIGN KEY (`sepet_id`) REFERENCES `sepet` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of siparis
-- ----------------------------
INSERT INTO `siparis` VALUES (1, 2, 54.4400, 'Siparişiniz alındı', 'Cem Gündüzoğlu', 'Ankara', '(312) 555-66-77', '(555) 666-77-88', 'Garanti', 1, '2017-11-26 18:45:12', '2017-11-26 18:45:12', NULL);
INSERT INTO `siparis` VALUES (2, 3, 15.5000, 'Siparişiniz alındı', 'Cem Gündüzoğlu', 'Ankara', '(312) 555-66-77', '(555) 666-77-88', 'Garanti', 1, '2017-12-26 19:12:45', '2018-03-02 23:13:25', NULL);
INSERT INTO `siparis` VALUES (3, 4, 12.9600, 'Siparişiniz alındı', 'Cem Gündüzoğlu', 'Ankara', '(312) 555-66-77', '(555) 666-77-88', 'Garanti', 1, '2017-12-26 21:04:21', '2018-03-02 23:13:29', NULL);
INSERT INTO `siparis` VALUES (4, 5, 14.6400, 'Sipariş tamamlandı', 'Cem Gündüzoğlu', 'Ankara', '(312) 555-66-77', '(555) 666-77-88', 'Garanti', 1, '2017-01-03 21:56:38', '2018-03-02 23:13:33', NULL);
INSERT INTO `siparis` VALUES (5, 7, 14.0000, 'Ödeme onaylandı', 'Esra', 'Ankara', '(147) 707-46-31', '(439) 727-56-02', 'Garanti', 1, '2018-02-03 13:09:54', '2018-02-04 16:01:52', NULL);
INSERT INTO `siparis` VALUES (6, 8, 24.0000, 'Sipariş tamamlandı', 'Esra', 'Ankara', '(147) 707-46-31', '(439) 727-56-02', 'Garanti', 1, '2018-03-02 23:14:14', '2018-03-02 20:16:43', NULL);
INSERT INTO `siparis` VALUES (7, 6, 356.0000, 'Siparişiniz alındı', 'Cem Gündüzoğlu', 'Ankara', '(312) 444-55-66', '(555) 444-55-66', 'Garanti', 1, '2018-03-06 18:16:53', '2018-03-06 18:16:53', NULL);

-- ----------------------------
-- Table structure for urun
-- ----------------------------
DROP TABLE IF EXISTS `urun`;
CREATE TABLE `urun`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urun_adi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `fiyati` decimal(10, 3) NOT NULL,
  `olusturma_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guncelleme_tarihi` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `silinme_tarihi` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of urun
-- ----------------------------
INSERT INTO `urun` VALUES (1, 'lucinda-plaza', 'Lucinda Plaza', 'Et odio assumenda beatae. Incidunt iusto consequuntur est neque dolore non placeat. Officiis atque molestiae et autem eum tempora expedita. Qui a et nulla architecto. Magnam quisquam officia dolorem. Sint vel omnis consequatur ipsam. Beatae harum quibusdam facere doloribus nemo. Libero corrupti voluptas facere nulla officia alias. Necessitatibus facilis nulla ducimus maxime corporis rem dolores. Quia et voluptas unde cumque aut optio. Eaque tempora accusamus pariatur optio. Qui voluptatem qui id tenetur reiciendis explicabo sunt. Nulla asperiores soluta cumque magni sint. Mollitia nesciunt ut tempora consequatur quis excepturi placeat. Nisi dolor illum laboriosam. Qui est dolorem et maiores dicta.', 16.771, '2017-11-05 10:40:02', '2017-11-05 10:40:02', NULL);
INSERT INTO `urun` VALUES (2, 'loyal-knolls', 'Loyal Knolls', 'Exercitationem perspiciatis culpa nam aliquid sit voluptates. Quasi itaque sint occaecati molestiae deleniti reiciendis. Odit id et qui laboriosam a saepe distinctio itaque. Et dolores sapiente maxime qui unde quisquam. Consequuntur et neque aut suscipit aut officia aliquid. Quibusdam voluptatibus omnis possimus ab totam. Et necessitatibus laudantium quo qui aliquam reiciendis consequuntur sit. Qui dolorem et inventore dolores harum. Omnis officiis voluptatem nobis accusamus ad itaque. Consequuntur ut beatae ducimus. Ipsa aut commodi dicta. Reprehenderit inventore sit consequatur perferendis. Saepe ad est vero sed ut odio. Harum rerum et dicta possimus ut vero accusantium. At ut expedita voluptas nobis rerum itaque delectus. Dolorem est quos dolores qui eos exercitationem aut. Aut vitae cumque a sit. Quibusdam quo blanditiis eum ut assumenda rerum et qui. Consequuntur dolores quia aut quam. Et eum dolorem aut et a. Quaerat nihil iusto consectetur repudiandae beatae nostrum. Voluptas assumenda quo magni est doloribus pariatur magnam.', 10.580, '2017-11-05 10:40:02', '2017-11-05 10:40:02', NULL);
INSERT INTO `urun` VALUES (3, 'kuyucakli-yusuf', 'Kuyucaklı Yusuf', 'Sabahattin Ali', 14.000, '2017-11-05 10:40:02', '2018-01-29 20:16:01', NULL);
INSERT INTO `urun` VALUES (4, 'greenfelder-plaza', 'Greenfelder Plaza', 'Dolorum rerum quidem id. Ipsa explicabo eum culpa voluptatem quia ad. Expedita quia magni id praesentium quam voluptas ex. Id adipisci ullam temporibus id beatae sequi tempore. Consequatur architecto consequatur natus eius voluptatibus ducimus est. Error veritatis doloremque qui sapiente omnis unde. Voluptas vel eius quibusdam corporis iure cum. Ea excepturi sapiente commodi blanditiis. Similique accusamus ut sit sed mollitia quidem aut. Amet vel consequuntur saepe ut in quo. Neque omnis quia est sit vel. Labore accusamus nulla odio aut consequatur reiciendis corporis in. Hic quaerat quas ea rerum praesentium soluta. Necessitatibus esse molestiae atque dolor itaque esse. Inventore consequuntur totam maxime totam eligendi perspiciatis. Perspiciatis excepturi placeat fugiat sunt pariatur. Aut quia est repellendus provident vel tempore. Quia excepturi eum quos cumque facilis similique. Tempora perspiciatis tempora ut autem. Nobis suscipit et sed. Repudiandae quidem accusantium sed eum nihil et. Unde et et impedit veritatis omnis suscipit. Cumque officiis velit dolorem corporis. Aut qui corrupti aut corporis modi sit. Id adipisci magni inventore facere corporis. Sint delectus fugit odio cupiditate. Eveniet autem cupiditate aut omnis inventore quia aliquid est. Ipsam quia aut omnis nihil magnam.', 3.309, '2017-11-05 10:40:02', '2017-11-05 10:40:02', NULL);
INSERT INTO `urun` VALUES (5, 'caesar-vista', 'Caesar Vista', 'Est eum aut ut cupiditate. Similique voluptatum amet fugit ut rerum vel. Aut voluptate at molestiae molestias. Neque tempore non blanditiis consectetur at ipsum eveniet. Ut necessitatibus at error eveniet. Autem est ut omnis similique laboriosam. Aut aut vitae veniam ea. Ipsum asperiores repellendus et porro velit. Velit dolorem facilis enim nobis qui et iste. Aliquam non in vel temporibus eveniet ut omnis. Accusamus ut voluptas voluptate sint adipisci corrupti qui. Aliquam ullam voluptatem voluptatibus quaerat nostrum qui. Molestiae voluptatibus ex maiores in rerum in. Non magnam ut voluptas architecto. Et sed vero tenetur dolorem dolor. Sequi tenetur corrupti necessitatibus molestiae non et repudiandae voluptates. Consequatur ad enim quis. Ex quae officia at esse natus dolores odio et. Voluptatem est nesciunt saepe sit consequuntur. Inventore illum iure qui cumque dignissimos voluptatibus in. Sapiente adipisci molestiae itaque molestias. Ea eum eos in qui. Iure error nemo blanditiis atque voluptatem explicabo culpa. Sint nesciunt ratione numquam numquam quas a enim.', 12.240, '2017-11-05 10:40:02', '2017-11-05 10:40:02', NULL);
INSERT INTO `urun` VALUES (6, 'mont', 'Mont', 'Heather Loop', 229.000, '2017-11-05 10:40:03', '2018-01-29 20:02:21', NULL);
INSERT INTO `urun` VALUES (7, 'ayakkabi', 'Ayakkabı', 'Ayakkabı', 229.000, '2017-11-05 10:40:03', '2018-01-29 20:08:56', NULL);
INSERT INTO `urun` VALUES (8, 'simyaci', 'Simyacı', 'Paolo Coelho', 12.000, '2017-11-05 10:40:03', '2018-01-29 20:15:09', NULL);
INSERT INTO `urun` VALUES (9, 'dan-brown-baslangic', 'Dan Brown Başlangıç', 'Dan Brown Başlangıç', 38.000, '2017-11-05 10:40:03', '2018-01-29 20:03:28', NULL);
INSERT INTO `urun` VALUES (10, 'kurk-mantolu-madonna', 'Kürk Mantolu Madonna', 'Kürk Mantolu Madonna', 29.000, '2017-11-05 10:40:03', '2018-01-29 20:04:15', NULL);
INSERT INTO `urun` VALUES (11, 'eleanora-island', 'Eleanora Island', 'Et impedit inventore debitis ut nisi. Ut cumque ut ut quod dolores repudiandae veritatis. Quisquam consequatur facilis in dolor et sit vel in. Voluptates illum magni laborum eum odio cum. Voluptas repellendus provident velit consectetur iusto blanditiis consectetur. Cupiditate laborum nobis voluptatem omnis distinctio. Et quam placeat omnis eum laudantium sed unde. Distinctio sit magnam quos sit. Ut omnis doloremque ut quo quis. Maxime et corrupti cupiditate officiis. Et ab omnis voluptatum rerum numquam dolor fugiat. Maxime amet rerum pariatur possimus hic. Repudiandae hic et quia fugit nulla necessitatibus dignissimos. Facere libero consequatur omnis quidem. Quisquam et non tenetur quae qui sit et. Ut quia sint autem eum placeat sint. Cupiditate autem eum placeat consectetur ea non aliquam. Voluptates aut quis quasi voluptatem illo quis cumque totam. Et aliquam sunt ea cum nulla aperiam animi. Aut laudantium nihil hic quasi at voluptates. Cum qui qui numquam et ad in. Ut dolorem debitis id commodi rerum. Aspernatur alias voluptatum vero sed suscipit omnis natus.', 13.235, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (12, 'supurge', 'Süpürge', 'Süpürge', 1700.000, '2017-11-05 10:40:03', '2018-01-29 20:05:01', NULL);
INSERT INTO `urun` VALUES (13, 'avery-camp', 'Avery Camp', 'Consectetur rerum autem modi a nihil excepturi. Et qui neque maiores aperiam. Qui dolorem itaque ullam non dolor. Quo est est et natus sit voluptatem soluta. Non et eius a minima culpa deleniti. Reprehenderit quo ut molestiae et. Tempora voluptatem molestias et aut amet quos. Repudiandae quidem tempore et. Consequatur iusto vero adipisci ut ut sapiente voluptatem. Ea quibusdam atque et labore. Consequatur fugit sunt eos accusamus a et accusantium. Sunt nobis et veritatis illo atque. Velit illo sunt eaque aperiam recusandae deleniti dignissimos. Doloribus numquam sunt quia est voluptas at. Qui earum qui accusamus velit inventore excepturi. Consequatur repellat commodi aperiam. Esse occaecati debitis quibusdam molestiae at. Sed officiis doloribus dignissimos delectus. Ea fugit autem accusantium cupiditate magnam et iusto. Ut natus quo enim error neque. Alias veritatis at et. Excepturi eum voluptatibus nihil accusantium tempora placeat vitae. Amet possimus qui consequatur corporis et blanditiis maiores. Aut ut consequatur eum repellendus corrupti non. Ut itaque quaerat fuga rerum sit nemo non. Veritatis qui accusantium voluptatem aut incidunt voluptas debitis et.', 2.137, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (14, 'moore-place', 'Moore Place', 'Qui eveniet hic nihil aut repellat. Quos facere sit non repellat. Sint pariatur delectus id officiis aut quisquam. Totam tenetur eius magni nesciunt animi distinctio. Tenetur quo in eum soluta. Maxime et accusamus voluptate incidunt eaque soluta. Et ipsa voluptatem adipisci quia ipsam. Libero a saepe velit voluptatem qui ea. Accusamus saepe et excepturi. Ipsum quisquam id sint et. Aut explicabo soluta numquam blanditiis. Aliquam eos labore molestias est. Ducimus deleniti tempora aliquam deserunt aut esse temporibus. Optio sit sed iste id. Ea ea consequatur nihil. At cum et nam voluptates voluptatem quia. Velit laborum id porro non veritatis est. Aut soluta tempora autem sunt impedit. Modi rerum occaecati ullam ipsam incidunt quia. Veniam eos aut ea ipsum dolores. Suscipit et qui accusantium consequuntur eveniet repellat. Veritatis id odio voluptatem asperiores veniam ducimus. Dolores accusantium molestias reiciendis. Quisquam explicabo non suscipit aut. Natus aliquam itaque voluptatem in iste ut. Qui hic pariatur modi.', 18.923, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (15, 'waters-vista', 'Waters Vista', 'Velit vero ipsam fuga odit in velit aut in. Laborum laudantium ut officiis nesciunt eius. Dolor consequatur magni dicta deleniti voluptas voluptatem ipsum. Dolore accusantium incidunt suscipit natus explicabo maxime perferendis. Eius est recusandae mollitia qui libero voluptatem illo libero. Minima consequuntur exercitationem harum. Est quasi consequatur incidunt ex dolore corporis voluptatem quis. Sunt dolores id suscipit saepe est ullam. Beatae nesciunt dolorem distinctio exercitationem assumenda voluptas laboriosam. Laudantium dolor quia dolores. Ad et unde voluptas corporis dolores aspernatur rem. Reprehenderit alias aut dolorem deserunt. Aut aut quam possimus autem harum aut. Amet sed est tempora ipsa dignissimos consequatur aut veniam. Earum incidunt fugiat provident hic beatae tempore ut. Fuga quia laborum ipsam. Quos veritatis nesciunt quod officiis sed nostrum non. Nobis rerum ab necessitatibus enim perferendis ut dolores non. Quia expedita ut voluptatem eveniet dignissimos rerum. Nostrum eius perferendis officiis quia quibusdam voluptatem. Harum qui perspiciatis qui fuga deserunt officiis.', 15.184, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (16, 'daniel-coves', 'Daniel Coves', 'Laboriosam numquam commodi qui voluptatem quia rerum debitis. Fugit facere assumenda veritatis nemo dolorem ipsa. Voluptatem voluptatum minima natus deleniti. Nihil beatae nostrum reiciendis quidem molestiae ut. Commodi saepe qui et. Blanditiis autem est praesentium molestiae voluptatem vel. Iusto eaque consequatur eaque dolorem maiores beatae officia. Est nihil consequatur et nemo qui adipisci voluptates. Omnis cumque qui magnam ipsum maiores qui in. A inventore corporis minima harum. Repudiandae assumenda accusamus incidunt mollitia dolores corrupti. Nisi sint nostrum numquam libero odio. Voluptatibus quae qui doloremque animi voluptates nihil molestiae. Eos voluptas voluptas fuga autem dolorum aliquid qui. Incidunt ea officiis dignissimos dolor quae ratione officia. Molestias aut aut cumque qui. Qui enim laudantium eum quos est. Odit quas non nostrum et. Optio dolore sapiente omnis perferendis nisi quia nisi. Molestiae rerum quidem et ex neque aspernatur cumque.', 18.417, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (17, 'gerhold-lock', 'Gerhold Lock', 'Dolor fuga consequatur voluptates deleniti modi ipsum. Nostrum reiciendis maxime saepe deleniti ipsam quidem. Perspiciatis quia qui est voluptatum modi. Ipsa eum repudiandae enim aperiam vero tenetur. Quia rerum et dicta alias. Assumenda quia aut ut ea qui quo et. Soluta minima deleniti ipsam. Corporis ipsam a in qui odit corporis. Ea dolor illo consequatur fugiat enim illo molestiae velit. Modi sunt amet dolores sit qui debitis atque. Et quia quaerat aut voluptatum et tempora. Explicabo dolorem odit qui laudantium numquam veritatis cumque consequatur. Earum eaque exercitationem perferendis praesentium sint dolor doloribus.', 4.229, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (18, 'gaylord-ranch', 'Gaylord Ranch', 'Et et sapiente nihil accusamus facilis consequatur. Voluptates consequuntur magni et id adipisci repudiandae. Vel dolor beatae et quasi dolorem velit fuga. Molestiae ea rerum non quaerat voluptatum incidunt nihil. Natus officiis incidunt veritatis eligendi incidunt quaerat aut tenetur. Qui sint itaque quam. Delectus dignissimos voluptas quasi a qui quibusdam. Et non illum consequuntur et quaerat. Veniam id sapiente vel fuga. Ducimus vel et id omnis qui qui. Illo nobis aut similique optio non atque officia culpa. Numquam voluptatem totam architecto et similique impedit aliquam. Velit repellendus et itaque suscipit omnis. Maxime odit velit ab. Vel ut iure autem voluptas. Velit perferendis aut quae. Vel eius possimus porro laudantium et reiciendis. Sint illum velit odio quasi deleniti cum consequatur. Nam ea corrupti sint rem amet similique tempore. Doloribus mollitia aut aliquam quo alias voluptatem rerum.', 7.215, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (19, 'lesch-road', 'Lesch Road', 'Rem molestiae aut non praesentium sunt et. Enim natus est incidunt beatae doloremque et cum. Laborum qui et soluta et ipsum. Voluptas rerum suscipit adipisci. A ex voluptatem et tempora molestiae quo. Quam possimus maxime vel molestiae quia quidem quis. Officia eos et consequatur eveniet est dolores tempora velit. Temporibus et est voluptatem accusantium facere. Ad repudiandae sint inventore aut perspiciatis non quos. Sunt assumenda cumque incidunt magni numquam et fuga. Ut doloribus deleniti sit hic voluptatem. Et dolores recusandae voluptas qui deserunt ut illum omnis. Id neque totam necessitatibus unde voluptatem tenetur cum. Nobis dolore odio ut at. Eum non ipsa et aut corrupti voluptas. Nisi nihil delectus voluptatem dolorem ut. Sit tempore dolores natus suscipit aspernatur provident nulla. Qui porro ad ex. Qui et nam atque eveniet. Non perspiciatis ea atque consequatur qui officia magni voluptate. Officiis asperiores quod consequatur cum molestiae voluptatibus dignissimos. Saepe blanditiis fugiat eveniet adipisci. Commodi non non corporis amet vel. Minima vel dolorem odio. Veritatis corrupti possimus numquam enim aut sit. Vitae quia velit nulla occaecati. Esse non et recusandae.', 2.482, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (20, 'heber-isle', 'Heber Isle', 'Nam enim provident vitae expedita. Quo eveniet laboriosam debitis quasi quia quos a est. Architecto ut ut odit facilis similique. Suscipit recusandae veniam qui eligendi. Sit facilis voluptas iusto doloremque aliquid fugit. Et voluptatibus ut provident quae et suscipit voluptatem reprehenderit. Enim nemo aliquam sed accusamus. Aut magnam delectus commodi accusantium. Perspiciatis mollitia pariatur voluptate sit at nam eligendi voluptate. Id placeat eveniet nisi. Nobis ipsam quia sit vel voluptatem labore. Suscipit quod autem est aut culpa ratione. Perspiciatis esse ut inventore velit ratione et dolor. Officiis aspernatur quo quas non. At laborum et necessitatibus quis. Quia rerum quasi modi esse et vel. Labore ex molestias dignissimos vel laudantium culpa natus. Quibusdam illo necessitatibus iusto facere quia modi quisquam quasi. Rerum dicta temporibus quia eum ex id voluptate. Voluptas occaecati et voluptatem facilis omnis repellendus. Qui molestiae ut voluptatem ipsam accusantium magni. Commodi ut consequatur itaque et. Labore provident magni itaque doloribus. Est consequatur molestiae rerum eius dolores.', 3.964, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (21, 'consuelo-throughway', 'Consuelo Throughway', 'Ad excepturi autem repellat omnis debitis aut. Voluptatem ut suscipit dolorum quia. Aut omnis sed enim debitis ut quas accusantium. Omnis deleniti hic quaerat ipsum consectetur quod omnis. Molestias eum dolores distinctio velit enim eos omnis. Et quia laborum distinctio aperiam consequatur dolorem quibusdam. Magnam amet deleniti corporis omnis explicabo enim a rem. Qui odit non laborum asperiores ad qui esse mollitia. Quia voluptatem sequi sapiente veritatis voluptatem odit. Quam nesciunt beatae iste autem et ea. Ipsam aut corrupti nobis aut molestias eaque illum. Nulla fugiat odit incidunt at eveniet sunt. Vel velit perferendis tenetur ut et. Id aut quam cupiditate est quo illo. Perspiciatis illum magnam tempora iste doloribus in. Aliquam ut ab quas quo rerum explicabo. Porro consequatur et quasi animi et. Occaecati architecto accusantium nesciunt eos ut ut adipisci. Architecto possimus sit cumque velit est. Voluptatem possimus sint cum eos excepturi. Architecto eveniet eaque sit dolorem est. Omnis corrupti magni dolorem placeat. Occaecati recusandae fugiat minima dignissimos fugiat quia. A mollitia ullam cupiditate hic.', 6.932, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (22, 'harber-heights', 'Harber Heights', 'Qui fuga provident ipsa reiciendis voluptate excepturi debitis. Et est magni officia enim omnis voluptatem qui. Voluptate illum accusantium eveniet qui ducimus voluptatem eum facilis. Itaque et in atque esse fugit. Consequatur ut qui aliquid quos. Deserunt saepe aspernatur ut aspernatur et. Qui enim esse reprehenderit est cum rem. Unde voluptas sint sit voluptatem nostrum consequatur. Dolorum dolore quia facere consequatur. Eum aut est molestias animi. Cupiditate ipsam eligendi qui consequatur vitae in doloribus. Facere corporis atque consectetur cumque error. Dolor omnis sapiente quo aut.', 7.354, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (23, 'judson-spur', 'Judson Spur', 'Quia sint veritatis qui distinctio nisi dolore. Sed qui quisquam itaque ut et eum praesentium dolor. Aspernatur placeat consectetur iure iure libero laudantium incidunt. Sed mollitia quibusdam voluptatem rem laboriosam. Alias ut sunt ducimus eos. Fuga est odit sequi dolorem. Omnis voluptas nam harum ut id. Excepturi quam velit eligendi. Maxime assumenda omnis voluptatem ex consectetur ipsum. Natus quibusdam magni et et. Eum et voluptatem quia repudiandae possimus. Adipisci officiis quis est voluptas ut. Distinctio et ipsam vitae a ipsa culpa sequi. Et blanditiis deserunt inventore nisi tempora. Modi sit sunt cupiditate possimus et totam repellat. Sint sunt ut omnis quo natus. Molestiae ut expedita ex occaecati voluptas optio omnis. Dolor quibusdam nemo qui excepturi voluptatum eum aut. Illum corrupti omnis excepturi voluptate. Eos aperiam autem facilis. Asperiores rerum saepe vel asperiores voluptas autem dolorem. Nostrum illum nobis mollitia nesciunt et sequi. Quaerat quae animi quo inventore consequatur. Aut facilis exercitationem consectetur labore iure. Necessitatibus velit error consequatur nobis. Et dolores asperiores totam non illo molestiae quia.', 16.293, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (24, 'myrl-trace', 'Myrl Trace', 'Eos aspernatur omnis a aut et officia recusandae recusandae. Nihil minus et enim consectetur sapiente omnis enim. Est id commodi molestiae asperiores iure dolore. Voluptates voluptas animi ipsa aut odio sint alias. Fuga velit corrupti quaerat voluptas est animi. Molestias molestias amet sit aperiam nesciunt non. Sunt nulla provident perferendis atque. Neque magni sequi voluptas provident officia. Officiis sint autem rerum voluptatem reprehenderit voluptatum. Aut similique suscipit laudantium rem ex. Ratione dignissimos et odio aut ut itaque expedita. Unde ad dolor libero at voluptatem nostrum. Illo molestiae illum modi sint. Est odit enim dolore voluptas culpa ut aut unde. Culpa asperiores similique provident voluptatem ipsam aliquam. Ea dolor magnam sequi aliquid quis. Voluptatem vel et minima omnis. Expedita error sint est repudiandae. Alias qui omnis dolor eligendi voluptas itaque officiis. Nulla fugit dolor dolorem et debitis. Fugiat aut non eum est. Voluptatem expedita nobis laborum et quasi. Facere voluptatibus consectetur repellendus et voluptas. Officia distinctio similique laborum omnis voluptate optio quo consequatur. Harum sit molestiae nostrum assumenda laborum.', 11.017, '2017-11-05 10:40:03', '2017-11-05 10:40:03', NULL);
INSERT INTO `urun` VALUES (25, 'elia-ile-yolculuk', 'Elia ile Yolculuk', 'Livaneli', 19.000, '2017-11-05 10:40:03', '2018-01-29 20:23:14', NULL);
INSERT INTO `urun` VALUES (26, 'ceket', 'Ceket', 'Valentin Locks', 129.000, '2017-11-05 10:40:03', '2018-01-29 20:01:39', NULL);
INSERT INTO `urun` VALUES (27, 'sapka', 'Şapka', 'Şapka', 49.000, '2017-11-05 10:40:03', '2018-01-29 20:01:11', NULL);
INSERT INTO `urun` VALUES (28, 'dis-fircasi', 'Diş Fırçası', 'Diş Fırçası', 89.000, '2017-11-05 10:40:03', '2018-01-29 20:09:21', NULL);
INSERT INTO `urun` VALUES (29, 'iphone-8-cep-telefonu', 'Iphone 8 Cep Telefonu', 'Iphone 8 Cep Telefonu', 5000.000, '2017-11-05 10:40:03', '2018-01-29 19:52:57', NULL);
INSERT INTO `urun` VALUES (30, 'camasir-makinasi', 'Çamaşır Makinası', 'Çamaşır Makinası', 2500.000, '2017-11-05 10:40:03', '2018-01-29 19:51:13', NULL);
INSERT INTO `urun` VALUES (31, 'canon-eos-650d-fotograf-makinasi', 'Canon EOS 650d Fotoğraf Makinası', 'Canon EOS 650d Fotoğraf Makinası', 2300.000, '2018-01-08 18:02:01', '2018-01-08 18:02:17', NULL);
INSERT INTO `urun` VALUES (35, 'deneme', 'deneme', 'deneme', 50.000, '2018-01-08 19:20:35', '2018-01-08 19:57:38', '2018-01-08 19:57:38');
INSERT INTO `urun` VALUES (36, 'akilli-bileklik', 'Akıllı Bileklik', 'Akıllı Bileklik', 150.000, '2018-01-08 20:38:01', '2018-01-29 19:50:39', NULL);
INSERT INTO `urun` VALUES (37, 'lg-monitor', 'Lg Monitör', 'Lg Monitör', 200.000, '2018-01-29 18:51:41', '2018-01-29 19:04:26', NULL);

-- ----------------------------
-- Table structure for urun_detay
-- ----------------------------
DROP TABLE IF EXISTS `urun_detay`;
CREATE TABLE `urun_detay`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `urun_id` int(10) UNSIGNED NOT NULL,
  `goster_slider` tinyint(1) NOT NULL DEFAULT 0,
  `goster_gunun_firsati` tinyint(1) NOT NULL DEFAULT 0,
  `goster_one_cikan` tinyint(1) NOT NULL DEFAULT 0,
  `goster_cok_satan` tinyint(1) NOT NULL DEFAULT 0,
  `goster_indirimli` tinyint(1) NOT NULL DEFAULT 0,
  `urun_resmi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `urun_detay_urun_id_unique`(`urun_id`) USING BTREE,
  CONSTRAINT `urun_detay_urun_id_foreign` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of urun_detay
-- ----------------------------
INSERT INTO `urun_detay` VALUES (1, 1, 1, 0, 1, 1, 0, NULL);
INSERT INTO `urun_detay` VALUES (2, 2, 0, 1, 1, 0, 0, NULL);
INSERT INTO `urun_detay` VALUES (3, 3, 0, 1, 1, 0, 0, '3-1517256961.jpeg');
INSERT INTO `urun_detay` VALUES (4, 4, 1, 0, 1, 1, 0, NULL);
INSERT INTO `urun_detay` VALUES (5, 5, 1, 0, 1, 1, 0, NULL);
INSERT INTO `urun_detay` VALUES (6, 6, 0, 1, 0, 1, 0, '6-1517256141.png');
INSERT INTO `urun_detay` VALUES (7, 7, 1, 0, 1, 0, 0, '7-1517256524.png');
INSERT INTO `urun_detay` VALUES (8, 8, 0, 0, 1, 0, 0, '8-1517256909.jpeg');
INSERT INTO `urun_detay` VALUES (9, 9, 0, 0, 0, 0, 0, '9-1517256198.jpeg');
INSERT INTO `urun_detay` VALUES (10, 10, 0, 0, 0, 1, 1, '10-1517256255.jpeg');
INSERT INTO `urun_detay` VALUES (11, 11, 0, 1, 1, 0, 0, NULL);
INSERT INTO `urun_detay` VALUES (12, 12, 1, 1, 0, 0, 1, '12-1517256301.jpeg');
INSERT INTO `urun_detay` VALUES (13, 13, 0, 1, 1, 0, 1, NULL);
INSERT INTO `urun_detay` VALUES (14, 14, 1, 0, 1, 1, 0, NULL);
INSERT INTO `urun_detay` VALUES (15, 15, 0, 0, 0, 0, 0, NULL);
INSERT INTO `urun_detay` VALUES (16, 16, 0, 0, 0, 1, 1, NULL);
INSERT INTO `urun_detay` VALUES (17, 17, 0, 1, 0, 1, 0, NULL);
INSERT INTO `urun_detay` VALUES (18, 18, 0, 0, 0, 0, 1, NULL);
INSERT INTO `urun_detay` VALUES (19, 19, 0, 1, 1, 1, 0, NULL);
INSERT INTO `urun_detay` VALUES (20, 20, 1, 0, 0, 1, 1, NULL);
INSERT INTO `urun_detay` VALUES (21, 21, 0, 1, 0, 1, 1, NULL);
INSERT INTO `urun_detay` VALUES (22, 22, 1, 1, 0, 0, 0, NULL);
INSERT INTO `urun_detay` VALUES (23, 23, 0, 1, 1, 0, 0, NULL);
INSERT INTO `urun_detay` VALUES (24, 24, 0, 0, 0, 1, 0, NULL);
INSERT INTO `urun_detay` VALUES (25, 25, 0, 1, 0, 1, 1, '25-1517257394.jpeg');
INSERT INTO `urun_detay` VALUES (26, 26, 0, 1, 1, 0, 1, '26-1517256099.png');
INSERT INTO `urun_detay` VALUES (27, 27, 0, 0, 1, 1, 0, '27-1517256071.png');
INSERT INTO `urun_detay` VALUES (28, 28, 1, 0, 1, 0, 0, '28-1517255635.jpeg');
INSERT INTO `urun_detay` VALUES (29, 29, 0, 1, 1, 0, 0, '29-1517255577.jpeg');
INSERT INTO `urun_detay` VALUES (30, 30, 0, 1, 0, 1, 1, '30-1517255473.jpeg');
INSERT INTO `urun_detay` VALUES (31, 31, 1, 0, 1, 0, 0, '31-1517254100.jpeg');
INSERT INTO `urun_detay` VALUES (34, 35, 0, 0, 0, 0, 0, NULL);
INSERT INTO `urun_detay` VALUES (35, 36, 1, 1, 0, 0, 0, '36-1517255439.jpeg');
INSERT INTO `urun_detay` VALUES (36, 37, 0, 1, 0, 0, 0, '37-1517252775.jpeg');

SET FOREIGN_KEY_CHECKS = 1;
