-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2019 at 02:08 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `Course_Code` varchar(100) NOT NULL,
  `Course_Name` varchar(100) NOT NULL,
  `Course_Desc` varchar(100) NOT NULL,
  `Start_Date` varchar(100) NOT NULL,
  `End_Date` varchar(100) NOT NULL,
  `Scope` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_Code`, `Course_Name`, `Course_Desc`, `Start_Date`, `End_Date`, `Scope`) VALUES
('JAVA123', 'JAVA', 'It is a bascially programming language', '2019-02-04', '2019-06-14', 'Though learn this course the student get the good job in their future'),
('PYTHON123', 'PYTHON', 'It is a bascially programming language', '2019-02-04', '2019-06-14', 'Though learn this course the student get the good job in their future'),
('C123', 'C++', 'It is a bascially programming language', '2019-02-21', '2019-05-01', 'Though learn this course the student get the good job in their future');

-- --------------------------------------------------------

--
-- Table structure for table `insert_question`
--

CREATE TABLE IF NOT EXISTS `insert_question` (
  `Topic_Code` varchar(100) NOT NULL,
  `Question_Code` varchar(100) NOT NULL,
  `Question_Name` varchar(200) NOT NULL,
  `Option_A` varchar(100) NOT NULL,
  `Option_B` varchar(100) NOT NULL,
  `Option_C` varchar(100) NOT NULL,
  `Option_D` varchar(100) NOT NULL,
  `Answer` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insert_question`
--


-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Id` varchar(50) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `MiddleName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `FatherName` varchar(20) NOT NULL,
  `OccuptionF` varchar(20) NOT NULL,
  `FatherNo` varchar(20) NOT NULL,
  `MotherName` varchar(20) NOT NULL,
  `OccuptionM` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `PhoneNO` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `CollegeName` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Branch` varchar(100) NOT NULL,
  `session1` varchar(20) NOT NULL,
  `BoardX` varchar(20) NOT NULL,
  `PercentageX` varchar(20) NOT NULL,
  `YearOfPassingX` varchar(20) NOT NULL,
  `BoardXII` varchar(20) NOT NULL,
  `PercentageXII` varchar(20) NOT NULL,
  `YearOfPassingXII` varchar(20) NOT NULL,
  `Religion` varchar(30) NOT NULL,
  `Cast` varchar(20) NOT NULL,
  `CityP` varchar(30) NOT NULL,
  `DistrictP` varchar(30) NOT NULL,
  `PinCodeP` varchar(30) NOT NULL,
  `AreaP` varchar(30) NOT NULL,
  `LocalityP` varchar(50) NOT NULL,
  `CountryP` varchar(30) NOT NULL,
  `HouseNoP` varchar(30) NOT NULL,
  `AddharNo` varchar(30) NOT NULL,
  `CityL` varchar(30) NOT NULL,
  `DistrictL` varchar(30) NOT NULL,
  `PinCodeL` varchar(30) NOT NULL,
  `AreaL` varchar(30) NOT NULL,
  `LocalityL` varchar(50) NOT NULL,
  `CountryL` varchar(30) NOT NULL,
  `HouseNoL` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `FirstName`, `MiddleName`, `LastName`, `FatherName`, `OccuptionF`, `FatherNo`, `MotherName`, `OccuptionM`, `Gender`, `DOB`, `PhoneNO`, `Course`, `CollegeName`, `Email`, `Branch`, `session1`, `BoardX`, `PercentageX`, `YearOfPassingX`, `BoardXII`, `PercentageXII`, `YearOfPassingXII`, `Religion`, `Cast`, `CityP`, `DistrictP`, `PinCodeP`, `AreaP`, `LocalityP`, `CountryP`, `HouseNoP`, `AddharNo`, `CityL`, `DistrictL`, `PinCodeL`, `AreaL`, `LocalityL`, `CountryL`, `HouseNoL`, `Password`) VALUES
('anshu624', '', '', '', '', '', '', '', '', 'null', '', '', 'JAVA', '', '', 'Computer And Science Engineering', '2000', '', '', '', '', '', '', '', 'GEN', 'BSB', 'UP', '', '', '', '94', 'null', '', 'UP', 'BSB', '', '', '', '94', 'null', '12345'),
('anshu672', 'Anshuman', 'Kumar', 'srivastava', 'Jitendra Srivastava', 'Service', '9336588477', 'Preeti', 'Housewife', 'M', '2019-02-14', '8510932973', 'PYTHON', 'rkgit', 'pranshus2@gmail.com', 'Computer And Science Engineering', '2000', 'up', '80', '2016', 'up', '80', '2016', 'hindu', 'OBC', 'BSB', 'UP', '201013', 'Govindpuram', 'gobinhg', '94', 'null', '310355454844', 'UP', 'BSB', '201013', 'govindpuam', 'krishnam', '94', 'null', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `Course_Code` varchar(100) NOT NULL,
  `Topic_Name` varchar(200) NOT NULL,
  `Topic_Code` varchar(200) NOT NULL,
  `About_Topic` varchar(200) NOT NULL,
  `Start_Date` varchar(100) NOT NULL,
  `End_Date` varchar(100) NOT NULL,
  `Total_Lecture` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`Course_Code`, `Topic_Name`, `Topic_Code`, `About_Topic`, `Start_Date`, `End_Date`, `Total_Lecture`) VALUES
('JAVA123', 'constructor', '121', 'no', '2004-12-21', '2016-02-22', '4'),
('PYTHON123', 'inhetance', '111', 'no', '2019-12-22', '2019-02-22', '4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
