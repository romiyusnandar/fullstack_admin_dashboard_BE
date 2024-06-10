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
    '-6DwcW7pJBZP6AGNhJ536VnXhFieU1ov',
    '2024-06-09 14:49:27',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:49:27',
    '2024-06-08 14:49:27'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '-GrSUGkIMYJpSwchAE5Oc-SsaV09PFZo',
    '2024-06-09 22:50:56',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 22:50:56',
    '2024-06-08 22:50:56'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '-hN1LwpsIh3iBffOrVlrCdtnEwna337f',
    '2024-06-09 14:08:32',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:08:32',
    '2024-06-08 14:08:32'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '-HzT3qbXi_bjCY2MnMA5lVHyCPreNsxj',
    '2024-06-09 16:18:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:18:38',
    '2024-06-08 16:18:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '-ZYwKB6mFfVs0I1tkC39p1Oi_7bH5wiH',
    '2024-06-09 14:08:43',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:08:43',
    '2024-06-08 14:08:43'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '01DxWaw-b8lDl9UsB99QxZLfbJgPdwMi',
    '2024-06-09 16:27:00',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:27:00',
    '2024-06-08 16:27:00'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '04l3sxSRzznDU_VJHslr9NEfsBtnsyaF',
    '2024-06-09 10:14:47',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:14:47',
    '2024-06-08 10:14:47'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '0AjTsNXbPlRVsJUXvcIfhrtjlMl5aN3f',
    '2024-06-09 15:16:08',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:16:08',
    '2024-06-08 15:16:08'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '0eXB7UhIhXhGXpmANqMbM_oU6mlRpvQF',
    '2024-06-09 16:16:54',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:16:54',
    '2024-06-08 16:16:54'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '0TgkGNDyNzyNLb5wlRChulpzJWpNIClP',
    '2024-06-09 13:15:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:15:38',
    '2024-06-08 13:15:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '0xdBsdz76j0hTvaM_YwXh2xrqzrV9jU-',
    '2024-06-09 23:15:58',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:15:58',
    '2024-06-08 23:15:58'
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
    '1hb2TYXWVPARavfQ5y4BJXZGIrkMJtWh',
    '2024-06-09 16:16:56',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:16:56',
    '2024-06-08 16:16:56'
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
    '1ZX1rJbmawbVYNzNN1_DMaB1WT_xmgMO',
    '2024-06-09 16:25:06',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:25:06',
    '2024-06-08 16:25:06'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '2-u8klH8A1lK-ra2DG7TsRJxs6BB3ZOe',
    '2024-06-09 15:35:31',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:35:31',
    '2024-06-08 15:35:31'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '2zSv0jrVgPtqQ1HCuF9aYirIQjOyeH4U',
    '2024-06-09 16:27:54',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:27:54',
    '2024-06-08 16:27:54'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '35jRKxS2nLR0ItVMAjfrrLJV65YQ4JZ5',
    '2024-06-09 10:10:13',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:10:13',
    '2024-06-08 10:10:13'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '3MRkeYzQkxIdooqyejkDbLK6zoZHj2Cz',
    '2024-06-09 16:47:32',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:47:32',
    '2024-06-08 16:47:32'
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
    '4Q4I8emwftZT5h_2U3RlCR5XCCo8LzA9',
    '2024-06-09 14:48:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:48:38',
    '2024-06-08 14:48:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '54VodOHJT5KE79Fv4NIlFWHOrzWb7xN0',
    '2024-06-09 12:57:36',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:57:36',
    '2024-06-08 12:57:36'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '5Bpb3p9643RDycpf4SnwvxVlM-hsgxWJ',
    '2024-06-09 16:16:56',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:16:56',
    '2024-06-08 16:16:56'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '5Dr3RrIDsFOUDb85rpe-dP2Z-RKH3cWy',
    '2024-06-09 11:21:12',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:21:12',
    '2024-06-08 11:21:12'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '5IquQISf1DrqdlrwfdI5YnEM1yzj1zPU',
    '2024-06-09 15:10:25',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:10:25',
    '2024-06-08 15:10:25'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '5jp0sVTWdVInvAi8TQGG0dhfT9wwYNbv',
    '2024-06-10 05:31:55',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:31:55',
    '2024-06-09 05:31:55'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '5X9vn5BAB1Nrhcs44pz_E6ug5dE7Ea2l',
    '2024-06-11 02:56:39',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"ca1438d2-b649-4f31-adb1-98c49ad739d2\"}',
    '2024-06-10 02:56:35',
    '2024-06-10 02:56:39'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '5XlY33GVYiR3pK6q5PKIUvE4DsGxoVZC',
    '2024-06-09 13:19:53',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:19:53',
    '2024-06-08 13:19:53'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '6bCoeESuo0o9hEATexHEyneK9EKVqXg-',
    '2024-06-09 23:04:55',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:04:55',
    '2024-06-08 23:04:55'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '6GaBTd0RxDH4GXryV3U1V6NBOV8xm0tU',
    '2024-06-09 13:16:16',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:16:16',
    '2024-06-08 13:16:16'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '6OwcraX8gOpRK2XfYrdQaWOpQ1BRZHbt',
    '2024-06-09 16:26:25',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:26:25',
    '2024-06-08 16:26:25'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '7RBLXgmn_SqDCQE2-plF0haBpWPVSRCE',
    '2024-06-09 16:31:13',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:31:13',
    '2024-06-08 16:31:13'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '8LGgcn3uXX-jpsvW-c6fuwBSNbeyAAWj',
    '2024-06-09 14:54:54',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:54:54',
    '2024-06-08 14:54:54'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '8nOfHYZ4xgKgyGAJd3Wecs3Kt2nNWNXB',
    '2024-06-09 15:04:25',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:04:25',
    '2024-06-08 15:04:25'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '9edQMyexAo6cYiLjSC_PdiM3IpezgBHN',
    '2024-06-09 15:34:21',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:34:21',
    '2024-06-08 15:34:21'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '9w2GqboY9ehuZD7-JFPQMARZGEeL6F6C',
    '2024-06-09 15:40:24',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:40:24',
    '2024-06-08 15:40:24'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '9xCQ5kbgioVfqcBWm5s1Su_aW8S7loin',
    '2024-06-09 22:51:09',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 22:51:09',
    '2024-06-08 22:51:09'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    '9yqsyF6uAZNCbpb3SMbOfOcgOYKedZ3t',
    '2024-06-09 13:16:14',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:16:14',
    '2024-06-08 13:16:14'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'a_CN3PV4awpaVbnPRNvFUnusNzwBxMp3',
    '2024-06-09 15:34:40',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:34:40',
    '2024-06-08 15:34:40'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'abYRHH4NAnHn3lOIcUOsRPrdU9oOHocu',
    '2024-06-09 12:52:14',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:52:14',
    '2024-06-08 12:52:14'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'AD5FCV7Q0zQjlNsM4j0PCl8St6o2nrl1',
    '2024-06-09 13:50:40',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:50:40',
    '2024-06-08 13:50:40'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ADLUcoZGjaBemBhM0WUVoVT6Z_p1DG9v',
    '2024-06-09 16:16:43',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:16:43',
    '2024-06-08 16:16:43'
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
    'bjOgmGSoyeNW_ttoqt3Y7bwp3bv37T_j',
    '2024-06-09 13:11:21',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:11:21',
    '2024-06-08 13:11:21'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'c_QllFCWby-2O1gHB4-IcqTkGTFLvCX5',
    '2024-06-09 15:34:49',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:34:49',
    '2024-06-08 15:34:49'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'C2DjHPCmKncYzddFTanA0fa234BrXlja',
    '2024-06-09 16:31:16',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:31:16',
    '2024-06-08 16:31:16'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'casUHA_IqAD04XcyAnF9tMBmtXXgCTS8',
    '2024-06-09 16:25:59',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:25:59',
    '2024-06-08 16:25:59'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'cd6AufQ51i63ki-b98SSCsiR8apLf6sL',
    '2024-06-09 15:35:02',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:35:02',
    '2024-06-08 15:35:02'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'cmzERY4pDgZYIPvLCQuYH6FEPm994GDo',
    '2024-06-09 15:07:21',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:07:21',
    '2024-06-08 15:07:21'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'CnpMfK9HIHCkZ3Wvt63VuKnymgc59cdd',
    '2024-06-09 15:42:10',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:42:10',
    '2024-06-08 15:42:10'
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
    'da079eqWNEc5i5hoL6V9_ODGK9QYfLUa',
    '2024-06-09 11:22:52',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:22:52',
    '2024-06-08 11:22:52'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'dbwnX6vuvBfEyrc2Aci94TzDBM1ff7WT',
    '2024-06-09 11:09:59',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:09:59',
    '2024-06-08 11:09:59'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'dlIAN15B23Bcxfw7FXlOx7cl9vsS0Sf3',
    '2024-06-10 04:52:17',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 04:52:17',
    '2024-06-09 04:52:17'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'DnXsY2upQGpEohgxETQzGO3WOczG1ASz',
    '2024-06-10 05:04:16',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:04:16',
    '2024-06-09 05:04:16'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'dqd-brkMZBYGfqvre5Gz5hFm-klhIEJx',
    '2024-06-09 16:16:50',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:16:51',
    '2024-06-08 16:16:51'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'dw1sbYmMHV1ToIqwJPzS4W27zvH1xSh4',
    '2024-06-09 12:57:08',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:57:08',
    '2024-06-08 12:57:08'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'DXmjxAYGG8S7ZnHB1TFIolEN1aDZVYT8',
    '2024-06-09 13:14:12',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:14:12',
    '2024-06-08 13:14:12'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'dZ6gBheuymYUAYnKVYZ4AHrZwb9Afmud',
    '2024-06-09 13:14:36',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:14:36',
    '2024-06-08 13:14:36'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'EANilBaKysYcQn8mYI3MNxvnBo4tAhSZ',
    '2024-06-09 15:22:04',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:22:04',
    '2024-06-08 15:22:04'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ehn9ljhh0vBE8W71EMNSjpdOSUAq-C_s',
    '2024-06-09 16:39:19',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:39:19',
    '2024-06-08 16:39:19'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'EJLCM-74zw767AwMH-EZEUrOTKnLMmkA',
    '2024-06-09 15:47:09',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:47:09',
    '2024-06-08 15:47:09'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'eKxw-OFNXYSgcq2bpsx5KVcKGSKwasdV',
    '2024-06-09 15:34:27',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:34:27',
    '2024-06-08 15:34:27'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'EPnekZE4SxU7kZt_mEI0uQfOWtM3VQCi',
    '2024-06-09 23:05:06',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:05:06',
    '2024-06-08 23:05:06'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'F3-EL7iHIM3fnsWb7Bi4fSlOTVcaUOrz',
    '2024-06-09 11:09:52',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:09:52',
    '2024-06-08 11:09:52'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'f9bX_TrAmVOhSMLdjUuLd4V3y4kmklRm',
    '2024-06-09 10:55:06',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:55:06',
    '2024-06-08 10:55:06'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'FL7WT1nMAsbuFKkrmUKR3WAFxGLVvKOQ',
    '2024-06-09 23:06:41',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:06:41',
    '2024-06-08 23:06:41'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'fTm-5NSyIhHNzz2T4KMdsY2i2zPp8mF0',
    '2024-06-09 16:15:07',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:15:07',
    '2024-06-08 16:15:07'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'FV3CIScn6Vly3ZjJyKZ5wHrOtfGuusLE',
    '2024-06-09 13:19:57',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:19:57',
    '2024-06-08 13:19:57'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'FxUem-S3gh1PVtiDYdJepyVKMMkeOzas',
    '2024-06-09 13:17:52',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:17:52',
    '2024-06-08 13:17:52'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'GTXhTiKYLstDrUNtDShtWw7GdYf4UChL',
    '2024-06-09 14:52:04',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:52:04',
    '2024-06-08 14:52:04'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'H09gIw9wxXdOZgHkzwcYqOS3vz4n6259',
    '2024-06-09 15:21:15',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:21:15',
    '2024-06-08 15:21:15'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'hhVJUoWvKU7Dpig58nJUjrkAdActjajO',
    '2024-06-09 16:29:03',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:29:03',
    '2024-06-08 16:29:03'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'HL_iypYRtoRChuRUiq1xXbz5Esz6WRbK',
    '2024-06-09 16:28:51',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:28:51',
    '2024-06-08 16:28:51'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'HsO9IW74JtlY4N2widZ4I76w7ELSn_Z4',
    '2024-06-09 16:34:16',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:34:16',
    '2024-06-08 16:34:16'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'I2mI2L_0O41ArmR3j6kJu20xhVLEwOBV',
    '2024-06-09 16:18:36',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:18:36',
    '2024-06-08 16:18:36'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'idd97X4B2SvYGSA5cGJgiK08dwmmtZq-',
    '2024-06-09 13:45:48',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:45:48',
    '2024-06-08 13:45:48'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'IHMsLvD7rCVixVlEQKi4rv33a7T2tN57',
    '2024-06-09 23:14:54',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:14:54',
    '2024-06-08 23:14:54'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ivK4OXAA54GRtWi91NZxVHWh4oATTFCX',
    '2024-06-09 15:22:44',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:22:44',
    '2024-06-08 15:22:44'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'iYELHj0FvaeDu5MLs2MBSkLSDJ_ZcU1y',
    '2024-06-09 15:41:44',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:41:44',
    '2024-06-08 15:41:44'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'j4ACuZP0gBF2e8IHluFUPFJr5DNKCZDX',
    '2024-06-09 16:18:36',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:18:36',
    '2024-06-08 16:18:36'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Jc_YlD3xowkY9CcA6rZB3tNTPFpGVcvZ',
    '2024-06-09 12:34:22',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:34:22',
    '2024-06-08 12:34:22'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'JddM0YKwC5Ugg6-_splIvVfVWuGYiS0A',
    '2024-06-09 16:18:29',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:18:29',
    '2024-06-08 16:18:29'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'JdYGQXyu6E8tVLT4ZHAgs0eAMEEBdu4s',
    '2024-06-09 11:22:57',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:22:57',
    '2024-06-08 11:22:57'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'JgyZRJ0q-2dPy38oA0apt8qQJfreeiYg',
    '2024-06-09 16:27:16',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:27:16',
    '2024-06-08 16:27:16'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'JTN8Arcw97MEL5dLKT96MNqZ5Cw9uHWe',
    '2024-06-09 16:22:34',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:22:34',
    '2024-06-08 16:22:34'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Jv5hiIU_I63WsoVr-Nrd6LNaRLe2ksE9',
    '2024-06-09 16:16:54',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:16:54',
    '2024-06-08 16:16:54'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'jYZGSwNT8XU6VtLwPq2B3OEWkCwjxvyo',
    '2024-06-09 16:27:45',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:27:45',
    '2024-06-08 16:27:45'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'K36GgvdF3obqwIFw8LtKZjw-q5C7Pzlb',
    '2024-06-09 16:26:13',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:26:13',
    '2024-06-08 16:26:13'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'K5M5fMwsAHw4kktoiDZTBEOXQPsNdTwu',
    '2024-06-09 12:30:58',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:30:58',
    '2024-06-08 12:30:58'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'k7ldXUSA2xb97VAdy-5dKXnaM8PalnW-',
    '2024-06-09 23:20:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:20:26',
    '2024-06-08 23:20:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'kBvQHgoDMwxChVUZuBLUPRR2x-2scSJe',
    '2024-06-09 12:29:32',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:29:32',
    '2024-06-08 12:29:32'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'KmrcQCDN72CY8fS0UCg6MySgRDJMQ05g',
    '2024-06-09 14:47:33',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:47:33',
    '2024-06-08 14:47:33'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'knMsU2uPtwyTs3onPAA9CRxSIIWv0Sma',
    '2024-06-09 23:13:03',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:13:03',
    '2024-06-08 23:13:03'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'kOKOegPsA7ndXrSkupXUQwu_zYHe8of5',
    '2024-06-09 14:50:11',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:50:11',
    '2024-06-08 14:50:11'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ku1ypOkvpHrBBMA5O8M_O7V30iyttLda',
    '2024-06-09 23:15:03',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:15:03',
    '2024-06-08 23:15:03'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'KVPRjoAE9NmJwGClaz8a5cO3MKAVo8wb',
    '2024-06-09 11:15:39',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:15:39',
    '2024-06-08 11:15:39'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'KYdBtbbnPfLScV5vOtr-1P9vdl0KSC-C',
    '2024-06-09 13:50:51',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:50:51',
    '2024-06-08 13:50:51'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'kZ2cAR0URqhPf4rohSVyqmfxIjaP_-Lk',
    '2024-06-09 16:22:28',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:22:28',
    '2024-06-08 16:22:28'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'kzGGFzgHGfEfEJiGA6YeUcMgnIg8iLaU',
    '2024-06-09 12:54:50',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:54:50',
    '2024-06-08 12:54:50'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'KzQTYyI4ZAJdb6KC4Vj7OjQRDpZY5Kd-',
    '2024-06-09 14:47:46',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:47:46',
    '2024-06-08 14:47:46'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'LJtWuG9QHR5_Obh4-kmDFhvzrEjtzwYg',
    '2024-06-09 16:15:02',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:15:02',
    '2024-06-08 16:15:02'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'llSipzhH7ysCwvY7fMaYNr6H_-j-FtVB',
    '2024-06-09 16:38:57',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:38:57',
    '2024-06-08 16:38:57'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'lUKMbL-pMEy6QVv0TjKLdc0V0A2nFiel',
    '2024-06-09 14:55:13',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:55:13',
    '2024-06-08 14:55:13'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'lxCLy6YgKQ1jFxFK1ryU7WjfGf42B-4F',
    '2024-06-09 12:38:41',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:38:41',
    '2024-06-08 12:38:41'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'LyCZZAlRJXtQsbIO2Vvi9oRX60BgmfGS',
    '2024-06-09 23:12:22',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:12:22',
    '2024-06-08 23:12:22'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'm_dAfDD9U6WXxews44jHON0hDA8gdjqk',
    '2024-06-09 10:20:49',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:20:49',
    '2024-06-08 10:20:49'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'MKmCJ3YWN9gBBPcQ7pHRbJvfSiGl8PJi',
    '2024-06-09 12:53:35',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:53:35',
    '2024-06-08 12:53:35'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'MsCrbWy_WWO_aq74IUHroHe2FNyMJzmv',
    '2024-06-09 15:07:59',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:07:59',
    '2024-06-08 15:07:59'
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
    'mV5GptAFdr1TyUsasfVZBl74LRYjazMV',
    '2024-06-09 14:08:55',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:08:55',
    '2024-06-08 14:08:55'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'mzH5s-YToFgGdi9zFDRYI9KEosQ7LXPd',
    '2024-06-09 13:13:48',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:13:48',
    '2024-06-08 13:13:48'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'n3MB1Idsj64CVTavICLLvstFGWvTNr6n',
    '2024-06-09 23:16:31',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:16:31',
    '2024-06-08 23:16:31'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'N7SHblEtYY8YM_cV2k_UjO6JVIedA-ZT',
    '2024-06-09 14:06:43',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:06:43',
    '2024-06-08 14:06:43'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'narJ_QetPaRFYRFh7-kpja0erPcTUS7g',
    '2024-06-10 05:31:30',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:31:30',
    '2024-06-09 05:31:30'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'NEI9O4ZeZ8GRaTyZMz2LBqibOBqEYNrO',
    '2024-06-10 05:16:58',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:16:58',
    '2024-06-09 05:16:58'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'nqL1zaHkaTlvV26Kh8uOLSKt9q4Fe6Qu',
    '2024-06-09 16:22:28',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:22:28',
    '2024-06-08 16:22:28'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'NZsS1fsqpUJctveDw3uU5VYKRwcCIDKZ',
    '2024-06-09 15:01:02',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:01:02',
    '2024-06-08 15:01:02'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'O5NQ-VX21BPEciV8snLWkikDcDVX2Uk-',
    '2024-06-09 16:22:27',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:22:27',
    '2024-06-08 16:22:27'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'o6No2oJTi_Cu9TwjazDKuj-D3Ea5QYYX',
    '2024-06-09 15:04:08',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:04:08',
    '2024-06-08 15:04:08'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'o7KWqCrF3F51ghPDo12Y6vZoEhc4mYyK',
    '2024-06-09 15:02:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:02:26',
    '2024-06-08 15:02:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Od-x9SaiXtP_skyOKExIruGEb9L3PM0_',
    '2024-06-09 10:07:57',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:07:57',
    '2024-06-08 10:07:57'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ODDjzNoW0a9G_krZf2qDSI20TplDQFK5',
    '2024-06-09 15:00:55',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:00:55',
    '2024-06-08 15:00:55'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'OJZufb2-LGZehdm65NdXrAJ6byOpsYwk',
    '2024-06-09 15:08:49',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:08:49',
    '2024-06-08 15:08:49'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'On_i8G3AG6ok7DTpP1sT0Tdkr9U7iFU2',
    '2024-06-09 14:47:40',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:47:40',
    '2024-06-08 14:47:40'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'OpWzl1vMxJUkMOU_rrsyJHRx7M3srLa2',
    '2024-06-09 10:14:41',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:14:41',
    '2024-06-08 10:14:41'
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
    'Ou8oY_aEnCRoGW-dwtjNym2p_mYNNHiU',
    '2024-06-09 15:08:29',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:08:29',
    '2024-06-08 15:08:29'
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
    'P5gPSoviqbou1IaxmfC1wJgc8m_Qyw0d',
    '2024-06-09 16:26:47',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:26:47',
    '2024-06-08 16:26:47'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'p5JsSUqjjzMA4JqzxDoXcsANIkiCu53x',
    '2024-06-11 03:13:11',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"5e833704-65f6-4d97-8c23-a29d94b9acb9\"}',
    '2024-06-09 06:07:57',
    '2024-06-10 03:13:11'
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
    'PFsyWyGZcmzv54qlEzuVN59-q31zyAeD',
    '2024-06-09 11:15:53',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:15:53',
    '2024-06-08 11:15:53'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'pjxwT5OQZI9ZC3c2_CvvIoB0in_HWK3X',
    '2024-06-09 15:45:34',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:45:34',
    '2024-06-08 15:45:34'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Pm4Fjj-te4isab_4S81D7ETIgzy4ksKt',
    '2024-06-09 12:38:51',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:38:51',
    '2024-06-08 12:38:51'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'pmwwdJsWwyHLyHRRpAv7v3mYneJP_1Ac',
    '2024-06-10 05:24:50',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:20:31',
    '2024-06-09 05:24:50'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'pTHLBLrdSyvZb-BHZs6N9cV1NVUMFbwi',
    '2024-06-09 12:55:02',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:55:02',
    '2024-06-08 12:55:02'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'PX2tHpwoseEyYNdoxaSjUBtpBHMSEd4j',
    '2024-06-09 16:31:24',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:31:24',
    '2024-06-08 16:31:24'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'pxRCD5yaaSiz7HoadCVMd5yS-d9NVlON',
    '2024-06-09 15:33:17',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:33:17',
    '2024-06-08 15:33:17'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'q8_PsjeeujOSvSYKZ25jN8k7_i9FkjKl',
    '2024-06-09 13:13:58',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:13:58',
    '2024-06-08 13:13:58'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'QF1aRpxLkfnz8GYnOdWCvOhfL7KtKUW5',
    '2024-06-09 14:49:21',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:49:21',
    '2024-06-08 14:49:21'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'QGiLIe8liw9LDTlzYIJnUGKqhyw7UaCR',
    '2024-06-09 16:40:32',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:40:32',
    '2024-06-08 16:40:32'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'QHtIOPDY4oSHVtRWpGyK4UU1rwTzbNp4',
    '2024-06-09 23:08:02',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:08:02',
    '2024-06-08 23:08:02'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'QN7T1TNN0gW5g31Ct9_JIq-O8Bujdpm2',
    '2024-06-09 16:18:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:18:38',
    '2024-06-08 16:18:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'QqJHxuPEYPmcEIKV057BOQuWJ_erJy_B',
    '2024-06-09 15:02:59',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:02:59',
    '2024-06-08 15:02:59'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'rcXqlw5_0qoKughp697e5JlXhljcT8kT',
    '2024-06-09 16:18:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:18:38',
    '2024-06-08 16:18:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'rkwj9ODQEbb0e3GSmdfJsTfOlN54sFdn',
    '2024-06-09 10:06:59',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:07:00',
    '2024-06-08 10:07:00'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'RYGTVAZrSodaSFpxyajZmYrguwZ2zJDR',
    '2024-06-09 13:15:32',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:15:32',
    '2024-06-08 13:15:32'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'SCWbtyn19vLNLd_TmpT5DHBoQ-q_NaFp',
    '2024-06-10 04:56:21',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"f9a4cf97-e161-4ef5-adb0-b5ef396ca9a8\"}',
    '2024-06-08 14:58:16',
    '2024-06-09 04:56:21'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Sd1H0122EUQpsppjrsuqiqLsg1HsM8Yo',
    '2024-06-10 05:19:44',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"5e833704-65f6-4d97-8c23-a29d94b9acb9\"}',
    '2024-06-09 05:16:59',
    '2024-06-09 05:19:44'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'sD9l0LO_orXtxnYApHTLiA3otj0JH8J8',
    '2024-06-09 12:57:22',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:57:22',
    '2024-06-08 12:57:22'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'sIuEATRHyTWNHWONddDVIDaRNxWxs-Yu',
    '2024-06-09 16:27:39',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:27:39',
    '2024-06-08 16:27:39'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    't-R-BcwPPq3Xkfdk6ZgLaJeGkaeFEHf0',
    '2024-06-09 13:16:03',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:16:03',
    '2024-06-08 13:16:03'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'tKkQUhqhE9FVQdEKEdqaMQIy7wp7WfmB',
    '2024-06-09 16:22:33',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:22:33',
    '2024-06-08 16:22:33'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'tLcCJQP6FRuVz0iJCJK1MxgVuP72QDhM',
    '2024-06-09 10:07:51',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:07:51',
    '2024-06-08 10:07:51'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Tu6IrWiOuDGaetvCQ9m-7nkpYYaz1yck',
    '2024-06-09 16:25:23',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:25:23',
    '2024-06-08 16:25:23'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'TwRcQUxQ7LujJzhIfDEZYhGmPEcTzs-1',
    '2024-06-09 23:16:20',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:16:20',
    '2024-06-08 23:16:20'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'U5dV6DdpXva6joof0dSvL86LaNBMrjpM',
    '2024-06-10 05:31:46',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:31:46',
    '2024-06-09 05:31:46'
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
    'UDion_y3A0x6WV_2ws_Vreh5t6msajWs',
    '2024-06-09 11:21:25',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:21:25',
    '2024-06-08 11:21:25'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'UEuYsGeflr6A4foQguxSd2e5myhPjg8c',
    '2024-06-09 12:52:22',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:52:22',
    '2024-06-08 12:52:22'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'usEv8S-df1ijJJWGAEmH6umFVEU52qwu',
    '2024-06-09 15:41:33',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:41:33',
    '2024-06-08 15:41:33'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'v_n-Fue1lkqW9BScJDd_CF7E50HGRjeM',
    '2024-06-09 15:45:43',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:45:43',
    '2024-06-08 15:45:43'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'vHuwz3Rk-7fdJtTdCqv1A2UwyOjI64Xq',
    '2024-06-10 05:16:50',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-09 05:16:50',
    '2024-06-09 05:16:50'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'VmGf8m8zPFPALDijh22rfWA3_dl8R1PG',
    '2024-06-09 10:15:02',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:15:02',
    '2024-06-08 10:15:02'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'VnC3yd4S0eF4GRsZ3SLemlm2rT09T9aY',
    '2024-06-09 16:16:50',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:16:50',
    '2024-06-08 16:16:50'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'VnynMYXuQNVVE9mF26xe_rZ_8ORiRvaW',
    '2024-06-09 11:23:26',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 11:23:26',
    '2024-06-08 11:23:26'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'VOjLyXXRhYJRxdJrbpNmURLA5YbM8xZU',
    '2024-06-09 16:47:19',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:47:19',
    '2024-06-08 16:47:19'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'VOPc3n7m4jqsx-ak2XvrjlsqYqHvMtse',
    '2024-06-09 14:50:06',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:50:06',
    '2024-06-08 14:50:06'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'w_l3X_S3gEdmeEQ-oqIfbRQlWCwH4gzi',
    '2024-06-09 15:34:12',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:34:12',
    '2024-06-08 15:34:12'
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
    'X2taji8zleJ6xDYiw9m-U_edv0uKWNwg',
    '2024-06-09 10:20:42',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:20:42',
    '2024-06-08 10:20:42'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'XI-SHkavw231WVYe9y7HP2eMhzIIbxuD',
    '2024-06-09 12:34:17',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 12:34:17',
    '2024-06-08 12:34:17'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'XSBawv9WKP4l-ASJLt482-QTsSkKtvR8',
    '2024-06-09 16:15:07',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:15:07',
    '2024-06-08 16:15:07'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Xyw_nD8KCk7Lrk-Jl5dYXHEfoaM9qOe-',
    '2024-06-09 10:15:01',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:15:01',
    '2024-06-08 10:15:01'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'XZIbE3QRvKRrHP1Tx36eNmfMUX2bYvji',
    '2024-06-09 15:40:13',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:40:13',
    '2024-06-08 15:40:13'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'y8BQPK7MhxSyM_beHNCRKrY65ri2G5Dq',
    '2024-06-09 14:48:49',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:48:49',
    '2024-06-08 14:48:49'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'yHAtTWciA0rdw1BuIQgj6slkcgSL5w1u',
    '2024-06-09 10:45:18',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:45:19',
    '2024-06-08 10:45:19'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'yL5YS3N0JqVJID5S0TMuAhI0zJUrYbwS',
    '2024-06-09 15:46:58',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:46:58',
    '2024-06-08 15:46:58'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ypwxzac65ONGnnxhBL-k6gCSHChlvRfd',
    '2024-06-09 13:20:09',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:20:09',
    '2024-06-08 13:20:09'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'YwtOr1wHKvInphEwc-_4P6CNkiCR6fe5',
    '2024-06-09 15:20:57',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 15:20:57',
    '2024-06-08 15:20:57'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'z4c08T7okC91rkRs57YgKRFvbf1XLHY3',
    '2024-06-09 13:16:40',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 13:16:40',
    '2024-06-08 13:16:40'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Z5gW3kNWEH2eNsraj2kM2T8QO0L7pHNX',
    '2024-06-09 14:48:57',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 14:48:57',
    '2024-06-08 14:48:57'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'z6LvwEfAZSP0IN3lA-a-7eIrE6F30rKE',
    '2024-06-09 16:18:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:18:38',
    '2024-06-08 16:18:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'z953b8qvYrG2elZzVMEsaSoamCEPPQKi',
    '2024-06-09 23:06:50',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 23:06:50',
    '2024-06-08 23:06:50'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'zCNj3V73Y0he5rWeFKCJg-Asg7NNO3Xr',
    '2024-06-09 10:20:59',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:20:59',
    '2024-06-08 10:20:59'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ZDwlhcDl12Blo2r39wQVzolqXKoL8UhX',
    '2024-06-09 16:38:45',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:38:45',
    '2024-06-08 16:38:45'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'zIz-nY_ElM667Er1uxEeb3AOg4Lt8TDN',
    '2024-06-09 16:40:41',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:40:41',
    '2024-06-08 16:40:41'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ZldxTU4_CobrgKGtoXYQ013gUK2aQ1sO',
    '2024-06-09 16:25:38',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:25:38',
    '2024-06-08 16:25:38'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'Zr6YiZ8EHG8tIQqLYEJERE1Gd-4ZjkRd',
    '2024-06-09 10:10:01',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 10:10:01',
    '2024-06-08 10:10:01'
  );
INSERT INTO
  `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`)
VALUES
  (
    'ZVxrgbJ1nNIHyNpqkJSW47e96dUintc_',
    '2024-06-09 16:39:32',
    '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}',
    '2024-06-08 16:39:32',
    '2024-06-08 16:39:32'
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
