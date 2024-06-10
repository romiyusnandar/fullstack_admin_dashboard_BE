/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: customers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_whatsapp` varchar(255) NOT NULL,
  `userId` int NOT NULL,
  `productId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `productId` (`productId`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: products
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE
  SET
  NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sessions
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin', 'user') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: customers
# ------------------------------------------------------------

INSERT INTO
  `customers` (
    `id`,
    `uuid`,
    `name`,
    `no_whatsapp`,
    `userId`,
    `productId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    '74623a25-f97d-4473-ba7a-824cd88b9518',
    'Mario Aquarista',
    '081323015577',
    5,
    5,
    '2024-06-08 16:34:16',
    '2024-06-08 16:34:16'
  );
INSERT INTO
  `customers` (
    `id`,
    `uuid`,
    `name`,
    `no_whatsapp`,
    `userId`,
    `productId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    'ac5d5c0e-6fb6-4941-950d-a77d4a3e9553',
    'Dikyan Fajar',
    '085132456787',
    5,
    13,
    '2024-06-08 23:08:02',
    '2024-06-08 23:08:02'
  );
INSERT INTO
  `customers` (
    `id`,
    `uuid`,
    `name`,
    `no_whatsapp`,
    `userId`,
    `productId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    '5897f082-198c-46f3-a8b9-f356bcc4bfb0',
    'Yuhana Rahayu',
    '085213423443',
    5,
    13,
    '2024-06-08 23:12:22',
    '2024-06-08 23:12:22'
  );
INSERT INTO
  `customers` (
    `id`,
    `uuid`,
    `name`,
    `no_whatsapp`,
    `userId`,
    `productId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    '8a40ff17-4db9-4967-b58d-5ff92c22e826',
    'Andri Mulyadi',
    '081324456665',
    5,
    5,
    '2024-06-08 23:13:03',
    '2024-06-08 23:13:03'
  );
INSERT INTO
  `customers` (
    `id`,
    `uuid`,
    `name`,
    `no_whatsapp`,
    `userId`,
    `productId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'c76aa362-b4be-487e-8c22-79b0a6c6ae64',
    'Cecep Erfan',
    '08123456789',
    6,
    9,
    '2024-06-08 23:15:58',
    '2024-06-08 23:15:58'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: products
# ------------------------------------------------------------

INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    5,
    'e1b093bd-6c42-4872-b9bb-3f0e2ce9c97f',
    'Paket Aqiqah 80 Box (M1)',
    6050000,
    '2024-06-08 16:25:06',
    '2024-06-08 16:25:06',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    6,
    '887085a0-c723-45b6-b66c-e3fc05951fba',
    'Paket Aqiqah 80 Box (M2)',
    6300000,
    '2024-06-08 16:25:23',
    '2024-06-08 16:25:23',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    7,
    '36789d63-a5a6-4e8e-bc0d-7f004406a4f0',
    'Paket Aqiqah 80 Box (M3)',
    6500000,
    '2024-06-08 16:25:38',
    '2024-06-08 16:25:38',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    8,
    '16193a05-c5aa-4a5b-a026-85941b175b51',
    'Paket Aqiqah 120 Box (M1)',
    6700000,
    '2024-06-08 16:25:59',
    '2024-06-08 16:25:59',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    9,
    '53cfdac9-c10b-4ced-99aa-c1cd7b37d1bd',
    'Paket Aqiqah 120 Box (M2)',
    7200000,
    '2024-06-08 16:26:13',
    '2024-06-08 16:26:13',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    10,
    '31db8ffc-c468-46af-9560-f78ebcbc670b',
    'Paket Aqiqah 120 Box (M3)',
    7500000,
    '2024-06-08 16:26:25',
    '2024-06-08 16:26:25',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    11,
    '1c5b2685-d5d1-4695-8c92-d50b04b35304',
    'Paket Aqiqah 160 Box (M1)',
    8000000,
    '2024-06-08 16:26:47',
    '2024-06-08 16:26:47',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    12,
    '7f10103d-ef44-4cb3-8a87-dfe9d6650cee',
    'Paket Aqiqah 160 Box (M2)',
    8500000,
    '2024-06-08 16:27:00',
    '2024-06-08 16:27:00',
    2
  );
INSERT INTO
  `products` (
    `id`,
    `uuid`,
    `name`,
    `price`,
    `createdAt`,
    `updatedAt`,
    `userId`
  )
VALUES
  (
    13,
    '4638996a-c90e-404f-bbf6-b885aaab6548',
    'Paket Aqiqah 160 Box (M3)',
    9000000,
    '2024-06-08 16:27:16',
    '2024-06-08 16:27:16',
    2
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sessions
# ------------------------------------------------------------

INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '_Us0qNZYZz3jJa9roAyMj3Oi1XdddbA1',
    '2024-06-10 06:08:04',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 06:08:04',
    '2024-06-09 06:08:04'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '0xSA2nH9uoZoA5rYXNNn9NeU1e-rK1M6',
    '2024-06-10 05:54:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:26',
    '2024-06-09 05:54:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '1LZXf966KpIsH0qLmDyNGUJRlR8Hi37p',
    '2024-06-10 05:54:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:26',
    '2024-06-09 05:54:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '2nuXaOXMUo-pA_HLNOPhWIOadnd_k8Hg',
    '2024-06-11 06:04:09',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"5e833704-65f6-4d97-8c23-a29d94b9acb9\"}',
    '2024-06-10 05:32:26',
    '2024-06-10 06:04:09'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '3zup9Bx3WFTsdwWdA1atuX50fjIvlfef',
    '2024-06-10 06:07:48',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 06:07:48',
    '2024-06-09 06:07:48'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '4cfE92mRnrCIfl47mtukhkIFbubTelD9',
    '2024-06-11 04:51:17',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-10 04:51:17',
    '2024-06-10 04:51:17'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '5X9vn5BAB1Nrhcs44pz_E6ug5dE7Ea2l',
    '2024-06-11 05:57:25',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"f9a4cf97-e161-4ef5-adb0-b5ef396ca9a8\"}',
    '2024-06-10 02:56:35',
    '2024-06-10 05:57:25'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'AeRwePtB3JZA_HXhlEQ59KmOT5lMsXMl',
    '2024-06-10 05:54:25',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:25',
    '2024-06-09 05:54:25'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'cZXS8H5QnBhBxp_TkeVKMqtxyyC5WzbK',
    '2024-06-11 03:00:20',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-10 03:00:20',
    '2024-06-10 03:00:20'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'kOwPTeM88R8BDeutpTbmTvV1J0UsbDYf',
    '2024-06-11 05:31:45',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"5e833704-65f6-4d97-8c23-a29d94b9acb9\"}',
    '2024-06-10 05:31:07',
    '2024-06-10 05:31:45'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'MSTflOsdOiCswCLBLNOUDPOiinUjufNR',
    '2024-06-10 05:54:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:26',
    '2024-06-09 05:54:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'OdG1sM8fV0rajuaCuW41_oeTrj0aGBzv',
    '2024-06-11 05:31:07',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-10 05:31:07',
    '2024-06-10 05:31:07'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'oTUCHCubAWFleFGRkhNrl8U5KV3bf2Ac',
    '2024-06-10 05:54:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:26',
    '2024-06-09 05:54:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'P0t7IkJcALGSrAhxWk_wr1frjIHQpRgQ',
    '2024-06-10 05:54:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:26',
    '2024-06-09 05:54:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'pcKQyojypfe6KJwS4fkiT89jPh4PYNa7',
    '2024-06-10 06:07:57',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 06:07:57',
    '2024-06-09 06:07:57'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'rfYKBxzw24jonnSC1hzNzddxUQcVPjae',
    '2024-06-11 04:51:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"4d34baeb-1c04-4d72-b3e8-c3b73704327f\"}',
    '2024-06-10 04:51:17',
    '2024-06-10 04:51:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'TR8FCktM0Tx9d5kCNJmvPY0JBGhGjblH',
    '2024-06-11 05:32:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-10 05:32:26',
    '2024-06-10 05:32:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'u7AB4Y2CW8UNp4IGtRSmH5WmDpp7es58',
    '2024-06-10 05:54:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:26',
    '2024-06-09 05:54:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'WuvVS9qZv5cLUdpNzdZnehxJTuP0QSQ3',
    '2024-06-10 05:54:21',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:54:21',
    '2024-06-09 05:54:21'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'WzXkcP79eBVM_2ACGAG5MvyfUjuPH5Pc',
    '2024-06-11 04:51:07',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-10 04:51:07',
    '2024-06-10 04:51:07'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `id`,
    `uuid`,
    `name`,
    `email`,
    `password`,
    `role`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'ca1438d2-b649-4f31-adb1-98c49ad739d2',
    'User Login ',
    'user@gmail.com',
    '$argon2id$v=19$m=65536,t=3,p=4$JZx4KvCdVELYD3ohs0XyUw$+iEhMtpqoqA7GhtMPH8xG/VTNSB6ZOAI3oP7ai0BhY8',
    'user',
    '2024-06-06 12:51:27',
    '2024-06-08 15:21:15'
  );
INSERT INTO
  `users` (
    `id`,
    `uuid`,
    `name`,
    `email`,
    `password`,
    `role`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'f9a4cf97-e161-4ef5-adb0-b5ef396ca9a8',
    'Admin Login',
    'admin@gmail.com',
    '$argon2id$v=19$m=65536,t=3,p=4$TttPevWEkvThG0B3LecdWg$DmdNqTftf/qnwpBAhnK4hXJHTuz0tIrJQk4JB78DKto',
    'admin',
    '2024-06-06 12:51:37',
    '2024-06-06 12:51:37'
  );
INSERT INTO
  `users` (
    `id`,
    `uuid`,
    `name`,
    `email`,
    `password`,
    `role`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    '4d34baeb-1c04-4d72-b3e8-c3b73704327f',
    'Romi Yusnandar',
    'romi@gmail.com',
    '$argon2id$v=19$m=65536,t=3,p=4$5AToZOavFfUVyJtmq63KGA$H8eD12TfrO4YyWN1dfOctgh5TbGj2NkLaqw2HW9X9Y4',
    'user',
    '2024-06-08 13:17:56',
    '2024-06-08 16:31:13'
  );
INSERT INTO
  `users` (
    `id`,
    `uuid`,
    `name`,
    `email`,
    `password`,
    `role`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    '5e833704-65f6-4d97-8c23-a29d94b9acb9',
    'Hanif Universe',
    'hanif@gmail.com',
    '$argon2id$v=19$m=65536,t=3,p=4$EHgo4FxSAwoUNyv8LZAEng$l91QOP+BdmnPzmTRQlrsm/mE2IXdvZBwye4wRFR6Zfg',
    'admin',
    '2024-06-08 13:19:53',
    '2024-06-08 13:19:53'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
