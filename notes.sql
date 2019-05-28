-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 28, 2019 at 06:18 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet',
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(68, 'Resume', 'My resume', 'docx', 'apoorv', '2019-05-28 04:48:31', 'Computer Science', 'Resume.docx', 'approved'),
(67, 'Notes1', 'example', 'pdf', 'apoorv', '2019-05-21 12:49:37', 'Computer Science', 'Notes Sharing.pdf', 'approved'),
(66, 'python', '2D input', 'txt', 'kp', '2019-05-18 10:42:50', 'Computer Science', '2D input in python.txt', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(32, 'kp', 'Kripanshu', 'N/A', 'teacher', 'kripanshu@gmail.com', '', 'Male', '123456', 'Computer Science', 'profile.jpg', 'May 17, 2019'),
(33, 'dp', 'Deepak', 'N/A', 'teacher', 'deepak@gmail.com', '', 'Male', '123456', 'Mechanical', 'profile.jpg', 'May 17, 2019'),
(31, 'apoorv', 'Apoorv Tyagi', 'N/A', 'student', 'apoorvtyagi.2016@vitstudent.ac.in', '', 'Male', '123456', 'Computer Science', 'Me.jpg', 'May 16, 2019'),
(1, 'admin', 'Admin', 'N/A', 'admin', 'admin@gmail.com', '', 'Male', 'admin2', 'Computer Science', 'profile.jpg', ''),
(2, 'mech', 'Raj', 'N/A', 'admin', 'raj@gmail.com', '', 'Male', '123456', 'Mechanical', 'profile.jpg', ''),
(34, 'aman', 'aman', 'N/A', 'student', 'aman@gmail.com', '', 'Male', '123456', 'Mechanical', 'profile.jpg', 'May 17, 2019');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
