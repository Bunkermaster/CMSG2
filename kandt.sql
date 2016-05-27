-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2016 at 05:02 PM
-- Server version: 5.7.12
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
  (1, 'teletubbies', 'Teletubbies', '        <div class="jumbotron">\n            <h1>Les Teletubbies</h1>\n            <p>C\'est flippant.</p>\n            <span class="label label-danger">Danger</span>\n        </div>\n        <img class="img-thumbnail" alt="Teletubbies" src="img/teletubbies.jpg" data-holder-rendered="true">\n', 'Teletubbies', '', '', ''),
  (2, 'ironmaiden', 'Iron Maiden', '        <div class="jumbotron">\r\n            <h1>Iron Maiden!</h1>\r\n            <p>C\'est vieux.</p>\r\n            <span class="label label-success">SIX SIX SIX!!! the number of the beast!!</span>\r\n        </div>\r\n        <img class="img-thumbnail" alt="Iron Maiden" src="img/ironmaiden.jpg" data-holder-rendered="true">\r\n', 'Iron Maiden', '', '', ''),
  (3, 'kittens', 'Kittens', '        <div class="jumbotron">\r\n            <h1>Les Chatons!</h1>\r\n            <p>C\'est mignon.</p>\r\n            <span class="label label-success">Kawaiiii!</span>\r\n        </div>\r\n        <img class="img-thumbnail" alt="Teletubbies" src="img/three_kittens.jpg" data-holder-rendered="true">\r\n', 'Kittens!!', '', '', ''),
  (4, 'slug', '', '        <div class="jumbotron">\r\n            <h1>Les Teletubbies</h1>\r\n            <p>C\'est flippant.</p>\r\n            <span class="label label-danger">Danger</span>\r\n        </div>\r\n        <img class="img-thumbnail" alt="Teletubbies" src="img/teletubbies.jpg" data-holder-rendered="true">\r\n', 'taille teuhll', '', '', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;