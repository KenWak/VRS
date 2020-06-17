-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 01:17 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(5) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(20) NOT NULL,
  `books_qty` varchar(20) NOT NULL,
  `available_qty` varchar(20) NOT NULL,
  `librarian_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `available_qty`, `librarian_username`) VALUES
(3, 'booksname', 'books_image/8468e2b71af363a515a83ed4e7821802', 'bauthorname', 'pname', 'bpurchasedt', 'bprice', '50', '52', 'abc'),
(5, 'php', 'books_image/a06563d5958890d51cc6b197dd86e29e', 'abc', 'abc', '22-03-18', '50', '50', '40', 'abc'),
(7, 'html', './books_image/6f03e242b51a37c772adc3d91a52a2bd', 'abc', 'ab', '22-03-18', '50', '50', '40', 'abc'),
(9, 'der', 'books_image/94ffdc4abdcbc29b4f0876900bd091b0', 'abc', 'abc', 'abc', '50', '123', '39', 'abc'),
(10, 'management', 'books_image/bdaa287885f1eb32e868795a9b0a1697', 'abc', 'abc', '5-5-18', '50', '50', '49', ''),
(11, 'abc', 'books_image/7504228a934e4bbc77d5e694ae6e0375', 'abc', 'abc', '5-5-18', '50', '50', '0', ''),
(13, 'hey', 'books_image/34d4538a16f5389b401aa81d94653200', 'hey', 'hey', '12', '50', '50', '40', 'abc'),
(14, 'again', 'books_image/8e697b235e81ca6036e3235fa49b8ddd', 'again', 'again', '5-5-18', '50', '50', '41', 'abc'),
(16, 'communication skills', 'books_image/004238c924373fc2e3cdebce54f26b6dFB_IMG_1465286678542.jpg', 'me', 'published', '5-5-18', '5000', '50', '50', 'abc'),
(17, 'computer literacy', 'books_image/b8f32bbb6528618fdb6b20d17323ad0aimages (21).jpg', 'sandra', 'mk publishers', '10-07-2018', '2000', '50', '49', 'librarian');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(5) NOT NULL,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_username`) VALUES
(5, '12345', 'kennethwakoko', '3', '0785118296', 'wakokoken@gmail.com', 'booksname', '27-06-18', '02-07-18', 'ken'),
(10, '1234', 'testtest', '3', '0782345678', 'tes@gmail.com', 'management', '27-07-18', '02-07-18', 'test'),
(11, '1234', 'testtest', '3', '0702345676', 'tes@gmail.com', 'php', '02-07-18', '02-07-18', 'test'),
(12, '123', 'remmyochare', '3', '12345', 'ochare@gmail.com', 'again', '02-07-18', '02-07-18', 'oc'),
(13, '123', 'remmyochare', '3', '12345', 'ochare@gmail.com', 'again', '02-07-18', '02-07-18', 'oc'),
(18, '215003322', 'SandraKhasaka', '3', '0704291029', 'sandykhaks@gmail.com', 'computer literacy', '11-07-18', '11-07-18', 'sandra'),
(19, '215003322', 'SandraKhasaka', '3', '0704291029', 'sandykhaks@gmail.com', 'computer literacy', '11-07-18', '11-07-18', 'sandra');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'Librarian', '-Admin', 'librarian', 'librarian', 'library@gmail.com', '7070');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `susername`, `dusername`, `title`, `msg`, `read1`) VALUES
(3, 'abc', 'ken', 'hello', '								\r\nthis is testing again								\r\n								', 'y'),
(4, 'abc', 'ivan', 'yes Ivan', 'am just testing this system								\r\n								\r\n								', 'y'),
(6, 'abc', 'test', 'hey there', '								\r\nmy first message								\r\n								', 'y'),
(7, 'librarian', 'ken', 'helo ken', '								\r\n	return the book							\r\n								', 'y'),
(8, 'librarian', 'sandra', 'return book', 'Sandra may you come to the library								\r\n								\r\n								', 'y'),
(9, 'librarian', 'ken', 'okay', 'Hope you will make it								\r\n								\r\n								', 'y'),
(10, 'librarian', 'ken', 'hope', '								\r\nhope								\r\n								', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `student_messages`
--

CREATE TABLE `student_messages` (
  `id` int(5) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_messages`
--

INSERT INTO `student_messages` (`id`, `susername`, `dusername`, `title`, `msg`, `read1`) VALUES
(2, 'ken', 'abc', 'this is testing', '									\r\nhow are you librarian							', 'y'),
(4, 'ken', 'abc', 'hello', 'this is for testing again									\r\n									', 'y'),
(5, 'test', 'abc', 'my first', '									\r\nmy first message									', 'y'),
(6, 'test', 'abc', 'helo', '									\r\nI received your message									', 'y'),
(7, 'ken', 'librarian', 'reply', 'i have seen your message								\r\n									', 'y'),
(8, 'sandra', 'librarian', 'received', '									\r\nI have received your message									', 'y'),
(9, 'ken', 'librarian', 'help', 'help									\r\n									', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollmentno` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollmentno`, `status`) VALUES
(9, 'kenneth', 'wakoko', 'ken', '12345', 'wakokoken@gmail.com', '0785118296', '3', '215004420', 'yes'),
(11, 'remmy', 'ochare', 'remmy', '12345', 'ochare@gmail.com', '12345', '3', '215003310', 'yes'),
(12, 'Mark', 'Muhanguzi', 'Mark', '12345', 'mark@gmail.com', '0775342234', '3', '215003318', 'no'),
(13, 'ivan', 'wabwire', 'ivan', '12345', 'ivan@gmail.com', '0782456784', '3', '215004356', 'no'),
(14, 'chris', 'okurapa', 'chris', '12345', 'chris@gmail.com', '0702345675', '3', '215004421', 'no'),
(15, 'jacob', 'bwayo', 'jacob', '12345', 'chris@gmail.com', '0702345675', '3', '215004422', 'no'),
(16, 'Sandra', 'Khasaka', 'sandra', '12345', 'sandykhaks@gmail.com', '0704291029', '3', '215003322', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_messages`
--
ALTER TABLE `student_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student_messages`
--
ALTER TABLE `student_messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
