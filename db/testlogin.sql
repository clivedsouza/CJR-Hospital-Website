-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 07:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `createbasic`
--

CREATE TABLE `createbasic` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `createbasic`
--

INSERT INTO `createbasic` (`id`, `email`, `password`, `Name`, `date`) VALUES
(1, 'rehanrocksG@gmail.com', 'Rehan@1234', 'Rehan', '2020-10-13'),
(2, 'jamesdsouza@gmail.com', 'James@6q9', 'James', '2020-10-01'),
(3, 'clivedsouza69@gmail.com', 'Clive@69', 'Clive', '2020-10-08'),
(4, 'rehanrocksG@gmail.com', 'Rehan#3953445', 'RTG', '2020-10-08'),
(5, 'rehanfargose1@gmail.com', 'Rehangg@678', 'Rehan', '2020-09-30'),
(6, 'clivedsouza69@gmail.com', 'Clivevreat2@12', 'Clive Dsouza', '2000-10-19'),
(7, 'icontest@gmail.com', 'Icon@12224', 'Create icon', '2020-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `loginbasic`
--

CREATE TABLE `loginbasic` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginbasic`
--

INSERT INTO `loginbasic` (`id`, `email`, `password`) VALUES
(1, 'rehanrocksG@gmail.com', 'Rehanf@123'),
(2, 'jamesdsouza200@gmail.com', 'James@69'),
(3, 'clivedsouza69@gmail.com', 'Clive@123'),
(4, 'rehanrocksG@gmail.com', 'Rehan#69'),
(5, 'jamesdsouza200@gmail.com', 'James@o23-04-'),
(6, 'rehanfargose2@gmail.com', 'Rehans#0349503'),
(7, 'samgaonkar@gmail.com', 'Sam@123456'),
(8, 'rehanrocksG@gmail.com', 'Rehan@390193'),
(9, 'rehanrocksG@gmail.com', 'Re12e213'),
(10, 'reporttester@gmail.com', 'Reportpdf@11223'),
(11, 'rehanfargose2@gmail.com', 'Regadd@2524'),
(12, 'clivedsouza@gmail.com', 'Clive#6969'),
(13, 'jamessouza@gmail.com', 'Rehan231@32'),
(14, 'rehan@gmail.com', 'Soidjq()(9232'),
(15, 'rehanrocksG@gmail.com', 'Rehanhasashef@12'),
(16, 'rakesh@gmail.com', 'Rakeshbhai@12'),
(17, 'jamesdsouza200@gmail.com', 'Rakesh@123'),
(18, 'indextest@gmail.com', 'Gitworks@123');

-- --------------------------------------------------------

--
-- Table structure for table `servicesbasic`
--

CREATE TABLE `servicesbasic` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL,
  `service` enum('Neurology','EMT','Gastro','X-ray','EMG','ECG','EEG','Sonography','MRI') NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicesbasic`
--

INSERT INTO `servicesbasic` (`id`, `name`, `email`, `message`, `service`, `DOB`) VALUES
(1, 'Rehan Fargose', 'rehanrocksG@gmail.com', 'patient age 20, has suffered 7 epileptic seizures at age 14', 'Neurology', '2000-08-22'),
(2, 'James Dsouza', 'jamesdsouza200@gmail.com', 'Need appointment this week for knee xray', 'X-ray', '2000-09-23'),
(3, 'Clive Dsouza', 'clivedsouza69@gmail.com', 'Patient gender male, need appointment asap', 'Sonography', '2000-10-24'),
(4, 'rehan', 'rehanfargose@student.sfit.ac.i', 'age 20, suffering from epilepsy', 'EEG', '2009-11-30'),
(5, 'redirect tester', 'redirecter@gmail.com', 'Just to see if redirect works', 'Neurology', '2020-10-28'),
(6, 'Test', 'rehanfargose2@gmail.com', 'gg', 'Sonography', '2020-11-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createbasic`
--
ALTER TABLE `createbasic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginbasic`
--
ALTER TABLE `loginbasic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicesbasic`
--
ALTER TABLE `servicesbasic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createbasic`
--
ALTER TABLE `createbasic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loginbasic`
--
ALTER TABLE `loginbasic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `servicesbasic`
--
ALTER TABLE `servicesbasic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
