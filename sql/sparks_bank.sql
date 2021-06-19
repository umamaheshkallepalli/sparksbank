-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306:8111
-- Generation Time: Jun 19, 2021 at 08:48 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sno` int(3) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `balence` int(8) NOT NULL,
  `date&time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sno`, `sender`, `receiver`, `balence`, `date&time`) VALUES
(1, 'Uma Mahesh', 'Sai', 8, '2021-06-17 20:58:06'),
(2, 'srivalli', 'Uma Mahesh', 10000, '2021-06-17 21:02:56'),
(3, 'Vamsi', 'Uma Mahesh', 4, '2021-06-19 11:17:19'),
(4, 'Virat', 'Vamsi', 1200, '2021-06-19 11:20:36'),
(5, 'Vamsi', 'Anitha', 10000, '2021-06-19 11:29:56'),
(6, 'Virat', 'Anju', 9000, '2021-06-19 11:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Uma Mahesh', 'mahi@gmail.com', 59984),
(2, 'Vamsi', 'vamsi@gmail.com', 21046),
(3, 'Kiran', 'kiran@gmail.com', 37700),
(4, 'Virat', 'virat@gmail.com', 26800),
(5, 'Sai', 'sai143@gmail.com', 41020),
(6, 'Mounika', 'mouni@gmail.com', 30000),
(7, 'Anitha', 'anitha12@gmail.com', 60000),
(8, 'Anju', 'anjum@gmail.com', 50000),
(9, 'Raju', 'raju@gmail.com', 31300),
(10, 'Srinivas', 'srinu@gmail.com', 62000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
