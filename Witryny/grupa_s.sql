-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 14, 2023 at 11:16 AM
-- Wersja serwera: 10.4.31-MariaDB-1:10.4.31+maria~ubu2004
-- Wersja PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grupa_s`
--
CREATE DATABASE IF NOT EXISTS `grupa_s` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grupa_s`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ean` varchar(255) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `price` double NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `deletedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ean` (`ean`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `ean`, `name`, `description`, `price`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'e284f4d0-01f7-4c3d-bbea-6334cf6d99b5', 'Luxurious Granite Pizza', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 331, '2023-05-25 02:01:42.878', '2023-12-13 17:45:15.466', NULL),
(2, '6c63a65c-d7a4-460e-9efc-66081606193d', 'Fantastic Concrete Chicken', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 750, '2023-03-05 16:16:50.174', '2023-12-13 17:45:15.498', '2023-07-27 17:54:59.248'),
(3, 'bb1b5142-9fc6-4dc8-83ba-d8de10712476', 'Recycled Plastic Pants', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 510, '2022-12-27 09:57:09.989', '2023-12-13 17:45:15.507', '2023-10-08 19:08:42.894'),
(4, '35fbf945-52c8-43db-b67e-d10e27399a25', 'Sleek Cotton Mouse', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 106, '2023-07-27 01:28:48.912', '2023-12-13 17:45:15.511', '2023-12-12 19:30:51.980'),
(5, '536278e2-d750-4e10-9c34-80db3948126f', 'Gorgeous Plastic Gloves', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 346, '2023-05-07 08:38:24.856', '2023-12-13 17:45:15.515', NULL),
(6, 'e1dc753d-0c73-4eab-b6bf-82eba36a2143', 'Gorgeous Concrete Keyboard', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 825, '2023-01-25 21:16:20.650', '2023-12-13 17:45:15.520', NULL),
(7, 'b4262317-414f-415c-9bcc-af6c045551ea', 'Modern Steel Hat', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 730, '2023-01-29 16:59:52.703', '2023-12-13 17:45:15.524', '2023-07-10 23:16:09.795'),
(8, '1a1b10bb-af9f-45e4-aa5a-94de3e868196', 'Gorgeous Fresh Computer', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 868, '2023-05-09 03:54:12.237', '2023-12-13 17:45:15.527', '2023-05-17 18:06:08.014'),
(9, '8dd437a9-76cf-4671-8804-bbb9868bb969', 'Tasty Granite Chips', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 510, '2023-10-30 13:33:01.541', '2023-12-13 17:45:15.530', NULL),
(10, '396e0c7d-e2fb-41a8-b47f-ec6c1f7351fd', 'Recycled Granite Bacon', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 877, '2023-10-24 16:04:14.737', '2023-12-13 17:45:15.534', NULL),
(11, '75949b44-6971-4c95-8613-c743066d52df', 'Gorgeous Metal Hat', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 375, '2023-03-08 03:19:20.316', '2023-12-13 17:45:15.540', '2023-11-14 12:34:09.880'),
(12, 'f3d6cbf1-fed2-489d-8149-7cb861b54f61', 'Luxurious Plastic Keyboard', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 823, '2023-10-12 11:16:27.708', '2023-12-13 17:45:15.546', '2023-11-29 23:51:39.789'),
(13, '50355a85-d130-4005-869e-4c42727263ef', 'Oriental Steel Ball', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 26, '2023-08-29 04:53:13.991', '2023-12-13 17:45:15.551', NULL),
(14, 'b71beff2-7e90-4a0b-a2f8-536a851ddb37', 'Oriental Bronze Shirt', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 453, '2023-01-29 01:13:57.291', '2023-12-13 17:45:15.553', NULL),
(15, '5b617928-fe69-47e6-90ee-de3355027ed6', 'Licensed Fresh Pants', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 583, '2023-05-04 22:54:43.075', '2023-12-13 17:45:15.557', NULL),
(16, '2b418ff4-e687-4e98-bef5-351c69e71174', 'Small Bronze Bacon', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 75, '2023-10-24 23:02:51.468', '2023-12-13 17:45:15.561', '2023-11-24 22:56:04.681'),
(17, 'd2b57f0a-71c9-4a5a-8743-13b38834e698', 'Handcrafted Steel Tuna', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 335, '2023-08-17 09:27:15.714', '2023-12-13 17:45:15.569', NULL),
(18, 'a96e9d67-76c4-4eba-8b9e-b883b0e8cbe8', 'Handmade Granite Pizza', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 644, '2023-10-20 16:17:37.978', '2023-12-13 17:45:15.572', NULL),
(19, '7bad33ef-2913-4208-8163-5c8ba8da7208', 'Rustic Plastic Fish', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 475, '2023-03-30 07:14:52.162', '2023-12-13 17:45:15.577', '2023-07-31 13:13:49.311'),
(20, 'd7f76d98-3f64-4bed-ac1f-91f32c54ef19', 'Electronic Soft Salad', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 984, '2023-06-19 04:01:12.046', '2023-12-13 17:45:15.581', '2023-08-21 01:27:41.691'),
(21, '5fcc76b2-fbec-4371-9fd5-3692b7731a29', 'Luxurious Granite Pants', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 659, '2023-06-04 04:27:11.448', '2023-12-13 17:45:15.586', NULL),
(22, 'a0865daf-f884-4215-b325-b740515b08f7', 'Incredible Metal Ball', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 263, '2023-12-01 22:12:17.615', '2023-12-13 17:45:15.601', '2023-12-09 06:07:20.906'),
(23, 'e03a3e22-5d57-4995-a859-8d3e49873b12', 'Small Soft Towels', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 729, '2023-08-30 14:33:22.613', '2023-12-13 17:45:15.606', '2023-10-26 15:30:56.273'),
(24, 'aa719098-b81e-4548-b259-8565e4bf95e0', 'Handcrafted Concrete Pants', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 38, '2022-12-19 01:21:16.637', '2023-12-13 17:45:15.615', '2023-05-05 08:03:12.895'),
(25, 'c8236b42-ecc8-4ca2-b0e6-c1b020a09a20', 'Rustic Bronze Cheese', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 541, '2023-12-04 16:29:12.645', '2023-12-13 17:45:15.618', NULL),
(26, '225b6adb-f9b2-4ec8-819c-7baf0e51e260', 'Modern Rubber Bacon', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 156, '2023-03-27 03:30:10.301', '2023-12-13 17:45:15.620', NULL),
(27, 'dd521c99-6a20-4735-94e9-ce14bd66f1da', 'Bespoke Plastic Shirt', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 83, '2022-12-30 08:34:19.924', '2023-12-13 17:45:15.623', '2023-03-18 12:50:06.772'),
(28, '7af82bf0-f3b0-4ce0-8a08-daa823a9b2b3', 'Small Rubber Table', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 212, '2023-01-25 15:21:05.305', '2023-12-13 17:45:15.625', NULL),
(29, '8886641f-a29c-42f4-b321-57175911a8d0', 'Bespoke Concrete Cheese', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 772, '2023-05-25 09:58:49.528', '2023-12-13 17:45:15.628', '2023-08-17 22:33:41.141'),
(30, 'd5ca55e6-76cc-4d23-9ad8-cf9299c17590', 'Luxurious Granite Pizza', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 535, '2023-04-14 07:44:35.808', '2023-12-13 17:45:15.629', NULL),
(31, '1535c6d8-e02d-4dde-90d0-7d71f7b9971f', 'Refined Frozen Hat', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 661, '2023-06-12 00:29:13.966', '2023-12-13 17:45:15.632', '2023-06-15 15:46:12.922'),
(32, 'a42dd67d-230a-45c6-b128-064948107997', 'Practical Fresh Salad', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 844, '2023-10-25 15:11:52.165', '2023-12-13 17:45:15.634', NULL),
(33, '12bdb4b5-5de5-4b4e-8f2e-7cbbafd6b5ba', 'Electronic Steel Chicken', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 169, '2022-12-15 12:55:40.065', '2023-12-13 17:45:15.636', '2022-12-17 04:11:54.564'),
(34, '6eb7a788-61a6-425e-94d0-8ca4b51539a2', 'Incredible Frozen Towels', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 374, '2023-09-05 23:22:16.725', '2023-12-13 17:45:15.638', '2023-10-03 05:47:05.640'),
(35, 'ed4a3e87-3bc1-4526-8fdc-77d6b9c98384', 'Bespoke Metal Bike', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 703, '2023-10-09 02:26:30.518', '2023-12-13 17:45:15.640', NULL),
(36, '30b06fa3-757b-4276-bcb0-90fc5f3752c7', 'Unbranded Concrete Chicken', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 930, '2023-04-16 10:45:01.504', '2023-12-13 17:45:15.642', '2023-05-20 21:47:16.526'),
(37, 'd92338c5-b557-4812-8f51-134730c416c4', 'Recycled Wooden Keyboard', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 77, '2023-09-05 01:44:12.956', '2023-12-13 17:45:15.645', '2023-11-18 07:22:56.154'),
(38, 'e2afadd9-e040-45f4-9247-40449bf5af11', 'Small Plastic Chips', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 455, '2023-01-27 18:07:20.507', '2023-12-13 17:45:15.647', NULL),
(39, '42b1de28-6c38-468d-8f2b-7129119496b3', 'Sleek Steel Ball', 'The Football Is Good For Training And Recreational Purposes', 57, '2022-12-31 14:55:36.759', '2023-12-13 17:45:15.649', NULL),
(40, 'f01bb767-e11a-481a-999c-dbad6de6b56f', 'Electronic Granite Mouse', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 184, '2023-01-05 18:35:17.539', '2023-12-13 17:45:15.652', '2023-09-05 18:33:47.010'),
(41, 'e2f54a42-eda8-45ed-a774-b32451b98064', 'Luxurious Frozen Towels', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 210, '2023-01-12 01:48:29.977', '2023-12-13 17:45:15.654', '2023-08-04 08:22:54.960'),
(42, '1ffd249e-f57d-477a-b2cf-6c959c794208', 'Intelligent Wooden Mouse', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 585, '2023-10-19 09:56:23.207', '2023-12-13 17:45:15.657', '2023-11-18 04:19:41.515'),
(43, 'ed2b2dc6-d15d-4f1b-abef-01427e2a826c', 'Recycled Cotton Table', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 674, '2023-07-06 19:10:36.444', '2023-12-13 17:45:15.663', NULL),
(44, 'efbfec94-3bf7-4b11-b1f2-1b92c1619d3d', 'Awesome Wooden Fish', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 362, '2023-04-20 21:39:26.051', '2023-12-13 17:45:15.666', '2023-11-27 11:37:43.160'),
(45, '80283944-1e2f-408a-bd8e-0d8195202661', 'Handmade Soft Sausages', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 108, '2023-10-06 17:08:27.763', '2023-12-13 17:45:15.669', '2023-12-07 16:43:00.436'),
(46, '6bbe5194-70d2-4772-9a7d-241d8cbf30ca', 'Gorgeous Concrete Bike', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 114, '2023-02-23 06:34:16.545', '2023-12-13 17:45:15.671', NULL),
(47, '1de54667-a7b2-4192-8391-1741faa1d021', 'Generic Rubber Shirt', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 79, '2023-07-13 05:28:01.353', '2023-12-13 17:45:15.674', NULL),
(48, 'e9f69dd2-cd8e-4592-8083-14e1de0633fa', 'Modern Soft Hat', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 187, '2023-11-28 08:32:09.035', '2023-12-13 17:45:15.677', '2023-12-05 11:17:35.141'),
(49, '510b947a-802e-41d9-adf4-961893671e73', 'Licensed Bronze Soap', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 657, '2023-01-08 11:50:23.907', '2023-12-13 17:45:15.679', NULL),
(50, '6256a39c-2c84-4e2d-b6c1-283e7b7cac92', 'Fantastic Frozen Gloves', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 510, '2023-07-13 02:50:26.232', '2023-12-13 17:45:15.682', NULL),
(51, 'c7b859da-2ef5-4c9e-80fa-ebdf401f972f', 'Recycled Fresh Ball', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 362, '2023-11-07 16:11:37.835', '2023-12-13 17:45:15.685', '2023-11-08 18:38:12.307'),
(52, 'c241a8b3-b773-4623-bed8-10d907a20b86', 'Rustic Fresh Salad', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 836, '2023-07-05 15:27:16.650', '2023-12-13 17:45:15.688', '2023-10-27 19:36:17.904'),
(53, 'a49d86aa-d3a0-46eb-b22e-364284bc9c3a', 'Gorgeous Rubber Soap', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 656, '2023-04-12 19:12:50.697', '2023-12-13 17:45:15.691', '2023-06-07 08:02:43.874'),
(54, '255d66fb-7190-4868-9ec9-b313f2548f89', 'Tasty Plastic Towels', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 975, '2023-06-06 02:26:16.124', '2023-12-13 17:45:15.693', '2023-09-21 17:24:07.077'),
(55, '6ac8ec9a-7121-4df1-a377-bad165445a7c', 'Small Steel Keyboard', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 220, '2023-02-23 10:36:02.908', '2023-12-13 17:45:15.696', '2023-07-31 22:57:40.243'),
(56, 'd511f3f0-4db0-479a-a6bc-6cbd2c78b959', 'Tasty Frozen Pants', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 206, '2023-02-19 07:56:00.723', '2023-12-13 17:45:15.698', NULL),
(57, 'd77e73ee-1c1c-4991-8fe9-88ff10159fd6', 'Rustic Cotton Shirt', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 598, '2023-11-28 06:05:48.716', '2023-12-13 17:45:15.700', NULL),
(58, '65bd8fe3-5c6a-4c7d-9b91-68cdca32a369', 'Recycled Bronze Fish', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 757, '2023-07-05 09:25:36.993', '2023-12-13 17:45:15.702', '2023-10-03 12:03:54.253'),
(59, '6e860a8e-052d-4c96-a5ee-dbabd797af02', 'Fantastic Fresh Bike', 'The Football Is Good For Training And Recreational Purposes', 341, '2023-12-08 19:07:21.461', '2023-12-13 17:45:15.705', '2023-12-11 21:34:52.036'),
(60, 'e9e150e8-ab1a-488e-b6b8-7f2e7447402a', 'Refined Fresh Gloves', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 595, '2023-10-03 02:04:33.342', '2023-12-13 17:45:15.707', NULL),
(61, '32c857c8-a0d5-465e-9dce-a4952b58483d', 'Modern Metal Bike', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 503, '2023-04-23 01:10:54.119', '2023-12-13 17:45:15.710', '2023-06-22 16:46:51.072'),
(62, '073c35b3-c717-41bf-92f7-4728b6fe7243', 'Modern Steel Shirt', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 505, '2023-09-15 11:48:56.450', '2023-12-13 17:45:15.712', '2023-09-21 05:29:25.776'),
(63, 'b46dd9a4-5b52-4ca4-9de4-348f41d138d3', 'Intelligent Steel Soap', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 590, '2023-09-25 09:03:21.150', '2023-12-13 17:45:15.715', NULL),
(64, 'dc08dfa6-8823-4c5a-b513-399333946652', 'Modern Steel Computer', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', 864, '2023-04-07 01:27:06.779', '2023-12-13 17:45:15.719', NULL),
(65, 'c4fa13af-dea1-4474-b65d-7752c18a0927', 'Intelligent Soft Towels', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 791, '2023-06-27 00:35:03.935', '2023-12-13 17:45:15.722', '2023-12-07 21:14:36.987'),
(66, 'b4d494f1-336e-4bdd-9346-3fa3035bbb46', 'Refined Fresh Gloves', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', 340, '2023-07-18 21:04:52.690', '2023-12-13 17:45:15.726', '2023-10-05 20:32:54.015'),
(67, 'fc9f3b87-74ab-4aef-9812-d7fc9ca5e1a6', 'Recycled Concrete Pizza', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 325, '2023-11-23 02:26:18.457', '2023-12-13 17:45:15.730', NULL),
(68, '7fbfde6f-83a1-4195-a7cf-67c960d392e3', 'Small Steel Soap', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 477, '2023-11-07 21:10:46.133', '2023-12-13 17:45:15.734', NULL),
(69, '4f69f419-93ec-4442-a539-19a6d2ecdb57', 'Handcrafted Plastic Keyboard', 'The Football Is Good For Training And Recreational Purposes', 105, '2023-11-19 05:11:36.721', '2023-12-13 17:45:15.737', NULL),
(70, '428ff548-0db5-4813-a2be-46d4ec75a79b', 'Tasty Fresh Chicken', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 590, '2023-08-09 23:02:23.200', '2023-12-13 17:45:15.740', NULL),
(71, 'c921ded8-929b-4178-8e7b-7046ef894947', 'Handcrafted Bronze Tuna', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 654, '2023-03-29 23:02:22.555', '2023-12-13 17:45:15.742', '2023-09-09 20:57:23.872'),
(72, 'e0683d8b-1619-4bd3-ad2d-68806351f3a5', 'Incredible Plastic Shirt', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 518, '2023-11-08 22:43:15.733', '2023-12-13 17:45:15.745', '2023-11-24 05:19:17.445'),
(73, 'acd7d6da-5895-4171-88eb-b3faa73cc741', 'Refined Granite Shirt', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 966, '2023-06-01 04:30:28.424', '2023-12-13 17:45:15.748', '2023-11-22 21:58:32.240'),
(74, 'd63afbce-bd4f-4611-a3fd-d3dabde77168', 'Luxurious Bronze Cheese', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 763, '2023-06-01 20:21:40.081', '2023-12-13 17:45:15.751', NULL),
(75, '2015ac9f-e418-4d06-bc45-5f00ace323b8', 'Modern Frozen Mouse', 'The Football Is Good For Training And Recreational Purposes', 252, '2023-03-17 21:07:21.689', '2023-12-13 17:45:15.754', '2023-09-10 00:30:37.626'),
(76, 'bc03f754-9e0a-47ed-8be4-90cbbffdf7bd', 'Unbranded Rubber Tuna', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 205, '2023-03-17 12:21:58.880', '2023-12-13 17:45:15.757', NULL),
(77, '077fb110-be9d-42ec-8cc2-4b16572371b9', 'Tasty Wooden Table', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 81, '2023-11-22 08:16:15.999', '2023-12-13 17:45:15.759', '2023-12-11 22:57:05.662'),
(78, 'abe24c13-6e6d-4855-9719-38922d791ed6', 'Modern Concrete Car', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 888, '2023-10-09 11:47:49.285', '2023-12-13 17:45:15.762', NULL),
(79, 'b4dea6cb-911f-4627-8486-07ca448dcbd3', 'Gorgeous Fresh Hat', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 688, '2023-09-02 08:08:12.433', '2023-12-13 17:45:15.765', NULL),
(80, 'ba5fbc03-abf5-4eef-aab9-c406dec17a75', 'Gorgeous Frozen Computer', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 935, '2023-06-05 23:08:01.691', '2023-12-13 17:45:15.769', '2023-11-20 13:24:40.708'),
(81, 'e4aa379d-74bb-4416-a2dd-209f2b4eb4ad', 'Generic Rubber Salad', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 551, '2023-05-24 20:40:18.229', '2023-12-13 17:45:15.771', NULL),
(82, 'ed7deb18-6615-4afa-bce9-44dba156684b', 'Handmade Bronze Chicken', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 292, '2023-10-06 11:29:52.495', '2023-12-13 17:45:15.773', NULL),
(83, '3e430b25-4e30-4e5c-ae71-90e7cedc89a8', 'Generic Cotton Chicken', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 559, '2023-08-07 13:25:53.961', '2023-12-13 17:45:15.776', NULL),
(84, '7671ba3b-8322-4441-be23-0e18978b77bd', 'Oriental Concrete Chips', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 539, '2023-07-07 11:14:47.346', '2023-12-13 17:45:15.778', '2023-08-25 12:11:21.919'),
(85, 'abcc490c-b031-4a68-a47d-3bdbd362901f', 'Bespoke Wooden Pizza', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 525, '2023-02-03 02:48:35.358', '2023-12-13 17:45:15.786', '2023-11-24 20:49:34.140'),
(86, '884052b9-f1aa-41f9-916d-7bd551924985', 'Tasty Bronze Table', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', 43, '2023-02-13 05:53:01.269', '2023-12-13 17:45:15.789', NULL),
(87, '1b8d4609-cb2f-49e2-830f-1c87851cf22a', 'Gorgeous Frozen Salad', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', 53, '2023-07-17 03:14:13.277', '2023-12-13 17:45:15.791', NULL),
(88, '15c2a33a-2873-4057-8dfd-cb5dd878edd1', 'Refined Frozen Shoes', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles', 163, '2023-04-25 10:41:34.758', '2023-12-13 17:45:15.793', NULL),
(89, '3448f526-9cd8-47e8-aab5-6a974908ebc3', 'Small Bronze Cheese', 'The Football Is Good For Training And Recreational Purposes', 734, '2023-08-16 04:48:29.242', '2023-12-13 17:45:15.795', '2023-11-13 18:08:17.443'),
(90, '2b34e935-8ebd-4a69-96bb-60afe547546c', 'Refined Granite Bike', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 465, '2023-04-22 14:06:29.164', '2023-12-13 17:45:15.796', NULL),
(91, 'df4e1377-d597-401d-8555-47ee12e566a7', 'Modern Concrete Sausages', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', 570, '2023-09-11 11:59:27.948', '2023-12-13 17:45:15.798', NULL),
(92, 'fec6aa27-a947-4462-9c72-44ab6bb763fc', 'Tasty Frozen Pizza', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 650, '2023-07-25 09:20:46.544', '2023-12-13 17:45:15.800', '2023-09-30 02:07:34.412'),
(93, 'db105c90-cb6b-44f6-808e-11e64f3bef4c', 'Fantastic Plastic Gloves', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 974, '2023-01-12 16:24:56.404', '2023-12-13 17:45:15.801', '2023-05-05 18:30:28.684'),
(94, '4a7b75e1-b532-4483-8a03-b2d888e48e2e', 'Tasty Concrete Tuna', 'The Football Is Good For Training And Recreational Purposes', 285, '2023-09-02 19:19:08.556', '2023-12-13 17:45:15.803', NULL),
(95, '1b985f3f-2aba-4916-90f3-4040613885da', 'Intelligent Soft Pants', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 983, '2023-07-17 15:42:27.900', '2023-12-13 17:45:15.805', '2023-11-16 07:18:00.811'),
(96, '3f2c5ede-2d67-4356-b189-186f8d4f2fe7', 'Sleek Wooden Mouse', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', 755, '2023-06-15 11:59:58.371', '2023-12-13 17:45:15.806', '2023-11-09 01:20:31.941'),
(97, 'a63bda47-51b9-47ec-ab89-5682e173ef62', 'Ergonomic Metal Tuna', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', 175, '2023-09-11 13:34:57.595', '2023-12-13 17:45:15.808', NULL),
(98, '1f1f9d41-89ac-4fde-a02f-2bd8ac1c7765', 'Elegant Cotton Chicken', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', 453, '2023-06-23 19:34:36.847', '2023-12-13 17:45:15.810', '2023-09-21 07:51:05.765'),
(99, '3c6b1bfa-4337-40e6-8dd0-56e8f5045887', 'Refined Bronze Keyboard', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', 547, '2023-04-24 13:47:02.627', '2023-12-13 17:45:15.811', NULL),
(100, '2fe527d1-aa84-404b-a798-b460c11b70c2', 'Modern Metal Bike', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J', 389, '2023-04-10 09:15:55.213', '2023-12-13 17:45:15.813', '2023-08-10 23:56:19.150');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`) VALUES
(1, 'admin@example.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'John', 'Doe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
