-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 05:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentalcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(72, 'uploads/favicon7.png', 'Mr. Accountant', 'accountant@pevaclinic.com', 'Nairobi, Kenya', '+254767777888', '', '112');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time_slot` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  `room_id` varchar(500) DEFAULT NULL,
  `live_meeting_link` varchar(500) DEFAULT NULL,
  `app_time` varchar(500) DEFAULT NULL,
  `app_time_full_format` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient`, `doctor`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `patientname`, `doctorname`, `room_id`, `live_meeting_link`, `app_time`, `app_time_full_format`) VALUES
(1, '1', '1', '1645138800', 'Not Selected', 'Not Selected', '', '', '02/18/22', '1645174211', '0', 'Pending Confirmation', '1', '', 'Mr Patient', 'Peter Wanjohi', 'hms-meeting-+254 790 855 618-550693', 'https://meet.jit.si/hms-meeting-+254 790 855 618-550693', '0', '18-02-2022 Not Selected-'),
(2, '\r\n<div style=', '\r\n<div style=', '1644706800', NULL, '', '', '', '02/20/22', '1645356309', '0', 'Pending Confirmation', '1', '', NULL, NULL, 'hms-meeting--275185', 'https://meet.jit.si/hms-meeting--275185', '1644706800', '13-02-2022 -'),
(3, '1', '1', '1645916400', 'Not Selected', 'Not Selected', '', '', '02/20/22', '1645360260', '0', 'Pending Confirmation', '1', '', 'Mr Patient', 'Peter Wanjohi', 'hms-meeting-+254 790 855 618-458548', 'https://meet.jit.si/hms-meeting-+254 790 855 618-458548', '0', '27-02-2022 Not Selected-'),
(4, '1', '1', '1645916400', 'Not Selected', 'Not Selected', '', '', '02/20/22', '1645362754', '0', 'Pending Confirmation', '1', '', 'Mr Patient', 'Peter Wanjohi', 'hms-meeting-+254 790 855 618-384525', 'https://meet.jit.si/hms-meeting-+254 790 855 618-384525', '0', '27-02-2022 Not Selected-'),
(5, '1', '1', '1645916400', NULL, '', '', '', '02/20/22', '1645366556', '0', 'Treated', '1', '', 'Mr Patient', 'Peter Wanjohi', 'hms-meeting-+254 790 855 618-752487', 'https://meet.jit.si/hms-meeting-+254 790 855 618-752487', '1645916400', '27-02-2022 -');

-- --------------------------------------------------------

--
-- Table structure for table `autoemailshortcode`
--

CREATE TABLE `autoemailshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autoemailshortcode`
--

INSERT INTO `autoemailshortcode` (`id`, `name`, `type`) VALUES
(1, '{firstname}', 'payment'),
(2, '{lastname}', 'payment'),
(3, '{name}', 'payment'),
(4, '{amount}', 'payment'),
(52, '{doctorname}', 'appoinment_confirmation'),
(42, '{firstname}', 'appoinment_creation'),
(51, '{name}', 'appoinment_confirmation'),
(50, '{lastname}', 'appoinment_confirmation'),
(49, '{firstname}', 'appoinment_confirmation'),
(48, '{hospital_name}', 'appoinment_creation'),
(47, '{time_slot}', 'appoinment_creation'),
(46, '{appoinmentdate}', 'appoinment_creation'),
(45, '{doctorname}', 'appoinment_creation'),
(44, '{name}', 'appoinment_creation'),
(43, '{lastname}', 'appoinment_creation'),
(26, '{name}', 'doctor'),
(27, '{firstname}', 'doctor'),
(28, '{lastname}', 'doctor'),
(29, '{company}', 'doctor'),
(41, '{doctor}', 'patient'),
(40, '{company}', 'patient'),
(39, '{lastname}', 'patient'),
(38, '{firstname}', 'patient'),
(37, '{name}', 'patient'),
(36, '{department}', 'doctor'),
(53, '{appoinmentdate}', 'appoinment_confirmation'),
(54, '{time_slot}', 'appoinment_confirmation'),
(55, '{hospital_name}', 'appoinment_confirmation'),
(56, '{start_time}', 'meeting_creation'),
(57, '{patient_name}', 'meeting_creation'),
(58, '{doctor_name}', 'meeting_creation'),
(59, '{hospital_name}', 'meeting_creation'),
(60, '{meeting_link}', 'meeting_creation');

-- --------------------------------------------------------

--
-- Table structure for table `autoemailtemplate`
--

CREATE TABLE `autoemailtemplate` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autoemailtemplate`
--

INSERT INTO `autoemailtemplate` (`id`, `name`, `message`, `type`, `status`) VALUES
(1, 'Payment successful email to patient', '<p>Dear {name}, Your paying amount - Kes {amount} was successful.</p>\r\n\r\n<p>Thank You</p>\r\n', 'payment', 'Active'),
(9, 'Appointment creation email to patient', 'Dear {name},<br />\r\nYou have an &nbsp;appointment with {doctorname} on {appoinmentdate} at {time_slot} .Please confirm your appointment.<br />\r\nFor more information contact with {hospital_name}<br />\r\nRegards', 'appoinment_creation', 'Active'),
(10, 'Appointment Confirmation email  to patient', 'Dear {name},<br />\r\nYour appointment with {doctorname} on {appoinmentdate} at {time_slot} is confirmed.<br />\r\nFor more information contact with {hospital_name}<br />\r\nRegards', 'appoinment_confirmation', 'Active'),
(11, 'Meeting Schedule Notification To Patient', '<p>Dear {patient_name},</p>\r\n\r\n<p>You have a Live Video Meeting with {doctor_name} on {start_time}.<br />\r\nPlease click on this link to join the meeting&nbsp; {meeting_link} .<br />\r\nFor more information please contact with {hospital_name} .</p>\r\n\r\n<p>Regards</p>\r\n', 'meeting_creation', 'Active'),
(6, 'send joining confirmation to Doctor', '<p>Dear {name},<br />\r\nYou are appointed as a doctor&nbsp; in {department}.<br />\r\nThank You</p>\r\n\r\n<p>{company}</p>\r\n', 'doctor', 'Active'),
(8, 'Patient Registration Confirmation ', '<p>Dear {name},</p>\r\n\r\n<p>You are registered to {company} as a patient to {doctor}.</p>\r\n\r\n<p>Regards</p>\r\n', 'patient', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `autosmsshortcode`
--

CREATE TABLE `autosmsshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autosmsshortcode`
--

INSERT INTO `autosmsshortcode` (`id`, `name`, `type`) VALUES
(1, '{name}', 'payment'),
(2, '{firstname}', 'payment'),
(3, '{lastname}', 'payment'),
(4, '{amount}', 'payment'),
(55, '{appoinmentdate}', 'appoinment_confirmation'),
(54, '{doctorname}', 'appoinment_confirmation'),
(53, '{name}', 'appoinment_confirmation'),
(52, '{lastname}', 'appoinment_confirmation'),
(51, '{firstname}', 'appoinment_confirmation'),
(50, '{time_slot}', 'appoinment_creation'),
(49, '{appoinmentdate}', 'appoinment_creation'),
(48, '{hospital_name}', 'appoinment_creation'),
(47, '{doctorname}', 'appoinment_creation'),
(46, '{name}', 'appoinment_creation'),
(45, '{lastname}', 'appoinment_creation'),
(44, '{firstname}', 'appoinment_creation'),
(28, '{firstname}', 'doctor'),
(29, '{lastname}', 'doctor'),
(30, '{name}', 'doctor'),
(31, '{company}', 'doctor'),
(43, '{doctor}', 'patient'),
(42, '{company}', 'patient'),
(41, '{lastname}', 'patient'),
(40, '{firstname}', 'patient'),
(39, '{name}', 'patient'),
(38, '{department}', 'doctor'),
(56, '{time_slot}', 'appoinment_confirmation'),
(57, '{hospital_name}', 'appoinment_confirmation'),
(58, '{start_time}', 'meeting_creation'),
(59, '{patient_name}', 'meeting_creation'),
(60, '{doctor_name}', 'meeting_creation'),
(61, '{hospital_name}', 'meeting_creation'),
(62, '{meeting_link}', 'meeting_creation');

-- --------------------------------------------------------

--
-- Table structure for table `autosmstemplate`
--

CREATE TABLE `autosmstemplate` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autosmstemplate`
--

INSERT INTO `autosmstemplate` (`id`, `name`, `message`, `type`, `status`) VALUES
(1, 'Payment successful sms to patient', 'Dear {name},\r\n Your paying amount - Kes {amount} was successful.\r\nThank You\r\nPlease contact our support for further queries.', 'payment', 'Active'),
(12, 'Appointment Confirmation sms to patient', 'Dear {name},\r\nYour appointment with {doctorname} on {appoinmentdate} at {time_slot} is confirmed.\r\nFor more information contact with {hospital_name}\r\nRegards', 'appoinment_confirmation', 'Active'),
(13, 'Appointment creation sms to patient', 'Dear {name},\r\nYou have an  appointment with {doctorname} on {appoinmentdate} at {time_slot} .Please confirm your appointment.\r\nFor more information contact with {hospital_name}\r\nRegards', 'appoinment_creation', 'Active'),
(14, 'Meeting Schedule Notification To Patient', 'Dear {patient_name}, You have a Live Video Meeting with {doctor_name} on {start_time}. Click on this link to join the meeting {meeting_link} . For more information contact with {hospital_name} .\r\nRegards ', 'meeting_creation', 'Active'),
(9, 'send appoint confirmation to Doctor', 'Dear {name},\nYou are appointed as a doctor in {department} .\nThank You\n{company}', 'doctor', 'Active'),
(11, 'Patient Registration Confirmation ', 'Dear {name},\n You are registred to {company} as a patient to {doctor}. \nRegards', 'patient', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bankb`
--

CREATE TABLE `bankb` (
  `id` int(100) NOT NULL,
  `group` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bankb`
--

INSERT INTO `bankb` (`id`, `group`, `status`) VALUES
(1, 'A+', '0 Bags'),
(2, 'A-', '0 Bags'),
(3, 'B+', '0 Bags'),
(4, 'B-', '0 Bags'),
(5, 'AB+', '0 Bags'),
(6, 'AB-', '0 Bags'),
(7, 'O+', '0 Bags'),
(8, 'O-', '0 Bags');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `report` varchar(10000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(10) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `x`, `y`, `ion_user_id`) VALUES
(1, '', 'Peter Wanjohi', 'doctor@pevaclinic.com', 'Nairobi, Kenya', '+254717475473', 'Cardiology', 'Cardiac Specialized', '', '', '709');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `reciepient` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(100) NOT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(1000) DEFAULT NULL,
  `smtp_port` varchar(1000) DEFAULT NULL,
  `send_multipart` varchar(1000) DEFAULT NULL,
  `mail_provider` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `admin_email`, `type`, `user`, `password`, `smtp_host`, `smtp_port`, `send_multipart`, `mail_provider`) VALUES
(1, 'shaibal@codearistos.net', 'Domain Email', '', '', '', '', '', NULL),
(6, NULL, 'Smtp', 'sahashaibal22@yahoo.com', 'YXNvdWh6eGNqYW1ydmN2eQ==', 'smtp.mail.yahoo.com', '587', '1', 'yahoo');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `datestring` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `category`, `date`, `note`, `amount`, `user`, `datestring`) VALUES
(89, 'Dental Machine', '1645363100', 'New', '45000', '1', '20/02/22');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `category`, `description`, `x`, `y`) VALUES
(59, 'Dental Machine', 'Teeth cleaner', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `img_url`, `name`, `profile`, `description`) VALUES
(1, 'uploads/images.jpg', 'Dr John', 'Cardiac Specialized', '<p>Redantium, totam rem aperiam, eaque ipsa qu ab illo inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un.</p>\r\n'),
(2, 'uploads/doctor.png', 'Dr Jackson Kamau', 'Cardiac Specialized', '<p>Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence</p>\r\n'),
(3, 'uploads/download_(2)2.png', 'Dr Aris K', 'Cardiac Specialized', '<p>Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'Accountant', 'For Financial Activities'),
(4, 'Doctor', ''),
(5, 'Patient', ''),
(6, 'Nurse', ''),
(7, 'Pharmacist', ''),
(8, 'Laboratorist', ''),
(10, 'Receptionist', 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `report` varchar(10000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `category`, `patient`, `doctor`, `date`, `category_name`, `report`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`) VALUES
(1, NULL, '1', '1', '1645138800', NULL, '<p>Blood test</p>\r\n', NULL, '709', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', 'Peter Wanjohi', '18-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE `laboratorist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(3, 'uploads/favicon1.png', 'Mr Laboratorist', 'laboratorist@pevaclinic.com', 'Nairobi, Kenya', '+254789999000', '', '', '111');

-- --------------------------------------------------------

--
-- Table structure for table `lab_category`
--

CREATE TABLE `lab_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `reference_value` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab_category`
--

INSERT INTO `lab_category` (`id`, `category`, `description`, `reference_value`) VALUES
(35, 'Troponin-I', 'Pathological Test', ''),
(36, 'CBC (DIGITAL)', 'Pathological Test', ''),
(37, 'Eosinophil', 'Pathological Test', ''),
(38, 'Platelets', 'Pathological Test', ''),
(39, 'Malarial Parasites (MP)', 'Pathological Test', ''),
(40, 'BT/ CT', 'Pathological Test', ''),
(41, 'ASO Titre', 'Pathological Test', ''),
(42, 'CRP', 'Pathological Test', ''),
(43, 'R/A test', 'Pathological Test', ''),
(44, 'VDRL', 'Pathological Test', ''),
(45, 'TPHA', 'Pathological Test', ''),
(46, 'HBsAg (Screening)', 'Pathological Test', ''),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', ''),
(48, 'CFT for Kala Zar', 'Pathological Test', ''),
(49, 'CFT for Filaria', 'Pathological Test', ''),
(50, 'Pregnancy Test', 'Pathological Test', ''),
(51, 'Blood Grouping', 'Pathological Test', ''),
(52, 'Widal Test', 'Pathological Test', '(70-110)mg/dl'),
(53, 'RBS', 'Pathological Test', ''),
(54, 'Blood Urea', 'Pathological Test', ''),
(55, 'S. Creatinine', 'Pathological Test', ''),
(56, 'S. cholesterol', 'Pathological Test', ''),
(57, 'Fasting Lipid Profile', 'Pathological Test', ''),
(58, 'S. Bilirubin', 'Pathological Test', ''),
(59, 'S. Alkaline Phosohare', 'Pathological Test', ''),
(61, 'S. Calcium', 'Pathological Test', ''),
(62, 'RBS with CUS', 'Pathological Test', ''),
(63, 'SGPT', 'Pathological Test', ''),
(64, 'SGOT', 'Pathological Test', ''),
(65, 'Urine for R/E', 'Pathological Test', ''),
(66, 'Urine C/S', 'Pathological Test', ''),
(67, 'Stool for R/E', 'Pathological Test', ''),
(68, 'Semen Analysis', 'Pathological Test', ''),
(69, 'S. Electrolyte', 'Pathological Test', ''),
(70, 'S. T3/ T4/ THS', 'Pathological Test', ''),
(71, 'MT', 'Pathological Test', ''),
(106, 'ESR', 'Patho Test', ''),
(107, 'FBS CUS', 'Pathological test', ''),
(108, 'Hb%', 'Pathological test', ''),
(114, '2HABF', 'Pathological test', ''),
(113, 'FBS', 'Pathological test', ''),
(115, 'S. TSH', 'Pathological test', ''),
(116, 'S. T3', 'Pathological test', ''),
(117, 'DC', 'Pathological test', ''),
(118, 'TC', 'Pathological test', ''),
(120, 'S. Uric acid', 'Pathological test', ''),
(126, 'eosinphil', 'Pathology Test', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manualemailshortcode`
--

CREATE TABLE `manualemailshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manualemailshortcode`
--

INSERT INTO `manualemailshortcode` (`id`, `name`, `type`) VALUES
(1, '{firstname}', 'email'),
(2, '{lastname}', 'email'),
(3, '{name}', 'email'),
(6, '{address}', 'email'),
(7, '{company}', 'email'),
(8, '{email}', 'email'),
(9, '{phone}', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `manualsmsshortcode`
--

CREATE TABLE `manualsmsshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manualsmsshortcode`
--

INSERT INTO `manualsmsshortcode` (`id`, `name`, `type`) VALUES
(1, '{firstname}', 'sms'),
(2, '{lastname}', 'sms'),
(3, '{name}', 'sms'),
(4, '{email}', 'sms'),
(5, '{phone}', 'sms'),
(6, '{address}', 'sms'),
(10, '{company}', 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `manual_email_template`
--

CREATE TABLE `manual_email_template` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manual_email_template`
--

INSERT INTO `manual_email_template` (`id`, `name`, `message`, `type`) VALUES
(7, 'vddfvdf', '<p>dvdfvdfvdfvd</p>\r\n', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `manual_sms_template`
--

CREATE TABLE `manual_sms_template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manual_sms_template`
--

INSERT INTO `manual_sms_template` (`id`, `name`, `message`, `type`) VALUES
(1, 'test', '{firstname} come to my offce {lastname}', 'sms'),
(8, 'dsdsdss3wew454', '{firstname}{address}{phone}{address}{email}{name}{lastname}{firstname}', 'sms'),
(3, 'sdgfgfdgfdgdf', '<p>{email}{instructor}{address} gfdgdfg</p>\r\n', 'email'),
(7, 'test223', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>dsfsf</td>\r\n			<td>sdfsdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdfdsf</td>\r\n			<td>dfdsf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>dfdf</td>\r\n			<td>dfdfd</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n{email}{instructor}', 'email'),
(9, 'zxcxzczx', ' {address}{phone}', 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_address` varchar(500) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `box` varchar(100) DEFAULT NULL,
  `s_price` varchar(100) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `generic` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `effects` varchar(100) DEFAULT NULL,
  `e_date` varchar(70) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `category`, `price`, `box`, `s_price`, `quantity`, `generic`, `company`, `effects`, `e_date`, `add_date`) VALUES
(2880, 'Panadol Extra', 'Tablets', '5', '100', '10', 20, 'none', 'dd', '', '08-03-2023', '02/18/22'),
(2881, 'Cold Cup', 'Tablets', '5', '100', '10', 0, 'none', 'dd', '', '10-06-2022', '02/20/22');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `category`, `description`) VALUES
(25, 'Tablets', 'Tabs in packs of 10,20,50, 60 e.t.c');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `topic` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `meeting_id` varchar(100) DEFAULT NULL,
  `meeting_password` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time_slot` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `doctor_ion_id` varchar(100) DEFAULT NULL,
  `patient_ion_id` varchar(100) DEFAULT NULL,
  `appointment_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `patient`, `doctor`, `topic`, `type`, `start_time`, `duration`, `timezone`, `meeting_id`, `meeting_password`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `patientname`, `doctorname`, `ion_user_id`, `doctor_ion_id`, `patient_ion_id`, `appointment_id`) VALUES
(597, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:57', '60', 'UTC', '78065502079', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867830', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(596, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:55', '60', 'UTC', '73399002446', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867708', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(594, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:52', '60', 'UTC', '76863762416', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867523', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(595, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:53', '60', 'UTC', '76103574289', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867627', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(593, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:50', '60', 'UTC', '78581884320', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867418', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(592, '1', '147', 'Doctor Appointment', '2', '2020-08-31 03:01', '60', 'UTC', '71935056353', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598857283', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(590, '1', '147', 'Doctor Appointment', '2', '2020-08-31 02:47', '60', 'UTC', '73066856714', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598856455', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(591, '1', '147', 'Doctor Appointment', '2', '2020-08-31 03:01', '60', 'UTC', '73873024898', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598857264', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(589, '1', '147', 'Doctor Appointment', '2', '2020-08-31 02:46', '60', 'UTC', '71674039118', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598856418', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
(598, '1', '147', 'Doctor Appointment', '2', '2020-08-31 06:37', '60', 'UTC', '79952317532', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598870269', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '455'),
(599, '1', '147', 'Doctor Appointment', '2', '2020-08-31 06:52', '60', 'UTC', '71430825323', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598871125', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '455'),
(600, '1', '147', 'Doctor Appointment', '2', '2020-08-31 11:34', '60', 'UTC', '78873863945', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598888071', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '455'),
(601, '1', '147', 'Doctor Appointment', '2', '2020-08-31 14:21', '60', 'UTC', '77058133464', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598898079', NULL, NULL, '709', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
(602, '1', '147', 'Doctor Appointment', '2', '2020-08-31 14:35', '60', 'UTC', '76826440714', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598898940', NULL, NULL, '709', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
(603, '1', '147', 'Doctor Appointment', '2', '2020-08-31 15:09', '60', 'UTC', '71324680797', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598900963', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
(604, '1', '147', 'Doctor Appointment', '2', '2020-08-31 17:51', '60', 'UTC', '72784087056', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598910684', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
(605, '1', '147', 'Doctor Appointment', '2', '2020-08-31 18:03', '60', 'UTC', '71781120129', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598911430', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
(606, '1', '147', 'Doctor Appointment', '2', '2020-09-01 05:21', '60', 'UTC', '73426854489', '12345', NULL, NULL, NULL, NULL, NULL, '09/01/20', '1598952101', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '456'),
(607, '1', '147', 'Doctor Appointment', '2', '2020-09-10 14:13', '60', 'UTC', '73576408457', '12345', NULL, NULL, NULL, NULL, NULL, '09/10/20', '1599761627', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '464'),
(608, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:47', '60', 'UTC', '75454341566', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846437', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '464'),
(609, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:47', '60', 'UTC', '73157465436', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846468', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
(610, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '78370052717', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846502', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
(611, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '71877134261', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846505', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
(612, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '75349390219', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846517', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
(613, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '77947823088', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846518', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
(614, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:49', '60', 'UTC', '75473785483', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846572', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
(615, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:49', '60', 'UTC', '76165228124', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846593', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_settings`
--

CREATE TABLE `meeting_settings` (
  `id` int(100) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `secret_key` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meeting_settings`
--

INSERT INTO `meeting_settings` (`id`, `api_key`, `secret_key`, `ion_user_id`, `y`) VALUES
(8, 'PEbvh2uESS6ryue3Kb3D0w', 'BZpvXJsvgqG6mN4Up1FuuWJQAY47w5QCWIAo', '709', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `z` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`) VALUES
(8, 'uploads/favicon4.png', 'Mrs Nurse', 'nurse@pevasclinic.com', 'Nairobi, Kenya', '+254 793374197', '', '', '', '109');

-- --------------------------------------------------------

--
-- Table structure for table `ot_payment`
--

CREATE TABLE `ot_payment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor_c_s` varchar(100) DEFAULT NULL,
  `doctor_a_s_1` varchar(100) DEFAULT NULL,
  `doctor_a_s_2` varchar(100) DEFAULT NULL,
  `doctor_anaes` varchar(100) DEFAULT NULL,
  `n_o_o` varchar(100) DEFAULT NULL,
  `c_s_f` varchar(100) DEFAULT NULL,
  `a_s_f_1` varchar(100) DEFAULT NULL,
  `a_s_f_2` varchar(11) DEFAULT NULL,
  `anaes_f` varchar(100) DEFAULT NULL,
  `ot_charge` varchar(100) DEFAULT NULL,
  `cab_rent` varchar(100) DEFAULT NULL,
  `seat_rent` varchar(100) DEFAULT NULL,
  `others` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `doctor_fees` varchar(100) DEFAULT NULL,
  `hospital_fees` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `flat_discount` varchar(100) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ot_payment`
--

INSERT INTO `ot_payment` (`id`, `patient`, `doctor_c_s`, `doctor_a_s_1`, `doctor_a_s_2`, `doctor_anaes`, `n_o_o`, `c_s_f`, `a_s_f_1`, `a_s_f_2`, `anaes_f`, `ot_charge`, `cab_rent`, `seat_rent`, `others`, `discount`, `date`, `amount`, `doctor_fees`, `hospital_fees`, `gross_total`, `flat_discount`, `amount_received`, `status`, `user`) VALUES
(85, '451', 'None', '123', 'None', '125', 'dbdbd', '', '1000', '0', '1000', '', '', '', '', '', '1506195494', '2000', '2000', '0', '2000', '', '1000', 'unpaid', '614');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `birthdate` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `how_added` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `registration_time`, `how_added`) VALUES
(1, 'uploads/cardiology-patient-icon-vector-6244713.jpg', 'Mr Patient', 'patient@pevaclinic.com', ',1', 'Thika, Kenya', '+254 790 855 618', 'Male', '01-01-1987', '', 'A+', '681', '101223', '01/30/19', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient_deposit`
--

CREATE TABLE `patient_deposit` (
  `id` int(10) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `deposited_amount` varchar(100) DEFAULT NULL,
  `amount_received_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(100) DEFAULT NULL,
  `gateway` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_deposit`
--

INSERT INTO `patient_deposit` (`id`, `patient`, `payment_id`, `date`, `deposited_amount`, `amount_received_id`, `deposit_type`, `gateway`, `user`) VALUES
(1733, '1', '1', '1645356101', '450', '1.gp', 'Cash', NULL, '1'),
(1734, '1', '2', '1645360287', '450', '2.gp', 'Cash', NULL, '1'),
(1735, '1', '3', '1645360459', '700', '3.gp', 'Cash', NULL, '1'),
(1736, '1', '4', '1645362571', '450', '4.gp', 'Mpesa', NULL, '1'),
(1737, '1', '5', '1645362779', '450', '5.gp', 'Mpesa', NULL, '1'),
(1738, '1', '6', '1645364888', '570', '6.gp', 'Mpesa', NULL, '1'),
(1739, '1', '7', '1645366303', '450', '7.gp', 'Cash', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `patient_material`
--

CREATE TABLE `patient_material` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) DEFAULT NULL,
  `flat_vat` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `hospital_amount` varchar(100) DEFAULT NULL,
  `doctor_amount` varchar(100) DEFAULT NULL,
  `category_amount` varchar(1000) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `remarks`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `deposit_type`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`) VALUES
(1, NULL, '1', '1', '1645356101', '450', '0', NULL, NULL, '0', '0', '450', '', '450', '0', NULL, '129*450*Doctor Consultation*1', '450', 'Cash', 'unpaid', '1', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', 'Peter Wanjohi', '20-02-22'),
(2, NULL, '1', '1', '1645360287', '450', '0', NULL, NULL, '0', '0', '450', '', '450', '0', NULL, '129*450*Doctor Consultation*1', '450', 'Cash', 'unpaid', '1', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', 'Peter Wanjohi', '20-02-22'),
(3, NULL, '1', '1', '1645360459', '450', '0', NULL, NULL, '0', '0', '450', '', '450', '0', NULL, '129*450*Doctor Consultation*1', '700', 'Cash', 'unpaid', '1', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', 'Peter Wanjohi', '20-02-22'),
(4, NULL, '1', '1', '1645362571', '450', '0', NULL, NULL, '0', '0', '450', '', '450', '0', NULL, '129*450*Doctor Consultation*1', '450', 'Mpesa', 'unpaid', '1', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', 'Peter Wanjohi', '20-02-22'),
(5, NULL, '1', '1', '1645362779', '450', '0', NULL, NULL, '0', '0', '450', '', '450', '0', NULL, '129*450*Doctor Consultation*1', '450', 'Mpesa', 'unpaid', '1', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', 'Peter Wanjohi', '20-02-22'),
(6, NULL, '1', '1', '1645364888', '570', '0', NULL, NULL, '0', '0', '570', '', '570', '0', NULL, '129*450*Doctor Consultation*1,130*120*Stool Test*1', '570', 'Mpesa', 'unpaid', '1', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', 'Peter Wanjohi', '20-02-22'),
(7, NULL, '1', NULL, '1645366303', '450', '0', NULL, NULL, '0', '0', '450', '', '450', '0', NULL, '129*450*Doctor Consultation*1', '450', 'Cash', 'unpaid', '1', 'Mr Patient', '+254 790 855 618', 'Thika, Kenya', '0', '20-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `merchant_key` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `APIUsername` varchar(100) DEFAULT NULL,
  `APIPassword` varchar(100) DEFAULT NULL,
  `APISignature` varchar(100) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `publish` varchar(1000) DEFAULT NULL,
  `secret` varchar(1000) DEFAULT NULL,
  `public_key` varchar(1000) DEFAULT NULL,
  `store_id` varchar(1000) DEFAULT NULL,
  `store_password` varchar(1000) DEFAULT NULL,
  `merchant_mid` varchar(1000) DEFAULT NULL,
  `merchant_website` varchar(1000) DEFAULT NULL,
  `apiloginid` varchar(1000) DEFAULT NULL,
  `transactionkey` varchar(1000) DEFAULT NULL,
  `apikey` varchar(1000) DEFAULT NULL,
  `merchantcode` varchar(1000) DEFAULT NULL,
  `privatekey` varchar(1000) DEFAULT NULL,
  `publishablekey` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `APIUsername`, `APIPassword`, `APISignature`, `status`, `publish`, `secret`, `public_key`, `store_id`, `store_password`, `merchant_mid`, `merchant_website`, `apiloginid`, `transactionkey`, `apikey`, `merchantcode`, `privatekey`, `publishablekey`) VALUES
(1, 'PayPal', '', '', '', '', 'sahashaibal19-facilitator_api1.gmail.com', 'B63U4VHDE8E8K8E2', 'AGVBtjcchZdpMmwaGJXMakrp-RyZAuNqRwECP9LNRref5tv0ZwZkllTN', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Pay U Money', 'HbimD3hk', 'BnuUHR1FDG', '', '', '', '', 'Aaw-Fd69z.JLuiq13ejMN-CsSMuuAPEXWUFPF5QW9sD22fp1hosGIFKo', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'Publish key', 'Secret Key', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Paystack', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, 'sk_test_c0b4a969e33564d0fdc6c781efb0300e68316897', 'pk_test_6511ce507f68769d3035234614ba03f3e7368f4e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'SSLCOMMERZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, 'vella5fe8cfbe4ed3a', 'vella5fe8cfbe4ed3a@ssl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Paytm', 'Merchant Key', NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, 'Merchant MID', 'Merchant Website', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Authorize.Net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2LJcUm497L2', '46u3b3AMd44sJX5w', NULL, NULL, NULL, NULL),
(8, '2Checkout', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Merchant Code', 'Private key', 'Publishable Key');

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `c_price` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `d_commission`, `h_commission`) VALUES
(129, 'Doctor Consultation', 'Consultation Fees', '450', 'others', 0, NULL),
(130, 'Stool Test', 'test', '120', 'diagnostic', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(7, 'uploads/favicon6.png', 'Mr. Pharmacist', 'pharmacist@pevaclinic.com', 'Embakasi, Kenya', '+254717475473', '', '', '110');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense`
--

CREATE TABLE `pharmacy_expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy_expense`
--

INSERT INTO `pharmacy_expense` (`id`, `category`, `date`, `amount`, `user`) VALUES
(142, 'Dental Machine', '1645363047', '45000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense_category`
--

CREATE TABLE `pharmacy_expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy_expense_category`
--

INSERT INTO `pharmacy_expense_category` (`id`, `category`, `description`, `x`, `y`) VALUES
(63, 'Dental Machine', 'Teeth cleaner', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE `pharmacy_payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) DEFAULT NULL,
  `flat_vat` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `hospital_amount` varchar(100) DEFAULT NULL,
  `doctor_amount` varchar(100) DEFAULT NULL,
  `category_amount` varchar(1000) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment_category`
--

CREATE TABLE `pharmacy_payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `c_price` varchar(100) DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `symptom` varchar(100) DEFAULT NULL,
  `advice` varchar(1000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `dd` varchar(100) DEFAULT NULL,
  `medicine` varchar(1000) DEFAULT NULL,
  `validity` varchar(100) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date`, `patient`, `doctor`, `symptom`, `advice`, `state`, `dd`, `medicine`, `validity`, `note`, `patientname`, `doctorname`) VALUES
(100, '1645311600', '1', '1', '<p>Take the medicine as directed.</p>\r\n', '', NULL, NULL, '2880***20mg***1 x 3***3 days***3 times a day after meals.###2881***20mg***2 x 3***5 days***3 times a day after meals.', NULL, '', 'Mr Patient', 'Peter Wanjohi');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(7, '', 'Mr Receptionist', 'receptionist@pevaclinic.com', 'Nairobi, Kenya', '+254765666666', '', '614');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `report_type` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `report_type`, `patient`, `description`, `doctor`, `date`, `add_date`) VALUES
(36, 'operation', 'Mr Patient*681', 'jhvvnbv', 'Mr Doctor', '07-12-2020', '12/13/20');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `img_url`, `title`, `description`) VALUES
(1, 'uploads/featured-icon-3.png', 'Cardiac Excellence', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(2, 'uploads/featured-icon-4.png', 'Cancer Treatment', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(3, 'uploads/featured-icon-1.png', 'Stroke Management', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(4, 'uploads/featured-icon-6.png', '24 / 7 Support', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(5, 'uploads/featured-icon-2.png', 'Care', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `live_appointment_type` varchar(100) DEFAULT NULL,
  `vat` varchar(100) DEFAULT NULL,
  `login_title` varchar(100) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `invoice_logo` varchar(500) DEFAULT NULL,
  `payment_gateway` varchar(100) DEFAULT NULL,
  `sms_gateway` varchar(100) DEFAULT NULL,
  `codec_username` varchar(100) DEFAULT NULL,
  `codec_purchase_code` varchar(100) DEFAULT NULL,
  `timezone` varchar(1000) DEFAULT NULL,
  `emailtype` varchar(1000) DEFAULT NULL,
  `appointment_subtitle` varchar(1000) NOT NULL,
  `appointment_title` varchar(1000) NOT NULL,
  `appointment_description` varchar(1000) NOT NULL,
  `appointment_img_url` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `live_appointment_type`, `vat`, `login_title`, `logo`, `invoice_logo`, `payment_gateway`, `sms_gateway`, `codec_username`, `codec_purchase_code`, `timezone`, `emailtype`, `appointment_subtitle`, `appointment_title`, `appointment_description`, `appointment_img_url`) VALUES
(1, 'Peva Systems', 'Peva Clinic', 'Nairobi Kenya', '+254 790 855 618', 'admin@pevaclinicsystem.com', '#', 'Kes', 'english', 'flat', 'jitsi', 'percentage', 'Login Title', 'uploads/PEVA_SYSTEMS_LOGOWEBCr1.png', '', 'PayPal', 'Twilio', '', '', 'Africa/Nairobi', 'Domain Email', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `site_gallery`
--

CREATE TABLE `site_gallery` (
  `id` int(10) NOT NULL,
  `img` varchar(500) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_gallery`
--

INSERT INTO `site_gallery` (`id`, `img`, `position`, `status`) VALUES
(1, 'uploads/gallery-img-1.png', '1', 'Active'),
(2, 'uploads/gallery-img-2.png', '2', 'Active'),
(3, 'uploads/gallery-img-3.png', '3', 'Active'),
(4, 'uploads/gallery-img-4.png', '4', 'Active'),
(5, 'uploads/gallery-img-5.png', '5', 'Active'),
(6, 'uploads/gallery-img-6.png', '6', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `site_grid`
--

CREATE TABLE `site_grid` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_grid`
--

INSERT INTO `site_grid` (`id`, `category`, `title`, `description`, `img`, `position`, `status`) VALUES
(3, 'FEATURED', 'Professional surgeons', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum tenetur, aut veritatis maxime ducimus modi delectus vero expedita illo ratione, eveniet laboriosam cupiditate reiciendis, repellat minima. Optio consectetur inventore ipsa!', 'uploads/frature-img-1.png', '1', 'Active'),
(4, 'FEATURED', 'Good Care', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum tenetur, aut veritatis maxime ducimus modi delectus vero expedita illo ratione, eveniet laboriosam cupiditate reiciendis, repellat minima. Optio consectetur inventore ipsa!', 'uploads/frature-img-2.png', '2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `site_review`
--

CREATE TABLE `site_review` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `designation` varchar(500) CHARACTER SET utf8 NOT NULL,
  `review` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `img` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_review`
--

INSERT INTO `site_review` (`id`, `name`, `designation`, `review`, `img`, `status`) VALUES
(1, 'Test Reviewer 1', 'Reviewer, XYZ', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-581.jpg', 'Active'),
(3, 'Test Reviewer 2', 'Reviewer, ABC', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-582.jpg', 'Active'),
(4, 'Test Reviewer 3', 'Reviewer, NMP', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-583.jpg', 'Active'),
(5, 'Test Reviewer 4', 'Reviewer, TRP', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-584.jpg', 'Active'),
(6, 'Test Reviewer 5', 'Reviewer, CVB', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-585.jpg', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `text1` varchar(500) DEFAULT NULL,
  `text2` varchar(500) DEFAULT NULL,
  `text3` varchar(500) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `img_url`, `text1`, `text2`, `text3`, `position`, `status`) VALUES
(1, 'Slider 1', 'uploads/1503411077revised-bhatia-homebanner-03.jpg', 'Welcome To Hospital', 'Hospital Management System', 'Hospital', '2', 'Active'),
(2, 'Best Hospital management System', 'uploads/1707260345350542.jpg', 'Best Hospital management System', 'Best Hospital management System', 'Best Hospital management System', '1', 'Inactive'),
(5, 'dbfbfjsbjfjbbsjfb', 'uploads/inlinePreview2.jpg', 'jbfjsbjdf', 'jbfjbjfbjsb', 'jbfjbjsbfj', 'jbfjbjbsjf', 'Inactive'),
(6, 'Main BG', 'uploads/header-bg.png', 'The best doctors in Medicine!', 'in the world of modern medicine', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `message` varchar(1600) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `api_id` varchar(100) DEFAULT NULL,
  `sender` varchar(100) DEFAULT NULL,
  `authkey` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `sid` varchar(1000) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `sendernumber` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `name`, `username`, `password`, `api_id`, `sender`, `authkey`, `user`, `sid`, `token`, `sendernumber`, `link`) VALUES
(1, 'Clickatell', '', 'dmJiY3ZiY3Y=', '', NULL, NULL, '1', NULL, NULL, NULL, 'https://www.clickatell.com/'),
(2, 'MSG91', '', '', NULL, 'Sender', 'Auth Key', '1', NULL, NULL, NULL, 'https://msg91.com/'),
(5, 'Twilio', '', '', NULL, NULL, NULL, '1', 'AC20f426a9bbc9e05e689f5ad59e538270', '37a0cddb5c1f2d50882fa7149a99d119', '+13302949572', 'https://www.twilio.com/'),
(6, 'Bulk Sms', 'VXNlcm5hbWU=', 'UGFzc3dvcmQ=', NULL, NULL, NULL, '1', NULL, NULL, NULL, 'https://www.bulksms.com/'),
(8, 'Bd Bulk Sms', '', '', NULL, NULL, NULL, '1', NULL, 'Bd Bulk Sms Token Password', NULL, 'https://bdbulksms.net/');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `template` varchar(10000) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `id` int(100) NOT NULL,
  `doctor` varchar(500) DEFAULT NULL,
  `weekday` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `weekday` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`id`, `doctor`, `s_time`, `e_time`, `weekday`, `s_time_key`) VALUES
(2196, NULL, '01:30 PM', '01:45 PM', 'Tuesday', '162'),
(2197, NULL, '01:45 PM', '02:00 PM', 'Tuesday', '165'),
(2198, NULL, '02:00 PM', '02:15 PM', 'Tuesday', '168'),
(2199, NULL, '02:15 PM', '02:30 PM', 'Tuesday', '171'),
(2200, NULL, '02:30 PM', '02:45 PM', 'Tuesday', '174'),
(2201, NULL, '02:45 PM', '03:00 PM', 'Tuesday', '177'),
(2202, NULL, '03:00 PM', '03:15 PM', 'Tuesday', '180'),
(2203, NULL, '03:15 PM', '03:30 PM', 'Tuesday', '183'),
(2204, NULL, '03:30 PM', '03:45 PM', 'Tuesday', '186'),
(2205, NULL, '03:45 PM', '04:00 PM', 'Tuesday', '189'),
(2206, NULL, '04:00 PM', '04:15 PM', 'Tuesday', '192'),
(2207, NULL, '04:15 PM', '04:30 PM', 'Tuesday', '195'),
(2208, NULL, '04:30 PM', '04:45 PM', 'Tuesday', '198'),
(2209, NULL, '04:45 PM', '05:00 PM', 'Tuesday', '201'),
(2210, NULL, '05:00 PM', '05:15 PM', 'Tuesday', '204'),
(2211, NULL, '05:15 PM', '05:30 PM', 'Tuesday', '207'),
(2212, NULL, '05:30 PM', '05:45 PM', 'Tuesday', '210'),
(2213, NULL, '05:45 PM', '06:00 PM', 'Tuesday', '213'),
(2214, NULL, '06:00 PM', '06:15 PM', 'Tuesday', '216'),
(2215, NULL, '06:15 PM', '06:30 PM', 'Tuesday', '219'),
(2216, NULL, '06:30 PM', '06:45 PM', 'Tuesday', '222'),
(2217, NULL, '06:45 PM', '07:00 PM', 'Tuesday', '225'),
(2218, NULL, '07:00 PM', '07:15 PM', 'Tuesday', '228'),
(2219, NULL, '07:15 PM', '07:30 PM', 'Tuesday', '231'),
(2220, NULL, '07:30 PM', '07:45 PM', 'Tuesday', '234'),
(2221, NULL, '07:45 PM', '08:00 PM', 'Tuesday', '237'),
(2222, NULL, '08:00 PM', '08:15 PM', 'Tuesday', '240'),
(2223, NULL, '08:15 PM', '08:30 PM', 'Tuesday', '243'),
(2224, NULL, '08:30 PM', '08:45 PM', 'Tuesday', '246'),
(2225, NULL, '08:45 PM', '09:00 PM', 'Tuesday', '249'),
(2226, NULL, '09:00 PM', '09:15 PM', 'Tuesday', '252'),
(2227, NULL, '09:15 PM', '09:30 PM', 'Tuesday', '255'),
(2228, NULL, '09:30 PM', '09:45 PM', 'Tuesday', '258'),
(2229, NULL, '09:45 PM', '10:00 PM', 'Tuesday', '261'),
(2230, NULL, '10:00 PM', '10:15 PM', 'Tuesday', '264'),
(2231, NULL, '10:15 PM', '10:30 PM', 'Tuesday', '267'),
(2232, NULL, '10:30 PM', '10:45 PM', 'Tuesday', '270'),
(2233, NULL, '10:45 PM', '11:00 PM', 'Tuesday', '273'),
(2234, NULL, '11:00 PM', '11:15 PM', 'Tuesday', '276'),
(2235, NULL, '11:15 PM', '11:30 PM', 'Tuesday', '279');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2y$08$NjQw4WsgpzCAQxOHhJXg8.KBuoiRUvrpZwnMYEdLLrMLqx3v5ttLa', '', 'admin@pevaclinic.com', '', 'g0wt205VJVb4a9819f14ce3d10dffe14f93680e2', 1607595309, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1645362949, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(109, '113.11.74.192', 'Mrs Nurse', '$2y$08$CqxsVFewynbZi6UBOe481eJWbkNdOa/ehpmlGXJnrjq5mvpPDdzoO', NULL, 'nurse@pevasclinic.com', NULL, NULL, NULL, NULL, 1435082243, 1614599494, 1, NULL, NULL, NULL, NULL),
(110, '113.11.74.192', 'Mr. Pharmacist', '$2y$08$uy2YnEG6kAADq8QLL2MS7OfvPs.ZLcWmAVJCj5LA4pNQTuuBWNZ4G', NULL, 'pharmacist@pevaclinic.com', NULL, NULL, NULL, 'mbeMop6vTuscFYmD2M4Iqu', 1435082359, 1614599460, 1, NULL, NULL, NULL, NULL),
(111, '113.11.74.192', 'Mr Laboratorist', '$2y$08$hSHiFXnJZE4fusxX2WlfYeIVIYLH2H6ZfyINHRQLbrTAUcnVc572a', NULL, 'laboratorist@pevaclinic.com', NULL, NULL, NULL, NULL, 1435082438, 1645173527, 1, NULL, NULL, NULL, NULL),
(112, '113.11.74.192', 'Mr. Accountant', '$2y$08$MeJQlgRC1AALgtvxfXwhuu5p1QOE9VAhXf7eM7llpt1TRRpNxVAFu', NULL, 'accountant@pevaclinic.com', NULL, NULL, NULL, NULL, 1435082637, 1614599331, 1, NULL, NULL, NULL, NULL),
(614, '103.231.162.58', 'Mr Receptionist', '$2y$08$K2lK8Adt2whlJupWKZuPiuE7GIS.yI0ort8xgOGAERLqdwapGWszq', NULL, 'receptionist@pevaclinic.com', NULL, NULL, NULL, NULL, 1505800835, 1599736103, 1, NULL, NULL, NULL, NULL),
(681, '103.231.161.30', 'Mr Patient', '$2y$08$i/UFBm2dH7YbaGnM8nByO.iO.09m.Fh9pIyn5aTH6XaD8w4CzUrZC', NULL, 'patient@pevaclinic.com', NULL, NULL, NULL, NULL, 1548872582, 1615092407, 1, NULL, NULL, NULL, NULL),
(709, '103.231.160.47', 'Peter Wanjohi', '$2y$08$OpopE/0j9osR4hnNnyCz3eekXDTQsMRpXgs7VfDvXxmG8vGxFt3.u', NULL, 'doctor@pevaclinic.com', NULL, NULL, NULL, NULL, 1558379920, 1645174911, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(111, 109, 6),
(112, 110, 7),
(113, 111, 8),
(114, 112, 3),
(616, 614, 10),
(683, 681, 5),
(711, 709, 4);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `logo` varchar(1000) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `emergency` varchar(100) DEFAULT NULL,
  `support` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `block_1_text_under_title` varchar(500) DEFAULT NULL,
  `service_block__text_under_title` varchar(500) DEFAULT NULL,
  `doctor_block__text_under_title` varchar(500) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `twitter_id` varchar(100) DEFAULT NULL,
  `google_id` varchar(100) DEFAULT NULL,
  `youtube_id` varchar(100) DEFAULT NULL,
  `skype_id` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `twitter_username` varchar(1000) DEFAULT NULL,
  `appointment_title` varchar(1000) NOT NULL,
  `appointment_subtitle` varchar(1000) NOT NULL,
  `appointment_description` varchar(1000) NOT NULL,
  `appointment_img_url` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `title`, `description`, `logo`, `address`, `phone`, `emergency`, `support`, `email`, `currency`, `block_1_text_under_title`, `service_block__text_under_title`, `doctor_block__text_under_title`, `facebook_id`, `twitter_id`, `google_id`, `youtube_id`, `skype_id`, `x`, `twitter_username`, `appointment_title`, `appointment_subtitle`, `appointment_description`, `appointment_img_url`) VALUES
(1, 'Peva Systems', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minus deleniti mollitia quibusdam natus dolorum quae id libero rerum ullam maxime molestias exercitationem incidunt, sunt, delectus consequuntur dignissimos ab iste fuga?', 'uploads/PEVA_SYSTEMS_LOGOWEBCr2.png', 'Nairobi, Kenya', '+254790855618', '+254790855618', '+254790855618', 'admin@pevasystems.com', 'Kes', 'Best Hospital In The City', 'Aenean nibh ante, lacinia non tincidunt nec, lobortis ut tellus. Sed in porta diam.', 'We work with forward thinking clients to create beautiful, honest and amazing things that bring positive results.', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.google.com/', 'https://www.youtube.com/', 'https://www.skype.com/', NULL, '', 'Why you should choose us?', 'WELCOME TO HOSPITAL MANAGEMENT', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quisquam nulla quibusdam nam autem, in quasi quae cumque, laborum optio nobis reprehenderit doloremque delectus voluptate. Maxime aliquam vitae adipisci sit numquam?', 'uploads/why-choose-us-doc.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autoemailshortcode`
--
ALTER TABLE `autoemailshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autoemailtemplate`
--
ALTER TABLE `autoemailtemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autosmsshortcode`
--
ALTER TABLE `autosmsshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autosmstemplate`
--
ALTER TABLE `autosmstemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankb`
--
ALTER TABLE `bankb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_category`
--
ALTER TABLE `lab_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manualemailshortcode`
--
ALTER TABLE `manualemailshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manualsmsshortcode`
--
ALTER TABLE `manualsmsshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_email_template`
--
ALTER TABLE `manual_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_sms_template`
--
ALTER TABLE `manual_sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ot_payment`
--
ALTER TABLE `ot_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_material`
--
ALTER TABLE `patient_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_gallery`
--
ALTER TABLE `site_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_grid`
--
ALTER TABLE `site_grid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_review`
--
ALTER TABLE `site_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `autoemailshortcode`
--
ALTER TABLE `autoemailshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `autoemailtemplate`
--
ALTER TABLE `autoemailtemplate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `autosmsshortcode`
--
ALTER TABLE `autosmsshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `autosmstemplate`
--
ALTER TABLE `autosmstemplate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bankb`
--
ALTER TABLE `bankb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lab_category`
--
ALTER TABLE `lab_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `manualemailshortcode`
--
ALTER TABLE `manualemailshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `manualsmsshortcode`
--
ALTER TABLE `manualsmsshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manual_email_template`
--
ALTER TABLE `manual_email_template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `manual_sms_template`
--
ALTER TABLE `manual_sms_template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2882;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ot_payment`
--
ALTER TABLE `ot_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1740;

--
-- AUTO_INCREMENT for table `patient_material`
--
ALTER TABLE `patient_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_gallery`
--
ALTER TABLE `site_gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `site_grid`
--
ALTER TABLE `site_grid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_review`
--
ALTER TABLE `site_review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `time_schedule`
--
ALTER TABLE `time_schedule`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2447;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1584;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5581;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
