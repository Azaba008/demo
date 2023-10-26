-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 10:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_feedbackform`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `FEEBACK_ID` int(20) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `OFFICER_NAME` varchar(50) NOT NULL,
  `PS_NAME` varchar(50) NOT NULL,
  `option1` longtext NOT NULL,
  `option2` longtext NOT NULL,
  `option3` text NOT NULL,
  `description` text NOT NULL,
  `AUDIO` text NOT NULL,
  `VIDEO` text NOT NULL,
  `DATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `captcha` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`FEEBACK_ID`, `CITY`, `OFFICER_NAME`, `PS_NAME`, `option1`, `option2`, `option3`, `description`, `AUDIO`, `VIDEO`, `DATE_TIME`, `captcha`) VALUES
(1, 'First Choice', 'AZABA', 'First Choice', '', '', 'Yes', 'cccccccc', '', '', '2023-10-25 16:42:06', 1155),
(2, 'First Choice', 'AZABA', 'First Choice', '', '', 'Yes', 'aaaaaaaaaaaaa', '', '', '2023-10-25 16:43:04', 11679),
(3, 'First Choice', 'AZABA', 'First Choice', '', '', 'Yes', 'azaba feedback submitted', '', '', '2023-10-25 16:45:15', 62125),
(4, 'First Choice', 'KIRTAN', 'First Choice', '', '', 'No', 'kirtann feedback', '', '', '2023-10-25 16:47:05', 68838),
(5, 'First Choice', 'KIRTAN', 'First Choice', '', '', 'Yes', 'kirtan 2', '', '', '2023-10-25 16:48:23', 2),
(6, 'First Choice', 'MANAS', 'First Choice', '', '', 'Yes', 'manas fedback', '', '', '2023-10-25 16:49:43', 24862),
(7, '-Select-', '', '-Select-', '', '', '', '', '', '', '2023-10-25 16:49:55', 33),
(8, 'First Choice', 'MANAS', 'First Choice', '', '', 'Yes', 'MNAS 2', '', '', '2023-10-25 16:53:13', 33),
(9, 'First Choice', 'IJAZ', 'First Choice', '', '', 'Yes', 'ijaz', '', '', '2023-10-25 17:13:28', 0),
(10, 'First Choice', 'IJAZ', 'First Choice', '', '', 'No', 'ijaz 2', '', '', '2023-10-25 17:14:01', 0),
(11, 'First Choice', 'AZABA', 'First Choice', '', '', 'Yes', 'aaaaaaaaaaaaa', '', '', '2023-10-25 17:16:45', 0),
(12, 'Anand', 'AZABA', 'Satellite Police Station', '', '', 'No', 'goog', '', '', '2023-10-25 17:20:48', 0),
(13, 'Gandhinagar', 'HASNAIN', 'A-Division Police Station', '', '', 'Yes', 'HASNAINS FEEDBACK', '', '', '2023-10-25 17:23:46', 0),
(26, 'Banaskantha', 'AZABA D', 'Barwala Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', 'AZABA FEEDBACK', '20231026115142.', '20231026115142.', '2023-10-26 06:21:42', 0),
(27, 'Amreli', 'IzMA', 'Danta Police Station', 'Corruption', 'Report filed and copy give', 'Yes', 'izma feedback 1', '20231026115344.', '20231026115344.', '2023-10-26 06:23:44', 0),
(28, 'Bhavnagar', 'IzMA', 'Dwarka Police Station', 'Women related crimes domestic violence', 'Report filed and copy give', 'Yes', 'IZMA 1234', '20231026120345.', '20231026120345.', '2023-10-26 06:33:45', 0),
(29, 'Ahmedabad', 'AZABA', 'Vallabh Vidyanagar Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', '', '', '', '0000-00-00 00:00:00', 0),
(30, 'Amreli', 'AZABA', 'Modasa Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', 'azabhba', '', '', '0000-00-00 00:00:00', 0),
(31, 'Gir Somnath', 'MANAS', 'Modasa Police Station', 'Women related crimes domestic violence', 'Report filed and copy give', 'Yes', '', '', '', '0000-00-00 00:00:00', 0),
(32, 'Amreli', 'AZABA', 'Modasa Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', '', '', '', '0000-00-00 00:00:00', 0),
(33, '-Select-', '', '-Select-', '', '', '', '', '', '', '0000-00-00 00:00:00', 0),
(34, 'Aravali', 'KIRTAN', 'B Division Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', '', '', '', '0000-00-00 00:00:00', 0),
(35, 'Amreli', 'AZABA', 'Nabipur Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', 'AZABA', '', '', '0000-00-00 00:00:00', 0),
(36, 'Banaskantha', 'KIRTAN', 'Dahod Town Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', '', '', '', '0000-00-00 00:00:00', 0),
(37, 'Bhavnagar', 'KIRTAN', 'B Division Police Station', 'Women related crimes domestic violence', 'Report filed and copy give', 'Yes', 'ssssssssss', '', '', '0000-00-00 00:00:00', 0),
(38, 'Ahmedabad', 'AZABA', 'Satellite Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', 'avbvsab', '', '', '2023-10-26 07:23:38', 0),
(39, 'Ahmedabad', 'AZABA', 'City Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', 'azaba daydiya', '', '', '2023-10-26 07:24:46', 0),
(40, 'Anand', 'KIRTAN', 'B Division Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', 'aznabna', '', '', '2023-10-26 07:30:59', 0),
(41, 'Amreli', 'NAIYA', 'Vallabh Vidyanagar Police Station', 'Missing Kidnapping', 'Report filed and copy give', 'Yes', 'NAIYA', '', '', '2023-10-26 07:39:39', 0),
(42, 'Mahisagar', 'NAIYA', 'Dahod Town Police Station', 'Women related crimes domestic violence', 'Report filed and copy give', 'Yes', 'NAIYA', '', '', '2023-10-26 07:40:33', 0),
(43, 'Aravali', 'NAIYA', 'Chhota Udepur Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', '', '', '', '2023-10-26 07:45:49', 0),
(44, 'Dahod', 'BIRVA', 'Dahod Town Police Station', 'Online Fraud', 'Report filed and copy give', 'Yes', 'birva', '', '', '2023-10-26 08:23:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `name` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`name`, `password`, `mobile_no`, `email`, `post`, `image`, `id`) VALUES
('admin', 'admin', 1234567891, 'admin@gmail.com', 'IAS', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_details`
--

CREATE TABLE `ps_details` (
  `ps_id` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `ps_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ps_details`
--

INSERT INTO `ps_details` (`ps_id`, `city`, `area`, `ps_name`) VALUES
(32, 'Ahmedabad', 'Satellite ', 'Satellite Police Station'),
(33, 'Amreli', 'Amreli City', 'City Police Station'),
(34, 'Anand', 'Vidyanagar Road', 'Vallabh Vidyanagar Police Station'),
(35, 'Aravali', 'Modasa', 'Modasa Police Station'),
(36, 'Banaskantha', 'Danta', 'Danta Police Station'),
(37, 'Bharuch', 'Nabipur', 'Nabipur Police Station'),
(38, 'Bhavnagar', 'Ghogha Road', 'B Division Police Station'),
(39, 'Botad', 'Barwala', 'Barwala Police Station'),
(40, 'Chhota Udepur', 'Chhota Udepur ', 'Chhota Udepur Police Station'),
(41, 'Dahod', 'Shidhpur', 'Dahod Town Police Station'),
(42, 'Dang', 'Ahwa', 'Ahwa Police Station'),
(43, 'Devbhoomi Dwarka', 'Dwarka', 'Dwarka Police Station'),
(44, 'Gandhinagar', 'Pethapur', 'Pethapur Police Station'),
(45, 'Gir Somnath', 'Prabhas Patan', 'Gir Somnath Police Station'),
(46, 'Jamnagar', 'Park Colony', 'City B division Police Station'),
(47, 'Junagadh', 'Mullawada', 'A-Division Police Station'),
(48, 'Kheda', 'Kheda', 'Kheda Town Police Station'),
(49, 'Kutch ', 'Bhuj', 'A Division Police Station Bhuj'),
(50, 'Mahisagar', 'Lunawada', 'Lunawada Police Station'),
(51, 'Mehsana', 'Mehsana', 'B Division Police Station Mehsana City'),
(52, 'Morbi', 'Old Morbi', 'City A Division Police Station'),
(53, 'Narmada', 'Rajpipla', 'Rajpipla Police Station'),
(54, 'Narmada', 'Rajpipla', 'Rajpipla Town Police Station '),
(55, 'Navsari', 'Charpool', 'Charpool Police Station'),
(56, 'Panchmahal', 'Godhra', 'Godhra Taluka Police Station'),
(57, 'Patan', 'Bhadra', 'Patan A division Police Station'),
(58, 'Porbandar', 'Porbandar', 'Police Station- Porbandar'),
(59, 'Rajkot', 'Rajkot', 'Rajkot Police Station'),
(60, 'Sabarkantha', 'Bayad', 'Bayad Police Station'),
(61, 'Surat', 'Varachha', 'Varachha Police Station'),
(62, 'Surendranagar', 'Surendranagar', 'City A Division Police Station'),
(63, 'Tapi', 'Vyara', 'Vyara Police Line'),
(64, 'Vadodra', 'Fatehganj', 'fatehganj station'),
(65, 'Valsad', 'Valsad', 'Valsad Rural Police Station');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`FEEBACK_ID`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ps_details`
--
ALTER TABLE `ps_details`
  ADD PRIMARY KEY (`ps_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `FEEBACK_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ps_details`
--
ALTER TABLE `ps_details`
  MODIFY `ps_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
