-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 12:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinequiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('6548995b1883f', '6548995b1de17'),
('6548995b3e7e2', '6548995b42b91'),
('6548995b89c28', '6548995b96565'),
('6548995bac8bd', '6548995bb3559'),
('6548995bcaeed', '6548995bcf3ea'),
('6548995be35a6', '6548995be7b1c'),
('6548995c07b0e', '6548995c0bec3'),
('6548995c221de', '6548995c2675c'),
('6548995c41352', '6548995c44f45'),
('6548995c83db0', '6548995c88377');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `true` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `true`, `wrong`, `date`) VALUES
('admin@admin.com', '65488f4640dba', 0, 3, 3, 0, '2023-11-06 07:46:04'),
('arifadhudin@gmail.com', '654895b7bfebf', 100, 10, 10, 0, '2023-11-06 07:50:53'),
('alv@idm.co.id', '654895b7bfebf', 40, 10, 4, 6, '2023-11-06 07:56:38'),
('testemail.aja@gmail.com', '654895b7bfebf', 100, 10, 10, 0, '2023-11-18 05:43:16'),
('abc@gmail.com', '654895b7bfebf', 30, 10, 3, 7, '2023-11-18 05:39:40'),
('contoh@gmail.com', '654895b7bfebf', 70, 10, 7, 3, '2023-12-05 14:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('6548995b1883f', ' XHTML adalah versi HTML yang lebih lama.', '6548995b1de0f'),
('6548995b1883f', 'XHTML lebih ketat dalam hal sintaks dan persyaratan dokumen.', '6548995b1de17'),
('6548995b1883f', 'HTML adalah bahasa markup, sedangkan XHTML adalah bahasa pemrograman.', '6548995b1de1c'),
('6548995b1883f', 'XHTML tidak mendukung CSS.', '6548995b1de20'),
('6548995b3e7e2', 'Document Object Model', '6548995b42b91'),
('6548995b3e7e2', 'Data Object Model', '6548995b42b9d'),
('6548995b3e7e2', 'Document Oriented Model', '6548995b42ba3'),
('6548995b3e7e2', 'Data Object Method', '6548995b42ba9'),
('6548995b89c28', '\"Truthy\" mewakili bilangan bulat, sedangkan \"Falsy\" mewakili desimal.', '6548995b9655c'),
('6548995b89c28', '\"Truthy\" mewakili nilai benar, sedangkan \"Falsy\" mewakili nilai salah atau nol.', '6548995b96565'),
('6548995b89c28', '\"Truthy\" mewakili string, sedangkan \"Falsy\" mewakili angka.', '6548995b9656a'),
('6548995b89c28', '\"Truthy\" mewakili objek, sedangkan \"Falsy\" mewakili array.', '6548995b9656e'),
('6548995bac8bd', 'Tidak ada perbedaan antara keduanya.', '6548995bb3520'),
('6548995bac8bd', ' \"==\" adalah operator perbandingan ketat, sedangkan \"===\" adalah operator perbandingan longgar.', '6548995bb3543'),
('6548995bac8bd', '. \"==\" adalah operator perbandingan longgar, sedangkan \"===\" adalah operator perbandingan ketat.', '6548995bb3559'),
('6548995bac8bd', ' \"==\" digunakan untuk membandingkan string, sedangkan \"===\" digunakan untuk membandingkan angka.', '6548995bb356f'),
('6548995bcaeed', 'Salinan teks yang lebih dalam.', '6548995bcf3d0'),
('6548995bcaeed', 'Salinan objek yang hanya mencakup properti permukaan.', '6548995bcf3df'),
('6548995bcaeed', 'Salinan objek yang mencakup seluruh struktur dan properti yang tertanam.', '6548995bcf3ea'),
('6548995bcaeed', 'Salinan elemen HTML dalam halaman web.', '6548995bcf3f3'),
('6548995be35a6', 'Sebuah teknik untuk mengambil catatan atau mencatat setiap tindakan.', '6548995be7b02'),
('6548995be35a6', 'Sebuah metode untuk mengelola perubahan dalam aplikasi.', '6548995be7b12'),
('6548995be35a6', 'Sebuah teknik untuk mengingat hasil dari pemrosesan sebelumnya dan mengembalikan hasil tersebut jika inputnya sama.', '6548995be7b1c'),
('6548995be35a6', 'Sebuah metode untuk membuat laporan atau memo.', '6548995be7b26'),
('6548995c07b0e', '09:45', '6548995c0bec3'),
('6548995c07b0e', '09:50', '6548995c0bed3'),
('6548995c07b0e', '09:55', '6548995c0bedd'),
('6548995c07b0e', '10:00', '6548995c0bee6'),
('6548995c221de', '9', '6548995c2674d'),
('6548995c221de', '10', '6548995c2675c'),
('6548995c221de', '11', '6548995c26766'),
('6548995c221de', '12', '6548995c26770'),
('6548995c41352', '10', '6548995c44f35'),
('6548995c41352', '16', '6548995c44f3f'),
('6548995c41352', '26', '6548995c44f45'),
('6548995c41352', '32', '6548995c44f4a'),
('6548995c83db0', '1 MB', '6548995c88352'),
('6548995c83db0', '500 MB', '6548995c88369'),
('6548995c83db0', ' 1 GB', '6548995c88377'),
('6548995c83db0', '1000 MB', '6548995c88385');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('654895b7bfebf', '6548995b1883f', 'Apa perbedaan antara HTML dan XHTML?', 4, 1),
('654895b7bfebf', '6548995b3e7e2', 'Apa yang dimaksud dengan \"DOM\" dalam konteks pemrograman web?', 4, 2),
('654895b7bfebf', '6548995b89c28', 'Apa yang dimaksud dengan \"Truthy\" dan \"Falsy\" dalam JavaScript?', 4, 3),
('654895b7bfebf', '6548995bac8bd', 'Apa perbedaan antara \"==\" dan \"===\" dalam JavaScript?', 4, 4),
('654895b7bfebf', '6548995bcaeed', 'Apa yang dimaksud dengan \"deep copy\" dalam pemrograman?', 4, 5),
('654895b7bfebf', '6548995be35a6', 'Apa yang dimaksud dengan \"memoization\" dalam konteks pemrograman?', 4, 6),
('654895b7bfebf', '6548995c07b0e', 'Sebuah program berjalan selama 30 detik. Jika program tersebut dimulai pada pukul 09:15, pada pukul berapa program tersebut akan selesai?', 4, 7),
('654895b7bfebf', '6548995c221de', 'Seorang pengembang web ingin membuat loop yang berjalan 10 kali. Berapa banyak iterasi yang akan dilakukan dalam loop?', 4, 8),
('654895b7bfebf', '6548995c41352', 'Anda memiliki sebuah bilangan hexadecimal (basis 16) \"1A.\" Berapakah nilai bilangan tersebut dalam desimal?', 4, 9),
('654895b7bfebf', '6548995c83db0', 'Sebuah database menyimpan 500.000 catatan. Setiap catatan menggunakan 2 KB ruang. Berapa ruang total yang digunakan oleh database?', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `true` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `true`, `wrong`, `total`, `date`) VALUES
('654895b7bfebf', 'Web Programming', 10, 0, 10, '2023-11-06 07:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('arifadhudin@gmail.com', 100, '2023-11-06 07:50:53'),
('alv@idm.co.id', 40, '2023-11-06 07:56:38'),
('abc@gmail.com', 30, '2023-11-18 05:39:40'),
('testemail.aja@gmail.com', 100, '2023-11-18 05:43:16'),
('contoh@gmail.com', 70, '2023-12-05 14:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('ArieFadh', 'smk', 'abc@gmail.com', '123'),
('alv', 's1', 'alv@idm.co.id', '123'),
('ArieFadh', 'S1', 'arifadhudin@gmail.com', '123'),
('contoh', 'S3', 'contoh@gmail.com', 'contoh'),
('Kharis', 'Smk', 'maulanaiqmal@ymail.com', 'haris13'),
('SyawalAd', 'SMA', 'testemail.aja@gmail.com', '121125');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
