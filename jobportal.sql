-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 04:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `admin_type` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `admin_email`, `admin_pass`, `admin_username`, `first_name`, `last_name`, `admin_type`) VALUES
(1, 'company@gmail.com', 'company', 'JobPortal', 'Job', 'Portal', 1),
(2, 'ujjwal2000@gmail.com', '12345', 'Ujjwal Nimbokar', 'Ujjwal', 'Nimbokar', 2),
(3, 'atharav@gmail.com', '12345', 'Atharav Mankar', 'Atharav', 'Mankar', 2),
(4, 'samir@gmail.com', '12345', 'Samir Sontakke', 'Samir', 'Sontakke', 2),
(5, 'shravani@gmail.com', '12345', 'Shravani  Shinganwadikar', 'Shravani', 'Shinganwadikar', 2),
(6, 'nikit@gmail.com', '12345', 'Nikita Suple', 'Nikita', 'Suple', 2),
(7, 'jobusans2015@gmail.com', '12345', 'jobusans', 'job', 'portal', 1),
(8, 'radha@gmail.com', '12345', 'Radha', 'Radha', 'Nimbokar', 2),
(9, 'prajwal@gmail.com', '12345', 'Prajwal', 'Prajwal', 'Nimbokar', 2),
(10, 'astha@gmail.com', '12345', 'Astha', 'Astha', 'Deshmukh', 2),
(11, 'tanvi@gmail.com', '12345', 'Tanvi', 'Tanvi', 'Waghamare', 2),
(12, 'abhang@gmail.com', '12345', 'Abhang', 'Abhang', 'Paturkar', 2),
(13, 'pratik@gmail.com', '12345', 'Pratik', 'Pratik', 'Ghurde', 2),
(14, 'ujjwal2006@gmail.com', '12345', 'Ujjwal', 'Ujjwal', 'Nimbokar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE `admin_type` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`id`, `admin`) VALUES
(1, 'Super admin'),
(2, 'Customer admin');

-- --------------------------------------------------------

--
-- Table structure for table `all_jobs`
--

CREATE TABLE `all_jobs` (
  `job_id` int(111) NOT NULL,
  `customer_email` varchar(111) CHARACTER SET latin1 NOT NULL,
  `job_title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `des` varchar(500) CHARACTER SET latin1 NOT NULL,
  `country` varchar(111) CHARACTER SET latin1 NOT NULL,
  `state` varchar(111) CHARACTER SET latin1 NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 NOT NULL,
  `keyword` varchar(111) NOT NULL,
  `category` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_jobs`
--

INSERT INTO `all_jobs` (`job_id`, `customer_email`, `job_title`, `des`, `country`, `state`, `city`, `keyword`, `category`) VALUES
(1, 'ujjwal2000@gmail.com', 'Bakery Assistant', 'assist bakers and pastry chefs by serving customers at counters where bakes goods are sold. Responsibilities in', 'India', 'Maharashtra', 'Amravati', 'Assistant', 'Food and beverage manufacturing'),
(2, 'ujjwal2006@gmail.com', 'Textile Designer', 'Working of creating two dimensional designs, repeat designs, production of knit, weave and printed fabrics ', 'India', 'Maharashtra', 'Amravati', 'Designer', 'Textual and apparel manufacturing'),
(3, 'ujjwal2006@gmail.com', 'Sales Manager', 'Building and leading a team of salespeople to help drive revenue and motivate teams to generate leads, build cl', 'India', 'Maharashtra', 'Amravati', 'Manager', 'Textual and apparel manufacturing'),
(4, 'ujjwal2000@gmail.com', 'Assistant Restaurant Manager', 'Charge of making sure that everything runs smoothly at your local restaurant and Responsibility of selecting, d', 'India', 'Maharashtra', 'Kolhapur', 'Manager', 'Food and beverage manufacturing'),
(5, 'ujjwal2000@gmail.com', 'Fast Food Manager', 'Run commercial establishments and make sure high-quality food and drinks are delivered to customers. Other resp', 'India', 'Maharashtra', 'Kolhapur', 'Manager', 'Food and beverage manufacturing'),
(6, 'ujjwal2000@gmail.com', 'Bakery Chef', 'Bakes various desserts in a kitchen within a restaurant or bakery. Main duties include like create pastries, co', 'India', 'Maharashtra', 'Satara', 'Chef', 'Food and beverage manufacturing'),
(7, 'atharav@gmail.com', 'Agri Assistant', 'Ensure that the agricultural field like sites, animals, crops, machinery and equipment maintained in functional', 'India', 'Maharashtra', 'Malegaon', 'Assistant', 'Agriculture and Others'),
(8, 'atharav@gmail.com', 'Agribusiness Manager', 'Plan, organize, lead and administer businesses which deal with agricultural inputs and outputs and involved in ', 'India', 'Maharashtra', 'Malegaon', 'Manager', 'Agriculture and Others'),
(9, 'atharav@gmail.com', 'Cluster Assistant', 'Leads and supports change. Have budgetary and HR related Responsibilities. Assist managers and staff on routine', 'India', 'Maharashtra', 'Satara', 'Assistant', 'Agriculture and Others'),
(10, 'radha@gmail.com', 'Cafe Manager', 'Selling food and drinks, hiring and scheduling staff, menu planning and maintaining inventory. ', 'India', 'Maharashtra', 'Amravati', 'Manager', 'Hospitality'),
(11, 'nikita@gmail.com', 'Project Manager', 'Managing the production of the required deliverables. Planning and monitoring the project. Adopting any delegat', 'India', 'Maharashtra', 'Jalna', 'Manager', 'Construction Services'),
(12, 'shravani@gmail.com', 'Inside sales Specialist', 'Inside sales representatives sell products and services to customers either in an office environment or a store', 'India', 'Maharashtra', 'Amravati', 'Specialist', 'Wholesale/Retail'),
(13, 'ujjwal2006@gmail.com', 'Inside sales Specialist', 'Inside sale is way of handling sales remotely.The job of an inside sale rep requires them to sell an organisati', 'India', 'Maharashtra', 'Amravati', 'Specialist', 'Textile and apparel manufacturing'),
(14, 'ujjwal2006@gmail.com', 'Chat support', 'A chat support agent connect with customer through instant messaging on business websites or mobile application', 'India', 'Maharashtra', 'Akola', 'Support', 'Textile and apparel manufacturing'),
(15, 'ujjwal2006@gmail.com', 'Autocare Centre', 'Inspecting vehicle engine and mechanical /electrical components to diagnose issue.', 'India', 'Maharashtra', 'Nagpur', 'Centre', 'Textile and apparel manufacturing'),
(16, 'ujjwal2006@gmail.com', 'Senior Executive', 'Senoier Executive oversee departmental operation across the company, ensuring product efficiency and high quali', 'India', 'Maharashtra', 'Sangali', 'Executive', 'Textile and apparel manufacturing'),
(17, 'ujjwal2006@gmail.com', 'Deputy Manager', 'Deputy manager aids the planning, development and execution of various compnay program and initiatives', 'India', 'Maharashtra', 'Satara', 'Manager', 'Textile and apparel manufacturing'),
(18, 'ujjwal2006@gmail.com', 'Account Executive', 'Creating detailed business plans to reach predetermined goals and quotas.\r\nManaging the entire sales cycle from', 'India', 'Maharashtra', 'Malegaon', 'Executive', 'Textile and apparel manufacturing'),
(19, 'ujjwal2006@gmail.com', 'Associate Designer', 'Associate Designer is responsible for assisting the lead designer or art director with the production and desig', 'India', 'Maharashtra', 'Partawada', 'Designer', 'Textile and apparel manufacturing'),
(20, 'ujjwal2000@gmail.com', 'Barista', 'A Barista is a professional who makes and serves beverages such as coffee, tea and speciality beverages.', 'India', 'Maharashtra', 'Achalpur', 'Barista', 'Food and beverage manufacturing'),
(21, 'ujjwal2000@gmail.com', 'Steward', 'A steward helps manage a restaurant or bar and keeps if clean and hygienic. They may assist with dishwashing', 'India', 'Maharashtra', 'Daryapur', 'Steward', 'Food and beverage manufacturing'),
(22, 'radha@gmail.com', 'Waiter ', 'Waiters assist restaurant patron by noting their order, serving tables their requested meals, and preparing bill.', 'India', 'Maharashtra', 'Paras', 'Waiter', 'Hospitality'),
(23, 'radha@gmail.com', 'Restaurant Supervisor', 'Restaurant Supervisor oversee all restaurant operations to ensure that restaurant run smoothly.', 'India', 'Maharashtra', 'Sangali', 'Supervisor', 'Hospitality'),
(24, 'radha@gmail.com', 'Banquet manager ', 'Banquet manager oversee the hosting of banquet to provide customer with an excellent banquet experience.', 'India', 'Maharashtra', 'Nanded', 'Manager', 'Hospitality'),
(25, 'radha@gmail.com', 'Tour Manager', 'Tour Manager direct all logistical activities that underpin extensive entertainment-related trips.', 'India', 'Maharashtra', 'Buldhana', 'Manager', 'Hospitality'),
(26, 'radha@gmail.com', 'Steward', 'A steward helps manage a restaurant or bar and keeps if clean and hygienic. ', 'India', 'Maharashtra', 'Sangali', 'Steward', 'Hospitality'),
(27, 'nikita@gmail.com', 'Senior Project Manager', 'A Senior Project manager is accountable for planning and allocating resources, preparing budgets, monitoring progress and keeping stakeholders informed throughout the project lifecycle', 'India', 'Maharashtra', 'Nashik', 'Manager', 'Construction Services'),
(28, 'nikita@gmail.com', 'Electrical Engineer', 'An Electrical engineer is a professional responsible for designing and developing electricity products such a power system or household appliances', 'India', 'Maharashtra', 'Solapur', 'Engineer', 'Construction Services'),
(29, 'nikita@gmail.com', 'Deputy Manager', 'Deputy Manager aid the planning, development and execution of various company program and initiatives. They coordinates with other department to ensure that smooth business progress.\r\n', 'India', 'Maharashtra', 'Panvel', 'Manager', 'Construction Services'),
(30, 'nikita@gmail.com', 'Tunnel Construction engineer', 'Tunnel engineer are highly specialized civil engineer responsible for the design and management of tunnel engineering projects.', 'India', 'Maharashtra', 'Aurangabad', 'Engineer', 'Construction Services'),
(31, 'nikita@gmail.com', 'Field Supervisor', 'Field Supervisor manage and oversee the performance of the field staff for a variety of project, which can involve either engineering, construction or the maintenance of existing landscapes and building', 'India', 'Maharashtra', 'Dhule', 'Supervisor', 'Construction Services'),
(32, 'atharav@gmail.com', 'Agri Assistant', 'Agri Assistant is assisting in agriculture or animal science program activities, such as planting, cultivating, and harvesting crops.', 'India', 'Maharashtra', 'Pusad', 'Assistant', 'Agriculture and Others'),
(33, 'atharav@gmail.com', 'Agriculture Manager', 'Agriculture Manager organises farm equipment, crops, agriculture product sales, purchase of livetock.', 'India', 'Maharashtra', 'Latur', 'Manager', 'Agriculture and Others'),
(34, 'atharav@gmail.com', 'Scientific Officer ', 'Operate and manages scientifc equipment and scientific proceses in support of other.\r\nCollect and analyse data.\r\nResponsible for the use and management of laboratory space. ', 'India', 'Maharashtra', 'Jalna', 'Officer', 'Agriculture and Others'),
(35, 'atharav@gmail.com', 'Goat farm manager', 'Goat farm manager is a subsidy of goat farming and product company, Excel Agro services', 'India', 'Maharashtra', 'Ichalkarnji', 'Manager', 'Agriculture and Others'),
(36, 'atharav@gmail.com', 'Territory Manager', 'Territory Manager builds and foster strong customer relationships within a particular region', 'India', 'Maharashtra', 'Paras', 'Manager', 'Agriculture and Others'),
(37, 'atharav@gmail.com', 'Area Manager', 'Area Manager has operational and financial responsibility for a defined  region or territory', 'India', 'Maharashtra', 'Bhusawal', 'Manager', 'Agriculture and Others'),
(38, 'radha@gmail.com', 'Restaurant Manager ', 'A restaurant manager is responsible for overseeing the daily operations of a restaurant', 'India', 'Maharashtra', 'Latur', 'manager', 'Hospitality'),
(39, 'radha@gmail.com', 'Assistant Manager', 'An assistant manager provides direct assistance and reporting to managers', 'India', 'Maharashtra', 'Latur', 'Manager', 'Hospitality'),
(42, 'nikita@gmail.com', 'Deputy Manager', 'A deputy manager typically works under the direction of a manager, assisting in the planning, implementation, and monitoring of operational and administrative tasks within an organization.', 'India', 'Maharashtra', 'Jalna', 'Manager', 'Construction Services'),
(43, 'radha@gmail.com', 'Guest House Manager', 'The work of a guest house manager involves managing staff, guest bookings, finances, property maintenance, providing customer service, and marketing the establishment to potential guests. ', 'India', 'Maharashtra', 'Beed', 'Manager', 'Hospitality'),
(44, 'atharav@gmail.com', 'Territory Manager', 'A territory manager is responsible for managing sales and operations within a specific geographical area or \"territory\" for a company.', 'India', 'Maharashtra', 'Dhule', 'Manager', 'Agriculture and Others'),
(45, 'samir@gmail.com', 'IT Project Manager', 'It is responsible for managing IT projects, including planning, budgeting, scheduling, and coordinating resources to ensure that projects are completed on time and within budget.', 'India', 'Maharashtra', 'Jalna', 'Manager', 'IT Services'),
(46, 'nikita@gmail.com', 'Project Manager', 'A project manager is responsible for planning, executing, and monitoring a project from start to finish', 'India', 'Maharashtra', 'Nanded', 'Manager', 'Construction Services'),
(47, 'samir@gmail.com', 'IT Support technician', 'IT Support Technician  can quickly diagnose and repair technical defects in devices or technical gadgets.\r\n', 'India', 'Maharashtra', 'Solapur', 'Technician', 'IT Services'),
(48, 'astha@gmail.com', 'Travel Agent', 'Travel Agent can help people plan, choose and arrange their holiday', 'India', 'Maharashtra', 'Satara', 'Agent', 'Travel Services'),
(49, 'pratik@gmail.com', 'Financial Advisor', 'A financial advisor provides investment advice and helps clients manage their finances.', 'India', 'Maharashtra', 'Jalgoan', 'Advisor', 'Financial Services'),
(50, 'pratik@gmail.com', 'Risk Manager', 'A risk manager identifies and assesses potential risks and develops strategies to manage or mitigate them.', 'India', 'Maharashtra', 'Latur', 'Manager', 'Financial Services'),
(51, 'pratik@gmail.com', 'Accountant', 'An accountant is responsible for preparing and maintaining financial records, including balance sheets, income statements, and tax returns.', 'India', 'Maharashtra', 'Beed', 'Accountant', 'Financial Services'),
(52, 'abhang@gmail.com', 'Automotive Technician', 'An automotive technician diagnoses and repairs problems with vehicles.', 'India', 'Maharashtra', 'Jhane', 'Technician', 'Automobile Services'),
(53, 'abhang@gmail.com', 'Salesperson', 'A salesperson sells vehicles to customers.', 'India', 'Maharashtra', 'Dhule', 'Salesperson', 'Automobile Services'),
(54, 'abhang@gmail.com', 'Marketing Specialist', 'A marketing specialist promotes vehicles to potential customers. ', 'India', 'Maharashtra', 'Nandurbar', 'Specialist', 'Automobile Services'),
(55, 'abhang@gmail.com', 'Automotive Designer', 'An automotive designer creates the look and feel of a vehicle.', 'India', 'Maharashtra', 'Jalna', 'Designer', 'Automobile Services'),
(56, 'abhang@gmail.com', 'Automative Engineer', 'An automotive engineer designs and develops vehicles and their components.', 'India', 'Maharashtra', 'Barshi', 'Engineer', 'Automobile Services'),
(57, 'astha@gmail.com', 'Marketing Manager', 'A Marketing Manager is responsible for overseeing and developing marketing campaigns to promote a company\'s products or services.', 'India', 'Maharashtra', 'Latur', 'Manager', 'Travel Services'),
(58, 'astha@gmail.com', 'Travel Consultant', 'A Travel Consultant is a professional who assists clients in planning and booking travel arrangements', 'India', 'Maharashtra', 'Nandurbar', 'Consultant', 'Travel Services'),
(59, 'prajwal@gmail.com', 'Journalist', 'A journalist is responsible for gathering information, investigating, and reporting news and stories to the public through various media.', 'India', 'Maharashtra', 'Jalgoan', 'Journalist', 'Media and communication services'),
(60, 'prajwal@gmail.com', 'Social Media Manager', 'A social media manager is responsible for creating and managing social media accounts, posting content, and engaging with followers to increase brand awareness and engagement.', 'India', 'Maharashtra', 'Latur', 'Manager', 'Media and Communication Services'),
(61, 'prajwal@gmail.com', 'Graphic Designer', 'A graphic designer creates visual content such as logos, images, and graphics for websites, marketing materials, and other digital platforms.', 'India', 'Maharashtra', 'Satara', 'Designer', 'Media and Communication Services'),
(62, 'prajwal@gmail.com', 'Broadcast technician', 'A broadcast technician is responsible for the technical aspects of producing and broadcasting television and radio programming.', 'India', 'Maharashtra', 'Achalpur', 'Technician', 'Media and Communication Services'),
(63, 'prajwal@gmail.com', 'Digital Marketing Specialist', 'Developing and implementing digital marketing strategies, including search engine optimization (SEO), social media marketing, email marketing, and content marketing. ', 'India', 'Maharashtra', 'Kolhapur', 'Specialist', 'Media and Communication Services'),
(64, 'prajwal@gmail.com', 'Web Developer', 'Building and maintaining websites for small businesses or individuals. ', 'India', 'Maharashtra', 'Amaravati', 'Developer', 'Media and Communication Services'),
(65, 'shravani@gmail.com', 'Inventory Manager', 'Responsible for monitoring and optimizing inventory levels, ensuring efficient supply chain management, and coordinating with suppliers and internal teams.', 'India', 'Maharashtra', 'Kolhapur', 'Manager', 'Wholesale/Retail'),
(66, 'shravani@gmail.com', 'Pricing Analyst', 'Evaluates market trends, competitor pricing, and customer demand to set optimal pricing strategies for wholesale products.', 'India', 'Maharashtra', 'Satara', 'Analyst', 'Wholesale/Retail'),
(67, 'shravani@gmail.com', 'Store Manager', 'Oversees the overall operations of a retail store, including sales performance, staffing, customer service, and inventory management.', 'India', 'Maharashtra', 'Barshi', 'Manager', 'Wholesale/Retail'),
(68, 'shravani@gmail.com', 'Sales Operations Analyst', 'Analyzes sales data, forecasts market trends, and supports sales teams by providing insights and strategies to drive revenue growth.', 'India', 'Maharashtra', 'Jalgoan', 'Analyst', 'Wholesale/Retail'),
(69, 'shravani@gmail.com', 'Customer Service Representative', 'Provides assistance and resolves customer inquiries or issues through various channels, including in-person, phone, or online communication.', 'India', 'Maharashtra', 'Jalna', 'Representative', 'Wholesale/Retail'),
(70, 'shravani@gmail.com', 'Marketing Coordinator', 'Supports retail marketing initiatives, such as advertising campaigns, promotions, social media management, and customer engagement activities.', 'India', 'Maharashtra', 'Achalpur', 'Coordinator', 'Wholesale/Retail');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(111) NOT NULL,
  `company` varchar(111) CHARACTER SET latin1 NOT NULL,
  `des` varchar(111) CHARACTER SET latin1 NOT NULL,
  `customer_email` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company`, `des`, `customer_email`) VALUES
(1, 'Khadi', 'The Design , Production and Distribution of Textiles : yarn , cloth and clothing', 'ujjwal2006@gmail.com'),
(2, 'Navya Textile and Mills', 'The Design and Production Fibers, Yarns , fabrics and Garments                       ', 'ujjwal2006@gmail.com'),
(3, 'Annapurna Food Manufactures', 'A unit is good service of 1) Supply of food product and caterin', 'ujjwal2000@gmail.com'),
(4, 'Raghuveer Sweets', 'Manufacturer of Biscuits, cookies, Dry fruit, Sweets, Namkeen, Dairy products, Food pro', 'ujjwal2000@gmail.com'),
(5, 'Cash and Carry', 'component of food marketing in which goods are assembled, stored and transported to customer.', 'shravani@gmail.com'),
(6, 'Bhakti Complex', 'sell clothes, shoes and fashion accessories in a retail outlet.', 'shravani@gmail.com'),
(7, 'Visawa resort', 'Service industry that includes lodging, food and drink service, event planning, theme parks, travel and tourism', 'radha@gmail.com'),
(8, 'Vrundavan', 'Providing services of travel, tourism, restaurants, cafes and fast food restaurants.', 'radha@gmail.com'),
(9, 'Vishwakarma Agro Industry', 'Agriculture based activities such as preparation of crops of primary market i.e. cleaning, trimming, grading di', 'atharva@gmail.com'),
(10, 'Manidharma Agriculture', 'Food processing industry and conceptualising programs for training the existing workforce in the food processin', 'atharva@gmail.com'),
(11, 'MK Constructions', 'Providing products related construction, alteration, repair, demolition and reconstruct', 'nikita@gmail.com'),
(12, 'Raj Builtcon', 'Fiber reinforce plastic FPP work civil construction building & renovation work with electrical earthing.', 'nikita@gmail.com'),
(13, 'R D Data Systems', 'Providing Computer Services, Hardware and Networking Services,  Computer Networking Services.', 'samir@gmail.com'),
(14, 'Kunal Infosolutions', 'Address the end-to-end IT & Networking & Non IT requirements of our clients.', 'samir@gmail.com'),
(15, 'Creative IRIS', 'Video production, Corporate videos, TV advertisement video documentary,  AD film, Event audio visual production', 'prajwal@gmail.com'),
(16, 'VISTARANA Communication Services', 'We are providing advertising communication services and solving problems based on it.', 'prajwal@gmail.com'),
(17, 'Eagle Technologies', 'Providing services of Solar water heater, Solar lighting, commercial solar, bio-mass boiler, Water Heater.', 'jobusans2015@gmail.com'),
(18, 'Rowdy Motor Builders', 'Manufacture and Fabricators of Motor Vehicle like bus, ambulanc                                          ', 'abhang@gmail.com'),
(19, 'Monad Electronics', 'Manufacturer of Electronics equipment and sensors like Torque sensor, humidity sensor, temperature detector, Ac', 'tanvi@gmail.com'),
(20, 'KUSAM electrical industry', 'Manufacturing of Insulation Tester, Multimeters, Clamp meters, Earth resistance tester.', 'tanvi@gmail.com'),
(21, 'A M Tours and Travels', 'Providing services of travelling and tickets booking of railway, buses. Providing special  booking of vehilcles', 'astha@gmail.com'),
(22, 'N K Travels', 'Providing services of travelling, lodging, Booking of vehicles, hotels, rooms.', 'astha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobskeer`
--

CREATE TABLE `jobskeer` (
  `id` int(111) NOT NULL,
  `email` varchar(111) CHARACTER SET latin1 NOT NULL,
  `password` varchar(111) NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `dob` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobskeer`
--

INSERT INTO `jobskeer` (`id`, `email`, `password`, `first_name`, `last_name`, `dob`, `mobile_number`) VALUES
(1, 'arjunsubhedar@gmail.com', '12345', 'Arjun', 'Subhedar', '1999-02-17', '1234567897'),
(2, 'aakashdeshmukh@gmail.com', '12345', 'Aakash', 'Deshmukh', '1997-06-20', '1122334455'),
(3, 'sakhigokhale@gmail.com', '12345', 'Sakhi', 'Gokhale', '2000-08-09', '1122334466'),
(4, 'manjirijog@gmail.com', '12345', 'Manjiri', 'Jog', '2001-05-19', '3344551166'),
(5, 'kalyanipatil@gmail.com', '12345', 'Kalyani', 'Patil', '1999-09-15', '5496475861'),
(6, 'shrigokhale@gmail.com', '12345', 'Shri', 'Gokhale', '2000-11-13', '5645856321'),
(7, 'shravanishinganwadikar@gmail.com', '12345', 'Shravani', 'Shinganwadikar', '2004-08-15', '01234567899'),
(8, 'ujjwalnimbokar2000@gmail.com', '12345', 'Ujjwal', 'Nimbokar', '2003-06-21', '1122345959');

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `id` int(111) NOT NULL,
  `first_name` varchar(111) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(111) CHARACTER SET latin1 NOT NULL,
  `dob` varchar(111) CHARACTER SET latin1 NOT NULL,
  `file` blob NOT NULL,
  `id_job` int(111) NOT NULL,
  `job_seeker` varchar(111) CHARACTER SET latin1 NOT NULL,
  `mobile_number` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`id`, `first_name`, `last_name`, `dob`, `file`, `id_job`, `job_seeker`, `mobile_number`) VALUES
(1, 'Arjun', 'Subhedar', '1999-02-17', 0x61726a756e2e706466, 4, 'arjunsubhedar@gmail.com', 1234567897),
(2, 'Sakhi', 'Gokhale', '2000-08-09', 0x73616b68692e706466, 5, 'sakhigokhale@gmail.com', 1122334466),
(3, 'Shravani', 'Shinganwadikar', '2004-08-15', 0x5368726176616e692e706466, 65, 'shravanishinganwadikar@gmail.com', 1234567899),
(4, 'Shravani', 'Shinganwadikar', '2004-08-15', 0x5368726176616e692e706466, 4, 'shravanishinganwadikar@gmail.com', 1234567899),
(5, 'Ujjwal', 'Nimbokar', '2003-06-21', 0x556a6a77616c2e706466, 65, 'ujjwalnimbokar2000@gmail.com', 1122345959),
(6, 'Ujjwal', 'Nimbokar', '2003-06-21', 0x556a6a77616c2e706466, 5, 'ujjwalnimbokar2000@gmail.com', 1122345959);

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(111) NOT NULL,
  `category` varchar(111) NOT NULL,
  `des` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `category`, `des`) VALUES
(1, 'Textile and apparel manufacturing', 'The production of textiles and fabric from raw materials and the transformation of these fabrics into clothing and other accessories.'),
(2, 'Food and beverage manufacturing', 'Food and beverage manufacturing plants transform raw food commodities into products for intermediate or final consumption by applying labor, machinery, energy, and scientific knowledge.'),
(3, 'Wholesale/Retail', 'In the supply chain industry, wholesale and retail are two major components of the distribution process. When a company manufactures any products it is first sold in bulk quantity to the wholesaler, who then sells it to the retailer and further the retailer sells it to the ultimate customers.'),
(4, 'Hospitality', 'The hospitality and tourism industry is a vast sector that includes all the economic activities that directly or indirectly contribute to, or depend upon, travel and tourism. This industry sector includes: Hotels & Resorts. Restaurants & Catering. Night Clubs & Bars'),
(5, 'Agriculture and Others', 'Agriculture encompasses crop and livestock production, aquaculture, fisheries and forestry for food and non-food products.'),
(6, 'Construction Services', 'Construction and related engineering services includes construction work for buildings and civil engineering, installation and assembly work, building completion and finishing work. '),
(7, 'IT Services', 'The IT services industry comprises various services and products that help organizations manage and optimize their information and business processes. The broader IT services market includes managed services, security services, data management, and cloud computing'),
(8, 'Media/Communication Serivces', 'Media & Communication Services (MCS) is a consultancy specialising in media-driven public relations, marketing, publicity communications and promotional programs for the corporate sector, sport and independent businesses.'),
(9, 'Financial Services', 'Financial services is a broad range of more specific activities such as banking, investing, and insurance. Financial services are limited to the activity of financial services firms and their professionals, while financial products are the actual goods, accounts, or investments they provide'),
(10, 'Travel Services', 'Travel services include the goods and services consumed by travelers, such as lodging and meals and transport (within the economy visited).'),
(11, 'Electrical and Electronics Services', 'Electrical and electronic design services are performed by companies that design hardware for analog and digital circuits, components, devices and systems.');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `dob` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `user_email` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `dob`, `number`, `email`, `user_email`) VALUES
(1, 'Arjun Subhedar', '1999-02-17', '1234567897', 'arjunsubhedar@gmail.com', 'arjunsubhedar@gmail.com'),
(2, 'Sakhi Gokhale', '2000-08-09', '1122334466', 'sakhigokhale@gmail.com', 'sakhigokhale@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_jobs`
--
ALTER TABLE `all_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `jobskeer`
--
ALTER TABLE `jobskeer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `all_jobs`
--
ALTER TABLE `all_jobs`
  MODIFY `job_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `jobskeer`
--
ALTER TABLE `jobskeer`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
