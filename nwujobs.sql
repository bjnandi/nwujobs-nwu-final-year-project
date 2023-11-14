-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 05:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nwujobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(2, 'Engineering', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(3, 'Government', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(4, 'Medical', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(5, 'Construction', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(6, 'Software', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(7, 'Education', NULL, NULL),
(8, 'Sports', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `cname`, `slug`, `address`, `phone`, `website`, `logo`, `cover_photo`, `slogan`, `description`, `created_at`, `updated_at`) VALUES
(101, 112, 'Alfabeta', 'alfabeta', 'khulna', '073433333', 'alfabeta.com', '', '', 'learn and grow', 'we are very popular company', '2019-06-29 21:27:29', '2020-10-17 06:16:17'),
(105, 114, 'Bangladesh Red Crescent Society', 'bangladesh-red-crescent-society', '', '', '', '', '', '', '', '2020-10-17 05:27:09', '2020-10-17 05:27:09'),
(106, 115, 'Khulna Mukti Sheba Shogonstha', 'khulna-mukti-sheba-shogonstha', 'New Market Khulna', '01749804146', 'Mukti Sheba', '1602934378.jpg', '1602934346.jpg', '', '', '2020-10-17 05:28:47', '2020-10-17 05:32:58'),
(107, 116, 'ONE Bank Limited', 'one-bank-limited', '', '', '', '', '', '', '', '2020-10-17 05:35:16', '2020-10-17 05:35:16'),
(108, 117, 'CARE Bangladesh', 'care-bangladesh', '', '', '', '', '', '', '', '2020-10-17 05:37:25', '2020-10-17 05:37:25'),
(109, 118, 'Akij Foundation School', 'akij-foundation-school', 'Dhaka', '0170000000', 'afs.com', '', '', '', '', '2020-10-17 05:40:39', '2020-10-17 08:17:33'),
(110, 119, 'Global Brand Pvt. Ltd.', 'global-brand-pvt-ltd', '', '', '', '', '', '', '', '2020-10-17 05:42:12', '2020-10-17 05:42:12'),
(111, 120, 'Rangpur Community Medical College Hospital', 'rangpur-community-medical-college-hospital', '', '', '', '', '', '', '', '2020-10-17 05:43:06', '2020-10-17 05:43:06'),
(112, 121, 'Pathfinder International', 'pathfinder-international', '', '', '', '', '', '', '', '2020-10-17 05:44:49', '2020-10-17 05:44:49'),
(113, 122, 'Ufo Studio', 'ufo-studio', 'Nerala, Khulna', '01749804146', 'http://www.ufo-studio.com/', '', '', '', 'A Ufo Studio developer is responsible for: building and maintaining modern web applications using standard web development', '2020-10-17 05:45:36', '2020-10-17 07:17:31'),
(114, 123, 'North Western University, Khulna', 'north-western-university-khulna', 'Sonadanga,  Khulna', '01749804146', 'nwu.edu,bd', '', '', '', 'North Western University, established in 2012, is the first private university of Khulna, Bangladesh. It offers bachelor\'s degrees in ten subjects and master\'s degrees in six.', '2020-10-17 05:46:43', '2020-10-17 07:43:06'),
(115, 124, 'Green University of Bangladesh (GUB)', 'green-university-of-bangladesh-gub', 'Dhaka', '01749804146', 'gub.com', '', '', '', 'Green University of Bangladesh is one of the leading private universities in the country.', '2020-10-17 05:48:08', '2020-10-17 07:33:05'),
(116, 125, 'employer1', 'employer1', '', '', '', '', '', '', '', '2020-10-18 01:08:24', '2020-10-18 01:08:24'),
(117, 128, 'Company Name', 'company-name', 'Nerala, Khulna', '01749804146', 'companyname,com', '', '1603031630.jpg', 'Demo text', 'Nothing to Say', '2020-10-18 08:32:06', '2020-10-18 08:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 94, 111, '2019-06-29 20:56:02', '2019-06-29 20:56:02'),
(8, 70, 111, '2019-06-29 21:20:07', '2019-06-29 21:20:07'),
(11, 81, 111, '2019-07-06 23:26:36', '2019-07-06 23:26:36'),
(12, 93, 113, '2019-08-07 19:36:04', '2019-08-07 19:36:04'),
(14, 113, 127, '2020-10-18 08:23:11', '2020-10-18 08:23:11'),
(15, 111, 127, '2020-10-18 08:23:22', '2020-10-18 08:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `last_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_of_vacancy` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `company_id`, `title`, `slug`, `description`, `roles`, `category_id`, `position`, `address`, `type`, `status`, `last_date`, `created_at`, `updated_at`, `number_of_vacancy`, `experience`, `gender`, `salary`) VALUES
(101, '112', '101', 'Laravel developers needed', 'laravel-developers-needed', 'Alfabeta is comprised of thinkers and makers who believe in the power of digital engagement and promotions to forge lasting brand connections. – since 1994, we bring the shared passions of brands and consumers together with digital experiences that drive business and win consumers’ hearts. We work with multi-year-tenured, category-leading global clients including Mastercard, Carnival Cruise Line, NASCAR, SoundCloud, NFL, NBA, MLB, and many, many more.', 'Required Skills & Experience*\r\nMinimum 2-4 years of marketing/creative agency experience as a Back-end Developer\r\nTeam player, self-starter, innovation-inspired, and persistent troubleshooter comfortable working within an entrepreneurial-spirited, creative team culture\r\nUsing Amazon Web Services (AWS) technologies (EC2, S3, CloudFront, Elastic Transcoder, etc.)\r\nSolid working experience in PHP7', 6, 'Web developer', 'Khulna', 'Fulltime', 1, '2020-10-31', '2020-05-29 21:29:32', '2020-10-17 06:46:35', 2, 5, 'Male', 'Negotiable'),
(102, '112', '101', 'Vue Developer', 'font-end-developer', 'A Vue building and maintaining modern web applications using standard web development tools. writing clean and secure modular codes that have undergone strict testing and evaluation. checking the validity and consistency of HTML, CSS, and JavaScript on different platforms.', 'Are you a back-end Developer who thrives on seeing high-profile work come to life? Are you experienced with Laravel and working with a talented and creative front-end developer? Do you love to see your work on TV and across digital/mobile/social channels, hear it on the radio, see it live in public places so you could tell your friends and family, “Look what I did!”?', 1, 'Font End Developer', 'New Market Khulna', 'Parttime', 1, '2020-10-28', '2020-10-17 06:15:16', '2020-10-17 06:52:46', 5, 5, 'Female', 'Negotiable'),
(103, '122', '113', 'Engineer - (Laptop Motherboard Repair)', 'engineer-laptop-motherboard-repair', 'Bachelor in Engineering (BEngg) in Computer Science & Engineering, Diploma in Computer in Computer Science & Engineering', 'Must have sound & strong knowledge in Laptop servicing.\r\nLaptop/ Desktop chip-level mother board repairing.\r\nHands on experience in Laptop/desktop, motherboard, chip level repair for L2/L3/L4.\r\nIdentify problematic areas, troubleshoot, repair and test Laptop after repairing.\r\nShould have good knowledge of electronic circuits and components.\r\nAble to Install, configure and test Software programs on PC.\r\nSound knowledge in schematics diagram language.', 1, 'Engineer', 'Nerala, Khulna', 'Fulltime', 1, '2020-10-28', '2020-10-17 07:19:56', '2020-10-17 07:19:56', 5, 5, 'Male', '10000-20000'),
(104, '122', '113', 'Sr. Student Counselor (Australia/ UK/ USA)', 'sr-student-counselor-australia-uk-usa', 'Applicant should have a minimum Bachelor degree from any reputed University.', 'Counseling Students\r\nOrganize the documents and send to respective universities\r\nVisa Lodgment and all related works\r\nAssist students for their whole admissions procedure\r\nRemain regularly updated with latest information', 7, 'Student Counselor', 'Khulna', 'Fulltime', 1, '0000-00-00', '2020-10-17 07:21:15', '2020-10-17 07:21:15', 11, 5, 'Female', '500000-600000'),
(105, '124', '115', 'Professor/ Chairperson, Department of CSE', 'professor-chairperson-department-of-cse', 'Green University of Bangladesh is one of the leading private universities in the country. Its Department of Computer Science and Engineering (CSE) attracted many meritorious students and faculty members as a center of excellence for quality education. The university is looking for Faculty Members with very good standing in teaching, research and academic leadership to contribute in the development activities of the university as well as for the department of CSE. We encourage individuals, who are dedicated for development of educational institute, to apply aspiring to be a part of Green Family.', 'Act as Professor and Chairperson, Department of CSE', 1, 'Act as Professor', 'Dhaka', 'Parttime', 1, '2020-10-30', '2020-10-17 07:34:21', '2020-10-17 07:34:21', 1, 5, 'Any', '30000-500000'),
(106, '124', '115', 'Japanese Language Instructor (Part time)', 'japanese-language-instructor-part-time', 'VENTURAS is the most emerging Japanese Education & HR company based in Bangladesh which is well recognized by both Japanese and Bangladeshi government in Bangladesh. Aligned with top Universities in Bangladesh, it has already supported more than 120 engineers to work in Japan. Also, to support potential candidates to get jobs from Japan, providing Online Japanese Academy to IT professionals, which is the largest scale of Japanese school in Bangladesh.', 'Teaching Japanese Language to Bangladeshi Students who are IT professionals\r\nFor now, classes are conducted Online, but there is possibility that you may teach in classroom after next year January', 2, 'Language Instructor', 'Dhaka', 'Fulltime', 1, '2020-10-31', '2020-10-17 07:36:09', '2020-10-19 07:33:37', 5, 1, 'Any', 'Negotiable'),
(107, '123', '114', 'Lecturer in Computer Science & Engineering', 'lecturer-in-computer-science-engineering', 'Bachelor in Engineering (BEngg) in Computer Science & Engineering.', 'Must have sound & strong knowledge in Laptop servicing.\r\nLaptop/ Desktop chip-level mother board repairing.\r\nHands on experience in Laptop/desktop, motherboard, chip level repair for L2/L3/L4.\r\nIdentify problematic areas, troubleshoot, repair and test Laptop after repairing.\r\nShould have good knowledge of electronic circuits and components.\r\nAble to Install, configure and test Software programs on PC.\r\nSound knowledge in schematics diagram language.', 1, 'Lecturer', 'khulna', 'Fulltime', 1, '2020-10-31', '2020-10-17 07:46:13', '2020-10-17 07:46:13', 1, 5, 'Any', 'Negotiable'),
(108, '123', '114', 'Graphics Design', 'graphics-design', 'Graduation from any Discipline with proven Freelancing Record.', 'Ensure Minimum Earning of all trainee from all batches of Graphics Design course\r\nLead and guide all trainer of Graphics Design to ensure trainee earning.\r\nFind out the team member\'s weakness and take necessary steps to overcome his weakness.\r\nTaking updates from all trainer and send continuous report to management.\r\nConduct Graphics Designing Training by online platform zoom. (Online)\r\nSelect Trainee by reviewing form and Viva (Online)\r\nUpdated daily attendance and other required Report', 1, 'Graphics Design', 'khulna', 'Fulltime', 1, '2020-10-30', '2020-10-17 07:47:47', '2020-10-17 07:47:47', 1, 2, 'Any', 'Negotiable'),
(109, '123', '114', 'Associate Professor/ Assistant Professor, Dept. of CSE', 'associate-professor-assistant-professor-dept-of-cse', 'Green University of Bangladesh is one of the leading private universities in the country. Its Department of Computer Science and Engineering (CSE) attracted many meritorious students and faculty members as a center of excellence for quality education. The university is looking for Faculty Members with very good standing in teaching, research and academic leadership to contribute in the development activities of the university as well as for the department of CSE. We encourage individuals, who are dedicated for development of educational institute, to apply aspiring to be a part of Green Family.', 'Act as Associate Professor/ Assistant Professor, Dept. of CSE', 7, 'Associate Professor/ Assistant Professor', 'khulna', 'Parttime', 1, '2020-10-28', '2020-10-17 07:49:00', '2020-10-17 07:49:00', 1, 5, 'Any', '2000-5000'),
(110, '120', '111', 'Medical Assistant', 'medical-assistant', 'Diploma in Medical Technology', 'Ensure health and safety issues.\r\nCoordinate with the healthcare professional in treatment.\r\nAttend patients and provide first aid.\r\nKeep records of sickness.\r\nMedical fitness test for new workers.\r\nPerform any other tasks assigned by the Management/Superior.', 4, 'Medical Assistant', 'Rangpur', 'Fulltime', 1, '2020-10-29', '2020-10-17 07:51:37', '2020-10-17 07:53:14', 1, 1, 'Any', 'Negotiable'),
(111, '120', '111', 'Residential Medical Officer (RMO)', 'residential-medical-officer-rmo', 'Bachelor of Medicine and Bachelor of Surgery(MBBS)\r\nTraining/Trade Course: PGT, CMU, DMU,CCD,FCGP', 'Be present and contactable within the Hospital at all times.\r\nPerform USG of all patients\r\nAssist surgeon in OT\r\nManage emergency patients\r\nResponsible for providing medical management for in-door & out-door patients\r\nAssess patients when required/requested by Hospital\r\nMaintain clinical notes on all patients attended\r\nPrescribe medicines to take home and assist with discharge from indoor/emergency as required', 4, 'Residential Medical Officer (RMO)', 'Rangpur Division', 'Fulltime', 1, '2020-10-27', '2020-10-17 07:53:01', '2020-10-17 07:53:01', 1, 1, 'Female', '50000-10000'),
(112, '120', '111', 'Deputy Manager/ Manager - QA/QC', 'deputy-manager-manager-qaqc', 'B. Pharm / M. Pharm from any reputed University.', 'Receive batch document. Check all required batch documents are available and updated. Review and checking of batch related documents (BMR, BPR, IPC records, QC Test reports, deviation and change control, OOS etc.). Archive all batch release related documents, compilation of batch document.\r\nAct as change control coordinator; facilitate all change control activities. Assure change control activities are performed in a timely and contentious manner. Work closely with requesting departments as required to determine impact of change ensuring all supporting documentation/ data is present resulting in minimizing the CCF cycle time.\r\nAct as deviation management coordinator; facilitate all incident/deviation related activities, and assure deviation control activities are performed in a timely and continuous manner.\r\nResponsible for handling/supporting quality related customer complaints, product recall activities.', 4, 'Deputy Manager/ Manager - QA/QC', 'Khulna', 'Casual', 1, '2020-10-31', '2020-10-17 08:05:23', '2020-10-17 08:05:23', 1, 1, 'Male', 'Negotiable'),
(113, '120', '111', 'Jr. Executive/ Executive(Night & Day Shift)', 'jr-executive-executivenight-day-shift', 'The company is in the search of experienced and energetic candidates for Jr Executive/ Executive with good typing skills and accuracy.\r\nOffice time: Night Shift and Day shift\r\nFor Night Shift office time -Only for night shift: weekly 04 Days working and 03 days holiday', 'Typing well in English and Bengali.\r\nKnowing Photoshop work.', 4, 'Jr. Executive/ Executive', 'New Market Khulna', 'Fulltime', 1, '2020-10-27', '2020-10-17 08:07:26', '2020-10-17 08:07:26', 1, 1, 'Any', 'Negotiable'),
(114, '116', '107', 'Senior Officer (DCCI Business Institute)', 'senior-officer-dcci-business-institute', 'Masters in Economics/Finance and Banking/ Statistics.', '2-3 Year(s) experience in Trade Body/Research Organization/Regional Economic integration relevant organization.\r\nSound knowledge about industrial policy, SME policy, fiscal, monetary policy issues, banking and financial terms & issues etc.', 3, 'Senior Officer', 'khulna', 'Fulltime', 1, '2020-10-30', '2020-10-17 08:09:53', '2020-10-17 08:09:53', 5, 1, 'Any', 'Negotiable'),
(115, '116', '107', 'Senior Officer, Fraud & Dispute Management', 'senior-officer-fraud-dispute-management', 'Investigating, mitigating and solving fraud risk surrounding MFS industry', 'Analyzing accounts to mitigate fraud risk.\r\nGenerate reports to return the embezzled amount.\r\nTransaction Analysis to determine the cash flow of the reported fraud incidents.\r\nSuggest appropriate recommendations for punitive actions.', 5, 'Senior Officer, Fraud & Dispute Management', 'New Market Khulna', 'Fulltime', 1, '2020-10-26', '2020-10-17 08:11:25', '2020-10-17 08:11:25', 1, 1, 'Any', 'Negotiable'),
(116, '116', '107', 'Assistant Secretary (Trade Facilitation Department)', 'assistant-secretary-trade-facilitation-department', 'Sound knowledge about bilateral, regional & multilateral trade negotiations, agreements, international trade relationship and its dynamics, trade and business institutions/organizations.', 'Masters in Economics/ International Relations/I nternational Business/English.', 8, 'Assistant Secretary', 'jessore', 'Fulltime', 1, '2020-10-24', '2020-10-17 08:12:54', '2020-10-17 08:12:54', 1, 1, 'Any', 'Negotiable'),
(117, '118', '109', 'Site Engineer', 'site-engineer', 'Skills Required: Able to work under pressure.', 'Minimum 3 Years of experience both in Civil & Steel Contraction as site engineer, if you do not have the required experience please do not apply.\r\nEnsure a consistently high standard of work is produced in accordance with specification and quality standards through regular quality inspections with sub-contractors.\r\nDirect and supervise day to day operations of sub-contractors ensuring appliance of common operational procedures.\r\nEnsure material requisitions are issued in adequate time to achieve the Construction Programmed. Schedule, control and monitor all plants and materials on a weekly basis.\r\nSupervise site activities.\r\nMaintain the work schedule.', 5, 'Site Engineer', 'Dhaka', 'Casual', 0, '2020-10-25', '2020-10-17 08:14:36', '2020-10-18 08:54:06', 1, 1, 'Any', 'Negotiable'),
(118, '118', '109', 'Research and Business Development Officer', 'research-and-business-development-officer', 'Postgraduate degree in Social Science/Environmental Science/Business Administration or any other relevant field from any reputed University of Bangladesh.\r\nCandidate who has related training/diploma or publication will be given extra credentials.', 'Prepare project proposal, Expression of Interest (EOI), Request for Proposal (RFP), Concept Note, Research Proposal, Project Bidding/Tender;\r\nConduct research and survey works including Focus Group Discussions (FGDs), Key Informant Interviews (KIIs), Case Studies etc.\r\nDesign and development of survey instruments/tools;\r\nReport writing (Bangla and English);\r\nVisit field to collect data and supervise survey works;\r\nAttend client meeting;\r\nPrepare PowerPoint presentation;\r\nCarry out other tasks as assigned by organization.', 3, 'Research and Business Development Officer', 'Sylhet', 'Fulltime', 1, '2020-10-28', '2020-10-17 08:15:48', '2020-10-17 08:15:48', 1, 2, 'Any', 'Negotiable'),
(119, '118', '109', 'Cost Estimator', 'cost-estimator', 'Job Location: Dhaka (But have mindset to be posted outside of Dhaka)', 'Estimation and costing of the project\r\nBOQ & budget making of the project\r\nBill checking ( all kind of labor bills and others)\r\nRequisition checking\r\nOptional & modification works of customers', 5, 'Cost Estimator', 'Dhaka', 'Fulltime', 1, '2020-10-21', '2020-10-17 08:16:42', '2020-10-17 08:16:42', 1, 1, 'Any', 'Negotiable'),
(120, '118', '109', 'Creative Graphic Designer', 'creative-graphic-designer', 'We are looking for a creative executive who are expert in Graphics Designing', 'Social media content designing and publishing.\r\nPrepare, Organize & modify flyers, brochures, leaflets, banners, logos, newsletters, and other advertising materials for modern marketing and advertisements.\r\nPrimary Motion graphics & video editing for online/social media posts and advertisements\r\nStudy design briefs and determine requirements\r\nPrepare rough drafts and present ideas.\r\nStrong Visualization ability.\r\nPerforming other relevant tasks as assigned by the management time to time.\r\nPrimary UI/UX Knowledge', 5, 'Creative Graphic Designer', 'khulna', 'Fulltime', 0, '2020-10-17', '2020-10-17 08:19:29', '2020-10-18 08:53:38', 1, 1, 'Any', 'Negotiable'),
(121, '119', '110', 'Engineer - (Laptop Motherboard Repair)', 'engineer-laptop-motherboard-repair', 'Bachelor in Engineering (BEngg) in Computer Science & Engineering, Diploma in Computer in Computer Science & Engineering', 'Must have sound & strong knowledge in Laptop servicing.\r\nLaptop/ Desktop chip-level mother board repairing.\r\nHands on experience in Laptop/desktop, motherboard, chip level repair for L2/L3/L4.\r\nIdentify problematic areas, troubleshoot, repair and test Laptop after repairing.\r\nShould have good knowledge of electronic circuits and components.\r\nAble to Install, configure and test Software programs on PC.\r\nSound knowledge in schematics diagram language.', 1, 'Engineer', 'Khulna', 'Fulltime', 1, '2020-10-27', '2020-10-17 08:22:41', '2020-10-17 08:22:41', 1, 1, 'Any', 'Negotiable'),
(122, '119', '110', 'Senior Executive, Corporate Sales', 'senior-executive-corporate-sales', 'Department: Corporate Sales, Business Development\r\nJob Location: New Eskaton Road, Dhaka', 'Assist the Manager to drive top line goals through sales, by maintaining and growing strategic account.\r\nDevelop a strong understanding of company products and services.\r\nDemonstrate product and / or services and provide assistance in the best application of product and / or services.\r\nTo develop new business clients and Visualize & innovate scopes of business\r\nCoordinate with marketing team and provide assistance where necessary.\r\nPrepare documentations and regular updates\r\nPerform regular client visits to different corporate offices.\r\nPerform presentation, meeting, and discussion with potential clients in order to perform sales.\r\nContinue monitoring and analyze sales volumes and achieve sales target.\r\nWilling to take challenge in diverse situations.', 8, 'Senior Executive, Corporate Sales', 'Dhaka', 'Fulltime', 0, '2020-10-21', '2020-10-17 08:23:36', '2020-10-18 08:54:11', 1, 1, 'Any', 'Negotiable');

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_user`
--

INSERT INTO `job_user` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 101, 111, '2019-06-29 21:19:56', '2019-06-29 21:19:56'),
(2, 101, 90, '2019-06-03 14:00:00', '2019-06-16 14:00:00'),
(3, 81, 111, '2019-07-06 23:26:01', '2019-07-06 23:26:01'),
(4, 93, 113, '2019-08-07 19:36:03', '2019-08-07 19:36:03'),
(5, 83, 113, '2019-08-17 02:15:08', '2019-08-17 02:15:08'),
(6, 95, 113, '2020-01-26 22:49:33', '2020-01-26 22:49:33'),
(7, 114, 127, '2020-10-18 08:41:50', '2020-10-18 08:41:50'),
(8, 115, 127, '2020-10-18 08:42:17', '2020-10-18 08:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_09_234749_create_profiles_table', 1),
(4, '2019_03_09_234813_create_companies_table', 1),
(5, '2019_03_09_234841_create_categories_table', 1),
(6, '2019_03_09_235010_create_jobs_table', 1),
(7, '2019_03_10_050446_create_job_user_table', 1),
(8, '2019_03_10_050513_create_favourites_table', 1),
(9, '2019_05_13_092342_add_phone_number_to_profiles_table', 1),
(10, '2019_06_04_131129_add_column_to_jobs', 1),
(11, '2019_06_24_002132_create_roles_table', 1),
(12, '2019_06_24_002214_create_role_user_table', 1),
(13, '2019_06_24_002732_create_roles_table', 2),
(14, '2019_06_24_003214_create_role_user_table', 2),
(15, '2019_06_24_114243_create_roles_table', 3),
(16, '2019_06_24_114314_create_role_user_table', 3),
(17, '2019_06_25_012510_create_posts_table', 4),
(18, '2019_06_26_011218_rename_staus_column', 5),
(19, '2019_06_26_035509_create_testimonials_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ranjitkarki2@gmail.com', '$2y$10$l8IAJ3AvPW6hKYjFQhfMOOyGg1OuXlmh7TX2MlBP/x1lWp8AXNvEa', '2019-08-03 17:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'The 10 Golden Rules of Working With a Recruiter', 'this-is-job-title', 'Working with a good recruiter is an excellent option for both passive and active job seekers. Recruiters can have access to jobs, market information, insights, tips and connections that many people do not. If you haven’t worked with a recruiter before there are some ways to get the most of out the experience. Here are the 10 golden rules (for candidates) on how to work with a recruiter, according to Celarity’s recruiters!\r\n\r\n1. Be honest. From start to finish always be honest with your recruiter on what you’re looking for, your salary needs, and other opportunities. A good recruiter will return the favor. Neither party will benefit from dishonesty during the job search.\r\n\r\n2. Be responsive. If your recruiter calls you, call them back! If your recruiter contacts you, it’s usually for good reason. It may be a job offer, updates, or a new position that needs to be filled yesterday. Commit to being available and responsive throughout your time working with a recruiter.\r\n\r\n3. Be courteous. Recruiters are working for their clients, but also want to help you in your job search. Try to respect their time and communicate when you have updates or questions. They usually do not have a lot of time to give suggestions on your resume or where to look for positions. However, a good recruiter will coach you on their clients process and be an advocate for you.\r\n\r\n4. Be available. Recruiting is a very time sensitive industry. A client could call and ask to interview you that day.  While this isn’t always possible, if you’re serious about your job search, try and be accommodating and available to ease the process.\r\n\r\n5. Be proactive. Just because you met with a recruiter doesn’t mean you can sit back and stop your job search. If you’re unemployed or need a new job ASAP, you should continue to work on your job hunt and don’t rely 100% on recruiters.\r\n\r\n6. Stay in touch. Perhaps you took a 3 month contract job, make sure near the end of your contract you let your recruiter know what you’re looking to do and they can keep you in mind for future positions. Recruiters work with hundreds of candidates at a time and won’t always know when you’re available so stay in touch.\r\n\r\n7. Be ethical.  If you have signed an agreement with a particular recruiter, make sure you understand the agreement and ask any questions you might have.\r\n\r\n8. Be prepared. Before you even start connecting with recruiters, have your best resume prepped, practice your interview skills and know what you’re looking for. The more prepared you are the faster a recruiter can get you in process for open positions.\r\n\r\n9. Be decisive. Before an offer comes, be prepared to accept or decline it. One of the most detrimental things you can do to your opportunities is waiting to make a decision. The client may get offended at waiting or another candidate may join the process and your offer will expire.\r\n\r\n10. Be open. Your recruiter might share opportunities you hadn’t initially pictured yourself interested in. Perhaps you were thinking large corporate but an awesome opportunity that fit your background opened at a small firm. Be open to new opportunities so that your recruiter will not rule you out before you even get to hear about the role.', 'uploads/BSU3a2GeOuA0u8LsO0ZmqaWGKSlKjbJ5JaLQh0hp.jpeg', 1, NULL, '2019-12-19 05:22:48', '2020-10-16 23:20:46'),
(3, 'How to Handle Job Rejection', 'this-is-job-title', 'Getting rejected from a job opportunity you’re excited about can be detrimental to your confidence in your job search. The application and interview stages are usually quite a process and no matter where you are in that process, if you get rejected, it’s tough. Many candidates internalize this and it can majorly affect the motivation to jump back into your search. So, how do you overcome the rejection in a job search?\r\n\r\nReflect on the experience\r\nWhen you experience a ‘no’ in your job search, take the opportunity to turn it into a learning experience. Is there anything you wish you would have done differently throughout the hiring process? Did you learn anything about yourself? i.e. interview skills you need to work on, job responsibilities you do/don’t want to do. Take what you learned throughout the process and work on applying that to your next interview experience and become an even stronger candidate. Did the hiring manager give you any feedback? Use that too!\r\n\r\nNo bridge burning\r\nOne of the most difficult things to do when you’ve been rejected by an employer is to move on from the experience and not let it get you down. It’s easy to be angry and bad-mouth the employer, but you want to make sure you’re smart and avoid burning any bridges for future employment opportunities. If the company took time to interview you and included you in their pool of candidates, they saw you as a viable option and could possibly consider you again if the position opens. You could also potentially reach back out to the connections you made for networking purposes.\r\n\r\nFuel the fire\r\nYour natural instinct might be to give up and lose momentum, don’t do this! Use the rejection from the opportunity and let it motivate you even more! As mentioned before, use this as a learning experience to become the best candidate you can be. Get back out there and don’t let one or even a few rejections get you down, your perfect opportunity could be on it’s way.Getting turned down by an opportunity you were excited about is tough no matter what but if you handle it in the right way, it can end up benefiting you in the long run!', 'uploads/Nfnpfc6bOzSvYUL3sR5CAWejFH2ok6jTFATwGYjz.jpeg', 1, NULL, '2020-04-15 05:22:39', '2020-10-16 23:20:44'),
(4, '6 Tips on How to Master a Video Interview', 'this-is-post', 'Do you have a video interview on your agenda this week? Companies are now leaning on technology to fill their hiring and recruiting needs. Video interviewing allows recruiters and hiring managers to complete interviews faster than traditional methods, ultimately speeding up the hiring process. So, how does a person ace a virtual meeting? Here are a few helpful tips to ensure you have a successful video interview!\r\n\r\nPractice makes perfect\r\nTreat this interview just like any face-to-face interview and practice your answers beforehand. If you are practicing with a friend or family member, wear your interview outfit and get their opinion on it. If you are going to have your video interview at home, you can even pick the spot in advance to ensure that the lighting, sound, and background are in an appropriate setting. and practice in this area. \r\n\r\nTest out your set-up\r\nIf you are using a laptop or tablet, make sure that the device is fully charged on the day of the interview. Another key factor in running a successful video interview is ensuring your connection to WiFi is strong. Test the connection again 10-15 minutes before you’re set up to meet. Also, avoid using a smartphone or small device in these situations. It’s best to use a device with a bigger screen. If you are using a tablet, make sure you position it so that it is stationary. \r\n\r\nAccording to Katie Larson, Lead Marketing Recruiter, “I have had a few video interviews that have been unflattering because their face is too far away or too close to the camera. Or, they have bad lighting. I’ve also had interviews where candidates can’t figure out how to turn on the video or sound, and it shows they are unprepared. I would recommend setting up 10 minutes early, to avoid these mistakes.”\r\n\r\nClear unnecessary distractions\r\nComputer or tablet microphones typically are sensitive and will pick up any noise in the room. If you are interviewing at home, make sure that you are in a quiet room and avoid areas of the house with loud noises such as dogs barking, children playing, music, or etc.  It is best to turn off your phone and/or any alerts that may come to your computer or tablet to avoid getting thrown off by these notifications during the interview. Lastly, ensure that the area or room you have chosen is clean and clear of clutter.\r\n\r\nDress for the occasion\r\nIt may seem tempting to only dress from the waist up, but I assure you that this may not be the best idea – just in case the viewer sees (we’ve all seen that commercial)! You should dress how you would as if you were interviewing in-person – head-to-toe. A good rule of thumb is to avoid wearing flashy colors and choose options that make you feel comfortable and confident. \r\n\r\nKeep your focus \r\nIn video interviews, it’s important to make sure that you are making eye contact with whomever you are speaking with. This means that you are looking at the camera and not the picture image of yourself. Ensuring that your face is at a good distance from the camera is also important. Remember that the same gestures and good posture still apply in this virtual setting. Keep in mind, if the connection of your wifi isn’t strong, hand gestures may be delayed. So, it’s best to try and keep your hands positioned on your lap as much as possible. \r\n\r\nPrepare questions\r\nWhen interviewing, you’ll want to come across engaged and interested in the opportunity, especially if the interview is over video. In this case, you want to try to make yourself seem extra curious. So, it’s extremely important to ask as many questions as possible. Make sure to have your questions ready ahead of time and written down somewhere close to you. It’s also a good idea to have something to write with near you so you can jot down the answers. You will come off as excited to know more about the company, culture and/or position and ultimately end on a good note.', 'uploads/rkdYdrWPKdBKkYT8ymtXcA7SUYtGVhZmwUgMadmF.jpeg', 1, NULL, '2020-10-11 21:19:16', '2020-10-16 23:20:43'),
(5, 'Job seeker’s most crucial tool in bangladesh', 'post', 'The internet is a job seeker’s most crucial tool to success today. From connecting with potential employers online to researching job hunting best practices, it’s a goldmine of opportunity.  With so much information on what’s right and wrong and hot or not in the job seeking world, how do you filter out the the high quality content from the junk? There are countless blogs on how to write the perfect resume and how to follow up after an interview and it’s hard to tell who really knows what they’re talking about.\r\n\r\nWe’ve weeded through hundreds of job hunting blogs to bring you our 5 favorites, with quality content and awesome advice, add these to your RSS feed today!', 'uploads/v0dcwRpe6331YbQwLFDHpk0qHFOVIDszEm1g1AHl.jpeg', 0, NULL, '2020-10-20 21:19:16', '2020-10-18 08:55:33'),
(6, 'thisis posr', 'thisis-posr', 'sdf', 'uploads/eRI4p0dNO7UY5eH6M8wgQ94Aig4dUZFNKFY4Yftb.jpeg', 1, '2019-07-06 23:28:39', '2020-02-11 05:22:30', '2019-07-06 23:28:39'),
(7, 'How to Write Inclusive & Diverse Job Descriptions', 'how-to-write-inclusive-diverse-job-descriptions', 'Are you discouraging great applicants from applying? Writing inclusive and diverse job descriptions is your first step to attracting top talent. According to the Hewlett-Packard report, Men apply for a job when they meet only 60% of the qualifications while Women only apply if they meet 100% of the requirements. The report also states that 22% of women indicated that their top reason for not applying to jobs is because they’re scared of failing. On the other hand, 13% of men would rather apply to a position and fail rather than not apply at all. \r\n\r\nAs the platform LinkedIn states, “even something minor – like a word- can affect whether or not you are attracting a diverse talent pool.” So, how do you write job descriptions that allow women to apply at the same rate as men do? Or, how do you ensure that you’re diversifying your candidate pool? \r\n\r\n1. Use General, Neutral Language\r\nThe goal of a job description is to invite applicants to apply. In order to do this successfully, you must avoid using gender-biased language which is known to discourage candidates from applying. Women often will feel discouraged when finding masculine language within a job description and vice versa for men. \r\n\r\nFor example, when women come across words like “competitive” or “strong”, they may feel discouraged from applying to that particular role. Men often feel discouraged when finding feminine language within job descriptions such as “supportive” or “nurturing”. Watch out when it comes to selecting pronouns as well. Instead of using words like “he or she” write “you” or “they” when describing responsibilities.\r\n\r\nNeed help writing general neutral job descriptions? Here are two tools that can help you! Gender Decoder for Job Ads is a free option while textio must be purchased. \r\n\r\n2. Avoid Jargon & Inside Language\r\nUsing complex sentences and words can make some qualified applicants feel unqualified for a position. Assume that candidates do not understand “inside language” and write out sentences that are straight to the point. Focus on writing job descriptions that describe the job overview, responsibilities, and requirements concisely. \r\n\r\n3. Prioritize Your “Must Haves”\r\nIn order to attract candidates with various skills, you must ensure that your requirements for a role are written effectively. Instead of listing out numerous requirements, delete the “Nice to Haves” and include ONLY what is necessary. If you know that there is some flexibility on qualifications, try softening the language. For example, you can use verbiage  like “familiarity with”, “some previous experience in” and/or “basic knowledge of.” Remember less is more, especially in this section of your job description. \r\n\r\n4. Showcase Your Company’s Benefits & Values\r\nIf your company offers great benefits, be sure to call them out in the job description. Even though not every employee will utilize your benefits package, it’s still important to prove your commitment to your workers, especially in this area. For example, if you have paid family sick time or maternity leave, this will go a long way to show your company’s level of support. \r\n\r\nAnother great item to add to your job description is your company’s values or mission statement. This is a way for candidates to get a good idea of what your company cares about and attract people of shared values. If your company has won awards and/or supports specific nonprofits – be sure to highlight them in this section.', 'uploads/qICQ8WDQCe9aM8TCg9WpKlLZ92HNQ1ZWdl9AFMbV.jpeg', 1, NULL, '2020-10-07 21:19:16', '2020-10-16 21:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_letter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `phone_number`, `gender`, `dob`, `experience`, `bio`, `cover_letter`, `resume`, `avatar`, `created_at`, `updated_at`) VALUES
(1, '90', '', NULL, 'male', '201221321', '2 years experience', 'i am engineer ', 'public/files/OfCdWbU1w62XIwpUmACwuZS7MKEIUnykQIelqyCj.doc', '', '', '2019-06-23 21:01:37', '2019-06-23 21:01:37'),
(2, '111', '12 gosforf', '095464545', 'male', '21323423', 'highly experience', 'i am engineer ', 'public/files/OfCdWbU1w62XIwpUmACwuZS7MKEIUnykQIelqyCj.doc', 'public/files/h1jzkIMnbotVF1ZwyKsQSAogQEeMjciEFBkbJohP.doc', '1561877822.jpg', '2019-06-26 15:20:50', '2019-06-29 21:20:17'),
(3, '113', 'sdfsd', '324234234324', 'female', '08/15/2019', '1 years experience', 'i am engineer', '', '', '1565242654.jpg', '2019-08-03 16:49:32', '2020-01-26 22:27:07'),
(4, '126', '', NULL, 'male', '2020-10-30', '', '', '', '', '', '2020-10-18 06:35:25', '2020-10-18 06:35:25'),
(5, '127', 'Tala, Satkhira', '01749804146', 'male', '1994-12-30', 'Web Developer at UFO STUDIO in 4 year', 'Bsc in CSE NWU, Khulna\r\nWeb Developer at Ufo studio, Khulna', 'public/files/SVv4BvoF3sS53ORcnizlD7frqFiUoXbldQPAC2D3.pdf', 'public/files/KHqYDaL4LkWZjcX70zUPpgSKpt2AOqLKaiUQWrZZ.docx', '1603030523.jpg', '2020-10-18 08:04:55', '2020-10-18 08:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-06-24 02:04:55', '2019-06-24 02:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 110, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `content`, `name`, `profession`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque, nisi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nobis magni eaque velit eum, id rem eveniet dolor possimus', 'John doe', 'Software engineer', 342979043, '2019-06-25 18:27:35', '2019-06-25 18:27:35'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley', 'Biswajit Nandi', 'CEO', 342979043, '2020-10-18 00:58:03', '2020-10-18 00:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(90, 'Electa Schaden', 'seeker', 'feeney.stefan@example.com', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MIEGC18gjE', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(91, 'Miss Dovie Wolf', 'seeker', 'raynor.mandy@example.net', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3LYyI34tPh', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(92, 'Lora Gorczany', 'seeker', 'aliza50@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3NW12l5FbD', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(93, 'Bernhard Haag', 'seeker', 'heaney.aisha@example.com', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zn0BfeRP7C', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(94, 'Roderick Carter IV', 'seeker', 'eldridge39@example.com', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jxQuEBUoDU', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(95, 'Ashtyn Metz', 'seeker', 'dee03@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PFH6h5YeZq', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(96, 'Arnoldo McClure', 'seeker', 'edmund14@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tDkEgyBnVe', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(97, 'Obie Ruecker II', 'seeker', 'osborne.stanton@example.net', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9YkUrWa26m', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(98, 'Jessie Bruen', 'seeker', 'delphia92@example.com', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9MpxGcR10C', '2019-06-24 02:04:54', '2019-06-24 02:04:54'),
(99, 'Harvey Larkin', 'seeker', 'baumbach.arvid@example.com', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JbUhS9UQQB', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(100, 'Misty McDermott V', 'seeker', 'rosetta.flatley@example.net', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EoiRPNCSAz', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(101, 'Eusebio Deckow V', 'seeker', 'bmurphy@example.net', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A7wROctswI', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(102, 'Javonte Fahey', 'seeker', 'heaney.eda@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'shJD6NBw7a', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(103, 'Elsie Waelchi', 'seeker', 'jesse.nolan@example.net', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wSVSpofyeJ', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(104, 'Armando Hamill Jr.', 'seeker', 'breitenberg.jameson@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4CK5eapYsW', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(105, 'Carissa Donnelly', 'seeker', 'ephraim.kuphal@example.net', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1u1WQgqZPy', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(106, 'Miss Sheila Smitham Jr.', 'seeker', 'predovic.art@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9mkvn6HGUV', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(107, 'Bert O\'Kon III', 'seeker', 'cstamm@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z7DDQkAUCP', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(108, 'June Simonis', 'seeker', 'delphia.gerhold@example.org', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h5lYd9Hs9v', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(109, 'Ethelyn Thompson', 'seeker', 'gtrantow@example.com', '2019-06-24 02:04:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kjHhDVGUeV', '2019-06-24 02:04:55', '2019-06-24 02:04:55'),
(110, 'admin', '', 'admin@gmail.com', '2019-06-24 02:04:55', '$2y$10$8CU4DSl0uk1ZdhJtCMg1ZeJZDzwWqFUzNgwrFictXmKn/ViIRpyWO', 'jRwIcCHOwwcTzSDYFAyzOBg6UCFYGqIcBW2XSzqjb85kOzZBPnZQpeI85bE7', '2019-06-24 02:04:55', '2020-10-16 21:08:47'),
(111, 'ranjit', 'seeker', 'seeker@gmail.com', '2019-06-26 14:00:00', '$2y$10$MIWao.CaPXQrtoxLYtX1/OK7ZyZaj3zcge4UGJL/w5uGCUDynaZ.K', NULL, '2019-06-26 15:20:50', '2019-06-26 15:20:50'),
(112, '', 'employer', 'employer@gmail.com', '2019-06-29 14:00:00', '$2y$10$nIN2o5Wvk1E7ZW6uWEYekeComgAl.4o3L4dIPZu7T8ZUYFg/O6q.C', NULL, '2019-06-29 21:27:29', '2019-06-29 21:27:29'),
(113, 'ranjeet', 'seeker', 'ranjitkarki2@gmail.com', '2019-08-03 16:51:37', '$2y$10$dw7xavmE0SF.zyaHNDnSDegF3ZJdNHtB7l0.9lsK9b4aOdsXihlj6', 'ixBRGIRkCrdg2PxDCdf8EaOy6g4HKbB1mdBJRFBrVKfOYw3eOMybTx9x4HHc', '2019-08-03 16:49:32', '2019-08-03 16:51:37'),
(114, '', 'employer', 'redcrescentsociety@gmail.com', '2020-10-04 13:13:32', '$2y$10$m7wDysZhjzu.O77Pj5z7Cemg4NzxXX8VFLHY3cc8Me6qEKTXLHnwe', NULL, '2020-10-17 05:27:09', '2020-10-17 05:27:09'),
(115, '', 'employer', 'muktisheba@gmail.com', '2020-10-17 05:30:39', '$2y$10$.K49JWH9xRFScXTnxy6U6OV8xlNLuVf6lPaPqQUTwlEUW9rYUyeWG', NULL, '2020-10-17 05:28:47', '2020-10-17 05:30:39'),
(116, '', 'employer', 'onebank@gmail.com', '2020-10-04 18:00:00', '$2y$10$nIN2o5Wvk1E7ZW6uWEYekeComgAl.4o3L4dIPZu7T8ZUYFg/O6q.C', NULL, '2020-10-17 05:35:16', '2020-10-17 05:35:16'),
(117, '', 'employer', 'carebangladesh@gmail.com', '2020-10-04 13:13:26', '$2y$10$RqSPDE/x13EFVEyh7lH0VeEjj2N5XjE39xUIJZaWNgQtPipZKi0Am', NULL, '2020-10-17 05:37:25', '2020-10-17 05:37:25'),
(118, '', 'employer', 'akij@gmail.com', '2020-10-11 13:13:23', '$2y$10$bnPr.OMzcQr1e1tRmhTys.mLucAQ1FqALV0uQ1sHO7eU9eEIbq0S2', NULL, '2020-10-17 05:40:39', '2020-10-17 05:40:39'),
(119, '', 'employer', 'globalbrand@gmail.com', '2020-10-12 13:13:21', '$2y$10$cKDjZZPr4AEkvbH2IlAx.e5Sz6eZ1Qjqw0m3QNOTdPBVcIkAzGnZm', NULL, '2020-10-17 05:42:12', '2020-10-17 05:42:12'),
(120, '', 'employer', 'rcmg@gmail.com', '2020-10-19 13:13:18', '$2y$10$7915mzEsmVLheP8IfrrPue21cAXh4NWXpXfe6WJRfhJLIBW3Q3JKK', NULL, '2020-10-17 05:43:06', '2020-10-17 05:43:06'),
(121, '', 'employer', 'pathfinder@gmail.com', '2020-10-18 13:13:14', '$2y$10$LawUO2U0xcwj6G4qPMnKP.UyeFKCZHH1nQSqTbKz7kzqDjOctkIO2', NULL, '2020-10-17 05:44:49', '2020-10-17 05:44:49'),
(122, '', 'employer', 'ufo@gmail.com', '2020-10-17 13:13:11', '$2y$10$7zYYHcj/xfSFpUs9tFGQ8.aJeTFH1Gh.1Kub8cXpDfO/qs9UodG82', NULL, '2020-10-17 05:45:35', '2020-10-17 05:45:35'),
(123, '', 'employer', 'nwuk@gmail.com', '2020-10-16 18:00:00', '$2y$10$GYOr0wVJnYNnSEieqzNGCOOyPU/aWPcqwpCzkOOogtTRnpZKtJ/d2', NULL, '2020-10-17 05:46:43', '2020-10-17 05:46:43'),
(124, '', 'employer', 'gub@gmail.com', '2020-10-17 13:13:06', '$2y$10$QyEkn/Zd.cr2.QMSx6ikPe325GWoeCHzE1YE2o7iufps.985CpIGO', NULL, '2020-10-17 05:48:08', '2020-10-17 05:48:08'),
(127, 'Biswajit Nandi', 'seeker', 'biswajit@gmail.com', '2020-10-18 08:06:43', '$2y$10$q9.8h.WlMiaV8mZOhjVPr.LYYLMBT8q0r30yvW7.A0/6EOTRFMDnG', NULL, '2020-10-18 08:04:55', '2020-10-18 08:06:43'),
(128, '', 'employer', 'company@gmail.com', '2020-10-18 08:32:42', '$2y$10$8eBIGRDltqGafQhcNIrWMeU1I23KsiWA/NPM.01tfF9inkzXwL13G', NULL, '2020-10-18 08:32:06', '2020-10-18 08:32:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
