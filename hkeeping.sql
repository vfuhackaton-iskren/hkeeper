-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2015 at 02:22 PM
-- Server version: 5.6.24-0ubuntu2
-- PHP Version: 5.6.4-4ubuntu6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hkeeping`
--

-- --------------------------------------------------------

--
-- Table structure for table `appartments`
--

CREATE TABLE IF NOT EXISTS `appartments` (
`id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appartments`
--

INSERT INTO `appartments` (`id`, `number`, `floor`, `description`, `size`) VALUES
(1, 1, 1, 'First apartment in the building', 60);

-- --------------------------------------------------------

--
-- Table structure for table `externals`
--

CREATE TABLE IF NOT EXISTS `externals` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(4096) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `externals`
--

INSERT INTO `externals` (`id`, `name`, `description`) VALUES
(1, 'Telecommunications company', 'Antennas on the roof'),
(2, 'Advertising agency', 'billboard on the wall');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `other_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `appt_id` int(11) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `house_keeper` tinyint(1) NOT NULL,
  `cashier` tinyint(1) NOT NULL,
  `birthdate` date NOT NULL,
  `move_in` date NOT NULL,
  `move_out` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `appt_id`, `description`, `house_keeper`, `cashier`, `birthdate`, `move_in`, `move_out`) VALUES
(1, 'Evgeni', 'Nikitin', 1, 'good  neighboor', 0, 0, '1987-05-28', '2015-01-01', NULL),
(2, 'Zornnitsa', 'Nikitina', 1, 'Good neighboor', 0, 0, '1990-06-01', '2015-01-01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appartments`
--
ALTER TABLE `appartments`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `externals`
--
ALTER TABLE `externals`
 ADD KEY `id` (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appartments`
--
ALTER TABLE `appartments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `externals`
--
ALTER TABLE `externals`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
