-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 19, 2018 at 05:46 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zombie`
--

-- --------------------------------------------------------

--
-- Table structure for table `gameboard`
--

CREATE TABLE `gameboard` (
  `aid` int(10) NOT NULL,
  `string` varchar(1000) NOT NULL,
  `pl1` varchar(1000) NOT NULL,
  `pl2` varchar(1000) NOT NULL,
  `rno` varchar(1000) NOT NULL,
  `redbox` varchar(400) NOT NULL,
  `pl1pos` varchar(10) DEFAULT '14',
  `pl2pos` varchar(10) NOT NULL DEFAULT '74',
  `turn` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gameboard`
--

INSERT INTO `gameboard` (`aid`, `string`, `pl1`, `pl2`, `rno`, `redbox`, `pl1pos`, `pl2pos`, `turn`) VALUES
(2, 'VGO21', '8239744184', '9999999999', '21', '33', '34', '36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playerdb`
--

CREATE TABLE `playerdb` (
  `aid` int(10) NOT NULL,
  `string` varchar(1000) NOT NULL,
  `pname1` varchar(1000) NOT NULL,
  `collegename1` varchar(1000) NOT NULL,
  `pmobile1` varchar(1000) NOT NULL,
  `pname2` varchar(1000) NOT NULL,
  `collegename2` varchar(1000) NOT NULL,
  `pmobile2` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerdb`
--

INSERT INTO `playerdb` (`aid`, `string`, `pname1`, `collegename1`, `pmobile1`, `pname2`, `collegename2`, `pmobile2`) VALUES
(2, 'VGO21', 'Vikram', 'BITS', '8239744184', 'Rinkesh', 'BITS', '9999999999');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qno` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qno`, `question`, `answer`) VALUES
(1, 'Find Next Number in the Series\r\n2 9 3 1 8 4 3 6 5 7 ?\r\n', '2'),
(2, 'Simran walks into a bank to cash out her check.\r\nBy mistake the bank teller gives her dollar amount in change, and her cent amount in dollars.\r\nOn the way home she spends 5 cent, and then suddenly she notices that she has twice the amount of her check.\r\n\r\nHer check amount is of the form 31.xy (where xy are natural nos. from [1,9]), determine x + y.\r\n', '9'),
(3, 'Rooney, Hernandez, and Robin race each other in a 100 meters race. All of them run at a constant speed throughout the race. \r\n\r\nRooney beats Hernandez by 20 meters. \r\nHernandez beats Robin by 20 meters. \r\n\r\nHow many meters does Rooney beat Robin by ? Let it be x, determine x by 9\r\n', '4'),
(4, 'You can place weights on both side of weighing balance and you need to measure all weights between 1 and 1000. For example if you have weights 1 and 3,now you can measure 1,3 and 4 like earlier case, and also you can measure 2,by placing 3 on one side and 1 on the side which contain the substance to be weighed. So question again is how many minimum weights and of what denominations you need to measure all weights from 1kg to 1000kg.', '7'),
(5, 'There are one thousand lockers and one thousand students in a school. The principal asks the first student to go to every locker and open it. Then he has the second student go to every second locker and close it. The third goes to every third locker and, if it is closed, he opens it, and if it is open, he closes it. The fourth student does this to every fourth locker, and so on. After the process is completed with the thousandth student, how many lockers are open? Determine the most significant digit of your answer.', '3'),
(6, '2+3=8,\r\n3+7=27,\r\n4+5=32,\r\n5+8=60,\r\n6+7=72,\r\n7+8=??\r\nMark the lowest digit in your answer.\r\n', '8'),
(7, 'The interviewer tells the candidate that if he guess the ages of his three sons correctly, then he shall get the job. He gives the candidate 3 hints and says that by only using all of them can he know the right answer. The hints are:\r\na) The product of the age of his sons is 36.\r\nb) The sum of their ages is equal to the house number of the interviewer.\r\nc) His eldest son has blue eyes.\r\nWhat are the ages of his sons?\r\n\r\nMark the lowest age.\r\n', '2'),
(8, 'What 6 digit number when multiplied by either 2, 3, 4, 5 or 6 has no new digits which appear? Mark the 3rd highest digit in your answer.', '4'),
(9, 'If 1111=’r’, 2222=’t’, 3333=’e’\r\nThen 4444=?\r\nDetermine the least significant digit of the alphabetic position of the answer.(Ex: if answer is z then mark 6)', '4'),
(10, 'You have 27 coins, each of them is 10g, except for 1. The 1 different coin is 9g or 11g (heavier, or lighter by 1g). You should use balance scale that compares what is in the two pans. You can get the answer by just comparing groups of coins.\r\nWhat is the minimum number weighings that can always guarantee to determine the different coin.\r\n', '6'),
(11, '1,11,21,1211,111221,...\r\nFind next number in the sequence and mark the third digit (from right).\r\n', '2'),
(12, 'A teacher says: I am thinking of two natural numbers greater than 1. Try to guess what they are.\r\nThe first student knows their product and the other one knows their sum.\r\nFirst: I do not know the sum.\r\nSecond: I knew that. The sum is less than 14.\r\nFirst: I knew that. However, now I know the numbers.\r\nSecond: And so do I.\r\nWhat were the numbers? Mark the difference between the two numbers.\r\n', '7'),
(13, 'a, b, c are three distinct integers from 2 to 10 (both inclusive). Exactly one of ab, bc and ca is odd. abc is a multiple of 4. The arithmetic mean of a and b is an integer and so is the arithmetic mean of a, b and c. How many such triplets are possible (unordered triplets)?', '4'),
(14, 'The difference between a two-digit number and the number obtained by interchanging the digits is 36. What is the difference between the sum and the difference of the digits of the number if the ratio between the digits of the number is 1 : 2 ?', '8'),
(15, 'A two-digit number is such that the product of the digits is 8. When 18 is added to the number, then the digits are reversed. The sum of the digits of the number is', '6'),
(16, 'Two ladies played cards for candy; the winner received one piece per game from the loser. When it was time for one of the ladies to go home, one lady had won three games, while the other lady had a profit of three pieces of candy. \r\n\r\nHow many individual games had they played?\r\n', '9'),
(17, 'In a certain country ½ of 5 = 3. If the same proportion holds, what is the value of 1/3 of 10 ?', '4'),
(18, 'A number consists of 3 digits whose sum is 10. The middle digit is equal to the sum of the other two and the number will be increased by 99 if its digits are reversed. What is the first digit of the number?', '2'),
(19, 'Rooney, Hernandez, and Robin race each other in a 100 meters race. All of them run at a constant speed throughout the race. \r\n\r\nRooney beats Hernandez by 20 meters. \r\nHernandez beats Robin by 20 meters. \r\n\r\nHow many meters does Rooney beat Robin by ?(Give the sum of the digits as an answer)\r\n', '9'),
(20, 'I bought three toys for my triplet boys (one for each). I placed the toys in the dark store. One by one each boy went to the store and pick the toy. The probability that no boy will choose his own toy is x/y. What is the value of x+y?', '4'),
(21, 'Two women play a dice game where two standard dice are rolled. Woman A says that a 11 will be rolled first. Woman B says that two consecutive 8s will be rolled first. The women keep rolling until one of them wins.\r\n\r\nThe probability that A will win is x/y. What is the value of (y-x)/7 ?\r\n', '5'),
(22, 'Let the missing number in the sequence given below is x.\r\n11 15 19 12 16 ? 13 17 21 14 18 22\r\nWhat is the value of x/4?', '5'),
(23, '2a + 5b = 103. How many pairs of positive integer values can a, b take such that a > b? ', '7'),
(24, 'Sum of three Natural numbers a, b and c is 10. (9*d) many ordered triplets (a, b, c) exist. Find d.', '4'),
(25, 'From the digits 2, 3, 4, 5, 6 and 7, (12*p) many 5-digit numbers can be formed that have distinct digits and are multiples of 12. Find p.', '5'),
(26, 'In a horse-driven carriage it was found that the fore wheels of the carriage make four more revolutions than the hind wheel in going 96 feet. However, it was also found that if the circumference of the fore wheel were (3/2) times the original and of the hind wheel (4/3) times the original, then the fore wheel would make only 2 revolutions more than the hind wheel in going the same distance of 96 feet. Find the difference(hind-fore) in original circumference of the wheels.', '4'),
(27, 'Of the 200 candidates who were interviewed for a position at a call center, 100 had a two-wheeler, 70 had a credit card and 140 had a mobile phone. 40 of them had both, a two-wheeler and a credit card, 30 had both, a credit card and a mobile phone and 60 had both, a two wheeler and mobile phone and 10 had all three. The  candidates that had none of the three are x. What is x/10?', '1'),
(28, '48 students have to be seated such that each row has the same number of students as the others. If at least 3 students are to be seated per row and at least 2 rows have to be there, how many arrangements are possible?', '7'),
(29, 'Three Vice Presidents (VP) regularly visit the plant on different days. Due to labour unrest, VP (HR) regularly visits the plant after a gap of 2 days. VP (Operations) regularly visits the plant after a gap of 3 days. VP (sales) regularly visits the plant after a gap of 5 days. The VPs do not deviate from their individual schedules. CEO of the company meets the VPs when all the three VPs come to the plant together. CEO is on leave from January 5th to January 28th, 2012. Last time the CEO met the VPs on January 3, 2012. When is the next time(what date of Feb) the CEO will meet all the VPs?', '8'),
(30, 'A boss decides to distribute Rs. 2000 between 2 employees. He knows X deserves more that Y, but does not know how much more. So he decides to arbitrarily break Rs. 2000 into two parts and give X the bigger part. What is the chance that X gets twice as much as Y or more? Give answer as sum of numerator and denominator of probability fraction.', '5'),
(31, 'There are N! ways for arranging letters of the word AMAZING such that the ‘I’ appears between the two ‘A’s. Find N.', '5'),
(32, 'As they say, beggars can not be choosers, in fact begger take what they can get. A begger on the street can make one cigarette out of every 6 cigarette butts he finds. After one whole day of searching and checking public ashtrays the begger finds a total of 72 cigarette butts. How many cigarettes can he make and smoke from the butts he found? If your answer is x then answer x %10.', '4'),
(33, 'My grandson is about as many days as my son in weeks, and my grandson is as many months as I am in years. My grandson, my son and I together are 120 years. Can you tell me my age in years ? If your answer is x then answer x %10.', '2'),
(34, '6 different sweet varieties of count 32, 216, 136, 88, 184, 120 were ordered for a particular occasion. They need to be packed in such a way that each box has the same variety of sweet and the number of sweets in each box is also the same. What is the minimum number of boxes required to pack? If your answer is x then answer x %10.', '7'),
(35, 'A cistern of 475 litres is completely filled using pipes A and B, with Pipe A being open for 5 more hours than pipe B. If we are to interchange the operating hours of the two pipes than pipe A would have pumped half the water as much as pipe B, then the time for which pipe B was open was (10 + T) hours. Also, given that if the two pipes were open simultaneously the tank would fill in 19 hours. Find T.', '6'),
(36, 'Bibhor takes 3 hours to fetch as much water as Ahmed can fetch in 2 hours. Deepak takes 5 hours to fetch as much water as Bibhor can fetch in 4 hours. A tank takes 20 hours to fill if all work together. Time would Bibhor take to fill the tank alone is (11*x) hours. Find x.', '6'),
(37, 'An ant is located at the vertex of a cube of length 1 meter. She wants to go to the diagonally opposite (and the farthest) vertex. The path of minimum length that she can take is sqrt(x) meter long. What is x?', '5'),
(38, 'How many times 0 is written if we list all numbers from 1 to 1000 both inclusive?\r\nIf the answer is x, what will be the second digit of x from right?', '9'),
(39, 'What is the last second digits of 7^(2008) ?', '0'),
(40, 'Consider a right circular cone of base radius 4 cm and height 10 cm. A cylinder is to be placed inside the cone with one of the flat surfaces resting on the base of the cone. Find the largest possible total surface area (in sq cm) of the cylinder. If your answer is n(pi)/100, what is n?', '3'),
(41, 'Let f(x) be a function satisfying f(x) f(y) = f(xy) for all real x, y. If f(2) = 4, then f(½)=n. What is the value of 8n ?', '2'),
(42, 'How many pairs of positive integers m, n satisfy (1/m)+(4/n)= (1/12), where n is an odd integer less than 60? ', '3'),
(43, 'Suppose you have a currency, named Miso, in three denominations: 1 Miso, 10 Misos and 50 Misos. In how many ways can you pay a bill of 107 Misos? If your answer is x, what is the value of x/2?', '9'),
(44, 'Consider four digit numbers for which the first two digits are equal and the last two digits are also equal. How many such numbers are perfect squares? ', '1'),
(45, 'A group of 630 children is arranged in rows for a group photograph session. Each row contains three fewer children than the row in front of it. What number of rows is not possible?', '6'),
(46, 'Consider the set S = {1, 2, 3, ..., 1000}. How many arithmetic progressions can be formed from the elements of S that start with 1 and end with 1000 and have at least 3 elements?', '7'),
(47, 'When you reverse the digits of the number 13, the number increases by 18. How many other two-digit numbers increase by 18 when their digits are reversed?', '6'),
(48, 'Arun, Barun and Kiranmala start from the same place and travel in the same direction at speeds of 30, 40 and 60 km per hour respectively. Barun starts two hours after Arun. If Barun and Kiranmala overtake Arun at the same instant, how many hours after Arun did Kiranmala start?', '4'),
(49, 'An equilateral triangle BPC is drawn inside a square ABCD. The value of the angle APD in degrees is n? Compute n/30.', '5'),
(50, 'There are 6 tasks and 6 persons. Task 1 cannot be assigned either to person 1 or to person 2; task 2 must be assigned to either person 3 or person 4. Every person is to be assigned one task. The number of ways in which the assignment can be done is x. What is the value of sqrt(x)/2?', '6'),
(51, 'A father has 7 sons. Each son has one sister. The eldest son and youngest son are not born from  same mother. The minimum number of females in the family are? assume all are alive.', '3'),
(52, 'A game each with two opponents is held in which 20 players take part. If each game is a do or die match, \r\nthe number of matches that are to be played before the final match is n. What is n-10?', '8'),
(53, 'NUMBER OF VALUES OF K FOR WHICH THIS EQUATION X^3-27X+K has atleast 2 distinct integer root is ', '4'),
(54, '(1, 1, 9) is a triple of natural numbers whose sum is 11. We consider (1,1,9), (1,9,1) and (9,1,1) to be the same triple because each triple has the same three numbers.\r\nHow many other triples of natural numbers have a sum of 11?\r\n', '9'),
(55, 'In the subtraction problem below, all five of the digits 3, 5, 6, 7 and 9 are to be placed, one in each box. What is the unit digit in smallest difference that can be the result?', '9'),
(56, ' Find the NUMBER OF positive EVEN NUMBERS of x where ||x| - 4| < 3.', '3'),
(57, '3x + 4|y| = 33. How many integer values of (x, y) are possible?', '4'),
(58, '9-3/1/3+1= ?', '1'),
(59, 'If at 1st stop 4 people get down from a bus and 6 people gets in a bus at last stop …finally there are 2 people left……so many were there in the start?', '9');

-- --------------------------------------------------------

--
-- Table structure for table `string`
--

CREATE TABLE `string` (
  `aid` int(10) NOT NULL,
  `string` varchar(1000) NOT NULL,
  `valid` varchar(10) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `string`
--

INSERT INTO `string` (`aid`, `string`, `valid`) VALUES
(1, 'VGO21', 'no'),
(2, 'EAX56', 'yes'),
(3, 'KXU80', 'yes'),
(4, 'TUZ22', 'yes'),
(5, 'AAZ71', 'yes'),
(6, 'CYU32', 'yes'),
(7, 'KSR15', 'yes'),
(8, 'LNK64', 'yes'),
(9, 'ECM26', 'yes'),
(10, 'XJA53', 'yes'),
(11, 'YYW22', 'yes'),
(12, 'FVH04', 'yes'),
(13, 'CKH68', 'yes'),
(14, 'GPZ31', 'yes'),
(15, 'MZM52', 'yes'),
(16, 'HKJ02', 'yes'),
(17, 'QYX68', 'yes'),
(18, 'ZOJ02', 'yes'),
(19, 'IGQ47', 'yes'),
(20, 'AAI30', 'yes'),
(21, 'YJF84', 'yes'),
(22, 'QTU59', 'yes'),
(23, 'POV63', 'yes'),
(24, 'LTE04', 'yes'),
(25, 'UEJ76', 'yes'),
(26, 'RGK96', 'yes'),
(27, 'WOD81', 'yes'),
(28, 'EKV02', 'yes'),
(29, 'BHT91', 'yes'),
(30, 'AHY47', 'yes'),
(31, 'ZTV90', 'yes'),
(32, 'NVD71', 'yes'),
(33, 'LQD98', 'yes'),
(34, 'OLQ94', 'yes'),
(35, 'LUX68', 'yes'),
(36, 'XYW19', 'yes'),
(37, 'DZY38', 'yes'),
(38, 'AUA25', 'yes'),
(39, 'HEB01', 'yes'),
(40, 'YTU62', 'yes'),
(41, 'BSZ96', 'yes'),
(42, 'NLS92', 'yes'),
(43, 'MLL38', 'yes'),
(44, 'GCU95', 'yes'),
(45, 'UKB71', 'yes'),
(46, 'TOQ19', 'yes'),
(47, 'KQE38', 'yes'),
(48, 'QRV26', 'yes'),
(49, 'XWP47', 'yes'),
(50, 'SCP54', 'yes'),
(51, 'RVM37', 'yes'),
(52, 'RBB48', 'yes'),
(53, 'TGN72', 'yes'),
(54, 'TBO92', 'yes'),
(55, 'YQH23', 'yes'),
(56, 'GMS84', 'yes'),
(57, 'JAJ66', 'yes'),
(58, 'SAR27', 'yes'),
(59, 'ZIU02', 'yes'),
(60, 'GIK47', 'yes'),
(61, 'XGK98', 'yes'),
(62, 'LPO15', 'yes'),
(63, 'TMO26', 'yes'),
(64, 'QCW08', 'yes'),
(65, 'UDQ34', 'yes'),
(66, 'PFU03', 'yes'),
(67, 'PNC39', 'yes'),
(68, 'KQS92', 'yes'),
(69, 'EFJ83', 'yes'),
(70, 'OHO97', 'yes'),
(71, 'XGC98', 'yes'),
(72, 'RWH80', 'yes'),
(73, 'DTM78', 'yes'),
(74, 'ULI94', 'yes'),
(75, 'PQD72', 'yes'),
(76, 'YQA38', 'yes'),
(77, 'ZUG82', 'yes'),
(78, 'YYM37', 'yes'),
(79, 'FZO40', 'yes'),
(80, 'VBA33', 'yes'),
(81, 'III57', 'yes'),
(82, 'MRY87', 'yes'),
(83, 'FWK85', 'yes'),
(84, 'MKN94', 'yes'),
(85, 'IHN99', 'yes'),
(86, 'IOL96', 'yes'),
(87, 'LCT90', 'yes'),
(88, 'ZEX33', 'yes'),
(89, 'DTH06', 'yes'),
(90, 'EKK02', 'yes'),
(91, 'NGY53', 'yes'),
(92, 'RBD08', 'yes'),
(93, 'RFS28', 'yes'),
(94, 'XXW92', 'yes'),
(95, 'NVM82', 'yes'),
(96, 'UDU00', 'yes'),
(97, 'MFP28', 'yes'),
(98, 'BRK54', 'yes'),
(99, 'BLF54', 'yes'),
(100, 'NMF58', 'yes'),
(101, 'LWX76', 'yes'),
(102, 'ODI56', 'yes'),
(103, 'COT00', 'yes'),
(104, 'EOB60', 'yes'),
(105, 'XQM85', 'yes'),
(106, 'YAM60', 'yes'),
(107, 'NTJ40', 'yes'),
(108, 'ODM81', 'yes'),
(109, 'WEO61', 'yes'),
(110, 'HSQ24', 'yes'),
(111, 'CKK93', 'yes'),
(112, 'VIH91', 'yes'),
(113, 'MEL94', 'yes'),
(114, 'DFJ57', 'yes'),
(115, 'CHD98', 'yes'),
(116, 'UWC45', 'yes'),
(117, 'KEQ90', 'yes'),
(118, 'BGG64', 'yes'),
(119, 'RQG79', 'yes'),
(120, 'ZSM18', 'yes'),
(121, 'NPP08', 'yes'),
(122, 'ZDW55', 'yes'),
(123, 'JMP47', 'yes'),
(124, 'EZB90', 'yes'),
(125, 'JMW43', 'yes'),
(126, 'ISD05', 'yes'),
(127, 'QSL26', 'yes'),
(128, 'PPN21', 'yes'),
(129, 'GDY72', 'yes'),
(130, 'FAM59', 'yes'),
(131, 'DBN28', 'yes'),
(132, 'DSJ73', 'yes'),
(133, 'ZNY74', 'yes'),
(134, 'IOX24', 'yes'),
(135, 'YVP39', 'yes'),
(136, 'CDO94', 'yes'),
(137, 'THD33', 'yes'),
(138, 'IEW76', 'yes'),
(139, 'LIL55', 'yes'),
(140, 'MWW88', 'yes'),
(141, 'FLT04', 'yes'),
(142, 'HWL55', 'yes'),
(143, 'FCX95', 'yes'),
(144, 'SZV57', 'yes'),
(145, 'FUS86', 'yes'),
(146, 'ZFF21', 'yes'),
(147, 'PKX15', 'yes'),
(148, 'RRV16', 'yes'),
(149, 'GCG48', 'yes'),
(150, 'XQI70', 'yes'),
(151, 'HHY10', 'yes'),
(152, 'FHL20', 'yes'),
(153, 'YFX91', 'yes'),
(154, 'QQP33', 'yes'),
(155, 'FQO49', 'yes'),
(156, 'UQC62', 'yes'),
(157, 'FZA17', 'yes'),
(158, 'INL98', 'yes'),
(159, 'UHR84', 'yes'),
(160, 'ARS25', 'yes'),
(161, 'EVD39', 'yes'),
(162, 'YGR59', 'yes'),
(163, 'QBZ06', 'yes'),
(164, 'OXT03', 'yes'),
(165, 'KSK79', 'yes'),
(166, 'OPE39', 'yes'),
(167, 'SMT71', 'yes'),
(168, 'WGR32', 'yes'),
(169, 'KFD90', 'yes'),
(170, 'FQW93', 'yes'),
(171, 'FFC09', 'yes'),
(172, 'TCY00', 'yes'),
(173, 'HHQ55', 'yes'),
(174, 'BDF12', 'yes'),
(175, 'IAM99', 'yes'),
(176, 'ZYN62', 'yes'),
(177, 'JWN61', 'yes'),
(178, 'YCE54', 'yes'),
(179, 'LWT34', 'yes'),
(180, 'GTB46', 'yes'),
(181, 'HRE28', 'yes'),
(182, 'SUJ52', 'yes'),
(183, 'JVH48', 'yes'),
(184, 'WAK23', 'yes'),
(185, 'JMC99', 'yes'),
(186, 'JCB46', 'yes'),
(187, 'OWP10', 'yes'),
(188, 'NGH59', 'yes'),
(189, 'TFC24', 'yes'),
(190, 'AIP97', 'yes'),
(191, 'YTJ71', 'yes'),
(192, 'KQS26', 'yes'),
(193, 'FFX51', 'yes'),
(194, 'NCY79', 'yes'),
(195, 'HTE33', 'yes'),
(196, 'OUM41', 'yes'),
(197, 'IWF19', 'yes'),
(198, 'TNE55', 'yes'),
(199, 'XTT36', 'yes'),
(200, 'HVY97', 'yes'),
(201, 'QNL76', 'yes'),
(202, 'QJE68', 'yes'),
(203, 'FPK04', 'yes'),
(204, 'LRW50', 'yes'),
(205, 'DIR11', 'yes'),
(206, 'HRL56', 'yes'),
(207, 'SAD57', 'yes'),
(208, 'SSW29', 'yes'),
(209, 'VUR25', 'yes'),
(210, 'CDQ25', 'yes'),
(211, 'CSC18', 'yes'),
(212, 'HXY11', 'yes'),
(213, 'OQS60', 'yes'),
(214, 'QUC26', 'yes'),
(215, 'MRR20', 'yes'),
(216, 'SKF92', 'yes'),
(217, 'NYE92', 'yes'),
(218, 'SWS09', 'yes'),
(219, 'ZGK85', 'yes'),
(220, 'UDG77', 'yes'),
(221, 'RUS15', 'yes'),
(222, 'CAI15', 'yes'),
(223, 'VGW69', 'yes'),
(224, 'BAJ98', 'yes'),
(225, 'FYD78', 'yes'),
(226, 'JMA73', 'yes'),
(227, 'QAH27', 'yes'),
(228, 'GDQ97', 'yes'),
(229, 'XVM67', 'yes'),
(230, 'TLG00', 'yes'),
(231, 'ZJD29', 'yes'),
(232, 'OEJ34', 'yes'),
(233, 'FEH82', 'yes'),
(234, 'GXH29', 'yes'),
(235, 'MNM95', 'yes'),
(236, 'PWF75', 'yes'),
(237, 'BFM99', 'yes'),
(238, 'DPQ98', 'yes'),
(239, 'ZTX48', 'yes'),
(240, 'ANV13', 'yes'),
(241, 'UIH09', 'yes'),
(242, 'PZO57', 'yes'),
(243, 'LNC83', 'yes'),
(244, 'HDF91', 'yes'),
(245, 'DAY34', 'yes'),
(246, 'VGK95', 'yes'),
(247, 'KVG36', 'yes'),
(248, 'YGZ20', 'yes'),
(249, 'YWZ06', 'yes'),
(250, 'AGE33', 'yes'),
(251, 'CAH59', 'yes'),
(252, 'BYD88', 'yes'),
(253, 'SXM02', 'yes'),
(254, 'KVJ36', 'yes'),
(255, 'TXB84', 'yes'),
(256, 'AVI03', 'yes'),
(257, 'ZHE25', 'yes'),
(258, 'ROL22', 'yes'),
(259, 'HCB95', 'yes'),
(260, 'TDI00', 'yes'),
(261, 'GDZ11', 'yes'),
(262, 'KIP02', 'yes'),
(263, 'IBO07', 'yes'),
(264, 'HZD06', 'yes'),
(265, 'LIQ71', 'yes'),
(266, 'ZNV68', 'yes'),
(267, 'NMN06', 'yes'),
(268, 'HID30', 'yes'),
(269, 'NXN05', 'yes'),
(270, 'KFD71', 'yes'),
(271, 'ZVL69', 'yes'),
(272, 'SHI54', 'yes'),
(273, 'QAC44', 'yes'),
(274, 'RRE46', 'yes'),
(275, 'KUN84', 'yes'),
(276, 'KMM78', 'yes'),
(277, 'HKV88', 'yes'),
(278, 'TTJ84', 'yes'),
(279, 'HYM63', 'yes'),
(280, 'OAT49', 'yes'),
(281, 'XUT36', 'yes'),
(282, 'DIP16', 'yes'),
(283, 'SLV90', 'yes'),
(284, 'ZTN62', 'yes'),
(285, 'KVZ93', 'yes'),
(286, 'MPD85', 'yes'),
(287, 'SJN58', 'yes'),
(288, 'QQM19', 'yes'),
(289, 'XQV79', 'yes'),
(290, 'SSJ01', 'yes'),
(291, 'CZQ95', 'yes'),
(292, 'DNP78', 'yes'),
(293, 'OXV38', 'yes'),
(294, 'SRM00', 'yes'),
(295, 'LSW66', 'yes'),
(296, 'GKZ90', 'yes'),
(297, 'KYF12', 'yes'),
(298, 'LCR97', 'yes'),
(299, 'FAW88', 'yes'),
(300, 'RJM84', 'yes'),
(301, 'AYC50', 'yes'),
(302, 'SEY94', 'yes'),
(303, 'ALG61', 'yes'),
(304, 'QHS20', 'yes'),
(305, 'YHY62', 'yes'),
(306, 'WPT19', 'yes'),
(307, 'ATT78', 'yes'),
(308, 'ZCY96', 'yes'),
(309, 'HTJ11', 'yes'),
(310, 'UXH14', 'yes'),
(311, 'BYU34', 'yes'),
(312, 'RRK90', 'yes'),
(313, 'VCV65', 'yes'),
(314, 'NTQ01', 'yes'),
(315, 'IQQ24', 'yes'),
(316, 'WZU82', 'yes'),
(317, 'SJL87', 'yes'),
(318, 'RAQ58', 'yes'),
(319, 'DYZ24', 'yes'),
(320, 'FXP91', 'yes'),
(321, 'PSW58', 'yes'),
(322, 'LIY20', 'yes'),
(323, 'PBK51', 'yes'),
(324, 'TAB52', 'yes'),
(325, 'UTZ78', 'yes'),
(326, 'BNX96', 'yes'),
(327, 'MEG10', 'yes'),
(328, 'MAW60', 'yes'),
(329, 'YIS99', 'yes'),
(330, 'IMQ27', 'yes'),
(331, 'HMD10', 'yes'),
(332, 'HED89', 'yes'),
(333, 'KNY26', 'yes'),
(334, 'HLX53', 'yes'),
(335, 'NED48', 'yes'),
(336, 'JBM98', 'yes'),
(337, 'YOI69', 'yes'),
(338, 'WMF54', 'yes'),
(339, 'YTG36', 'yes'),
(340, 'MPK39', 'yes'),
(341, 'DSY14', 'yes'),
(342, 'CHM82', 'yes'),
(343, 'SSK96', 'yes'),
(344, 'TEN39', 'yes'),
(345, 'NBN54', 'yes'),
(346, 'NRW74', 'yes'),
(347, 'VRA26', 'yes'),
(348, 'CXC71', 'yes'),
(349, 'HXN12', 'yes'),
(350, 'MBS23', 'yes'),
(351, 'AZB28', 'yes'),
(352, 'DDU38', 'yes'),
(353, 'XWE82', 'yes'),
(354, 'HUA52', 'yes'),
(355, 'OZH39', 'yes'),
(356, 'EPR51', 'yes'),
(357, 'FTI87', 'yes'),
(358, 'VKZ77', 'yes'),
(359, 'ZYK52', 'yes'),
(360, 'MOO81', 'yes'),
(361, 'EZP44', 'yes'),
(362, 'BPQ34', 'yes'),
(363, 'UIA71', 'yes'),
(364, 'DJT69', 'yes'),
(365, 'DRP27', 'yes'),
(366, 'OKK76', 'yes'),
(367, 'MLG15', 'yes'),
(368, 'SOD96', 'yes'),
(369, 'NNT29', 'yes'),
(370, 'KNU82', 'yes'),
(371, 'USN56', 'yes'),
(372, 'GRJ67', 'yes'),
(373, 'PXI92', 'yes'),
(374, 'VGP15', 'yes'),
(375, 'MEA44', 'yes'),
(376, 'WGT70', 'yes'),
(377, 'MGC12', 'yes'),
(378, 'YUR44', 'yes'),
(379, 'PRD50', 'yes'),
(380, 'CVR70', 'yes'),
(381, 'ATF21', 'yes'),
(382, 'YSI08', 'yes'),
(383, 'MBG53', 'yes'),
(384, 'WBP55', 'yes'),
(385, 'FKM36', 'yes'),
(386, 'VKM78', 'yes'),
(387, 'SMD84', 'yes'),
(388, 'VLL77', 'yes'),
(389, 'XPF40', 'yes'),
(390, 'FXK84', 'yes'),
(391, 'JXH27', 'yes'),
(392, 'NJX28', 'yes'),
(393, 'YEX84', 'yes'),
(394, 'GQN24', 'yes'),
(395, 'ZNO28', 'yes'),
(396, 'BLN22', 'yes'),
(397, 'FKZ99', 'yes'),
(398, 'OSU87', 'yes'),
(399, 'CGP12', 'yes'),
(400, 'ALB65', 'yes'),
(401, 'ZGR92', 'yes'),
(402, 'CYQ46', 'yes'),
(403, 'OIG69', 'yes'),
(404, 'NAU12', 'yes'),
(405, 'NHW58', 'yes'),
(406, 'NKC53', 'yes'),
(407, 'VWX03', 'yes'),
(408, 'YNM88', 'yes'),
(409, 'ORW72', 'yes'),
(410, 'RTG26', 'yes'),
(411, 'VEZ39', 'yes'),
(412, 'GTX35', 'yes'),
(413, 'WBP82', 'yes'),
(414, 'IPO83', 'yes'),
(415, 'LQB60', 'yes'),
(416, 'AJP91', 'yes'),
(417, 'YDP09', 'yes'),
(418, 'SDZ05', 'yes'),
(419, 'JAE18', 'yes'),
(420, 'ZCY98', 'yes'),
(421, 'STH23', 'yes'),
(422, 'WVT27', 'yes'),
(423, 'ZFA91', 'yes'),
(424, 'TMD88', 'yes'),
(425, 'XEV98', 'yes'),
(426, 'LAB83', 'yes'),
(427, 'JKV89', 'yes'),
(428, 'SFH61', 'yes'),
(429, 'MVA83', 'yes'),
(430, 'MFI61', 'yes'),
(431, 'SYB72', 'yes'),
(432, 'CTM80', 'yes'),
(433, 'XFI98', 'yes'),
(434, 'FYY32', 'yes'),
(435, 'XLU94', 'yes'),
(436, 'UML88', 'yes'),
(437, 'PGR33', 'yes'),
(438, 'QJN05', 'yes'),
(439, 'XRU16', 'yes'),
(440, 'HNP22', 'yes'),
(441, 'FDU57', 'yes'),
(442, 'DKG63', 'yes'),
(443, 'MST15', 'yes'),
(444, 'ZKV21', 'yes'),
(445, 'MRG43', 'yes'),
(446, 'FMX11', 'yes'),
(447, 'GQZ31', 'yes'),
(448, 'MGQ08', 'yes'),
(449, 'JIR93', 'yes'),
(450, 'IOQ56', 'yes'),
(451, 'ONW83', 'yes'),
(452, 'JJB58', 'yes'),
(453, 'THG40', 'yes'),
(454, 'OTL49', 'yes'),
(455, 'OSO73', 'yes'),
(456, 'ZYN07', 'yes'),
(457, 'IZA69', 'yes'),
(458, 'DTY41', 'yes'),
(459, 'KJY01', 'yes'),
(460, 'SGJ51', 'yes'),
(461, 'YWN57', 'yes'),
(462, 'OHA69', 'yes'),
(463, 'XAS62', 'yes'),
(464, 'MFL01', 'yes'),
(465, 'HRS55', 'yes'),
(466, 'OVH55', 'yes'),
(467, 'USC70', 'yes'),
(468, 'LCD58', 'yes'),
(469, 'SPF15', 'yes'),
(470, 'RDT99', 'yes'),
(471, 'AHX33', 'yes'),
(472, 'VJX18', 'yes'),
(473, 'OKZ27', 'yes'),
(474, 'LAO38', 'yes'),
(475, 'CDU58', 'yes'),
(476, 'MQJ19', 'yes'),
(477, 'KMA09', 'yes'),
(478, 'PRN38', 'yes'),
(479, 'UIS68', 'yes'),
(480, 'IXQ53', 'yes'),
(481, 'SNU56', 'yes'),
(482, 'YHU12', 'yes'),
(483, 'PQK43', 'yes'),
(484, 'AQY50', 'yes'),
(485, 'UNS11', 'yes'),
(486, 'ACF39', 'yes'),
(487, 'UYW47', 'yes'),
(488, 'JIL19', 'yes'),
(489, 'GMB29', 'yes'),
(490, 'TKS11', 'yes'),
(491, 'PCE17', 'yes'),
(492, 'YZH17', 'yes'),
(493, 'KBD21', 'yes'),
(494, 'MWN82', 'yes'),
(495, 'JMC38', 'yes'),
(496, 'JGD06', 'yes'),
(497, 'KBB69', 'yes'),
(498, 'DSY93', 'yes'),
(499, 'BWQ67', 'yes'),
(500, 'HXL11', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gameboard`
--
ALTER TABLE `gameboard`
  ADD UNIQUE KEY `a` (`aid`);

--
-- Indexes for table `playerdb`
--
ALTER TABLE `playerdb`
  ADD UNIQUE KEY `a` (`aid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD UNIQUE KEY `a` (`qno`);

--
-- Indexes for table `string`
--
ALTER TABLE `string`
  ADD UNIQUE KEY `a` (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gameboard`
--
ALTER TABLE `gameboard`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playerdb`
--
ALTER TABLE `playerdb`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `string`
--
ALTER TABLE `string`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
