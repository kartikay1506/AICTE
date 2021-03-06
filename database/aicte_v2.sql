-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2019 at 07:03 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aicte_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `acr`
--

CREATE TABLE `acr` (
  `id` int(11) NOT NULL,
  `year` varchar(20) NOT NULL,
  `activity` varchar(10) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `facultyId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acr`
--

INSERT INTO `acr` (`id`, `year`, `activity`, `credit`, `facultyId`) VALUES
(1, 'fdgf', 'activity1', 'credit2', 'NA'),
(2, 'gdfgdfg', 'activity2', 'credit1', 'NA'),
(3, 'asdasdasdas', 'activity1', 'credit1', 'NA'),
(4, 'asdasdasdas', 'activity1', 'credit1', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `acr_points`
--

CREATE TABLE `acr_points` (
  `id` int(11) NOT NULL,
  `faculty_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `points` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `acr_year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(20) COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `activity_name` varchar(20) NOT NULL,
  `activity_semester` varchar(20) NOT NULL,
  `activity_year` varchar(20) NOT NULL,
  `activity_type` varchar(20) NOT NULL,
  `facultyId` varchar(50) NOT NULL,
  `activity_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_technical`
--

CREATE TABLE `faculty_technical` (
  `id` int(11) NOT NULL,
  `university_code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `date_of_joining` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(13) NOT NULL,
  `profile_pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_technical`
--

INSERT INTO `faculty_technical` (`id`, `university_code`, `name`, `contact`, `qualification`, `date_of_joining`, `department`, `level`, `faculty_id`, `address`, `email`, `profile_pic`) VALUES
(1, '', 'sdasd', '783982', '', '2019-06-04', 'CS', '', '', 'xczc', 'dsadas@dsa.co', ''),
(2, '', 'dsds', '423423', 'NA', '2019-06-24', 'CS', '13A1', '4324', '', 'sdfsdf@ds.com', ''),
(3, '', 'dsds', '423423', 'NA', '2019-06-04', 'IT', '13A1', '432455', '', 'sdfsdf@ds.com', ''),
(4, 'NA', 'rr', '222', 'NA', '21/32/12', 'CS', '9A', '111111', 'NA', 'rr@gg.com', 'NA'),
(5, '', '', '', 'NA', '', '', '', '', 'NA', '', 'NA'),
(6, '', 'Faculty1', '9988776655', 'NA', '10/06/2019', '', '10', '123455', 'NA', 'faculty1@gmai', 'NA'),
(7, '', 'Faculty1', '9988776655', 'NA', '10/06/2019', '', '10', '123455', 'NA', 'faculty1@gmai', 'NA'),
(8, '', '', '', 'NA', '', '', '', '', 'NA', '', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `min_qualifications`
--

CREATE TABLE `min_qualifications` (
  `id` int(11) NOT NULL,
  `qualification_name` text NOT NULL,
  `meta_qualification` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `min_qualifications`
--

INSERT INTO `min_qualifications` (`id`, `qualification_name`, `meta_qualification`) VALUES
(1, 'B. E. / B. Tech. / B. S. in relevant discipline with First Class or equivalent.', 'B. E. / B. Tech. / B. S. in relevant discipline with First Class or equivalent.'),
(2, 'B. Pharm. with First Class or equivalent', 'B. Pharm. with First Class or equivalent'),
(3, 'A minimum 4-year Bachelor’s Degree in HMCT with First Class or equivalent.', 'A minimum 4-year Bachelor’s Degree in HMCT with First Class or equivalent.'),
(4, 'B.Arch. or a 4-year Degree in an allied field with First Class or equivalent', 'B.Arch. or a 4-year Degree in an allied field with First Class or equivalent'),
(5, 'Bachelor’s degree in appropriate discipline of Fine Arts (Applied Arts, Painting and Sculpture) or equivalent with First Class or equivalent', 'Bachelor’s degree in appropriate discipline of Fine Arts (Applied Arts, Painting and Sculpture) or equivalent with First Class or equivalent'),
(6, 'Bachelor’s degree in design or a minimum 4-year Diploma in any one of the streams of Design, Fine Arts, Applied Arts and Architecture or Bachelor’s degree in Engineering with First Class or equivalent', 'Bachelor’s degree in design or a minimum 4-year Diploma in any one of the streams of Design, Fine Arts, Applied Arts and Architecture or Bachelor’s degree in Engineering with First Class or equivalent'),
(7, 'Master’s degree in appropriate subject with First Class or equivalent at Bachelor’s or Master’s level', 'Master’s degree in appropriate subject with First Class or equivalent at Bachelor’s or Master’s level'),
(8, 'Bachelor’s and Master’s Degrees in relevant disciplines with First Class', 'Bachelor’s and Master’s Degrees in relevant disciplines with First Class in either of the two at the time of selection.'),
(9, 'Master’s degree with First Class or equivalent in a relevant subject and has cleared the National Eligibility Test (NET) or some similar test', 'A Master’s degree with First Class or equivalent in a relevant subject and, must have cleared the National Eligibility Test (NET) conducted by the UGC or the CSIR, or a similar test accredited by the UGC, like SLET / SET. '),
(10, 'Master\'s degree in relevent discipline', 'Candidates from technical disciplines shall be placed in Level 10 at suitable cell as and when the candidates acquire the Master’s degree in relevant technical discipline.'),
(11, 'Cleared National Eligibility Test (NET) or some similar test', 'Candidates of Sciences and Humanities shall be placed in Level 10 at suitable cell as and when the candidates clear the National Eligibility Test (NET) conducted by the UGC or the CSIR, or a similar test accredited by the UGC, like SLET / SET.'),
(12, 'Completed 5 years of service', 'In case candidates do not acquire relevant Master’s degree in the case of technical disciplines and in case of candidates from Sciences and Humanities do not clear National Eligibility Test (NET) conducted by the UGC or the CSIR, or a similar test accredited by the UGC, like SLET / SET, they shall be placed in appropriate cell of level 10 only after completion of 5 years'),
(13, 'Three weeks of industrial training at the level of Lecturer. ', 'Three weeks of industrial training at the level of Lecturer. '),
(14, 'Two weeks of Faculty Development Programme (FDP) recognised by AICTE/UGC/TEQIP/NITTTR/ Pandit Madan Mohan Malviya National Mission on Teachers and Teaching (PMMMNMTT)/IISc/IIT /University/Govt. and out of which at least one of the FDPs shall be in advanced Pedagogy', 'Two weeks of Faculty Development Programme (FDP) recognised by AICTE/UGC/TEQIP/NITTTR/ Pandit Madan Mohan Malviya National Mission on Teachers and Teaching (PMMMNMTT)/IISc/IIT /University/Govt. and out of which at least one of the FDPs shall be in advanced Pedagogy'),
(15, 'Completed one week faculty development programme and one eight weeks duration MOOCS course with E-Certification by NPTEL-AICTE. ', 'One week faculty development programme as above and one eight weeks duration MOOCS course with E-Certification by NPTEL-AICTE.'),
(16, 'Completed two such eight weeks duration MOOCS courses with E-Certification by NPTELAICTE', 'Completed two such eight weeks duration MOOCS courses with E-Certification by NPTELAICTE'),
(17, 'Minimum 5 years of experience and an average 360 degree feedback score between 8 to 10 on the scale of 10 in the cadre of Lecturer.', 'Minimum 5 years of experience and an average 360 degree feedback score between 8 to 10 on the scale of 10 in the cadre of Lecturer.'),
(18, 'Minimum 6 years of experience and an average 360o feedback score between 5 to < 8 on the scale of 10 in the cadre of Lecturer', 'Minimum 6 years of experience and an average 360o feedback score between 5 to < 8 on the scale of 10 in the cadre of Lecturer'),
(19, 'Minimum qualifications for Lecturer (Senior Scale) + Master\'s Degree with first class or equivalent either at Bachelor\'s or Masterl\'s level.', 'Qualification as prescribed for the post of Lecturer (Senior Scale) necessarily with a Master’s Degree in relevant discipline in First Class or equivalent either at Bachelor’s or at Master’s level.'),
(20, 'Three weeks of industrial training at the level of Lecturer (Senior Scale)', 'Three weeks of industrial training at the level of Lecturer (Senior Scale)'),
(21, 'Completed two weeks of Faculty Development Programme (FDP) recognised by AICTE/UGC/TEQIP/NITTTR/ Pandit Madan Mohan Malviya National Mission on Teachers and Teaching (PMMMNMTT)/IISc/IIT /University/Govt', 'Two weeks of Faculty Development Programme (FDP) recognised by AICTE/UGC/TEQIP/NITTTR/ Pandit Madan Mohan Malviya National Mission on Teachers and Teaching (PMMMNMTT)/IISc/IIT/University/Govt'),
(22, 'Completed one week faculty development programme as above and one eight weeks duration MOOCS course with E-Certification by NPTEL-AICTE.', 'One week faculty development programme as above and one eight weeks duration MOOCS course with E-Certification by NPTEL-AICTE.'),
(23, 'Completed two such eight weeks duration MOOCS courses with E-Certification by NPTEL -AICTE', 'Completed two such eight weeks duration MOOCS courses with E-Certification by NPTEL -AICTE'),
(24, 'Minimum 5 years of experience with an average 360 degree feedback score between 8 to 10 on the scale of 10 in the cadre of Lecturer (Senior Scale)', 'Minimum 5 years of experience with an average 360 degree feedback score between 8 to 10 on the scale of 10 in the cadre of Lecturer (Senior Scale)'),
(25, 'Minimum 6 years of experience with an average 360 degree feedback score between 5 to < 8 on the scale of 10 in the cadre of Lecturer (Senior Scale).', 'Minimum 6 years of experience with an average 360 degree feedback score between 5 to < 8 on the scale of 10 in the cadre of Lecturer (Senior Scale).'),
(26, 'Qualifications as prescribed for the post of Lecturer (Selection Grade - I).', 'Qualifications as prescribed for the post of Lecturer (Selection Grade - I).'),
(27, 'Completed three weeks of industrial training at the level of Lecturer (Selection Grade - I)', 'Three weeks of industrial training at the level of Lecturer (Selection Grade - I)'),
(28, 'Completed two weeks of Faculty Development Programme (FDP) recognised by AICTE/UGC/TEQIP/NITTTR/Pandit Madan Mohan Malviya National Mission on Teachers and Teaching (PMMMNMTT)/IISc/IIT /University/Govt', 'Completed two weeks of Faculty Development Programme (FDP) recognised by AICTE/UGC/TEQIP/NITTTR/Pandit Madan Mohan Malviya National Mission on Teachers and Teaching (PMMMNMTT)/IISc/IIT /University/Govt'),
(29, 'Completed one week faculty development programme as above and one eight weeks duration MOOCS course with E-Certification by NPTEL-AICTE.', 'One week faculty development programme as above and one eight weeks duration MOOCS course with E-Certification by NPTEL-AICTE.'),
(30, 'Completed two eight weeks duration MOOCS courses with E-Certification by NPTEL -AICTE.', 'Completed two such eight weeks duration MOOCS courses with E-Certification by NPTEL -AICTE.'),
(31, 'Ph. D. in relevant discipline with minimum 3 years of experience, 2 research publications in SCI journals/UGC/AICTE/CoA/PCI approved list of journals and an average 360 degree feedback score\r\nbetween 8 to 10 on a scale of 10, all in the cadre of Lecturer (Selection Grade - I) Level - 12.', 'Ph. D. in relevant discipline with minimum 3 years of experience, 2 research publications in SCI journals/UGC/AICTE/CoA/PCI approved list of journals and an average 360 degree feedback score between 8 to 10 on a scale of 10, all in the cadre of Lecturer (Selection Grade - I) Level - 12.'),
(32, 'Ph. D. in relevant discipline with minimum 4 years of experience, 2 research publications in SCI Journals / UGC / AICTE. CoA/ PCI approved list of journals and an average 360o feedback score between 5 to < 8 on a scale of 10, all in the cadre of Lecturer (Selection Grade-I) Level - 12.', 'Ph. D. in relevant discipline with minimum 4 years of experience, 2 research publications in SCI Journals / UGC / AICTE. CoA/ PCI approved list of journals and an average 360o feedback score between 5 to < 8 on a scale of 10, all in the cadre of Lecturer (Selection Grade-I) Level - 12.'),
(33, 'Minimum 6 years of experience with an average 360o feedback score between 8 to 10 on a scale of 10, all in the cadre of Lecturer (Selection Grade-I) Level - 12. ', 'Minimum 6 years of experience with an average 360o feedback score between 8 to 10 on a scale of 10, all in the cadre of Lecturer (Selection Grade-I) Level - 12.'),
(34, 'Minimum 8 years of experience with an average 360o feedback score between 5 to < 8 on a scale of 10, all in the cadre of Lecturer (Selection Grade-I) Level - 12.', 'Minimum 8 years of experience with an average 360 degree feedback score between 5 to < 8 on a scale of 10, all in the cadre of Lecturer (Selection Grade-I) Level - 12.'),
(35, 'Ph. D. in relevant field and First Class at Bachelor’s or Master’s level in the relevant discipline; minimum of 12 years of experience in Teaching/ Research/ Industry, out of which at least 2 years shall be post Ph.D. experience minimum at the level of Lecturer (Selection Grade-I). ', 'Ph. D. in relevant field and First Class at Bachelor’s or Master’s level in the relevant discipline; minimum of 12 years of experience in Teaching/ Research/ Industry, out of which at least 2 years shall be post Ph.D. experience minimum at the level of Lecturer (Selection Grade-I).'),
(36, 'Bachelor’s and Master’s Degree in relevant discipline with minimum of 15 years of experience in Teaching / Research / Industry, out of which at least 3 years shall be at the level of Lecturer (Selection Grade - II)', 'Bachelor’s and Master’s Degree in relevant discipline with minimum of 15 years of experience in Teaching / Research / Industry, out of which at least 3 years shall be at the level of Lecturer (Selection Grade - II)'),
(37, 'Ph.D. and First Class at either Bachelor’s or Master’s level in the relevant discipline with minimum of 16 years of experience in Teaching / Research/ Industry, out of which at least 3 years shall be post Ph.D. experience and 5 years of experience not below the level of HoD', 'Ph.D. and First Class at either Bachelor’s or Master’s level in the relevant discipline with minimum of 16 years of experience in Teaching / Research/ Industry, out of which at least 3 years shall be post Ph.D. experience and 5 years of experience not below the level of HoD'),
(38, 'First Class at Bachelor’s or Master’s level in the relevant discipline and minimum of 20 years of experience in Teaching / Research/ Industry, out of which 5 years of experience not below the level of HoD. ', 'First Class at Bachelor’s or Master’s level in the relevant discipline and minimum of 20 years of experience in Teaching / Research/ Industry, out of which 5 years of experience not below the level of HoD.'),
(39, 'Ph.D. and First class at Bachelor’s or Master’s level in the relevant discipline with minimum of 16 years of experience in Teaching / Research/ Industry out of which 5 years shall be at the level of HoD and 3 years shall be post Ph.D. Experience; An average 360 degree feedback score of 5 to < 8 out of 10 for last 5 years.', 'Ph.D. and First class at Bachelor’s or Master’s level in the relevant discipline with minimum of 16 years of experience in Teaching / Research/ Industry out of which 5 years shall be at the level of HoD and 3 years shall be post Ph.D. Experience; An average 360 degree feedback score of 5 to < 8 out of 10 for last 5 years.'),
(40, 'First class at Bachelor’s or Master’s level in the relevant discipline; minimum of 20 years of experience in Teaching / Research/ Industry, out of which 7 years shall be not below the level of HoD. An average 360o feedback score of 8 to 10 out of 10 for last 5 years.', 'First class at Bachelor’s or Master’s level in the relevant discipline; minimum of 20 years of experience in Teaching / Research/ Industry, out of which 7 years shall be not below the level of HoD. An average 360o feedback score of 8 to 10 out of 10 for last 5 years.');

-- --------------------------------------------------------

--
-- Table structure for table `student_feedback`
--

CREATE TABLE `student_feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `faculty_id` varchar(40) NOT NULL,
  `activity_name` varchar(40) NOT NULL,
  `points` varchar(40) NOT NULL,
  `keywords` varchar(40) NOT NULL,
  `remarks` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_feedback`
--

INSERT INTO `student_feedback` (`id`, `student_id`, `faculty_id`, `activity_name`, `points`, `keywords`, `remarks`) VALUES
(145, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(146, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(147, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(148, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(149, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(150, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(151, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(152, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(153, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(154, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(155, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(156, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(157, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(158, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(159, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(160, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(161, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(162, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(163, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(164, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(165, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(166, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(167, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(168, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(169, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(170, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(171, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(172, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(173, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(174, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(175, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(176, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(177, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(178, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(179, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(180, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(181, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(182, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(183, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(184, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(185, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(186, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(187, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(188, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(189, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(190, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(191, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(192, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(193, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(194, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(195, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(196, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(197, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(198, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(199, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(200, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(201, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(202, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(203, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(204, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(205, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(206, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(207, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(208, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(209, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(210, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(211, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(212, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(213, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(214, 'mike', 'facultyID-Test123', 'Support for the development of Studentsâ', '1', 'Good', 'Great'),
(215, 'mike', 'facultyID-Test123', 'Feedback provided on Studentsâ€™ progres', '1', 'Good', 'Great'),
(216, 'mike', 'facultyID-Test123', '', '', 'Good', 'Great'),
(217, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(218, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(219, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(220, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(221, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(222, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(223, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(224, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(225, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(226, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(227, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(228, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(229, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(230, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(231, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(232, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(233, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(234, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(235, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(236, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(237, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(238, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(239, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(240, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(241, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(242, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(243, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(244, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(245, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(246, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(247, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(248, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(249, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(250, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(251, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(252, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(253, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(254, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(255, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(256, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(257, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(258, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(259, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(260, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(261, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(262, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(263, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(264, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(265, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(266, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(267, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(268, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(269, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(270, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(271, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(272, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(273, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(274, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(275, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(276, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(277, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(278, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(279, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(280, 'mike', 'facultyID-Test123', '', '1', 'Good', 'Great'),
(281, 'mike', 'facultyID-Test123', 'Has the Teacher covered entire Syllabus ', '1', 'Good', 'Great'),
(282, 'mike', 'facultyID-Test123', 'Has the Teacher covered relevant topics ', '1', 'Good', 'Great'),
(283, 'mike', 'facultyID-Test123', 'Effectiveness of Teacher in terms of :(a', '1', 'Good', 'Great'),
(284, 'mike', 'facultyID-Test123', 'Pace on which contents were covered', '1', 'Good', 'Great'),
(285, 'mike', 'facultyID-Test123', 'Motivation and inspiration for students ', '1', 'Good', 'Great'),
(286, 'mike', 'facultyID-Test123', 'Support for the development of Students’', '1', 'Good', 'Great'),
(287, 'mike', 'facultyID-Test123', 'Feedback provided on Students’ progress', '1', 'Good', 'Great'),
(288, 'mike', 'facultyID-Test123', '', '', 'Good', 'Great');

-- --------------------------------------------------------

--
-- Table structure for table `student_feedback_score`
--

CREATE TABLE `student_feedback_score` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `total_points` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_feedback_score`
--

INSERT INTO `student_feedback_score` (`id`, `student_id`, `faculty_id`, `total_points`) VALUES
(1, 'mike', 'facultyID-Test123', '8'),
(2, 'mike', 'facultyID-Test123', '1'),
(3, 'mike', 'facultyID-Test123', '1'),
(4, 'mike', 'facultyID-Test123', '1'),
(5, 'mike', 'facultyID-Test123', '1'),
(6, 'mike', 'facultyID-Test123', '1'),
(7, 'mike', 'facultyID-Test123', '1'),
(8, 'mike', 'facultyID-Test123', '1'),
(9, 'mike', 'facultyID-Test123', '1'),
(10, 'mike', 'facultyID-Test123', '1'),
(11, 'mike', 'facultyID-Test123', '1'),
(12, 'mike', 'facultyID-Test123', '1'),
(13, 'mike', 'facultyID-Test123', '1'),
(14, 'mike', 'facultyID-Test123', '1'),
(15, 'mike', 'facultyID-Test123', '1'),
(16, 'mike', 'facultyID-Test123', '1'),
(17, 'mike', 'facultyID-Test123', '1'),
(18, 'mike', 'facultyID-Test123', '1'),
(19, 'mike', 'facultyID-Test123', '1'),
(20, 'mike', 'facultyID-Test123', '1'),
(21, 'mike', 'facultyID-Test123', '1'),
(22, 'mike', 'facultyID-Test123', '1'),
(23, 'mike', 'facultyID-Test123', '1'),
(24, 'mike', 'facultyID-Test123', '1'),
(25, 'mike', 'facultyID-Test123', '1'),
(26, 'mike', 'facultyID-Test123', '1'),
(27, 'mike', 'facultyID-Test123', '1'),
(28, 'mike', 'facultyID-Test123', '1'),
(29, 'mike', 'facultyID-Test123', '1'),
(30, 'mike', 'facultyID-Test123', '1'),
(31, 'mike', 'facultyID-Test123', '1'),
(32, 'mike', 'facultyID-Test123', '1'),
(33, 'mike', 'facultyID-Test123', '1'),
(34, 'mike', 'facultyID-Test123', '1'),
(35, 'mike', 'facultyID-Test123', '1'),
(36, 'mike', 'facultyID-Test123', '1'),
(37, 'mike', 'facultyID-Test123', '1'),
(38, 'mike', 'facultyID-Test123', '1'),
(39, 'mike', 'facultyID-Test123', '1'),
(40, 'mike', 'facultyID-Test123', '1'),
(41, 'mike', 'facultyID-Test123', '1'),
(42, 'mike', 'facultyID-Test123', '1'),
(43, 'mike', 'facultyID-Test123', '1'),
(44, 'mike', 'facultyID-Test123', '1'),
(45, 'mike', 'facultyID-Test123', '1'),
(46, 'mike', 'facultyID-Test123', '1'),
(47, 'mike', 'facultyID-Test123', '1'),
(48, 'mike', 'facultyID-Test123', '1'),
(49, 'mike', 'facultyID-Test123', '1'),
(50, 'mike', 'facultyID-Test123', '1'),
(51, 'mike', 'facultyID-Test123', '1'),
(52, 'mike', 'facultyID-Test123', '1'),
(53, 'mike', 'facultyID-Test123', '1'),
(54, 'mike', 'facultyID-Test123', '1'),
(55, 'mike', 'facultyID-Test123', '1'),
(56, 'mike', 'facultyID-Test123', '1'),
(57, 'mike', 'facultyID-Test123', '1'),
(58, 'mike', 'facultyID-Test123', '1'),
(59, 'mike', 'facultyID-Test123', '1'),
(60, 'mike', 'facultyID-Test123', '1'),
(61, 'mike', 'facultyID-Test123', '1'),
(62, 'mike', 'facultyID-Test123', '1'),
(63, 'mike', 'facultyID-Test123', '1'),
(64, 'mike', 'facultyID-Test123', '1'),
(65, 'mike', 'facultyID-Test123', '8'),
(66, 'mike', 'facultyID-Test123', '1'),
(67, 'mike', 'facultyID-Test123', '1'),
(68, 'mike', 'facultyID-Test123', '1'),
(69, 'mike', 'facultyID-Test123', '1'),
(70, 'mike', 'facultyID-Test123', '1'),
(71, 'mike', 'facultyID-Test123', '1'),
(72, 'mike', 'facultyID-Test123', '1'),
(73, 'mike', 'facultyID-Test123', '1'),
(74, 'mike', 'facultyID-Test123', '1'),
(75, 'mike', 'facultyID-Test123', '1'),
(76, 'mike', 'facultyID-Test123', '1'),
(77, 'mike', 'facultyID-Test123', '1'),
(78, 'mike', 'facultyID-Test123', '1'),
(79, 'mike', 'facultyID-Test123', '1'),
(80, 'mike', 'facultyID-Test123', '1'),
(81, 'mike', 'facultyID-Test123', '1'),
(82, 'mike', 'facultyID-Test123', '1'),
(83, 'mike', 'facultyID-Test123', '1'),
(84, 'mike', 'facultyID-Test123', '1'),
(85, 'mike', 'facultyID-Test123', '1'),
(86, 'mike', 'facultyID-Test123', '1'),
(87, 'mike', 'facultyID-Test123', '1'),
(88, 'mike', 'facultyID-Test123', '1'),
(89, 'mike', 'facultyID-Test123', '1'),
(90, 'mike', 'facultyID-Test123', '1'),
(91, 'mike', 'facultyID-Test123', '1'),
(92, 'mike', 'facultyID-Test123', '1'),
(93, 'mike', 'facultyID-Test123', '1'),
(94, 'mike', 'facultyID-Test123', '1'),
(95, 'mike', 'facultyID-Test123', '1'),
(96, 'mike', 'facultyID-Test123', '1'),
(97, 'mike', 'facultyID-Test123', '1'),
(98, 'mike', 'facultyID-Test123', '1'),
(99, 'mike', 'facultyID-Test123', '1'),
(100, 'mike', 'facultyID-Test123', '1'),
(101, 'mike', 'facultyID-Test123', '1'),
(102, 'mike', 'facultyID-Test123', '1'),
(103, 'mike', 'facultyID-Test123', '1'),
(104, 'mike', 'facultyID-Test123', '1'),
(105, 'mike', 'facultyID-Test123', '1'),
(106, 'mike', 'facultyID-Test123', '1'),
(107, 'mike', 'facultyID-Test123', '1'),
(108, 'mike', 'facultyID-Test123', '1'),
(109, 'mike', 'facultyID-Test123', '1'),
(110, 'mike', 'facultyID-Test123', '1'),
(111, 'mike', 'facultyID-Test123', '1'),
(112, 'mike', 'facultyID-Test123', '1'),
(113, 'mike', 'facultyID-Test123', '1'),
(114, 'mike', 'facultyID-Test123', '1'),
(115, 'mike', 'facultyID-Test123', '1'),
(116, 'mike', 'facultyID-Test123', '1'),
(117, 'mike', 'facultyID-Test123', '1'),
(118, 'mike', 'facultyID-Test123', '1'),
(119, 'mike', 'facultyID-Test123', '1'),
(120, 'mike', 'facultyID-Test123', '1'),
(121, 'mike', 'facultyID-Test123', '1'),
(122, 'mike', 'facultyID-Test123', '1'),
(123, 'mike', 'facultyID-Test123', '1'),
(124, 'mike', 'facultyID-Test123', '1'),
(125, 'mike', 'facultyID-Test123', '1'),
(126, 'mike', 'facultyID-Test123', '1'),
(127, 'mike', 'facultyID-Test123', '1'),
(128, 'mike', 'facultyID-Test123', '1'),
(129, 'mike', 'facultyID-Test123', '0'),
(130, 'mike', 'facultyID-Test123', '1'),
(131, 'mike', 'facultyID-Test123', '1'),
(132, 'mike', 'facultyID-Test123', '1'),
(133, 'mike', 'facultyID-Test123', '1'),
(134, 'mike', 'facultyID-Test123', '1'),
(135, 'mike', 'facultyID-Test123', '1'),
(136, 'mike', 'facultyID-Test123', '1'),
(137, 'mike', 'facultyID-Test123', '1'),
(138, 'mike', 'facultyID-Test123', '1'),
(139, 'mike', 'facultyID-Test123', '1'),
(140, 'mike', 'facultyID-Test123', '1'),
(141, 'mike', 'facultyID-Test123', '1'),
(142, 'mike', 'facultyID-Test123', '1'),
(143, 'mike', 'facultyID-Test123', '1'),
(144, 'mike', 'facultyID-Test123', '1'),
(145, 'mike', 'facultyID-Test123', '1'),
(146, 'mike', 'facultyID-Test123', '1'),
(147, 'mike', 'facultyID-Test123', '1'),
(148, 'mike', 'facultyID-Test123', '1'),
(149, 'mike', 'facultyID-Test123', '1'),
(150, 'mike', 'facultyID-Test123', '1'),
(151, 'mike', 'facultyID-Test123', '1'),
(152, 'mike', 'facultyID-Test123', '1'),
(153, 'mike', 'facultyID-Test123', '1'),
(154, 'mike', 'facultyID-Test123', '1'),
(155, 'mike', 'facultyID-Test123', '1'),
(156, 'mike', 'facultyID-Test123', '1'),
(157, 'mike', 'facultyID-Test123', '1'),
(158, 'mike', 'facultyID-Test123', '1'),
(159, 'mike', 'facultyID-Test123', '1'),
(160, 'mike', 'facultyID-Test123', '1'),
(161, 'mike', 'facultyID-Test123', '1'),
(162, 'mike', 'facultyID-Test123', '1'),
(163, 'mike', 'facultyID-Test123', '1'),
(164, 'mike', 'facultyID-Test123', '1'),
(165, 'mike', 'facultyID-Test123', '1'),
(166, 'mike', 'facultyID-Test123', '1'),
(167, 'mike', 'facultyID-Test123', '1'),
(168, 'mike', 'facultyID-Test123', '1'),
(169, 'mike', 'facultyID-Test123', '1'),
(170, 'mike', 'facultyID-Test123', '1'),
(171, 'mike', 'facultyID-Test123', '1'),
(172, 'mike', 'facultyID-Test123', '1'),
(173, 'mike', 'facultyID-Test123', '1'),
(174, 'mike', 'facultyID-Test123', '1'),
(175, 'mike', 'facultyID-Test123', '1'),
(176, 'mike', 'facultyID-Test123', '1'),
(177, 'mike', 'facultyID-Test123', '1'),
(178, 'mike', 'facultyID-Test123', '1'),
(179, 'mike', 'facultyID-Test123', '1'),
(180, 'mike', 'facultyID-Test123', '1'),
(181, 'mike', 'facultyID-Test123', '1'),
(182, 'mike', 'facultyID-Test123', '1'),
(183, 'mike', 'facultyID-Test123', '1'),
(184, 'mike', 'facultyID-Test123', '1'),
(185, 'mike', 'facultyID-Test123', '1'),
(186, 'mike', 'facultyID-Test123', '1'),
(187, 'mike', 'facultyID-Test123', '1'),
(188, 'mike', 'facultyID-Test123', '1'),
(189, 'mike', 'facultyID-Test123', '1'),
(190, 'mike', 'facultyID-Test123', '1'),
(191, 'mike', 'facultyID-Test123', '1'),
(192, 'mike', 'facultyID-Test123', '1'),
(193, 'mike', 'facultyID-Test123', '1'),
(194, 'mike', 'facultyID-Test123', '1'),
(195, 'mike', 'facultyID-Test123', '1'),
(196, 'mike', 'facultyID-Test123', '1'),
(197, 'mike', 'facultyID-Test123', '1'),
(198, 'mike', 'facultyID-Test123', '1'),
(199, 'mike', 'facultyID-Test123', '1'),
(200, 'mike', 'facultyID-Test123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_name`
--

CREATE TABLE `tbl_name` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_name`
--

INSERT INTO `tbl_name` (`id`, `name`) VALUES
(1, 'pjp'),
(2, 'ggg'),
(3, 'fg'),
(4, 're'),
(5, 'activity2'),
(6, 'activity2'),
(7, 'credit2'),
(8, 'credit1'),
(9, 'jgjghjghjhg'),
(10, 'jghjghj');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_process`
--

CREATE TABLE `teaching_process` (
  `id` int(11) NOT NULL,
  `year` varchar(11) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `course` varchar(20) NOT NULL,
  `number_schedule_class` varchar(20) NOT NULL,
  `number_actually_held_class` varchar(20) NOT NULL,
  `proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technical_min_qualifications`
--

CREATE TABLE `technical_min_qualifications` (
  `id` int(11) NOT NULL,
  `qualification_name` varchar(1000) NOT NULL,
  `meta_qualification` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_min_qualifications`
--

INSERT INTO `technical_min_qualifications` (`id`, `qualification_name`, `meta_qualification`) VALUES
(1, 'B. E. / B. Tech. / B. S. and M. E. / M. Tech. / M. S. or Integrated M. Tech. in relevant branch\r\nwith first class or equivalent in any one of the degrees.', 'B. E. / B. Tech. / B. S. and M. E. / M. Tech. / M. S. or Integrated M. Tech. in relevant branch\r\nwith first class or equivalent in any one of the degrees.'),
(2, 'Bachelor’s Degree in any discipline and Master’s Degree in Business Administration / PGDM /\r\nC. A. / ICWA/ M. Com. with First Class or equivalent and two years of professional experience\r\nafter acquiring the degree of Master’s degree.', 'Bachelor’s Degree in any discipline and Master’s Degree in Business Administration / PGDM /\r\nC. A. / ICWA/ M. Com. with First Class or equivalent and two years of professional experience\r\nafter acquiring the degree of Master’s degree.'),
(3, 'B. Pharm. and M. Pharm. in the relevant specialization with First Class or equivalent in any one\r\nof the two degrees.', 'B. Pharm. and M. Pharm. in the relevant specialization with First Class or equivalent in any one\r\nof the two degrees.'),
(4, 'B. E. / B. Tech. / B. S. and M.E. / M. Tech. / M. S. or Integrated M. Tech. in relevant branch with\r\nFirst Class or equivalent in any one of the degrees', 'B. E. / B. Tech. / B. S. and M.E. / M. Tech. / M. S. or Integrated M. Tech. in relevant branch with\r\nFirst Class or equivalent in any one of the degrees'),
(5, 'B. E., B. Tech. and MCA with First Class or equivalent in any one of the two degrees', 'B. E., B. Tech. and MCA with First Class or equivalent in any one of the two degrees'),
(6, 'Graduation of three years’ duration with Mathematics as a compulsory subject and MCA with\r\nFirst Class or equivalent with 2 years of relevant experience after acquiring degree of MCA', 'Graduation of three years’ duration with Mathematics as a compulsory subject and MCA with\r\nFirst Class or equivalent with 2 years of relevant experience after acquiring degree of MCA'),
(7, 'Minimum 4 years Bachelor’s Degree in HMCT and Master’s Degree in HMCT or in relevant\r\ndisciplines with First Class or equivalent in any one of the two degrees.', 'Minimum 4 years Bachelor’s Degree in HMCT and Master’s Degree in HMCT or in relevant\r\ndisciplines with First Class or equivalent in any one of the two degrees.'),
(8, 'Minimum 4 years Bachelor’s Degree in HMCT with First Class or equivalent and minimum of 5\r\nyears of relevant experience at a managerial level not less than Assistant Manager in a 4 - star\r\nHotel or in a similar position in the hospitality industry/ tourism industry', 'Minimum 4 years Bachelor’s Degree in HMCT with First Class or equivalent and minimum of 5\r\nyears of relevant experience at a managerial level not less than Assistant Manager in a 4 - star\r\nHotel or in a similar position in the hospitality industry/ tourism industry'),
(9, 'B. Arch. and M. Arch. or equivalent Master’s degree in an allied field with First Class in any one\r\nof the two degrees, and minimum 2 years’ experience in the Architecture profession.', 'B. Arch. and M. Arch. or equivalent Master’s degree in an allied field with First Class in any one\r\nof the two degrees, and minimum 2 years’ experience in the Architecture profession.'),
(10, 'B. Arch. with First class or equivalent and minimum of 5 years’ experience in the Architecture\r\nprofession', 'B. Arch. with First class or equivalent and minimum of 5 years’ experience in the Architecture\r\nprofession'),
(11, 'Bachelor’s degree in Architecture / Planning / Civil Engineering or Master’s degree in\r\nGeography / Economics / Sociology or equivalent AND Master of Planning or equivalent with\r\nFirst class or equivalent in either in Master of Planning or any above degrees with 2 years of\r\nrelevant experience', 'Bachelor’s degree in Architecture / Planning / Civil Engineering or Master’s degree in\r\nGeography / Economics / Sociology or equivalent AND Master of Planning or equivalent with\r\nFirst class or equivalent in either in Master of Planning or any above degrees with 2 years of\r\nrelevant experience'),
(12, 'Bachelor’s Degree or minimum 4 year Diploma in any one of the streams of Design, Fine Arts,\r\nApplied Arts and Architecture or Bachelor’s degree in Engineering with First class or equivalent', 'Bachelor’s Degree or minimum 4 year Diploma in any one of the streams of Design, Fine Arts,\r\nApplied Arts and Architecture or Bachelor’s degree in Engineering with First class or equivalent'),
(13, 'Master’s degree or equivalent Post Graduate Diploma in relevant disciplines with First Class or\r\nequivalent in a concerned / relevant /allied subject of Industrial Design / Visual Communication /\r\nFine Arts / Applied Arts / Architecture / Interaction Design / New Media Studies / Design\r\nManagement / Ergonomics / Human Factors Engineering / Indian Craft Studies and related fields\r\nof Engineering or Design.', 'Master’s degree or equivalent Post Graduate Diploma in relevant disciplines with First Class or\r\nequivalent in a concerned / relevant /allied subject of Industrial Design / Visual Communication /\r\nFine Arts / Applied Arts / Architecture / Interaction Design / New Media Studies / Design\r\nManagement / Ergonomics / Human Factors Engineering / Indian Craft Studies and related fields\r\nof Engineering or Design.'),
(14, 'Minimum 2 years of professional design experience in Industry / research organization / Design\r\nstudios', 'Minimum 2 years of professional design experience in Industry / research organization / Design\r\nstudios'),
(15, 'Bachelor’s and Master’s degree in the relevant branch with First Class or equivalent in any one\r\nof the two degrees and minimum 2 years of relevant professional experience', 'Bachelor’s and Master’s degree in the relevant branch with First Class or equivalent in any one\r\nof the two degrees and minimum 2 years of relevant professional experience'),
(16, 'The qualifications for recruitment and promotions for faculty in the disciplines of Basic Sciences,\r\nSocial Science and Humanities shall be as per the UGC Notification No. F.1-2/2017(EC/PS)\r\nDated 18th July, 2018 and UGC guidelines issued from time to time.', 'The qualifications for recruitment and promotions for faculty in the disciplines of Basic Sciences,\r\nSocial Science and Humanities shall be as per the UGC Notification No. F.1-2/2017(EC/PS)\r\nDated 18th July, 2018 and UGC guidelines issued from time to time.'),
(17, 'Qualifications prescribed for the post of Assistant Professor', 'Qualifications prescribed for the post of Assistant Professor'),
(18, 'Qualifications prescribed for the post of Assistant Professor', 'Qualifications prescribed for the post of Assistant Professor'),
(19, 'Should have satisfied any one of the below mentioned set of requirements', 'Should have satisfied any one of the below mentioned set of requirements'),
(20, 'Qualifications as prescribed for the post of Assistant Professor (Senior Scale)', 'Qualifications as prescribed for the post of Assistant Professor (Senior Scale)'),
(21, 'Should have completed minimum training requirements as per Annexure - III.', 'Should have completed minimum training requirements as per Annexure - III.'),
(22, 'Should have satisfied any one of the below mentioned set of requirements.', 'Should have satisfied any one of the below mentioned set of requirements.'),
(23, 'Ph.D. degree in the relevant field and First class or equivalent at either Bachelor’s or Master’s\r\nlevel in the relevant branch', 'Ph.D. degree in the relevant field and First class or equivalent at either Bachelor’s or Master’s\r\nlevel in the relevant branch'),
(24, 'At least total 6 research publications in SCI journals / UGC / AICTE approved list of journals', 'At least total 6 research publications in SCI journals / UGC / AICTE approved list of journals'),
(25, 'Minimum of 8 years of experience in teaching / research / industry out of which at least 2 years\r\nshall be Post Ph.D. experience.', 'Minimum of 8 years of experience in teaching / research / industry out of which at least 2 years\r\nshall be Post Ph.D. experience.'),
(26, 'Ph. D. degree in relevant field and First class or equivalent at either Bachelor’s or Master’s level\r\nin the relevant branch', 'Ph. D. degree in relevant field and First class or equivalent at either Bachelor’s or Master’s level\r\nin the relevant branch'),
(27, 'Should have completed minimum training requirements as per Annexure – III', 'Should have completed minimum training requirements as per Annexure – III'),
(28, 'Should have satisfied any one of the below mentioned set of requirements.', 'Should have satisfied any one of the below mentioned set of requirements.'),
(29, 'Ph. D. degree in relevant field and First class or equivalent at either Bachelor’s or Master’s level\r\nin the relevant branch', 'Ph. D. degree in relevant field and First class or equivalent at either Bachelor’s or Master’s level\r\nin the relevant branch'),
(30, 'Minimum of 10 years of experience in teaching / research / industry out of which at least 3 years\r\nshall be at a post equivalent to that of an Associate Professor', 'Minimum of 10 years of experience in teaching / research / industry out of which at least 3 years\r\nshall be at a post equivalent to that of an Associate Professor'),
(31, 'At least 6 research publications at the level of Associate Professor in SCI journals / UGC /\r\nAICTE approved list of journals and at least 2 successful Ph.D. guided as Supervisor / Cosupervisor till the date of eligibility of promotion', 'At least 6 research publications at the level of Associate Professor in SCI journals / UGC /\r\nAICTE approved list of journals and at least 2 successful Ph.D. guided as Supervisor / Cosupervisor till the date of eligibility of promotion'),
(32, 'At least 10 research publications at the level of Associate Professor in SCI journals / UGC /\r\nAICTE approved list of journals till the date of eligibility of promotion.', 'At least 10 research publications at the level of Associate Professor in SCI journals / UGC /\r\nAICTE approved list of journals till the date of eligibility of promotion.'),
(33, 'Ph. D. degree in relevant field and First Class or equivalent at either Bachelor’s or Master’s level\r\nin the relevant branch', 'Ph. D. degree in relevant field and First Class or equivalent at either Bachelor’s or Master’s level\r\nin the relevant branch'),
(34, 'Should have satisfied any one of the below mentioned set of requirements', 'Should have satisfied any one of the below mentioned set of requirements'),
(35, 'Ph. D. degree in the relevant field', 'Ph. D. degree in the relevant field'),
(36, 'Minimum ten years of experience in the cadre of Professor', 'Minimum ten years of experience in the cadre of Professor'),
(37, 'At least 8 research publications in SCI journals / UGC / AICTE approved list of journals, should\r\nhave at least 2 successful Ph. D. guided as Supervisor / Co-Supervisor as a Professor', 'At least 8 research publications in SCI journals / UGC / AICTE approved list of journals, should\r\nhave at least 2 successful Ph. D. guided as Supervisor / Co-Supervisor as a Professor'),
(38, 'At least 8 research publications in SCI journals / UGC / AICTE approved list of journals, should\r\nhave provided academic leadership as institution head at least for 3 years at the level of Professor', 'At least 8 research publications in SCI journals / UGC / AICTE approved list of journals, should\r\nhave provided academic leadership as institution head at least for 3 years at the level of Professor'),
(39, 'At least 8 research publications in SCI journals / UGC / AICTE approved list of journals, should\r\nhave provided educational leadership at state / national level at least for 3 years at the level of\r\nProfessor.', 'At least 8 research publications in SCI journals / UGC / AICTE approved list of journals, should\r\nhave provided educational leadership at state / national level at least for 3 years at the level of\r\nProfessor.'),
(40, 'At least one patent awarded', 'At least one patent awarded'),
(41, 'Development of one MOOC course applicable at national platform', 'Development of one MOOC course applicable at national platform'),
(42, 'Ph. D. degree and First Class or equivalent at either Bachelor’s or Master’s level in the relevant\r\nbranch', 'Ph. D. degree and First Class or equivalent at either Bachelor’s or Master’s level in the relevant\r\nbranch'),
(43, 'At least two successful Ph.D. guided as supervisor / Co-Supervisor and minimum 8 research\r\npublications in SCI journals / UGC / AICTE approved list of journals', 'At least two successful Ph.D. guided as supervisor / Co-Supervisor and minimum 8 research\r\npublications in SCI journals / UGC / AICTE approved list of journals'),
(44, 'Minimum 15 years of experience in teaching / research/ industry, out of which at least 3 years\r\nshall be at the post equivalent to that of Professor', 'Minimum 15 years of experience in teaching / research/ industry, out of which at least 3 years\r\nshall be at the post equivalent to that of Professor');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `university_code` varchar(20) NOT NULL,
  `university_name` varchar(50) NOT NULL,
  `university_state` varchar(40) NOT NULL,
  `technical_diploma` varchar(20) NOT NULL,
  `is_state` varchar(4) NOT NULL,
  `university_district` varchar(30) NOT NULL,
  `university_postalCode` varchar(30) NOT NULL,
  `university_address` varchar(50) NOT NULL,
  `university_contact` varchar(12) NOT NULL,
  `university_email` varchar(22) NOT NULL,
  `university_logo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `university_code`, `university_name`, `university_state`, `technical_diploma`, `is_state`, `university_district`, `university_postalCode`, `university_address`, `university_contact`, `university_email`, `university_logo`) VALUES
(1, '', 'University', '12434', 'Techical', 'NA', 'Gzb', '2232123', 'Address', '34342234', 'university@gmail.com', ''),
(2, '', 'University', '12434', 'Techical', 'NA', 'Gzb', '2232123', 'Address', '34342234', 'university@gmail.com', '5cfb28d73362f2.44622285.jpg'),
(3, '', 'sdasd', 'dasd', 'Diploma', 'NA', 'asd', '23324', 'asda', 'dad', 'sad@sad.com', '5cfd31f2ed9883.26450128.jpg'),
(4, '', 'Unive', '232139', 'Diploma', 'NA', '773842', '83298', 'Address', '89348932', 'address@address.com', '5cfd32679fc148.73299989.jpg'),
(5, '', 'Univeristy ABC', 'Uttarakhand', 'Techical', 'NA', 'Dehradun', '248001', 'Dehradun', '123456', 'abc@gmail.com', ''),
(6, '', 'Univeristy ABC', 'Uttarakhand', 'Techical', 'NA', 'Dehradun', '248001', 'Dehradun', '123456', 'abc@gmail.com', ''),
(7, '', '', '', 'Techical', 'NA', '', '', '', '', '', ''),
(8, '', '', '', 'Techical', 'NA', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `login_type` varchar(12) NOT NULL,
  `institution_id` int(20) NOT NULL,
  `username` varchar(22) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `login_type`, `institution_id`, `username`, `password`) VALUES
(1, 'technical', 0, 'technical', 'technical'),
(2, 'diploma', 0, 'diploma', 'diploma'),
(3, 'student', 0, 'mike', 'mike'),
(4, 'institution', 12345678, 'admin', 'admin'),
(5, 'hod', 12345678, 'hod', 'hod'),
(6, 'faculty', 12345678, 'faculty', 'faculty'),
(7, 'student', 12345678, 'student', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acr`
--
ALTER TABLE `acr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acr_points`
--
ALTER TABLE `acr_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_technical`
--
ALTER TABLE `faculty_technical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `min_qualifications`
--
ALTER TABLE `min_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_feedback`
--
ALTER TABLE `student_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_feedback_score`
--
ALTER TABLE `student_feedback_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_name`
--
ALTER TABLE `tbl_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teaching_process`
--
ALTER TABLE `teaching_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_min_qualifications`
--
ALTER TABLE `technical_min_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acr`
--
ALTER TABLE `acr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `acr_points`
--
ALTER TABLE `acr_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty_technical`
--
ALTER TABLE `faculty_technical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `min_qualifications`
--
ALTER TABLE `min_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `student_feedback`
--
ALTER TABLE `student_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `student_feedback_score`
--
ALTER TABLE `student_feedback_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `tbl_name`
--
ALTER TABLE `tbl_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teaching_process`
--
ALTER TABLE `teaching_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
