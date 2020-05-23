-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2020 at 07:42 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excal`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobileotp`
--

CREATE TABLE `mobileotp` (
  `id` int(11) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `name` varchar(100) DEFAULT NULL,
  `contactno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `OtpSet` int(11) DEFAULT NULL,
  `OtpRec` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `Aadhar` varchar(767) DEFAULT NULL,
  `client` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`name`, `contactno`, `email`, `city`, `state`, `occupation`, `id`, `OtpSet`, `OtpRec`, `count`, `Aadhar`, `client`) VALUES
('nitish', '9813356968', 'shivi98n@gmail.com', 'ludhiana', 'punjab', 'Electrician', 15, 3004, NULL, 1, 'af1e905d654db2cffdd8051df22d728de1d27de9', 'test'),
('rishabh', '8295150140', 'shivi98nw@gmail.com', 'ludhiana', 'punjab', 'Electrician', 16, 6532, NULL, 1, 'd33937d641c9b121229723de33b7dbde51c4754f', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(100) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `aadharno` varchar(767) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `contactno` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `martialstatus` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(767) DEFAULT NULL,
  `logged` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `age`, `gender`, `occupation`, `aadharno`, `fathername`, `contactno`, `email`, `martialstatus`, `city`, `state`, `username`, `password`, `logged`) VALUES
('shivam', '45', 'on', 'Electrician', '02adcfedec776cd80760aa591f9980b17ac2d848', 'o.p prakash', '7896541230', 'shivisd98g@gmail.com', 'on', 'ludhiana', 'punjab', 'test23', '77447dc8e5b7f7c4d54fed4521f1677718a49c26', 0),
('shivam', '19', 'on', 'Electrician', '61010e3577590d1d016d9d951efd2bf22257760e', 'op', '7206183769', 'shivi98g@gmail.com', 'on', 'ludhiana', 'punjab', 'shivam78', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 0),
('jyoti', '19', 'on', 'Electrician', 'af1e905d654db2cffdd8051df22d728de1d27de9', 'op', '9813356968', 'jyoti@gmail.com', 'on', 'ludhiana', 'punjab', 'jyoti78', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 1),
('rishabh', '19', 'on', 'Electrician', 'd33937d641c9b121229723de33b7dbde51c4754f', 'op', '8295150140', 'shivi98nw@gmail.com', 'on', 'ludhiana', 'punjab', 'rish78', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `name` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `contactno` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rqd` varchar(100) NOT NULL,
  `aadharno` varchar(767) NOT NULL,
  `id` int(11) NOT NULL,
  `task_status` int(11) DEFAULT NULL,
  `tried` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`name`, `city`, `state`, `address`, `contactno`, `email`, `rqd`, `aadharno`, `id`, `task_status`, `tried`) VALUES
('test', 'ludhiana', 'punjab', 'h7 nit', '7206183769', 'jyoti@gmail.com', 'Electrician', 'af1e905d654db2cffdd8051df22d728de1d27de9', 20, 0, 1),
('test', 'ludhiana', 'punjab', 'h7 nit', '7206183769', 'shivi98g@gmail.com', 'Electrician', 'd33937d641c9b121229723de33b7dbde51c4754f', 21, 0, 2),
('test', 'ludhiana', 'punjab', 'h7 nit', '7206183769', 'shivi98g@gmail.com', 'Electrician', '61010e3577590d1d016d9d951efd2bf22257760e', 22, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobileotp`
--
ALTER TABLE `mobileotp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`aadharno`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `contactno` (`contactno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobileotp`
--
ALTER TABLE `mobileotp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
