-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 02, 2025 at 05:03 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `way`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `compania` varchar(100) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `latitud` varchar(50) DEFAULT NULL,
  `longitud` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `telefono`, `correo`, `compania`, `calle`, `latitud`, `longitud`) VALUES
(1, 'Leanne Graham123232', '1-770-736-8031 x5644', 'Sincere@april.biz', 'Romaguera-Crona', 'Kulas Light', '-37.3159', '81.1496'),
(2, 'Ervin Howell', '010-692-6593 x09125', 'Shanna@melissa.tv', 'Deckow-Crist', 'Victor Plains', '-43.9509', '-34.4618'),
(3, 'Clementine Bauch', '1-463-123-4447', 'Nathan@yesenia.net', 'Romaguera-Jacobson', 'Douglas Extension', '-68.6102', '-47.0653'),
(4, 'Patricia Lebsack', '493-170-9623 x156', 'Julianne.OConner@kory.org', 'Robel-Corkery', 'Hoeger Mall', '29.4572', '-164.2990'),
(5, 'Chelsey Dietrich', '(254)954-1289', 'Lucio_Hettinger@annie.ca', 'Keebler LLC', 'Skiles Walks', '-31.8129', '62.5342'),
(6, 'Mrs. Dennis Schulist', '1-477-935-8478 x6430', 'Karley_Dach@jasper.info', 'Considine-Lockman', 'Norberto Crossing', '-71.4197', '71.7478'),
(7, 'Kurtis Weissnat', '210.067.6132', 'Telly.Hoeger@billy.biz', 'Johns Group', 'Rex Trail', '24.8918', '21.8984'),
(8, 'Nicholas Runolfsdottir V', '586.493.6943 x140', 'Sherwood@rosamond.me', 'Abernathy Group', 'Ellsworth Summit', '-14.3990', '-120.7677'),
(9, 'Glenna Reichert', '(775)976-6794 x41206', 'Chaim_McDermott@dana.io', 'Yost and Sons', 'Dayna Park', '24.6463', '-168.8889'),
(10, 'Clementina DuBuque', '024-648-3804', 'Rey.Padberg@karina.biz', 'Hoeger LLC', 'Kattie Turnpike', '-38.2386', '57.2232'),
(11, 'Leanne Graham', '1-770-736-8031 x5644', 'Sincere@april.biz', 'Romaguera-Crona', 'Kulas Light', '-37.3159', '81.1496'),
(12, 'Ervin Howell', '010-692-6593 x09125', 'Shanna@melissa.tv', 'Deckow-Crist', 'Victor Plains', '-43.9509', '-34.4618'),
(13, 'Clementine Bauch', '1-463-123-4447', 'Nathan@yesenia.net', 'Romaguera-Jacobson', 'Douglas Extension', '-68.6102', '-47.0653'),
(14, 'Patricia Lebsack', '493-170-9623 x156', 'Julianne.OConner@kory.org', 'Robel-Corkery', 'Hoeger Mall', '29.4572', '-164.2990'),
(15, 'Chelsey Dietrich', '(254)954-1289', 'Lucio_Hettinger@annie.ca', 'Keebler LLC', 'Skiles Walks', '-31.8129', '62.5342'),
(16, 'Mrs. Dennis Schulist', '1-477-935-8478 x6430', 'Karley_Dach@jasper.info', 'Considine-Lockman', 'Norberto Crossing', '-71.4197', '71.7478'),
(17, 'Kurtis Weissnat', '210.067.6132', 'Telly.Hoeger@billy.biz', 'Johns Group', 'Rex Trail', '24.8918', '21.8984'),
(18, 'Nicholas Runolfsdottir V', '586.493.6943 x140', 'Sherwood@rosamond.me', 'Abernathy Group', 'Ellsworth Summit', '-14.3990', '-120.7677'),
(19, 'Glenna Reichert', '(775)976-6794 x41206', 'Chaim_McDermott@dana.io', 'Yost and Sons', 'Dayna Park', '24.6463', '-168.8889'),
(20, 'Clementina DuBuque', '024-648-3804', 'Rey.Padberg@karina.biz', 'Hoeger LLC', 'Kattie Turnpike', '-38.2386', '57.2232'),
(21, 'Leanne Graham', '1-770-736-8031 x5644', 'Sincere@april.biz', 'Romaguera-Crona', 'Kulas Light', '-37.3159', '81.1496'),
(22, 'Ervin Howell', '010-692-6593 x09125', 'Shanna@melissa.tv', 'Deckow-Crist', 'Victor Plains', '-43.9509', '-34.4618'),
(23, 'Clementine Bauch', '1-463-123-4447', 'Nathan@yesenia.net', 'Romaguera-Jacobson', 'Douglas Extension', '-68.6102', '-47.0653'),
(24, 'Patricia Lebsack', '493-170-9623 x156', 'Julianne.OConner@kory.org', 'Robel-Corkery', 'Hoeger Mall', '29.4572', '-164.2990'),
(25, 'Chelsey Dietrich', '(254)954-1289', 'Lucio_Hettinger@annie.ca', 'Keebler LLC', 'Skiles Walks', '-31.8129', '62.5342'),
(26, 'Mrs. Dennis Schulist', '1-477-935-8478 x6430', 'Karley_Dach@jasper.info', 'Considine-Lockman', 'Norberto Crossing', '-71.4197', '71.7478'),
(27, 'Kurtis Weissnat', '210.067.6132', 'Telly.Hoeger@billy.biz', 'Johns Group', 'Rex Trail', '24.8918', '21.8984'),
(28, 'Nicholas Runolfsdottir V', '586.493.6943 x140', 'Sherwood@rosamond.me', 'Abernathy Group', 'Ellsworth Summit', '-14.3990', '-120.7677'),
(29, 'Glenna Reichert', '(775)976-6794 x41206', 'Chaim_McDermott@dana.io', 'Yost and Sons', 'Dayna Park', '24.6463', '-168.8889'),
(30, 'Clementina DuBuque', '024-648-3804', 'Rey.Padberg@karina.biz', 'Hoeger LLC', 'Kattie Turnpike', '-38.2386', '57.2232'),
(31, 'Leanne Graham', '1-770-736-8031 x5644', 'Sincere@april.biz', 'Romaguera-Crona', 'Kulas Light', '-37.3159', '81.1496'),
(32, 'Ervin Howell', '010-692-6593 x09125', 'Shanna@melissa.tv', 'Deckow-Crist', 'Victor Plains', '-43.9509', '-34.4618'),
(33, 'Clementine Bauch', '1-463-123-4447', 'Nathan@yesenia.net', 'Romaguera-Jacobson', 'Douglas Extension', '-68.6102', '-47.0653'),
(34, 'Patricia Lebsack', '493-170-9623 x156', 'Julianne.OConner@kory.org', 'Robel-Corkery', 'Hoeger Mall', '29.4572', '-164.2990'),
(35, 'Chelsey Dietrich', '(254)954-1289', 'Lucio_Hettinger@annie.ca', 'Keebler LLC', 'Skiles Walks', '-31.8129', '62.5342'),
(36, 'Mrs. Dennis Schulist', '1-477-935-8478 x6430', 'Karley_Dach@jasper.info', 'Considine-Lockman', 'Norberto Crossing', '-71.4197', '71.7478'),
(37, 'Kurtis Weissnat', '210.067.6132', 'Telly.Hoeger@billy.biz', 'Johns Group', 'Rex Trail', '24.8918', '21.8984'),
(38, 'Nicholas Runolfsdottir V', '586.493.6943 x140', 'Sherwood@rosamond.me', 'Abernathy Group', 'Ellsworth Summit', '-14.3990', '-120.7677'),
(39, 'Glenna Reichert', '(775)976-6794 x41206', 'Chaim_McDermott@dana.io', 'Yost and Sons', 'Dayna Park', '24.6463', '-168.8889'),
(40, 'Clementina DuBuque', '024-648-3804', 'Rey.Padberg@karina.biz', 'Hoeger LLC', 'Kattie Turnpike', '-38.2386', '57.2232'),
(41, 'Leanne Graham', '1-770-736-8031 x5644', 'Sincere@april.biz', 'Romaguera-Crona', 'Kulas Light', '-37.3159', '81.1496'),
(42, 'Ervin Howell', '010-692-6593 x09125', 'Shanna@melissa.tv', 'Deckow-Crist', 'Victor Plains', '-43.9509', '-34.4618'),
(43, 'Clementine Bauch', '1-463-123-4447', 'Nathan@yesenia.net', 'Romaguera-Jacobson', 'Douglas Extension', '-68.6102', '-47.0653'),
(44, 'Patricia Lebsack', '493-170-9623 x156', 'Julianne.OConner@kory.org', 'Robel-Corkery', 'Hoeger Mall', '29.4572', '-164.2990'),
(45, 'Chelsey Dietrich', '(254)954-1289', 'Lucio_Hettinger@annie.ca', 'Keebler LLC', 'Skiles Walks', '-31.8129', '62.5342'),
(46, 'Mrs. Dennis Schulist', '1-477-935-8478 x6430', 'Karley_Dach@jasper.info', 'Considine-Lockman', 'Norberto Crossing', '-71.4197', '71.7478'),
(47, 'Kurtis Weissnat', '210.067.6132', 'Telly.Hoeger@billy.biz', 'Johns Group', 'Rex Trail', '24.8918', '21.8984'),
(48, 'Nicholas Runolfsdottir V', '586.493.6943 x140', 'Sherwood@rosamond.me', 'Abernathy Group', 'Ellsworth Summit', '-14.3990', '-120.7677'),
(49, 'Glenna Reichert', '(775)976-6794 x41206', 'Chaim_McDermott@dana.io', 'Yost and Sons', 'Dayna Park', '24.6463', '-168.8889'),
(50, 'Clementina DuBuque', '024-648-3804', 'Rey.Padberg@karina.biz', 'Hoeger LLC', 'Kattie Turnpike', '-38.2386', '57.2232'),
(51, 'Leanne Graham', '1-770-736-8031 x5644', 'Sincere@april.biz', 'Romaguera-Crona', 'Kulas Light', '-37.3159', '81.1496'),
(52, 'Ervin Howell', '010-692-6593 x09125', 'Shanna@melissa.tv', 'Deckow-Crist', 'Victor Plains', '-43.9509', '-34.4618'),
(53, 'Clementine Bauch', '1-463-123-4447', 'Nathan@yesenia.net', 'Romaguera-Jacobson', 'Douglas Extension', '-68.6102', '-47.0653'),
(54, 'Patricia Lebsack', '493-170-9623 x156', 'Julianne.OConner@kory.org', 'Robel-Corkery', 'Hoeger Mall', '29.4572', '-164.2990'),
(55, 'Chelsey Dietrich', '(254)954-1289', 'Lucio_Hettinger@annie.ca', 'Keebler LLC', 'Skiles Walks', '-31.8129', '62.5342'),
(56, 'Mrs. Dennis Schulist', '1-477-935-8478 x6430', 'Karley_Dach@jasper.info', 'Considine-Lockman', 'Norberto Crossing', '-71.4197', '71.7478'),
(57, 'Kurtis Weissnat', '210.067.6132', 'Telly.Hoeger@billy.biz', 'Johns Group', 'Rex Trail', '24.8918', '21.8984'),
(62, 'Denzel Caleb', '961621453', 'denzel_silva@hotmail.com', 'Romaguera-Crona', 'Kulas Light', '-37.3159', '81.1496');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
