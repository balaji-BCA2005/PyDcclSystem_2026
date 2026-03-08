
-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:00 PM
-- Server version: 8.0.45
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement_2026`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sec_ans1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_ans2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_ans3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `sec_ans1`, `sec_ans2`, `sec_ans3`) VALUES
(1, 'admin', 'admin123', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `job_role` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `required_skills` text COLLATE utf8mb4_general_ci NOT NULL,
  `required_cgpa` decimal(3,2) NOT NULL,
  `salary_package` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `experience_req` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `job_role`, `required_skills`, `required_cgpa`, `salary_package`, `experience_req`, `location`) VALUES
(1, 'Wipro Tech', 'Java Backend Developer', 'JAVA, SPRING, MYSQL', 6.50, '6.5 LPA', 'Fresher', 'Pune'),
(2, 'HCL Software', 'Python Developer', 'PYTHON, FLASK, MYSQL', 6.00, '5.5 LPA', 'Fresher', 'Chennai'),
(3, 'Accenture Digital', 'Frontend Developer', 'HTML, CSS, JAVASCRIPT', 6.50, '6.0 LPA', 'Fresher', 'Mumbai'),
(4, 'Capgemini India', 'React Developer', 'REACT, JAVASCRIPT, API', 7.00, '7.0 LPA', 'Fresher', 'Bangalore'),
(5, 'Cognizant Tech', 'Java Developer', 'JAVA, HIBERNATE, MYSQL', 6.50, '6.0 LPA', 'Fresher', 'Hyderabad'),
(6, 'IBM India', 'Cloud Support Engineer', 'AWS, LINUX, NETWORKING', 7.50, '10.0 LPA', 'Fresher', 'Bangalore'),
(7, 'Oracle Systems', 'SQL Developer', 'SQL, PL/SQL, DATABASE', 7.00, '9.0 LPA', 'Fresher', 'Pune'),
(8, 'Tech Mahindra', 'Full Stack Developer', 'JAVA, REACT, MYSQL', 6.50, '7.5 LPA', 'Fresher', 'Noida'),
(9, 'L&T Infotech', 'DevOps Engineer', 'DOCKER, AWS, LINUX', 7.00, '11.0 LPA', '0-1 Year', 'Mumbai'),
(10, 'Mindtree Ltd', 'UI Developer', 'HTML, CSS, BOOTSTRAP', 6.00, '5.0 LPA', 'Fresher', 'Chennai'),
(11, 'Zoho Corp', 'Backend Developer', 'JAVA, SPRING BOOT', 7.00, '8.0 LPA', 'Fresher', 'Chennai'),
(12, 'Paytm Labs', 'Android Developer', 'JAVA, ANDROID, API', 6.50, '7.5 LPA', 'Fresher', 'Noida'),
(13, 'PhonePe Tech', 'Node.js Developer', 'NODEJS, EXPRESS, MONGODB', 7.00, '10.0 LPA', 'Fresher', 'Bangalore'),
(14, 'Swiggy Instamart', 'React Developer', 'REACT, REDUX, CSS', 6.50, '9.0 LPA', 'Fresher', 'Bangalore'),
(15, 'Ola Electric', 'Data Analyst', 'PYTHON, SQL, POWER BI', 7.00, '11.0 LPA', '0-1 Year', 'Bangalore'),
(16, 'Byjus Learn', 'Web Developer', 'HTML, CSS, JS', 6.00, '5.5 LPA', 'Fresher', 'Bangalore'),
(17, 'Tata Elxsi', 'Embedded Engineer', 'C, C++, LINUX', 7.50, '12.0 LPA', 'Fresher', 'Pune'),
(18, 'Persistent Sys', 'Java Developer', 'JAVA, SPRING, REST API', 6.50, '7.0 LPA', 'Fresher', 'Pune'),
(19, 'Infosys BPM', 'Support Engineer', 'SQL, LINUX, NETWORKING', 6.00, '4.5 LPA', 'Fresher', 'Mysore'),
(20, 'Dell Tech', 'System Engineer', 'WINDOWS, LINUX, NETWORKING', 7.00, '8.5 LPA', 'Fresher', 'Hyderabad'),
(21, 'SAP Labs', 'ABAP Developer', 'SAP, ABAP', 7.50, '15.0 LPA', 'Fresher', 'Bangalore'),
(22, 'HP Enterprise', 'Cloud Engineer', 'AZURE, LINUX', 7.00, '12.0 LPA', '0-1 Year', 'Chennai'),
(23, 'Cisco India', 'Network Engineer', 'CCNA, NETWORKING', 7.00, '11.0 LPA', 'Fresher', 'Bangalore'),
(24, 'Intel Tech', 'Software Developer', 'C++, PYTHON', 8.00, '18.0 LPA', 'Fresher', 'Bangalore'),
(25, 'Qualcomm India', 'Embedded Developer', 'C, C++, RTOS', 8.00, '20.0 LPA', 'Fresher', 'Hyderabad'),
(26, 'Nvidia India', 'AI Engineer', 'PYTHON, TENSORFLOW', 8.50, '22.0 LPA', '0-1 Year', 'Bangalore'),
(27, 'PayU India', 'PHP Developer', 'PHP, MYSQL, API', 6.50, '8.0 LPA', 'Fresher', 'Gurugram'),
(28, 'Nykaa Tech', 'Frontend Dev', 'REACT, CSS, JS', 6.50, '9.0 LPA', 'Fresher', 'Mumbai'),
(29, 'Meesho Tech', 'Backend Dev', 'NODEJS, MYSQL', 7.00, '10.0 LPA', 'Fresher', 'Bangalore'),
(30, 'Freshworks', 'Full Stack Dev', 'JAVA, REACT', 7.50, '12.0 LPA', 'Fresher', 'Chennai'),
(31, 'Jio Platforms', 'Cloud Engineer', 'AWS, DOCKER', 7.00, '11.0 LPA', 'Fresher', 'Mumbai'),
(32, 'RedBus Tech', 'Web Developer', 'HTML, CSS, JS', 6.00, '6.0 LPA', 'Fresher', 'Bangalore'),
(33, 'Snapdeal Tech', 'Java Developer', 'JAVA, SPRING', 6.50, '7.0 LPA', 'Fresher', 'Noida'),
(34, 'Tata Digital', 'React Dev', 'REACT, REDUX', 7.00, '10.0 LPA', 'Fresher', 'Mumbai'),
(35, 'Walmart Global', 'Backend Engineer', 'JAVA, MYSQL', 8.00, '18.0 LPA', '0-1 Year', 'Bangalore'),
(36, 'EY Tech', 'Data Analyst', 'PYTHON, SQL', 7.00, '9.0 LPA', 'Fresher', 'Mumbai'),
(37, 'KPMG Digital', 'BI Developer', 'POWER BI, SQL', 6.50, '8.0 LPA', 'Fresher', 'Gurugram'),
(38, 'Deloitte India', 'Consulting Tech', 'JAVA, SQL', 7.50, '13.0 LPA', 'Fresher', 'Hyderabad'),
(39, 'Reliance Tech', 'Software Engineer', 'JAVA, REACT', 7.00, '9.5 LPA', 'Fresher', 'Mumbai'),
(40, 'InMobi Ads', 'Android Dev', 'KOTLIN, ANDROID', 7.50, '14.0 LPA', 'Fresher', 'Bangalore'),
(41, 'Python Developer I', 'Python Developer', 'PYTHON, OOPS, MYSQL', 6.00, '5.0 LPA', 'Fresher', 'Pune'),
(42, 'Python Backend Dev', 'Backend Developer', 'PYTHON, DJANGO, REST API', 6.50, '6.5 LPA', 'Fresher', 'Bangalore'),
(43, 'Python API Engineer', 'API Developer', 'PYTHON, FASTAPI, POSTGRESQL', 7.00, '8.0 LPA', 'Fresher', 'Hyderabad'),
(44, 'Python Data Analyst', 'Data Analyst', 'PYTHON, PANDAS, SQL', 6.50, '7.0 LPA', 'Fresher', 'Mumbai'),
(45, 'Python ML Dev', 'Machine Learning Developer', 'PYTHON, SCIKIT-LEARN, NUMPY', 7.50, '10.0 LPA', '0-1 Year', 'Bangalore'),
(46, 'Python Automation Eng', 'Automation Engineer', 'PYTHON, SELENIUM, PYTEST', 6.50, '7.5 LPA', 'Fresher', 'Chennai'),
(47, 'Python Cloud Dev', 'Cloud Developer', 'PYTHON, AWS, DOCKER', 7.00, '9.0 LPA', '0-1 Year', 'Noida'),
(48, 'Python AI Engineer', 'AI Engineer', 'PYTHON, TENSORFLOW, SQL', 8.00, '15.0 LPA', 'Fresher', 'Bangalore'),
(49, 'Python DevOps Eng', 'DevOps Engineer', 'PYTHON, LINUX, CI/CD', 7.00, '9.5 LPA', 'Fresher', 'Pune'),
(50, 'Python Support Analyst', 'Support Analyst', 'PYTHON, SQL, DEBUGGING', 6.00, '4.5 LPA', 'Fresher', 'Indore'),
(51, 'Java Developer I', 'Java Developer', 'JAVA, OOPS, MYSQL', 6.00, '5.5 LPA', 'Fresher', 'Pune'),
(52, 'Java Backend Dev', 'Backend Developer', 'JAVA, SPRING BOOT, REST API', 7.00, '8.0 LPA', 'Fresher', 'Bangalore'),
(53, 'Java Analyst', 'System Analyst', 'JAVA, UML, SQL', 6.50, '6.5 LPA', 'Fresher', 'Hyderabad'),
(54, 'Java Software Eng', 'Software Engineer', 'JAVA, SPRING, HIBERNATE', 7.00, '9.0 LPA', 'Fresher', 'Chennai'),
(55, 'Java QA Engineer', 'QA Engineer', 'JAVA, SELENIUM, TESTNG', 6.50, '7.0 LPA', 'Fresher', 'Noida'),
(56, 'Java API Dev', 'API Developer', 'JAVA, SPRING BOOT, JWT', 7.50, '10.0 LPA', '0-1 Year', 'Bangalore'),
(57, 'Java Microservices Dev', 'Microservices Developer', 'JAVA, SPRING CLOUD, DOCKER', 8.00, '12.0 LPA', '0-1 Year', 'Hyderabad'),
(58, 'Java Data Analyst', 'Data Analyst', 'JAVA, SQL, POWER BI', 6.50, '6.5 LPA', 'Fresher', 'Mumbai'),
(59, 'Java Cloud Eng', 'Cloud Engineer', 'JAVA, AWS, LINUX', 7.50, '11.0 LPA', 'Fresher', 'Pune'),
(60, 'Java Full Stack Dev', 'Full Stack Developer', 'JAVA, REACT, MYSQL', 7.00, '9.5 LPA', 'Fresher', 'Bangalore'),
(61, 'Python BI Analyst', 'Business Intelligence Analyst', 'PYTHON, SQL, POWER BI', 6.50, '7.0 LPA', 'Fresher', 'Delhi'),
(62, 'Python Data Engineer', 'Data Engineer', 'PYTHON, ETL, SQL', 7.50, '11.0 LPA', '0-1 Year', 'Bangalore'),
(63, 'Python Security Analyst', 'Security Analyst', 'PYTHON, CYBERSECURITY, LINUX', 7.00, '9.0 LPA', 'Fresher', 'Hyderabad'),
(64, 'Python Research Dev', 'Research Developer', 'PYTHON, NUMPY, AI', 8.00, '14.0 LPA', '0-1 Year', 'Bangalore'),
(65, 'Python Testing Eng', 'Test Engineer', 'PYTHON, UNITTEST, SELENIUM', 6.50, '7.0 LPA', 'Fresher', 'Pune'),
(66, 'Java Support Eng', 'Support Engineer', 'JAVA, SQL, DEBUGGING', 6.00, '5.0 LPA', 'Fresher', 'Chennai'),
(67, 'Java Banking Dev', 'Banking Software Developer', 'JAVA, SPRING, ORACLE', 7.50, '10.0 LPA', '0-1 Year', 'Mumbai'),
(68, 'Java ERP Dev', 'ERP Developer', 'JAVA, HIBERNATE, MYSQL', 7.00, '9.0 LPA', 'Fresher', 'Hyderabad'),
(69, 'Java Integration Eng', 'Integration Engineer', 'JAVA, REST API, JSON', 7.00, '8.5 LPA', 'Fresher', 'Noida'),
(70, 'Java DevOps Eng', 'DevOps Engineer', 'JAVA, DOCKER, AWS', 7.50, '11.0 LPA', '0-1 Year', 'Bangalore'),
(71, 'Python NLP Engineer', 'NLP Engineer', 'PYTHON, NLP, SPACY', 8.00, '15.0 LPA', 'Fresher', 'Bangalore'),
(72, 'Python Backend Analyst', 'Backend Analyst', 'PYTHON, DJANGO, SQL', 6.50, '7.5 LPA', 'Fresher', 'Mumbai'),
(73, 'Python Financial Analyst', 'Financial Data Analyst', 'PYTHON, EXCEL, SQL', 7.00, '8.0 LPA', 'Fresher', 'Delhi'),
(74, 'Python Game Dev', 'Game Developer', 'PYTHON, PYGAME, OOPS', 6.50, '6.5 LPA', 'Fresher', 'Pune'),
(75, 'Python IoT Dev', 'IoT Developer', 'PYTHON, MQTT, LINUX', 7.50, '10.0 LPA', '0-1 Year', 'Chennai'),
(76, 'Java Android Dev', 'Android Developer', 'JAVA, ANDROID SDK, API', 7.00, '9.0 LPA', 'Fresher', 'Bangalore'),
(77, 'Java Desktop Dev', 'Desktop Application Developer', 'JAVA, SWING, MYSQL', 6.50, '6.0 LPA', 'Fresher', 'Indore'),
(78, 'Java Reporting Analyst', 'Reporting Analyst', 'JAVA, SQL, POWER BI', 6.50, '6.5 LPA', 'Fresher', 'Delhi'),
(79, 'Java AI Dev', 'AI Developer', 'JAVA, DL4J, SQL', 8.00, '14.0 LPA', '0-1 Year', 'Hyderabad'),
(80, 'Java Testing Analyst', 'Testing Analyst', 'JAVA, SELENIUM, JUNIT', 6.50, '7.0 LPA', 'Fresher', 'Noida'),
(81, 'Python Web Analyst', 'Web Analyst', 'PYTHON, DJANGO, ANALYTICS', 6.50, '7.0 LPA', 'Fresher', 'Mumbai'),
(82, 'Python Crypto Dev', 'Blockchain Developer', 'PYTHON, BLOCKCHAIN, API', 8.00, '16.0 LPA', '0-1 Year', 'Bangalore'),
(83, 'Python Junior Dev', 'Junior Developer', 'PYTHON, MYSQL, OOPS', 6.00, '5.0 LPA', 'Fresher', 'Pune'),
(84, 'Java Junior Dev', 'Junior Developer', 'JAVA, MYSQL, OOPS', 6.00, '5.0 LPA', 'Fresher', 'Chennai'),
(85, 'Java Product Dev', 'Product Developer', 'JAVA, SPRING, REST', 7.50, '10.0 LPA', 'Fresher', 'Bangalore'),
(86, 'Python Software Eng', 'Software Engineer', 'PYTHON, DJANGO, SQL', 7.00, '9.0 LPA', 'Fresher', 'Hyderabad'),
(87, 'Java Software Analyst', 'Software Analyst', 'JAVA, SQL, UML', 6.50, '7.0 LPA', 'Fresher', 'Mumbai'),
(88, 'Python System Analyst', 'System Analyst', 'PYTHON, SQL, LINUX', 7.00, '8.5 LPA', 'Fresher', 'Noida'),
(89, 'Java Platform Dev', 'Platform Developer', 'JAVA, SPRING, DOCKER', 8.00, '12.0 LPA', '0-1 Year', 'Bangalore'),
(90, 'Python Integration Eng', 'Integration Engineer', 'PYTHON, REST API, JSON', 7.00, '9.0 LPA', 'Fresher', 'Pune'),
(91, 'GitLawans', 'React Devoloper', 'HTML,CSS,JAVASCRIPT,REACT,SQL', 6.00, '4.5', '', 'Latur');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `option_a` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `option_b` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `option_c` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `option_d` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `correct_option` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `skill_tag` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Technical'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`, `skill_tag`, `category`) VALUES
(1, 'What is 25% of 400?', '50', '75', '100', '125', 'C', 'Aptitude', 'Aptitude'),
(2, 'If 3x = 27, x = ?', '6', '9', '12', '3', 'B', 'Aptitude', 'Aptitude'),
(3, 'Simple interest on 1000 at 10% for 2 years?', '200', '150', '100', '250', 'A', 'Aptitude', 'Aptitude'),
(4, 'Average of 10,20,30?', '20', '25', '15', '30', 'A', 'Aptitude', 'Aptitude'),
(5, 'Probability of head in coin?', '1/4', '1/2', '1', '0', 'B', 'Aptitude', 'Aptitude'),
(6, '5 men do work in 10 days. 10 men?', '5 days', '10 days', '15 days', '20 days', 'A', 'Aptitude', 'Aptitude'),
(7, 'Speed = 60 km/hr. Distance in 2 hr?', '100', '120', '150', '90', 'B', 'Aptitude', 'Aptitude'),
(8, 'Ratio 4:5, total 45. First number?', '20', '25', '15', '18', 'A', 'Aptitude', 'Aptitude'),
(9, 'Square of 15?', '225', '215', '235', '205', 'A', 'Aptitude', 'Aptitude'),
(10, 'Cube of 5?', '125', '25', '100', '150', 'A', 'Aptitude', 'Aptitude'),
(11, 'LCM of 4 and 6?', '12', '24', '6', '18', 'A', 'Aptitude', 'Aptitude'),
(12, 'HCF of 12 and 18?', '6', '3', '9', '12', 'A', 'Aptitude', 'Aptitude'),
(13, 'Compound interest formula?', 'P(1+R)^T', 'P+RT', 'PRT', 'None', 'A', 'Aptitude', 'Aptitude'),
(14, 'Train 100m in 5 sec speed?', '72 km/hr', '60 km/hr', '80 km/hr', '90 km/hr', 'A', 'Aptitude', 'Aptitude'),
(15, 'What is 30% of 500?', '150', '120', '100', '200', 'A', 'Aptitude', 'Aptitude'),
(16, 'If x+y=10 and x=4, y=?', '5', '6', '4', '3', 'B', 'Aptitude', 'Aptitude'),
(17, '10% of 250?', '25', '30', '20', '15', 'A', 'Aptitude', 'Aptitude'),
(18, 'Time = Distance/Speed?', 'Yes', 'No', 'Maybe', 'None', 'A', 'Aptitude', 'Aptitude'),
(19, 'Profit formula?', 'SP-CP', 'CP-SP', 'SP+CP', 'None', 'A', 'Aptitude', 'Aptitude'),
(20, 'Discount formula?', 'MP-SP', 'SP-MP', 'MP+SP', 'None', 'A', 'Aptitude', 'Aptitude'),
(21, 'Synonym of QUICK?', 'Fast', 'Slow', 'Late', 'Weak', 'A', 'English', 'English'),
(22, 'Opposite of HOT?', 'Cold', 'Warm', 'Cool', 'Heat', 'A', 'English', 'English'),
(23, 'Choose correct spelling:', 'Receive', 'Recieve', 'Receve', 'Recive', 'A', 'English', 'English'),
(24, 'Fill blank: She ___ going.', 'is', 'are', 'am', 'be', 'A', 'English', 'English'),
(25, 'Plural of child?', 'Childs', 'Children', 'Childes', 'None', 'B', 'English', 'English'),
(26, 'Synonym of HAPPY?', 'Sad', 'Joyful', 'Angry', 'Cry', 'B', 'English', 'English'),
(27, 'Antonym of BIG?', 'Large', 'Huge', 'Small', 'Tall', 'C', 'English', 'English'),
(28, 'Correct article: ___ apple', 'A', 'An', 'The', 'No', 'B', 'English', 'English'),
(29, 'Verb form of decision?', 'Decide', 'Deciding', 'Decided', 'None', 'A', 'English', 'English'),
(30, 'Past tense of go?', 'Gone', 'Went', 'Going', 'Goes', 'B', 'English', 'English'),
(31, 'What is JVM?', 'Java Virtual Machine', 'Java Variable Machine', 'Java Visual Method', 'None', 'A', 'Java Developer', 'Technical'),
(32, 'Spring Boot used for?', 'Web App', 'Game', 'OS', 'None', 'A', 'Java Backend Developer', 'Technical'),
(33, 'Python list is?', 'Mutable', 'Immutable', 'Constant', 'None', 'A', 'Python Developer', 'Technical'),
(34, 'Django is?', 'Framework', 'Library', 'Language', 'IDE', 'A', 'Python Django Developer', 'Technical'),
(35, 'SQL JOIN used for?', 'Combine tables', 'Delete', 'Insert', 'Update', 'A', 'Data Analyst', 'Technical'),
(36, 'React is?', 'Library', 'Language', 'Database', 'None', 'A', 'Full Stack Developer', 'Technical'),
(37, 'REST API stands for?', 'Representational State Transfer', 'Random State', 'Remote Transfer', 'None', 'A', 'Backend Developer', 'Technical'),
(38, 'What is OOPS?', 'Programming concept', 'Database', 'OS', 'None', 'A', 'Java Developer', 'Technical'),
(39, 'Pandas used for?', 'Data analysis', 'Web design', 'Game', 'None', 'A', 'Python Data Analyst', 'Technical'),
(40, 'HTTP status 404?', 'Not Found', 'OK', 'Server Error', 'Created', 'A', 'Full Stack Developer', 'Technical'),
(41, 'Primary key?', 'Unique identifier', 'Duplicate', 'Null', 'None', 'A', 'Analyst', 'Technical'),
(42, 'Docker used for?', 'Containerization', 'Database', 'Coding', 'None', 'A', 'DevOps Engineer', 'Technical'),
(43, 'Node.js runs on?', 'V8 Engine', 'JVM', 'CLR', 'None', 'A', 'Full Stack Developer', 'Technical'),
(44, 'Exception in Java?', 'Runtime error', 'Loop', 'Variable', 'None', 'A', 'Java Developer', 'Technical'),
(45, 'Flask is?', 'Python framework', 'Database', 'IDE', 'None', 'A', 'Python Developer', 'Technical'),
(46, 'Redux used for?', 'State management', 'Styling', 'Database', 'None', 'A', 'React Developer', 'Technical'),
(47, 'Agile is?', 'Methodology', 'Language', 'Tool', 'None', 'A', 'Analyst', 'Technical'),
(48, 'CI/CD means?', 'Continuous Integration', 'Code Insert', 'Copy Data', 'None', 'A', 'DevOps Engineer', 'Technical'),
(49, 'Normalization?', 'Database optimization', 'Encryption', 'Loop', 'None', 'A', 'SQL Developer', 'Technical'),
(50, 'Git used for?', 'Version control', 'Database', 'Compiler', 'None', 'A', 'Full Stack Developer', 'Technical'),
(51, 'What is 20% of 250?', '40', '50', '60', '30', 'B', 'Aptitude', 'Aptitude'),
(52, 'If x + 5 = 12, x = ?', '5', '6', '7', '8', 'C', 'Aptitude', 'Aptitude'),
(53, 'Simple interest on 2000 at 5% for 2 years?', '200', '150', '250', '300', 'A', 'Aptitude', 'Aptitude'),
(54, 'Average of 5,10,15,20?', '10', '12.5', '15', '20', 'B', 'Aptitude', 'Aptitude'),
(55, 'Square of 18?', '324', '256', '300', '350', 'A', 'Aptitude', 'Aptitude'),
(56, 'Cube of 4?', '64', '16', '32', '48', 'A', 'Aptitude', 'Aptitude'),
(57, 'LCM of 8 and 12?', '24', '48', '32', '16', 'A', 'Aptitude', 'Aptitude'),
(58, 'HCF of 15 and 20?', '5', '10', '15', '20', 'A', 'Aptitude', 'Aptitude'),
(59, 'What is 15% of 400?', '60', '50', '70', '80', 'A', 'Aptitude', 'Aptitude'),
(60, 'If 2x = 14, x = ?', '5', '6', '7', '8', 'C', 'Aptitude', 'Aptitude'),
(61, 'Profit = ?', 'SP-CP', 'CP-SP', 'SP+CP', 'None', 'A', 'Aptitude', 'Aptitude'),
(62, 'Discount = ?', 'MP-SP', 'SP-MP', 'MP+SP', 'None', 'A', 'Aptitude', 'Aptitude'),
(63, 'Speed = Distance / ?', 'Time', 'Work', 'Rate', 'None', 'A', 'Aptitude', 'Aptitude'),
(64, 'Distance = Speed × ?', 'Time', 'Work', 'Rate', 'None', 'A', 'Aptitude', 'Aptitude'),
(65, 'Time = ?', 'Distance/Speed', 'Speed/Distance', 'Work/Rate', 'None', 'A', 'Aptitude', 'Aptitude'),
(66, '30% of 300?', '60', '90', '120', '150', 'B', 'Aptitude', 'Aptitude'),
(67, 'Ratio 2:3 total 25. First?', '10', '15', '5', '20', 'A', 'Aptitude', 'Aptitude'),
(68, 'If 5 men work 6 days, 10 men?', '3 days', '4 days', '5 days', '6 days', 'A', 'Aptitude', 'Aptitude'),
(69, 'Square root of 144?', '10', '11', '12', '13', 'C', 'Aptitude', 'Aptitude'),
(70, '25% of 800?', '150', '200', '250', '300', 'B', 'Aptitude', 'Aptitude'),
(71, 'CI formula?', 'P(1+R)^T', 'P+RT', 'PRT', 'None', 'A', 'Aptitude', 'Aptitude'),
(72, 'Average of first 5 natural numbers?', '2', '3', '4', '5', 'B', 'Aptitude', 'Aptitude'),
(73, 'What is 50% of 90?', '30', '45', '60', '50', 'B', 'Aptitude', 'Aptitude'),
(74, 'Train 60km/hr 2hr distance?', '100', '110', '120', '140', 'C', 'Aptitude', 'Aptitude'),
(75, '10% of 500?', '40', '50', '60', '70', 'B', 'Aptitude', 'Aptitude'),
(76, 'Find next: 2,4,8,16,?', '18', '24', '32', '30', 'C', 'Reasoning', 'Reasoning'),
(77, 'Odd one out: Apple, Mango, Carrot, Banana', 'Apple', 'Mango', 'Carrot', 'Banana', 'C', 'Reasoning', 'Reasoning'),
(78, 'Mirror of LEFT?', 'TFEL', 'LEFT', 'FELT', 'TELF', 'A', 'Reasoning', 'Reasoning'),
(79, 'If CAT = 24, DOG = ?', '26', '27', '29', '30', 'A', 'Reasoning', 'Reasoning'),
(80, 'Next: 1,1,2,3,5,?', '7', '8', '6', '9', 'B', 'Reasoning', 'Reasoning'),
(81, 'If A=1, B=2, C=3 then ABC=?', '6', '5', '4', '3', 'A', 'Reasoning', 'Reasoning'),
(82, 'Odd one: 2,3,5,9,11', '2', '3', '5', '9', 'D', 'Reasoning', 'Reasoning'),
(83, 'Clock angle at 3:00?', '90', '60', '120', '180', 'A', 'Reasoning', 'Reasoning'),
(84, 'Blood relation father’s sister?', 'Mother', 'Aunt', 'Sister', 'Grandmother', 'B', 'Reasoning', 'Reasoning'),
(85, 'Find next: 3,6,12,24,?', '36', '48', '30', '60', 'B', 'Reasoning', 'Reasoning'),
(86, 'Opposite of Hot?', 'Cold', 'Warm', 'Cool', 'Heat', 'A', 'Reasoning', 'Reasoning'),
(87, 'If DAY = 3 letters, WEEK=?', '4', '5', '6', '7', 'A', 'Reasoning', 'Reasoning'),
(88, 'Odd one: Circle, Square, Triangle, Rectangle', 'Circle', 'Square', 'Triangle', 'Rectangle', 'A', 'Reasoning', 'Reasoning'),
(89, 'Next: 5,10,20,40,?', '60', '70', '80', '90', 'C', 'Reasoning', 'Reasoning'),
(90, 'If South is opposite North, West opposite?', 'East', 'South', 'North', 'Up', 'A', 'Reasoning', 'Reasoning'),
(91, 'Find next: 1,4,9,16,?', '20', '25', '30', '36', 'B', 'Reasoning', 'Reasoning'),
(92, 'Odd one: Red, Blue, Green, Cat', 'Red', 'Blue', 'Green', 'Cat', 'D', 'Reasoning', 'Reasoning'),
(93, 'If 1 Jan is Monday, 2 Jan?', 'Sunday', 'Tuesday', 'Wednesday', 'Friday', 'B', 'Reasoning', 'Reasoning'),
(94, 'Alphabet after Z?', 'A', 'B', 'C', 'None', 'A', 'Reasoning', 'Reasoning'),
(95, 'If 4+4=8, 5+5=?', '9', '10', '11', '12', 'B', 'Reasoning', 'Reasoning'),
(96, 'Odd one: Dog, Cat, Lion, Car', 'Dog', 'Cat', 'Lion', 'Car', 'D', 'Reasoning', 'Reasoning'),
(97, 'Next: 10,20,30,?', '35', '40', '50', '45', 'B', 'Reasoning', 'Reasoning'),
(98, 'If PEN = 3 letters, BOOK=?', '3', '4', '5', '6', 'B', 'Reasoning', 'Reasoning'),
(99, 'Mirror of 123?', '321', '123', '231', '213', 'A', 'Reasoning', 'Reasoning'),
(100, 'Find next: 7,14,21,28,?', '30', '35', '40', '45', 'B', 'Reasoning', 'Reasoning'),
(101, 'Java is platform?', 'Dependent', 'Independent', 'Both', 'None', 'B', 'Java', 'Technical'),
(102, 'JVM stands for?', 'Java Virtual Machine', 'Java Variable Method', 'Joint Virtual Machine', 'None', 'A', 'Java', 'Technical'),
(103, 'Extension of Java file?', '.java', '.class', '.js', '.py', 'A', 'Java', 'Technical'),
(104, 'Entry point of Java program?', 'main()', 'start()', 'run()', 'init()', 'A', 'Java', 'Technical'),
(105, 'Which keyword used for inheritance?', 'extends', 'implements', 'inherit', 'super', 'A', 'Java', 'Technical'),
(106, 'Which is not primitive type?', 'int', 'float', 'String', 'double', 'C', 'Java', 'Technical'),
(107, 'Size of int in Java?', '2', '4', '8', '16', 'B', 'Java', 'Technical'),
(108, 'Which keyword for class?', 'class', 'Class', 'define', 'struct', 'A', 'Java', 'Technical'),
(109, 'Method overloading means?', 'Same name diff params', 'Diff name same params', 'Same return type', 'None', 'A', 'Java', 'Technical'),
(110, 'Which loop exists in Java?', 'for', 'foreach', 'repeat', 'loop', 'A', 'Java', 'Technical'),
(111, 'Which is interface keyword?', 'interface', 'Interface', 'implements', 'abstract', 'A', 'Java', 'Technical'),
(112, 'Java supports multiple inheritance?', 'Yes', 'No', 'Partially', 'None', 'C', 'Java', 'Technical'),
(113, 'Exception handling keyword?', 'try', 'catch', 'throw', 'All', 'D', 'Java', 'Technical'),
(114, 'Which is package keyword?', 'package', 'import', 'include', 'using', 'A', 'Java', 'Technical'),
(115, 'Garbage collection in Java?', 'Manual', 'Automatic', 'Both', 'None', 'B', 'Java', 'Technical'),
(116, 'String is?', 'Primitive', 'Class', 'Interface', 'None', 'B', 'Java', 'Technical'),
(117, 'Array index starts from?', '0', '1', '-1', '2', 'A', 'Java', 'Technical'),
(118, 'Which is not OOP concept?', 'Encapsulation', 'Polymorphism', 'Compilation', 'Inheritance', 'C', 'Java', 'Technical'),
(119, 'final keyword used for?', 'Constant', 'Loop', 'Class only', 'None', 'A', 'Java', 'Technical'),
(120, 'super keyword refers to?', 'Parent class', 'Child class', 'Package', 'None', 'A', 'Java', 'Technical'),
(121, 'this keyword refers to?', 'Current object', 'Parent', 'Package', 'None', 'A', 'Java', 'Technical'),
(122, 'Java is compiled to?', 'Bytecode', 'Machine code', 'Binary', 'None', 'A', 'Java', 'Technical'),
(123, 'Which collection class?', 'ArrayList', 'Scanner', 'Math', 'System', 'A', 'Java', 'Technical'),
(124, 'Default value of boolean?', 'true', 'false', '0', '1', 'B', 'Java', 'Technical'),
(125, 'Static keyword belongs to?', 'Class', 'Object', 'Method only', 'None', 'A', 'Java', 'Technical'),
(126, 'Python is?', 'Compiled', 'Interpreted', 'Both', 'None', 'B', 'Python', 'Technical'),
(127, 'Extension of Python file?', '.py', '.java', '.cpp', '.js', 'A', 'Python', 'Technical'),
(128, 'Which keyword for function?', 'def', 'function', 'fun', 'define', 'A', 'Python', 'Technical'),
(129, 'List is?', 'Mutable', 'Immutable', 'Static', 'None', 'A', 'Python', 'Technical'),
(130, 'Tuple is?', 'Mutable', 'Immutable', 'Dynamic', 'None', 'B', 'Python', 'Technical'),
(131, 'Dictionary stores?', 'Key-Value', 'Index', 'Only keys', 'Only values', 'A', 'Python', 'Technical'),
(132, 'Which loop in Python?', 'for', 'while', 'Both', 'None', 'C', 'Python', 'Technical'),
(133, 'Indentation in Python?', 'Optional', 'Mandatory', 'Not needed', 'None', 'B', 'Python', 'Technical'),
(134, 'Which operator for power?', '**', '^', 'pow', '//', 'A', 'Python', 'Technical'),
(135, 'len() used for?', 'Length', 'List', 'Loop', 'None', 'A', 'Python', 'Technical'),
(136, 'Which is comment?', '#', '//', '/*', '--', 'A', 'Python', 'Technical'),
(137, 'Python supports OOP?', 'Yes', 'No', 'Partially', 'None', 'A', 'Python', 'Technical'),
(138, 'Index starts from?', '0', '1', '-1', '2', 'A', 'Python', 'Technical'),
(139, 'Which data type?', 'int', 'float', 'str', 'All', 'D', 'Python', 'Technical'),
(140, 'Input function?', 'input()', 'scanf()', 'cin', 'read()', 'A', 'Python', 'Technical'),
(141, 'Output function?', 'print()', 'echo()', 'cout', 'display()', 'A', 'Python', 'Technical'),
(142, 'Which is immutable?', 'List', 'Set', 'Tuple', 'Dict', 'C', 'Python', 'Technical'),
(143, 'Set stores?', 'Unique values', 'Duplicate', 'Index', 'None', 'A', 'Python', 'Technical'),
(144, 'Which keyword for class?', 'class', 'Class', 'define', 'struct', 'A', 'Python', 'Technical'),
(145, 'try block used for?', 'Exception', 'Loop', 'Function', 'None', 'A', 'Python', 'Technical'),
(146, 'Python is case sensitive?', 'Yes', 'No', 'Maybe', 'None', 'A', 'Python', 'Technical'),
(147, 'Which is slicing?', 'list[1:3]', 'list(1,3)', 'slice()', 'None', 'A', 'Python', 'Technical'),
(148, 'Which is correct variable?', 'var1', '1var', '@var', '#var', 'A', 'Python', 'Technical'),
(149, 'Which keyword for loop break?', 'break', 'exit', 'stop', 'None', 'A', 'Python', 'Technical'),
(150, 'Python supports lambda?', 'Yes', 'No', 'Maybe', 'None', 'A', 'Python', 'Technical'),
(151, 'C language developed by?', 'Dennis Ritchie', 'James Gosling', 'Bjarne Stroustrup', 'Guido', 'A', 'C', 'Technical'),
(152, 'C is?', 'High level', 'Low level', 'Middle level', 'None', 'C', 'C', 'Technical'),
(153, 'Extension of C file?', '.c', '.cpp', '.java', '.py', 'A', 'C', 'Technical'),
(154, 'Entry point of C program?', 'main()', 'start()', 'run()', 'init()', 'A', 'C', 'Technical'),
(155, 'Which header for printf?', 'stdio.h', 'conio.h', 'math.h', 'stdlib.h', 'A', 'C', 'Technical'),
(156, 'Which symbol for address?', '&', '*', '#', '@', 'A', 'C', 'Technical'),
(157, 'Pointer stores?', 'Value', 'Address', 'Index', 'None', 'B', 'C', 'Technical'),
(158, 'Which loop in C?', 'for', 'while', 'do-while', 'All', 'D', 'C', 'Technical'),
(159, 'Size of int (commonly)?', '2/4 bytes', '8 bytes', '1 byte', '16 bytes', 'A', 'C', 'Technical'),
(160, 'Array index starts from?', '0', '1', '-1', '2', 'A', 'C', 'Technical'),
(161, 'Which is decision statement?', 'if', 'for', 'while', 'switch', 'A', 'C', 'Technical'),
(162, 'Which operator for modulus?', '%', '/', '*', '#', 'A', 'C', 'Technical'),
(163, 'Which is comment in C?', '//', '/* */', '#', 'Both A and B', 'D', 'C', 'Technical'),
(164, 'Which is not data type?', 'int', 'float', 'real', 'char', 'C', 'C', 'Technical'),
(165, 'scanf used for?', 'Input', 'Output', 'Loop', 'None', 'A', 'C', 'Technical'),
(166, 'printf used for?', 'Input', 'Output', 'Loop', 'None', 'B', 'C', 'Technical'),
(167, 'Which is logical AND?', '&&', '&', '||', '!', 'A', 'C', 'Technical'),
(168, 'Which is OR operator?', '||', '|', '&&', '!', 'A', 'C', 'Technical'),
(169, 'Break used for?', 'Exit loop', 'Start loop', 'Function', 'None', 'A', 'C', 'Technical'),
(170, 'Continue used for?', 'Skip iteration', 'Exit loop', 'Function', 'None', 'A', 'C', 'Technical'),
(171, 'Which storage class?', 'auto', 'register', 'static', 'All', 'D', 'C', 'Technical'),
(172, 'C supports OOP?', 'Yes', 'No', 'Partially', 'None', 'B', 'C', 'Technical'),
(173, 'Which header for malloc?', 'stdlib.h', 'stdio.h', 'math.h', 'string.h', 'A', 'C', 'Technical'),
(174, 'Return type of main?', 'int', 'void', 'char', 'float', 'A', 'C', 'Technical'),
(175, 'Switch is?', 'Loop', 'Decision', 'Operator', 'None', 'B', 'C', 'Technical'),
(176, 'C++ developed by?', 'Dennis Ritchie', 'Bjarne Stroustrup', 'James Gosling', 'Guido', 'B', 'C++', 'Technical'),
(177, 'Extension of C++ file?', '.cpp', '.c', '.java', '.py', 'A', 'C++', 'Technical'),
(178, 'C++ supports OOP?', 'Yes', 'No', 'Partially', 'None', 'A', 'C++', 'Technical'),
(179, 'Which keyword for class?', 'class', 'Class', 'struct', 'define', 'A', 'C++', 'Technical'),
(180, 'Input in C++?', 'cin', 'scanf', 'input', 'read', 'A', 'C++', 'Technical'),
(181, 'Output in C++?', 'cout', 'printf', 'print', 'echo', 'A', 'C++', 'Technical'),
(182, 'Namespace keyword?', 'namespace', 'using', 'include', 'define', 'A', 'C++', 'Technical'),
(183, 'Which header for i/o?', 'iostream', 'stdio.h', 'conio.h', 'math.h', 'A', 'C++', 'Technical'),
(184, 'Encapsulation means?', 'Data hiding', 'Loop', 'Function', 'None', 'A', 'C++', 'Technical'),
(185, 'Inheritance keyword?', 'extends', 'inherits', 'public', 'None', 'C', 'C++', 'Technical'),
(186, 'Polymorphism achieved by?', 'Overloading', 'Overriding', 'Both', 'None', 'C', 'C++', 'Technical'),
(187, 'Constructor name same as?', 'Class', 'Function', 'File', 'None', 'A', 'C++', 'Technical'),
(188, 'Destructor symbol?', '~', '!', '#', '@', 'A', 'C++', 'Technical'),
(189, 'Access specifier?', 'private', 'public', 'protected', 'All', 'D', 'C++', 'Technical'),
(190, 'Which is template keyword?', 'template', 'define', 'class', 'None', 'A', 'C++', 'Technical'),
(191, 'Virtual keyword used for?', 'Function', 'Loop', 'Variable', 'None', 'A', 'C++', 'Technical'),
(192, 'STL stands for?', 'Standard Template Library', 'System Template Library', 'Static Template Library', 'None', 'A', 'C++', 'Technical'),
(193, 'Which is not OOP concept?', 'Encapsulation', 'Inheritance', 'Compilation', 'Polymorphism', 'C', 'C++', 'Technical'),
(194, 'Operator overloading possible?', 'Yes', 'No', 'Maybe', 'None', 'A', 'C++', 'Technical'),
(195, 'C++ is extension of?', 'C', 'Java', 'Python', 'None', 'A', 'C++', 'Technical'),
(196, 'Which loop exists?', 'for', 'while', 'do-while', 'All', 'D', 'C++', 'Technical'),
(197, 'New keyword used for?', 'Dynamic memory', 'Loop', 'Class', 'None', 'A', 'C++', 'Technical'),
(198, 'Delete keyword used for?', 'Free memory', 'Loop', 'Class', 'None', 'A', 'C++', 'Technical'),
(199, 'Friend keyword allows?', 'Access private', 'Loop', 'Inheritance', 'None', 'A', 'C++', 'Technical'),
(200, 'Default access in class?', 'private', 'public', 'protected', 'None', 'A', 'C++', 'Technical'),
(201, 'JavaScript is?', 'Compiled', 'Interpreted', 'Both', 'None', 'B', 'JavaScript', 'Technical'),
(202, 'Extension of JS file?', '.js', '.java', '.py', '.cpp', 'A', 'JavaScript', 'Technical'),
(203, 'Which keyword for variable?', 'var', 'int', 'define', 'letvar', 'A', 'JavaScript', 'Technical'),
(204, 'Which keyword for block scope?', 'let', 'var', 'constvar', 'define', 'A', 'JavaScript', 'Technical'),
(205, 'Constant variable keyword?', 'const', 'var', 'let', 'static', 'A', 'JavaScript', 'Technical'),
(206, 'JS runs in?', 'Browser', 'Compiler only', 'Database', 'None', 'A', 'JavaScript', 'Technical'),
(207, 'Which symbol for comment?', '//', '#', '/* */', 'Both A and C', 'D', 'JavaScript', 'Technical'),
(208, 'Which function for output?', 'console.log()', 'print()', 'echo()', 'cout', 'A', 'JavaScript', 'Technical'),
(209, 'Which operator for equality?', '==', '=', '!=', '>=', 'A', 'JavaScript', 'Technical'),
(210, 'Strict equality operator?', '===', '==', '=', '!==', 'A', 'JavaScript', 'Technical'),
(211, 'JS supports OOP?', 'Yes', 'No', 'Maybe', 'None', 'A', 'JavaScript', 'Technical'),
(212, 'Which is array method?', 'push()', 'add()', 'insert()', 'append()', 'A', 'JavaScript', 'Technical'),
(213, 'Which is string method?', 'length', 'size()', 'count()', 'len()', 'A', 'JavaScript', 'Technical'),
(214, 'DOM stands for?', 'Document Object Model', 'Data Object Model', 'Digital Object Model', 'None', 'A', 'JavaScript', 'Technical'),
(215, 'Event click written as?', 'onclick', 'onpress', 'onhover', 'None', 'A', 'JavaScript', 'Technical'),
(216, 'JSON stands for?', 'JavaScript Object Notation', 'Java Source Object Notation', 'None', 'None2', 'A', 'JavaScript', 'Technical'),
(217, 'Which loop in JS?', 'for', 'while', 'do-while', 'All', 'D', 'JavaScript', 'Technical'),
(218, 'NaN means?', 'Not a Number', 'New and Null', 'Name and Number', 'None', 'A', 'JavaScript', 'Technical'),
(219, 'typeof is?', 'Operator', 'Function', 'Loop', 'None', 'A', 'JavaScript', 'Technical'),
(220, 'Alert function?', 'alert()', 'print()', 'msg()', 'show()', 'A', 'JavaScript', 'Technical'),
(221, 'Which symbol for arrow function?', '=>', '->', '==>', 'None', 'A', 'JavaScript', 'Technical'),
(222, 'setTimeout used for?', 'Delay', 'Loop', 'Input', 'None', 'A', 'JavaScript', 'Technical'),
(223, 'Which is framework?', 'React', 'C', 'Python', 'MySQL', 'A', 'JavaScript', 'Technical'),
(224, 'Which is not JS data type?', 'int', 'number', 'string', 'boolean', 'A', 'JavaScript', 'Technical'),
(225, 'JS is case sensitive?', 'Yes', 'No', 'Maybe', 'None', 'A', 'JavaScript', 'Technical'),
(226, 'HTML stands for?', 'HyperText Markup Language', 'HighText Machine Language', 'None', 'None2', 'A', 'Technical', 'Technical'),
(227, 'CSS used for?', 'Styling', 'Database', 'Programming', 'None', 'A', 'Technical', 'Technical'),
(228, 'SQL used for?', 'Database', 'Styling', 'Loop', 'None', 'A', 'Technical', 'Technical'),
(229, 'Primary key is?', 'Unique', 'Duplicate', 'Null', 'None', 'A', 'Technical', 'Technical'),
(230, 'Which is DBMS?', 'MySQL', 'HTML', 'CSS', 'C', 'A', 'Technical', 'Technical'),
(231, 'HTTP stands for?', 'HyperText Transfer Protocol', 'High Transfer Text Protocol', 'None', 'None2', 'A', 'Technical', 'Technical'),
(232, 'IP address version?', 'IPv4', 'IPv2', 'IPv1', 'IPv0', 'A', 'Technical', 'Technical'),
(233, 'Binary of 2?', '10', '11', '01', '00', 'A', 'Technical', 'Technical'),
(234, '1 Byte = ?', '8 bits', '4 bits', '16 bits', '32 bits', 'A', 'Technical', 'Technical'),
(235, 'RAM is?', 'Volatile', 'Non-volatile', 'Permanent', 'None', 'A', 'Technical', 'Technical'),
(236, 'ROM is?', 'Non-volatile', 'Volatile', 'Temporary', 'None', 'A', 'Technical', 'Technical'),
(237, 'CPU stands for?', 'Central Processing Unit', 'Control Processing Unit', 'None', 'None2', 'A', 'Technical', 'Technical'),
(238, 'Which is OS?', 'Windows', 'HTML', 'Python', 'CSS', 'A', 'Technical', 'Technical'),
(239, 'Compiler converts?', 'High to Low', 'Low to High', 'Binary to Text', 'None', 'A', 'Technical', 'Technical'),
(240, 'Which is cloud platform?', 'AWS', 'C', 'HTML', 'CSS', 'A', 'Technical', 'Technical'),
(241, 'Which is version control?', 'Git', 'HTML', 'CSS', 'C', 'A', 'Technical', 'Technical'),
(242, 'LAN stands for?', 'Local Area Network', 'Large Area Network', 'None', 'None2', 'A', 'Technical', 'Technical'),
(243, 'Which is NoSQL DB?', 'MongoDB', 'MySQL', 'Oracle', 'SQLServer', 'A', 'Technical', 'Technical'),
(244, 'API stands for?', 'Application Programming Interface', 'Advanced Program Interface', 'None', 'None2', 'A', 'Technical', 'Technical'),
(245, 'Firewall used for?', 'Security', 'Styling', 'Loop', 'None', 'A', 'Technical', 'Technical'),
(246, 'Which is frontend?', 'React', 'MySQL', 'C', 'Java', 'A', 'Technical', 'Technical'),
(247, 'Which is backend language?', 'Java', 'HTML', 'CSS', 'Bootstrap', 'A', 'Technical', 'Technical'),
(248, 'Bootstrap is?', 'CSS framework', 'Database', 'Language', 'None', 'A', 'Technical', 'Technical'),
(249, 'Agile is?', 'Methodology', 'Language', 'Database', 'None', 'A', 'Technical', 'Technical'),
(250, 'Linux is?', 'Operating System', 'Language', 'Database', 'None', 'A', 'Technical', 'Technical'),
(251, '1-1=0x1x7=?', '0', '1', '?', '7', 'D', 'REASONING', 'Aptitude');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `job_id` int NOT NULL,
  `score` int NOT NULL,
  `pass_fail_status` enum('PASS','FAIL') COLLATE utf8mb4_general_ci NOT NULL,
  `weak_skills` text COLLATE utf8mb4_general_ci,
  `attempt_number` int DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_questions` int DEFAULT '15',
  `percentage` decimal(5,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `job_id`, `score`, `pass_fail_status`, `weak_skills`, `attempt_number`, `timestamp`, `total_questions`, `percentage`) VALUES
(3, 3, 80, 12, 'PASS', 'Java, Python', 1, '2026-02-22 09:09:32', 15, 0.00),
(4, 1, 10, 8, 'FAIL', 'C++, Aptitude, Java, Python, Full Stack Developer, JavaScript', 1, '2026-02-22 11:23:01', 15, 0.00),
(5, 1, 3, 3, 'FAIL', 'Aptitude, English, JavaScript, Technical, Java, C++', 1, '2026-02-22 11:36:00', 15, 0.00),
(6, 2, 41, 1, 'FAIL', '', 1, '2026-02-22 11:59:28', 15, 0.00),
(7, 2, 41, 6, 'FAIL', 'Python, JavaScript, Reasoning, Aptitude, Java', 1, '2026-02-22 12:03:45', 15, 0.00),
(8, 2, 41, 4, 'FAIL', 'Aptitude, C, English, Java, Python, Reasoning, Technical', 1, '2026-02-22 12:07:18', 15, 0.00),
(9, 2, 41, 2, 'FAIL', 'Aptitude, English, JavaScript, Python, Java, Reasoning, C++', 1, '2026-02-22 12:11:03', 15, 0.00),
(10, 1, 3, 0, 'FAIL', 'Reasoning, JavaScript, Aptitude, Data Analyst, English, C, C++, Technical', 1, '2026-02-22 17:07:26', 15, 0.00),
(11, 4, 15, 11, 'PASS', 'Python, JavaScript, Aptitude, Reasoning', 1, '2026-02-22 17:57:30', 15, 0.00),
(12, 1, 10, 4, 'FAIL', 'Aptitude, English, Java Developer, C, JavaScript, Data Analyst, Reasoning', 1, '2026-02-22 19:49:03', 15, 26.67),
(13, 6, 1, 3, 'FAIL', 'Java, Python, Aptitude, Reasoning', 1, '2026-02-23 11:19:56', 15, 20.00),
(14, 7, 72, 3, 'FAIL', 'Python, Aptitude, English', 1, '2026-02-25 16:49:10', 15, 20.00),
(15, 7, 27, 6, 'FAIL', 'Aptitude, Reasoning, Java', 1, '2026-02-25 16:53:53', 15, 40.00),
(16, 7, 27, 3, 'FAIL', 'Java, Python, Aptitude, C, Reasoning, Technical', 1, '2026-02-25 16:58:13', 15, 20.00),
(17, 7, 27, 3, 'FAIL', 'Java, Python, Aptitude, C, Reasoning, Technical', 1, '2026-02-25 17:01:41', 15, 20.00),
(18, 7, 27, 0, 'FAIL', 'None', 1, '2026-02-25 17:01:52', 15, 0.00),
(19, 7, 27, 5, 'FAIL', 'Java, Reasoning, Technical, Aptitude, C', 1, '2026-02-25 17:03:07', 15, 33.33),
(20, 7, 27, 1, 'FAIL', 'None', 1, '2026-02-25 17:03:35', 15, 6.67),
(21, 1, 2, 3, 'FAIL', 'English, Python, Reasoning, Java, Aptitude', 1, '2026-02-25 17:40:02', 15, 20.00),
(22, 1, 2, 3, 'FAIL', NULL, 1, '2026-02-25 17:40:12', 15, 20.00),
(23, 1, 2, 3, 'FAIL', 'English, Python, Reasoning, Java, Aptitude', 1, '2026-02-25 17:42:24', 15, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `degree` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `specialization` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cgpa` decimal(3,2) DEFAULT NULL,
  `passing_year` int DEFAULT NULL,
  `technical_skills` text COLLATE utf8mb4_general_ci,
  `projects` text COLLATE utf8mb4_general_ci,
  `internship_exp` int DEFAULT '0',
  `preferred_job_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_ans1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_ans2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_ans3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `current_year` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'Not Set',
  `division` varchar(10) COLLATE utf8mb4_general_ci DEFAULT 'Not Set'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `full_name`, `email`, `password`, `degree`, `specialization`, `cgpa`, `passing_year`, `technical_skills`, `projects`, `internship_exp`, `preferred_job_type`, `sec_ans1`, `sec_ans2`, `sec_ans3`, `current_year`, `division`) VALUES
(1, 'Balaji Mahadev Nagmoti', 'b@gmail.com', '$2y$10$tAfuT3XbrLHTDQY.1YS0kee5JLIvbl.3tFcn71QwiPKDuhrcHeN1q', 'MCA', 'computer application', 7.00, 2022, 'PYTHON,JAVA', 'Froenend Backend devoloper', 4, 'Java Full Stack Developer', NULL, NULL, NULL, 'Final Year', 'B'),
(2, 'Sumit Patil', 's@gmail.com', '$2y$10$cfWe1tkJiuMb.KI.Upq56uyDLUG0mwCB98s8r1a/3kT/zrCh3/xUi', 'BSC IT', 'scince ', 6.05, 2022, 'PHP,MYSQL', 'it jobs', 3, 'Java Full Stack Developer', NULL, NULL, NULL, 'Not Set', 'Not Set'),
(3, 'aaditya', 'a@gmail.com', '$2y$10$5hbZsVouP/obzWMtRE.mCefk.Y4Ftm7iIx.0jfru9jT30EJmtcjKO', 'BCA', 'computer application', 8.00, 2023, 'JAVA,PYTHON', 'data analyst', 3, 'Data Analyst', NULL, NULL, NULL, 'Not Set', 'Not Set'),
(4, 'shaukat shaikh', 'm@gmail.com', '$2y$10$ezYy.Wfrd5TzFpp6x7XTy.xD.5JMoJbkLLm1OIavh4PMv3T752e.O', 'B.E.', 'compter application', 7.80, 2023, 'PYTHON,HTML,SQL,JAVA', 'Data Analyst ', 3, 'Data Analyst', NULL, NULL, NULL, 'First Year', 'A'),
(6, 'altaf ', 'altaf@gmail.com', '$2y$10$Zt388DiXuefQYraQK44Ft.fKsOWVdAt9pgeNr0K9hJTmhY.k32Xgu', 'MCA', 'computer applicatioin', 8.00, 2021, 'PYTHON,JAVA', 'dev', 4, 'Data Analyst', 'red', 'tomi', 'latur', 'Third Year', 'C'),
(7, 'shreyash ', 'shri@gmail.com', '$2y$10$Ru5oaBfcAbAlGLNz2KUbRONv0wkzKW38/mTN5mYcYE3EGbtCqYmT6', 'BSC IT', 'computer science', 6.80, 2021, 'JAVA,PHP', 'sbi website design ui ', 6, 'PHP Laravel Developer', 'red', 'moti', 'latur', 'Third Year', 'C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_role` (`job_role`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
