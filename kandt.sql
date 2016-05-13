-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2016 at 10:18 AM
-- Server version: 5.7.12
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kandt`
--

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `span_text` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `span_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `slug`, `h1`, `body`, `title`, `img`, `span_text`, `span_class`) VALUES
(1, 'teletubbies', '', '    <nav class="navbar navbar-inverse navbar-fixed-top">\r\n        <div class="container">\r\n            <div class="navbar-header">\r\n                <a class="navbar-brand" href="index.html">WtfWeb</a>\r\n            </div>\r\n            <div id="navbar" class="navbar-collapse collapse">\r\n                <ul class="nav navbar-nav">\r\n                    <li class="active"><a href="index.html">Teletubbies</a></li>\r\n                    <li><a href="kittens.html">Kittens</a></li>\r\n                    <li><a href="ironmaiden.html">Iron Maiden</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </nav>\r\n    <div class="container theme-showcase" role="main">\r\n        <div class="jumbotron">\r\n            <h1>Les Teletubbies</h1>\r\n            <p>C\'est flippant.</p>\r\n            <span class="label label-danger">Danger</span>\r\n        </div>\r\n        <img class="img-thumbnail" alt="Teletubbies" src="img/teletubbies.jpg" data-holder-rendered="true">\r\n    </div>', 'Teletubbies', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
