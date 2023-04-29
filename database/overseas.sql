-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 04:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `overseas`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `acc_id` int(6) NOT NULL,
  `acc_city` varchar(50) NOT NULL,
  `acc_state` varchar(50) NOT NULL,
  `acc_country` varchar(30) NOT NULL,
  `acc_rent` varchar(30) NOT NULL,
  `acc_other_info` varchar(100) NOT NULL,
  `uid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`acc_id`, `acc_city`, `acc_state`, `acc_country`, `acc_rent`, `acc_other_info`, `uid`) VALUES
(1, 'Mustafabad', 'Delhi', 'India', '21000 Rs /- per month', '24*7 water supply and electricity, Nr. BOB Bank, Nr. Kotak Bank, Nr. New Apollo Hospital', 6),
(2, 'Surat', 'Gujarat', 'India', '8000 INR -per month', ' 3BHK 1Bath, Gothic Heritage, PAL, Surat, Gujarat', 11),
(3, 'Ahemdabad', 'Gujarat', 'India', '10000 INR- per month', ' 2 BHK with balcony, 98/sawtik society, Sola Road,Ahemdabad,Gujarat\r\n', 11),
(4, 'Mehsana', 'Gujarat', 'India', '6000 INR - per month', '3 BHK 24 hour electricity, 303/Bala Heigths flate,modhera road,Mehsana', 11),
(5, 'New Delhi', 'Delhi', 'India', '15000 INR -per month', '2 BHK free parking ,Ch Nandlal Tanwar Marg, Dera Mandi Near Lingaya\'s Lalita Devi Institute', 6),
(6, 'Firozabad', 'Delhi', 'India', '17000 INR -per month', '2 BHK In Independent House ,Independent House, Near Shadley Public School, Firozabad,Delhi', 6),
(7, 'Mumbai', 'Maharashtra', 'India', '25000 INR -per Month', '1 BHK Flat,Ghodbunder Road ,Anand Nagar,Mumbai,Maharashtra', 12),
(8, 'Pune', 'Maharashtra', 'India', '9000 INR -per month', ' 1 BHK Flat ,Standalone building, Marunji Rd, Hinjewadi near Laxmi Chowk and Khopoli Vada\r\n', 12),
(9, 'Thane', 'Maharashtra', 'India', '9000 INR -per month', '3 BHK flate,56, Lohar Chawl, Shreeji Bhavan, Gr Flr, Lohar Chawl', 12),
(10, 'Kota', 'Rajasthan', 'India', '6000 INR -per month', '3BHK 3Baths, Landmark PARADISE, Landmark Paradise, , Kota, Rajasthan\r\n', 13),
(11, 'Jaipur', 'Rajasthan', 'India', '19000 INR -per month', '1 BHK Independent House - 600 sq ft,Pratap Nagar, Jaipur', 13),
(12, 'Udaipur', 'Rajasthan', 'India', '2500 INR -per month', '3BHK 3Baths, Shahi Apartments, Sector- 13, , Udaipur, Rajasthan\r\n', 13),
(13, 'Lucknow', 'Uttar Predesh', 'India', '5000 INR -per month', '3BHK fully furnished house,Krishna Nagar, Lucknow', 14),
(14, 'Kanpur', 'Uttar Predesh', 'India', '2000 INR -per month', '1 BHK Residential House 1000 sqft, Naveen Nagar ,Kanpur', 14),
(15, 'Noida', 'Uttar Predesh', 'India', '9000 INR -per month', '2 BHK Apartment Semi Furnished1040 sq.ft,Gaursons Hi Tech 14th Avenue, Sector 16C Greater Noida ', 14),
(16, 'Indore', 'Madhaya Pradesh', 'India', '4000 INR -per month', '2 BHK Apartment Unfurnished 850 sq.ft ,Ressidantial Flat, Manorama Ganj, Indore', 16),
(17, 'Bhopal', 'Madhaya Pradesh', 'India', '6000 INR -per month', '4 BHK Independent House Unfurnished 1500 sq.ft,Shirdipuram, Kolar Road, Bhopal', 16),
(18, 'Jabalpur', 'Madhaya Pradesh', 'India', '5000 INR -per month', '3 BHK Independent House Semi Furnished ,Star Jabalpur Star City Phase-4, Karmeta,Jabalpur', 16),
(19, 'Bengaluru', 'Karnataka', 'India', '7000 INR -per month', '2 BHK Residential House 900 sqft, Koramangala Block 1 ,Bangalore', 15),
(20, 'Mysore', 'Karnataka', 'India', '6000 INR -per month', '2 BHK Residential House, Kalidasa Road, Mysore', 15),
(21, 'Mangalore', 'Karnataka', 'India', '7000 INR  -per month', '2 BHK Residential House,Bejai Kapikad Road, Mangalore', 15),
(22, 'Thiruvananthapuram', 'Kerla', 'India', '5000 INR -per month', '2 BHK at vazhuthakad, Near SK Hospital,Thiruvananthapuram', 17),
(23, 'Kochi', 'Kerla', 'India', '6000 INR -per month', '3 BHK Flate ,150 m from MG Road Near Cochin Shipyard North gate', 17),
(24, 'Kozhikode', 'Kerla', 'India', '9000 INR-per month', '4 BHK House ,Silver Hills English Medium School is near, Kozhikode Malappuram Bypass road', 17),
(25, 'Ottawa', 'Ontario', 'Canada', '800 CAD - Per month', '5 bed3 bath1314 sqft,11514 Pinnacle Drive, Grande Prairie, AB•Pinnacle Ridge,Ottawa', 18),
(26, 'North Bay', 'Ontario', 'Canada', '1200 CAD - per month', '3 bed 2 bath,1815-1817 C Avenue N, Saskatoon, North Bay', 18),
(27, 'Toronto', 'Ontario', 'Canada', '1200 CAD -per month', '2 bed1 bath,BSMT-43 Shippigan Crescent, Toronto', 18),
(28, 'Alberta', 'Alberta', 'Canada', '1000 CAD - per month', 'Bronwyn Place Apartments With free Wifi, 102 Cartier Road', 19),
(29, 'Vermillion', 'Alberta', 'Canada', '600 CAD - per month', '1400sqft of living space - Lakeland College ,Vermilion', 19),
(30, 'Edmonton ', 'Alberta', 'Canada', '800 CAD - per month', '3 BHK Flate With free wifi and parking,11212 102 Ave NW Edmonton AB', 19),
(31, 'St.John\'s', 'Newfoundland And Labrador', 'Canada', '600 CAD - per month', '3 BHK 3 Bath ,7 Victoria Street, St. John\'s, Newfoundland and Labrador A1C2V2', 20),
(32, 'St.John\'s', 'Newfoundland And Labrador', 'Canada', '800 CAD - per month', '2 BHK With free wifi and Gas ,9 St. Josephs Lane, St. John\'s, Newfoundland and Labrador A1A5T9', 20),
(33, 'Victoria', 'British Columbia', 'Canada', '700 CAD - per month', '3 BHK apartment,2352 Chilco Road, Victoria, British Columbia V9B 0N7', 21),
(34, 'Vancouver', 'British Columbia', 'Canada', '1850 CAD - per month', '4 BHK apartment,Downtown Vancouver · 917 Beatty St, Vancouver, BC V6Z 3C5, CAN', 21),
(35, 'Brandon', 'Manitoba', 'Canada', '660 CAD - per month', '2BHK Independent House,1640 E BRANDON DRIVE,CASA GRANDE, AZ 85122', 22),
(36, 'Winnipeg', 'Manitoba', 'Canada', '1200 CAD - per month', '2 BHK house,8185 E ALAMEDA ROAD,SCOTTSDALE,Winnipeg', 22),
(37, 'Vancouver', 'British Columbia', 'Canada', '1600 CAD - per month', '2 BHK 1Bath,2741 W 3rd Avenue Apartments,Vancouver', 21),
(38, 'Dauphin', 'Manitoba', 'Canada', '820 CAD - per month', '2 BHK 1 Bath,Dauphin MB R7N 0N8', 22),
(39, 'Saskatoon', 'Saskatchewan', 'Canada', '750 CAD - per month', '1 BHK Apartment,423 Pendygrasse Road, Saskatoon, Saskatchewan S7M 4Z2', 23),
(40, 'Regina', 'Saskatchewan', 'Canada', '900 CAD - per month', '2 BHK Apartment with free wi-fi,3930 Robinson Street, Regina, Saskatchewan', 23),
(41, 'Saskatoon', 'Saskatchewan', 'Canada', '600 CAD - per month', '1 BHK, 310 Herold Rd, Saskatoon, Saskatchewan', 23),
(42, 'Sackvile', 'New Brunswick', 'Canada', '800 CAD - per month', '2BHK Independent House,406 Nelson Road,Sackvile , New Brunswick', 24),
(43, 'Fredericton', 'New Brunswick', 'Canada', '600 CAD - per month', '4 Bedrooms 2.5 Bathrooms,Fredericton NB E3A 5L1', 24),
(44, 'Edmundston ', 'New Brunswick', 'Canada', '1000 CAD - per month', '3 BHK House,82 21st Avenue Edmundston, New Brunswick', 24),
(45, 'Montreal', 'Quebec', 'Canada', '800 CAD - per month', '2 BHK 1 Bath,1570 Rue Beaudry, Montreal, Quebec', 25),
(46, 'Sherbrooke', 'Quebec', 'Canada', '800 CAD - per month', '2 BHK 1 Bath,1570 Rue Beaudry, Sherbrooke, Quebec', 25),
(47, 'Quebec City', 'Quebec', 'Canada', '750 CAD - per Month', '1221 Rachel Street East, Quebec City, Quebec', 25),
(48, 'Sydney', 'Nova Scotia', 'Canada', '750 CAD - per month', 'Seaview St, Glace Bay, NS B1A 1P4,Sydney,Nova Scotia', 26),
(49, 'Halifax', 'Nova Scotia', 'Canada', '1000 CAD - per month', '2 BHK Apartment .B3J 1Z7, Halifax, Nova Scotia Province', 26),
(50, 'Wolfville', 'Nova Scotia', 'Canada', '750 CAD - per month', '1BHK ,112 Megic streetWolfville, Nova Scotia ', 26),
(51, 'New York', 'The Northeast Region', 'USA', '1250 USD - Per month', '3 BHK 1 BATH,160 Claremont Avenue, 1h Morningside Heights, NY 10027', 27),
(52, 'Philadelphia	', 'The Northeast Region', 'USA', '2230 USD -Per Month', '3 BHK apartment ,1517 N 56th St Philadelphia, PA 19131', 27),
(53, 'Boston', 'The Northeast Region', 'USA', '2500 USD -Per Month', '4 BHK House with free parking,9 Albion Pl, Boston, MA 02129', 27),
(54, 'Pittsburgh', 'The Northeast Region', 'USA', '4000 USD -per month', '3 BHK 2 Bath,761 Gypsy Ln, Pittsburgh, PA 15228', 27),
(55, 'New York', 'The Northeast Region', 'USA', '6000 USD -per month', '3 BHK 1 Bath,380 Boulder St, Ronkonkoma, NY 11779', 27),
(56, 'Los Angeles', 'The West Region', 'USA', '5000 USD -per month', '3 BHK House ,2323 1/2 S Catalina St, Los Angeles, CA 90007', 28),
(57, 'San Francisco', 'The West Region', 'USA', '1800 USD -per month', '1 BHK 1 Bath,420 W Meda Ave, Glendora, CA 91741', 28),
(58, 'California', 'The West Region', 'USA', '4000 USD - per month', '2 BHK 1 Bath,230 N Grand Ave, California, CA 90731', 28),
(59, 'Colorado', 'The West Region', 'USA', '3000 USD- per month', '2 BHK with free wi-fi,600 W Cheyenne Rd, Colorado Springs, CO 80905 ', 28),
(60, ' San Jose', 'The West Region', 'USA', '1200 USD - Per month', '1 BHK 1 Bath,5537 Perugia Cir, San Jose, CA 95138', 28),
(61, ' Florida', 'The South Region', 'USA', '4000 USD -per month', '2 BHK 1 Bath,5816 Larchwood Ave, Sarasota, FL 34231', 29),
(62, ' Alabama', 'The South Region', 'USA', '3000 USD -Per Month', '2 BHK House,6082 Little Ln, Montgomery, AL 36117', 29),
(63, 'Campbellsville', 'The South Region', 'USA', '780 USD -per month', '3 BHK 1 Bath,Maupin Campbellsville, KY 42718', 29),
(64, 'Columbus ', 'The South Region', 'USA', '1250 USD - per month', '2 BHK House,1325 Evergreen Rd, Columbus, OH 43207', 29),
(65, 'Texas ', 'The South Region', 'USA', '4000 USD - per month', '3BHK 1 Bath ,710 24th Ave N, Texas City, TX 77590', 29),
(66, 'Fayette', 'The Midwest Region', 'USA', '400 USD -per month', '1 BHK 1 Bath,5000 Watauga Rd Fayetteville, NC 28304', 30),
(67, 'Joliet', 'The Midwest Region', 'USA', '700 USD -per month', '2 BHK apartment,1 Bradford RdJoliet, IL 60433', 30),
(68, 'Indianapolis', 'The Midwest Region', 'USA', '780 USD -per month', '2-3BHK Flate9230 MEMORIAL PARK DRIVE, #1INDIANAPOLIS, IN 46216', 30),
(69, 'Cedar Rapids', 'The Midwest Region', 'USA', '1250 USD - per month', '3BHK Flate,4516 Benton St NE, Cedar Rapids, IA 52402', 30),
(70, ' Fayette', 'The Midwest Region', 'USA', '650 USD -per month', '1BHK HOUSE ,125 Southwind Dr, Oakland, TN 38060', 30);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `clg_id` int(6) NOT NULL,
  `clg_name` varchar(100) NOT NULL,
  `clg_intact` varchar(50) NOT NULL,
  `clg_exams` varchar(60) NOT NULL,
  `clg_state` varchar(30) NOT NULL,
  `clg_country` varchar(30) NOT NULL,
  `clg_website` varchar(255) NOT NULL,
  `clg_brochure` longtext NOT NULL,
  `course_names` varchar(255) NOT NULL,
  `clg_img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`clg_id`, `clg_name`, `clg_intact`, `clg_exams`, `clg_state`, `clg_country`, `clg_website`, `clg_brochure`, `course_names`, `clg_img`) VALUES
(1, 'Indian Institute Of Management - [IIMA], Ahmedabad', 'February-March, June-August ', 'CAT, JEE, JEE-Advanced', 'Gujarat', 'India', 'http://www.iima.ac.in', 'assets/pdf/IIM_Ahmedabad.pdf', 'Master of Business Administration[MBA], Master of Business Administration[MBA] [Executive], ePost Graduate Programme [ePGP], Executive Post Graduate Diploma in Business Analytics, Faculty Development Programme ', 'assets/img/iima-clg.jpg'),
(2, 'Lm College Of Pharmacy - [LMCP], Ahmedabad', 'Jan - March', 'ACPC', 'Gujarat', 'India', 'https://www.lmcp.ac.in/', 'assets/pdf/l.m_college_of_pharmacy.pdf', 'Bachelor of Pharmacy[B.Pharma], Master of Pharmacy[M.Pharma], Pharm.D, Ph.D, Diploma in Pharmacy[D.Pharma]', 'assets/img/l.m_clg.jpg'),
(3, 'Parul University, Vdodara', 'Feb - March', 'CAT-MAT-CMAT-GMAT-JEE Main-NATA-NEET-GPAT-NET-CSIR', 'Gujarat', 'India', 'https://www.paruluniversity.ac.in/', 'assets/pdf/parul_university.pdf', 'B.Tech, MBBS, MBA, BBA, B.sc, M.sc, BCA', 'assets/img/parul_clg.jpg'),
(4, 'Ganpat University - [GNU], Mehsana', 'Feb-March, Sep-Nov', 'ACPC', 'Gujarat', 'India', 'https://www.ganpatuniversity.ac.in/', 'assets/pdf/ganpat_university.pdf', 'B.sc, M.sc, BCA, MCA, B.com, M.com, B.pharma, M.pharma, B.tech, M.tech, Marin Enginearing, Bio.Tech, PG  Diploma, B.A, M.A, Ph.D, BBA, MBA, ICT, Polytechnic, Mecatornics, Food Technology, B.sc.It, M.sc.It ', 'assets/img/ganpat_clg.jpg'),
(5, 'Pandit Deendayal Petroleum University - [PDPU], Gandhinagar', 'Feb-March, Sep-Nov', 'Entrance, JEE Main, GATE, CAT', 'Gujarat', 'India', 'http://www.pdpu.ac.in/', 'assets/pdf/pdpu.pdf', 'B.Tech, BBA, B.A, MBA, M.Tech, B.com, B.Sc, M.A, M.Sc, Ph.D, Diploma', 'assets/img/pdpu_clg.jpg'),
(6, 'Nirma University - [NU], Ahmmedabad', 'Jan-Feb, March-April', 'ACPC', 'Gujarat', 'India', 'https://nirmauni.ac.in/', 'assets/pdf/nirma_university.pdf', 'BBA, MBA, B.Tech, M.Tech, B.Com, BCA, MCA, B.Sc, M.Sc, BALLB, M.Com, B.Arch, B.Des, M.Pharm, L.L.M, Diploma, Ph.D', 'assets/img/nirma_clg.jpg'),
(7, 'Dhirubhai Ambani Institute of Information and Communication Technology - [DA-IICT], Gandhinagar', 'Feb-March, April-May', 'Entrance, Merit-based', 'Gujarat', 'India', 'https://www.daiict.ac.in/', 'assets/pdf/daiict_university.pdf', 'B.Tech, M.Tech, B.Sc, M.Sc, B.Des, Ph.D, ICT, M.Sc Data Science', 'assets/img/daiict_clg.jpg'),
(8, 'Gujarat University - [GU], Ahmedabad', 'Feb-March, May-Jun ', 'ACPC', 'Gujarat', 'India', 'https://www.gujaratuniversity.ac.in/', 'assets/pdf/gujarat_university.pdf', 'BBA, MBA, B.Tech, M.Tech, B.Com, BCA, MCA, B.Sc, M.Sc, BALLB, M.Com, B.Arch, B.Des, M.Pharm, L.L.M, Diploma, Ph.D', 'assets/img/gujarat_clg.jpg'),
(9, 'Marwadi University - [MU], Rajkot', 'Feb-March, April-May', 'ACPC, GUJCAT, CAT', 'Gujarat', 'India', 'https://www.marwadiuniversity.ac.in/', 'assets/pdf/marwadi_university.pdf', 'BBA, MBA, B.Tech, M.Tech, B.Com, BCA, MCA, B.Sc, M.Sc, BALLB, M.Com, B.Arch, B.Des, M.Pharm, L.L.M, Diploma, Ph.D', 'assets/img/marwadi_clg.jpg'),
(10, 'Indus University - [IU], Ahmedabad', 'April-June', 'ACPC, GUJCAT', 'Gujarat', 'India', 'https://indusuni.ac.in/', 'assets/pdf/indus_university.pdf', 'BBA, MBA, B.Tech, M.Tech, B.Com, BCA, MCA, B.Sc, M.Sc, BALLB, M.Com, B.Arch, B.Des, M.Pharm, L.L.M, Diploma, Ph.D', 'assets/img/indus_clg.jpg'),
(11, 'IIT Bombay - Indian Institue of Technology, Mumbai', 'Feb-March, April-May', 'Entrance, JEE Main, JEE Advance, GATE, CAT', 'Mumbai', 'India', 'https://www.iitb.ac.in/', 'assets/pdf/iit_bombay.pdf', 'B.Tech, M.Tech, B.Sc, M.Sc, BALLB, B.Arch, B.Des, M.Pharm, Ph.D, M.Des, BS, EMBA, B.Phil, M.Phil, MPP, BBA, MBA', 'assets/img/iitb_clg.jpg'),
(12, 'ST. Xavier\'s College, Mumbai', 'Feb-March, April-May', 'Merit-based, Entrance-based', 'Mumbai', 'India', 'https://xaviers.edu/main/', 'assets/pdf/st.xavier.pdf', 'BBA, MBA, B.Tech, M.Tech, B.Com, BCA, MCA, B.Sc, M.Sc, BALLB, M.Com, B.Arch, B.Des, M.Pharm, L.L.M, Diploma, Ph.D', 'assets/img/st_xavier_clg.jpg'),
(13, 'Institute Of Chemical technology - [ICT], Mumbai', 'Feb-March, Oct-Nov', 'JEE, GATE, Merit based', 'Mumbai', 'India', 'https://www.ictmumbai.edu.in/', 'assets/pdf/ict_mumbai.pdf', 'B.Tech, M.Tech, B.Sc, M.Sc, B.Arch, B.Des, M.Pharm, Ph.D', 'assets/img/ict_clg.jpg'),
(14, 'Bombay College Of Pharmacy - [BCP], Mumbai', 'Feb-March, April-May', 'Entrance, Merit-based', 'Mumbai', 'India', 'https://www.bcp.edu.in/', 'assets/pdf/bcp_mumbai.pdf', 'M.Pharm, Ph.D, B.Pharm {Lateral}, B.pharma', 'assets/img/bcp_clg.jpg'),
(15, 'Narsee Monjee College of Commerce and Economics - [NMCCE], Mumbai', 'Feb-March, Oct-Nov', 'Merit-based', 'Mumbai', 'India', 'https://nmcollege.in/', 'assets/pdf/nmcce.pdf', 'B.Com, M.Com, BMS, BAF, BFM, B.Sc, BBA, MBA, M.Sc', 'assets/img/nmcce_clg.jpg'),
(16, 'MITHIBAI COLLEGE OF ARTS, MUMBAI', 'Sep-Aug, Dec', 'Entrance, Merit-based', 'Mumbai', 'India', 'https://www.mithibai.ac.in/', 'assets/pdf/mithibai.pdf', 'BA, B.Com, BMS, M.A, B.M.M, M.Sc, B.Sc, Ph.D, M.Com, BBI', 'assets/img/mithibai_clg.jpg'),
(17, 'SP JAIN INSTITUTE OF MANAGEMENT AND RESEARCH - [SPJIMR], MUMBAI', 'Aug-Sep, Sep-Nov', 'Entrance, GMAT, CAT', 'Mumbai', 'India', 'https://www.spjimr.org/', 'assets/pdf/spjmir.pdf', 'PGDM, Executive, PGPM, Diploma, Professional, ', 'assets/img/spjimr_clg.jpg'),
(18, 'K J SOMAIYA COLLEGE OF ARTS & COMMERCE - [KJSAC], MUMBAI', 'May-June', 'Merit-based', 'Mumbai', 'India', 'https://kjsac.somaiya.edu.in/en', 'assets/pdf/kjsac.pdf', 'BA, MA, B.Com, M.Com, Ph.D, BBA, BMM, M.Phil', 'assets/img/kjsac_clg.jpg'),
(19, 'NATIONAL INSTITUTE OF INDUSTRIAL ENGINEERING - [NITIE], MUMBAI', 'Feb-March, April-May', 'CAT, GMAT, NITIE Entrance, GRE + TOFEL, IELTS', 'Mumbai', 'India', 'https://www.nitie.ac.in/', 'assets/pdf/nitie.pdf', 'PGDIE, PGDIM, PGDISEM, PGDMM, PGDPM, FPIP, PGPEX-FLVM', 'assets/img/nitie_clg.jpg'),
(20, 'SIES COLLEGE OF ARTS SCIENCE AND COMMERCE - [SIES ASCS], MUMBAI', 'Jul-Aug', 'Merit-based', 'Mumbai', 'India', 'http://www.siesascs.edu.in/', 'assets/pdf/sies_ascs.pdf', 'B.sc, BA, B.Com, BMS, B.M.M, M.Sc', 'assets/img/sies_ascs_clg.jpg'),
(21, 'ARMED FORCES MEDICAL COLLEGE - [AFMC], PUNE', 'Feb-March, April-May', 'Entrance, NEET', 'Pune', 'India', 'https://www.afmc.nic.in/', 'assets/pdf/afmc.pdf', 'MBBS, PG Diploma, MHA, B.Sc[Nursing], P.B.B.Sc, M.Sc, DM[Cardiology], M.Ch, Ph.D, MD, MS', 'assets/img/afmc_clg.jpg'),
(22, 'SYMBIOSIS LAW SCHOOL - [SLS], PUNE', 'Jan-Feb, May-June', 'Entrance based, Merit-basis', 'Pune', 'India', 'http://www.symlaw.ac.in/', 'assets/pdf/sls.pdf', 'BALLB, L.L.M, L.L.B, BBALLB, Diploma, Ph.D, Certification ', 'assets/img/sls_clg.jpg'),
(23, 'FERGUSSON COLLEGE, PUNE', 'Feb-March, April-May', 'Entrance, Merit-based', 'Pune', 'India', 'https://www.fergusson.edu/', 'assets/pdf/fergusson.pdf', 'BA, B.Sc, M.Sc, Ma, B.Voc', 'assets/img/fergusson_clg.jpg'),
(24, 'SYMBIOSIS INSTITUTE OF DESIGN - [SID], PUNE', 'Feb-March, May-Jun ', 'Entrance, Merit-based', 'Pune', 'India', 'http://www.sid.edu.in/', 'assets/pdf/sid.pdf', 'B.Des, M.Des', 'assets/img/sid_clg.jpg'),
(25, 'MIT WORLD PEACE UNIVERSITY - [MITWPU], PUNE', 'Sep-Oct', 'Entrance, JEE Main, GATE, CAT, GPAT', 'Pune', 'India', 'https://mitwpu.edu.in/', 'assets/pdf/mitwpu.pdf', 'B.Tech, BBA, MBA, B.Des, M.Sc, M.Tech, B.A {Hons.}', 'assets/img/mitwpu_clg.jpg'),
(26, 'SAVITRIBAI PHULE PUNE UNIVERSITY - [SPPU], PUNE', 'Jun-Jul, Sep-Oct', 'Merit-based', 'Pune', 'India', 'http://www.unipune.ac.in/', 'assets/pdf/sppu.pdf', 'M.C.A, B.C.A, M.Sc, B.Sc, BA, MA, B.Tech, M.Tech, Ph.D, Diploma', 'assets/img/sppu_clg.jpg'),
(27, 'BHARATI VIDYAPEETH NEW LAW COLLEGE -[NLC], PUNE', 'Jun-Jul', 'Entrance, Merit-based', 'Pune', 'India', 'http://bvpnlcpune.org/', 'assets/pdf/nlc.pdf', 'B.A+L.L.B, L.L.B, L.L.M, BBALLB', 'assets/img/nlc_clg.jpg'),
(28, 'DR DY PATIL VIDYAPEETH - [DPU], PUNE', 'Feb-March, April-May', 'Entrance, Merit-based', 'Pune', 'India', 'https://dpu.edu.in/', 'assets/pdf/dpu.pdf', 'B.Tech, MBBS, MBA, BBA, M.D, MDS', 'assets/img/dpu_clg.jpg'),
(29, 'TILAK MAHARASHTRA VIDYAPEETH - [TMV], PUNE', 'Jun-Jul', 'Entrance, Merit-based', 'Pune', 'India', 'http://www.tmv.edu.in/', 'assets/pdf/tmv.pdf', 'M.C.A, M.Sc, MBA, B.P.T, BBA, L.L.B, B.Sc [Nursing]', 'assets/img/tmv_clg.jpg'),
(30, 'MODERN COLLEGE OF ARTS SCIENCE AND COMMERCE - [MCASC], PUNE', 'Feb-March, April-May', 'Entrance, JEE Main, GATE, CET', 'Pune', 'India', 'http://moderncollegepune.edu.in/', 'assets/pdf/mcasc.pdf', 'BA, MA, B.Sc, M.Sc, BCA, MCA, B.Com, M.Com, BBM, Ph.D, PGDM, BBA, MBA', 'assets/img/mcasc_clg.jpg'),
(31, 'CHRIST UNIVERSITY, BANGALORE', 'Jan-Apr, May-Jun', 'Entrance, Merit-based', 'Bangalore', 'India', 'https://christuniversity.in//', 'assets/pdf/christ.pdf', 'BBA, BBA{Hons.}, MBA, B.Tech, B.Com, BCA, B.Com{Hons.}', 'assets/img/christ_clg.jpg'),
(32, 'BANGALORE UNIVERSITY - [BU], BANGALORE', 'Oct', 'Entrance, Merit-based', 'Bangalore', 'India', 'https://bangaloreuniversity.ac.in/', 'assets/pdf/banglore_university.pdf', 'BA, B.Com, BBA, MA, M.Com, M.Sc, PG Diploma', 'assets/img/banglore_clg.jpg'),
(33, 'JAIN UNIVERSITY - [JU], BANGALORE', 'Jan-Apr, May-Jun', 'Entrance, Merit-based, CAT, GATE, JEE', 'Bangalore', 'India', 'https://www.jainuniversity.ac.in/', 'assets/pdf/jain_university.pdf', 'B.Tech, MBA, B.Com{Hons.}, B.Sc, BCA, M.C.A, M.Sc', 'assets/img/jain_clg.jpg'),
(34, 'PES UNIVERSITY - [PESU], BANGALORE', 'Jan-Jul, Aug-Sep', 'Entrance, Merit-based, Interview-based, GATE, PGCE', 'Bangalore', 'India', 'https://pes.edu/', 'assets/pdf/pesu.pdf', 'B.Tech, BBA, MBA, B.Com, M.Tech, M.C.A, BCA', 'assets/img/pesu_clg.jpg'),
(35, 'R V COLLEGE OF ENGINEERING - [RVCE], BANGALORE', 'Feb-March, April-Jun', 'Entrance, Merit-based, GATE, PGCET', 'Bangalore', 'India', 'https://www.rvce.edu.in//', 'assets/pdf/rvce.pdf', 'B.E, M.Tech, M.C.A', 'assets/img/rvce_clg.jpg'),
(36, 'NTERNATIONAL INSTITUTE OF INFORMATION TECHNOLOGY - [IIIT-B], BANGALORE', 'Feb-March, April-Jun, Jul-Aug', 'Entrance, Merit-based, GATE', 'Bangalore', 'India', 'https://www.iiitb.ac.in/', 'assets/pdf/iiitb.pdf', 'M.Tech, Integrated B.tech+M.Tech', 'assets/img/iiitb_clg.jpg'),
(37, 'KRISTU JAYANTI COLLEGE - [KJC], BANGALORE', 'Jun-Jul', 'Merit-based', 'Bangalore', 'India', 'https://kristujayanti.edu.in/home/', 'assets/pdf/kjc.pdf', 'BBA, B.Com, MBA, BCA, BA, B.Sc, B.Com{Hons.}', 'assets/img/kjc_clg.jpg'),
(38, 'BMS COLLEGE OF ENGINEERING - [BMSCE], BANGALORE', 'Jan-Feb, Oct', 'Entrance, Merit-based', 'Bangalore', 'India', 'https://www.bmsce.ac.in/', 'assets/pdf/bms.pdf', 'B.E, M.Tech, MBA, B.Arch, M.C.A, M.Arch, B.E{Lateral}', 'assets/img/bms_clg.jpg'),
(39, 'AIMS INSTITUTES, BANGALORE', 'Jun-Jul', 'Entrance, Merit-based', 'Bangalore', 'India', 'https://theaims.ac.in/', 'assets/pdf/aims.pdf', 'MBA, BBA, BHM, BCA, B.Com, B.Sc, M.C.A ', 'assets/img/aims_clg.jpg'),
(40, 'INDIAN INSTITUTE OF SCIENCE - [IISC], BANGALORE', 'Feb-March, April-Jun', 'Entrance, Merit-based', 'Bangalore', 'India', 'https://www.iisc.ac.in/', 'assets/pdf/iisc.pdf', 'B.Sc, M.Sc+Ph.D, M.Tech, M.M.S, M.Des, Ph.D.', 'assets/img/iisc_clg.jpg'),
(41, 'INDIAN INSTITUTE OF TECHNOLOGY - [IIT], HYDERABAD', 'Jan-Feb, Sep-Oct', 'Entrance, Merit-based, JEE Main, UCEED, IIT-JAM, GATE, NET', 'Hyderabad', 'India', 'https://www.iith.ac.in/', 'assets/pdf/iith.pdf', 'B.Tech, M.Tech, M.A, B.Des, M.Des, Ph.D, M.Phill', 'assets/img/iith_clg.jpg'),
(42, 'INTERNATIONAL INSTITUTE OF INFORMATION TECHNOLOGY - [IIIT], HYDERABAD', 'Jan-Feb, Sep-Oct', 'Entrance, Merit-based Followed by interview', 'Hyderabad', 'India', 'https://www.iiit.ac.in/', 'assets/pdf/iiith.pdf', 'B.Tech, M.Tech, M.Sc, PG Program, B.Tech+M.S, Ph.D', 'assets/img/iiith_clg.jpg'),
(43, 'NALSAR UNIVERSITY OF LAW - [NALSAR], HYDERABAD', 'Aug-Nov', 'Entrance, Merit-based, CLAT, CAT, NET, GATE', 'Hyderabad', 'India', 'https://www.nalsar.ac.in/', 'assets/pdf/nalsar.pdf', 'BALLB{Hons.}, L.L.M, MBA, PG Diploma, L.L.M+Ph.D, Ph.D, Post Doc', 'assets/img/nalsar_clg.jpg'),
(44, 'OSMANIA UNIVERSITY - [OU], HYDERABAD', 'Feb-March, April-Jun', 'Entrance, Merit-based', 'Hyderabad', 'India', 'https://www.osmania.ac.in/', 'assets/pdf/osmania.pdf', 'B.Tech, M.Sc, MBA, M.C.J, B.A+L.L.B, L.L.B, M.A', 'assets/img/osmania_clg.jpg'),
(45, 'UNIVERSITY OF HYDERABAD - [UOH], HYDERABAD', 'Oct, Jan', 'Entrance, Merit-based, Interview-based, GATE, PGCET, PESSAT', 'Hyderabad', 'India', 'https://uohyd.ac.in/', 'assets/pdf/uoh.pdf', 'M.Sc, BA+MA, B.Sc, M.Sc, MBA, B.Tech+M.Tech, M.A', 'assets/img/uoh_clg.jpg'),
(46, 'NATIONAL INSTITUTE OF FASHION TECHNOLOGY - [NIFT], HYDERABAD', 'Jan-Feb', 'Entrance exam score followed by GD/PI', 'Hyderabad', 'India', 'https://www.nift.ac.in/', 'assets/pdf/nift.pdf', 'B.Des, B.F.Tech, M.F,Tech, M.Des', 'assets/img/nift_clg.jpg'),
(47, 'INDIAN SCHOOL OF BUSINESS - [ISB], HYDERABAD', 'Feb-March, April-Jun', 'Entrance-based', 'Hyderabad', 'India', 'https://www.isb.edu/en.html', 'assets/pdf/isb.pdf', 'PGPM, PG Program, Certification, Executive', 'assets/img/isb_clg.jpg'),
(48, 'VARDHAMAN COLLEGE OF ENGINEERING - [VCE], HYDERABAD', 'Feb-March, April-Jun', 'Entrance-based, TS EAMCET, TS ICET, GATE', 'Hyderabad', 'India', 'https://vardhaman.org/', 'assets/pdf/vce.pdf', 'B.Tech, MBA, M.Tech', 'assets/img/vce_clg.jpg'),
(49, 'AVINASH COLLEGE OF COMMERCE, HYDERABAD', 'Jan-Feb, Sep-Oct', 'Merit-based', 'Hyderabad', 'India', 'https://www.acc.edu.in/', 'assets/pdf/acc.pdf', 'BBA, B.Com, B.Com{Hons.}', 'assets/img/acc_clg.jpg'),
(50, 'JAWAHARLAL NEHRU ARCHITECTURE AND FINE ARTS UNIVERSITY - [JNAFAU], HYDERABAD', 'Jun-Jul', 'Entrance, Merit-based', 'Hyderabad', 'India', 'https://www.jnafau.ac.in/', 'assets/pdf/jnafau.pdf', 'BFA, B.Arch, B.Tech, M.Arch, M.Tech, MFA, Ph.D', 'assets/img/jnafau_clg.jpg'),
(51, 'NATIONAL INSTITUTE OF PHARMACEUTICAL EDUCATION AND RESEARCH - [NIPER], MOHALI', 'Feb-March, April-Jun', 'Entrance, Merit-based, JEE, GATE', 'Punjab', 'India', 'http://www.niper.gov.in/', 'assets/pdf/niper.pdf', 'MBA, M.Pharm, M.S, M.Tech, Ph.D', 'assets/img/niper_clg.jpg'),
(52, 'I.K. GUJRAL PUNJAB TECHNICAL UNIVERSITY - [IKG-PTU], JALANDHAR', 'Feb-March, April-Jun', 'Entrance, Merit-based', 'Punjab', 'India', 'https://ptu.ac.in/', 'assets/pdf/ptu.pdf', 'B.Tech, M.C.A, MBA, B.Tech{Lateral}, BHMCT, M.Tech, B.Arch', 'assets/img/ptu_clg.jpg'),
(53, 'GURU NANAK DEV UNIVERSITY - [GNDU], AMRITSAR', 'Jan-Feb, Sep-Oct', 'Entrance, Merit-based', 'Punjab', 'India', 'http://www.gndu.ac.in/', 'assets/pdf/gndu.pdf', 'B.Tech, M.Sc, MBA, B.Com+M.Com, B.Sc+M.Sc, M.A, BCA+MCA', 'assets/img/gndu_clg.jpg'),
(54, 'CHANDIGARH UNIVERSITY - [CU], CHANDIGARH', 'May-Dec', 'Merit-based', 'Punjab', 'India', 'https://www.cuchd.in/', 'assets/pdf/cu.pdf', 'MBA, BBA, B.E, B.Sc, BCA, M.C.A, M.Sc', 'assets/img/cu_clg.jpg'),
(55, 'RIMT UNIVERSITY, GOBINDGARH', 'Feb-March, April-Jun', 'Entrance, Merit-based', 'Punjab', 'India', 'https://rimt.ac.in/', 'assets/pdf/rimt.pdf', 'B.Tech, Diploma, M.Sc, B.Pharm, B.Sc, MBA, BJMC', 'assets/img/rimt_clg.jpg'),
(56, 'CT UNIVERSITY - [CTU], LUDHIANA', 'Feb-March, April-Jun', 'Entrance, Merit-based', 'Punjab', 'India', 'https://ctuniversity.in/', 'assets/pdf/ctu.pdf', 'B.Tech, M.Sc, MBA, Diploma, Ph.D, B.Sc, BBA', 'assets/img/ctu_clg.jpg'),
(57, 'THAPAR INSTITUTE OF ENGINEERING AND TECHNOLOGY - [THAPAR], PATIALA', 'Jan-Apr, May-Jun', 'Entrance, Merit-based, JEE, GATE, CAT', 'Punjab', 'India', 'http://www.thapar.edu/', 'assets/pdf/thapar.pdf', 'B.E, B.Tech, M.Tech, M.E, M.C.A, M.A, B.Sc{Hons.}', 'assets/img/thapar_clg.jpg'),
(58, 'INDIAN INSTITUTE OF TECHNOLOGY - [IIT], ROPAR', 'Jan-Apr, May-Jun', 'Entrance, Merit-based, CAT, GATE, JEE, JEE Advanced', 'Punjab', 'India', 'https://www.iitrpr.ac.in/', 'assets/pdf/iitpr.pdf', 'B.Tech, M.Sc, Ph.D, M.Tech, B.Tech+M.Tech, M.Sc', 'assets/img/iitpr_clg.jpg'),
(59, 'SANT LONGOWAL INSTITUTE OF ENGINEERING AND TECHNOLOGY - [SLIET], SANGRUR', 'Feb-March, April-Jun', 'Entrance, Merit-based', 'Punjab', 'India', 'http://sliet.ac.in/', 'assets/pdf/sliet.pdf', 'BE{Lateral}, Polytechnic, B.E, M.Tech, MBA, M.Sc, Ph.D', 'assets/img/sliet_clg.jpg'),
(60, 'DR BR AMBEDKAR NATIONAL INSTITUTE OF TECHNOLOGY - [NIT], JALANDHAR', 'Feb-March, April-Jun', 'Entrance, Merit-based, CLAT, CAT, NET, GATE', 'Punjab', 'India', 'https://www.nitj.ac.in/', 'assets/pdf/nitj.pdf', 'B.Tech, MBA, M.Sc, M.Tech, Ph.D', 'assets/img/nitj_clg.jpg'),
(61, 'DELHI UNIVERSITY - [DU], NEW DELHI', 'Jun-Jul', 'Entrance, Merit-based', 'Delhi', 'India', 'http://www.du.ac.in/', 'assets/pdf/du.pdf', 'BA, B.A{Hons.}, M.Comm, MBA, B.Com, B.Ed, B.Sc, LLB, LLM, M.Com, M.Ed, M.Phill, Ph.D, M.Sc, MCA, B.Tech, M.Tech', 'assets/img/du_clg.jpg'),
(62, 'INDIAN INSTITUTE OF TECHNOLOGY - [IIT], NEW DELHI', 'Feb-March, April-Jun', 'Entrance, Merit-based, CAT, GATE, JEE', 'Delhi', 'India', 'https://home.iitd.ac.in/', 'assets/pdf/iitd.pdf', 'B.Tech, M.Tech, Ph.D, B.Tech+M.Tech, MBA, M.Sc, M.Des', 'assets/img/iitd_clg.jpg'),
(63, 'ALL INDIA INSTITUTE OF MEDICAL SCIENCES - [AIIMS], NEW DELHI', 'Oct-Nov ,Dec-Jan', 'Entrance, Merit-based', 'Delhi', 'India', 'https://www.aiimsexams.ac.in/', 'assets/pdf/aiims.pdf', 'MBBS, M.H.A{Hospital}, B.Sc, B.Optom, B.Sc{Hons.}, M.Sc, P.B.B.Sc', 'assets/img/aiims_clg.jpg'),
(64, 'INDIAN INSTITUTE OF ART AND DESIGN - [IIAD], NEW DELHI', 'Feb-March, April-Jun', 'Entrance, Merit-based', 'Delhi', 'India', 'https://www.afdindia.com/', 'assets/pdf/iida.pdf', 'B.A{Hons.}, M.A', 'assets/img/iida_clg.jpg'),
(65, 'JAMIA MILLIA ISLAMIA UNIVERSITY-[JMI], NEW DELHI', 'Dec-Jan', 'Entrance, Merit-based', 'Delhi', 'India', 'https://www.jmi.ac.in/', 'assets/pdf/jmi.pdf', 'BBA, B.Tech, B.Ed , MBA, B.P.T, M.C.A, BALLB{Hons.} ', 'assets/img/jmi_clg.jpg'),
(66, 'NATIONAL INSTITUTE OF TECHNOLOGY - [NIT], NEW DELHI', 'Feb-March, April-Jun', 'Entrance, Merit-based, CAT, GATE, JEE', 'Delhi', 'India', 'https://nitdelhi.ac.in/', 'assets/pdf/nitd.pdf', 'B.Tech, M.Tech, Ph.D', 'assets/img/nitd_clg.jpg'),
(67, 'NATIONAL LAW UNIVERSITY - [NLU], NEW DELHI', 'Jun-Jul', 'Entrance, Merit-based', 'Delhi', 'India', 'https://nludelhi.ac.in/home.aspx', 'assets/pdf/nlu.pdf', 'BALLB{Hons.}, L.L.M, Certificaiton, PG Diploma, Ph.D ', 'assets/img/nlu_clg.jpg'),
(68, 'DELHI COLLEGE OF ARTS AND COMMERCE - [DCAC], NEW DELHI', 'Jun-Jul, Nov-Dec', 'Merit-based', 'Delhi', 'India', 'http://dcac.du.ac.in/', 'assets/pdf/dcac.pdf', 'B.A{Hons.}, BA, Certification, B.Com{Hons.}', 'assets/img/dcac_clg.jpg'),
(69, 'INDIAN AGRICULTURAL RESEARCH INSTITUTE - [IARI], NEW DELHI', 'Apr-Jun', 'Entrance, Merit-based', 'Delhi', 'India', 'https://www.iari.res.in/', 'assets/pdf/iari.pdf', 'M.Sc, M.Tech, Ph.D', 'assets/img/iari_clg.jpg'),
(70, 'NATIONAL INSTITUTE OF FASHION TECHNOLOGY - [NIFT], NEW DELHI', 'Jan-Feb, Sep-Oct', 'Entrance, Merit-based', 'Delhi', 'India', 'https://www.nift.ac.in/', 'assets/pdf/niftd.pdf', 'B.Des, B.F.Tech, M.Des, M.F.Tech', 'assets/img/niftd_clg.jpg'),
(71, 'GUJARAT TECHNOLOGICAL UNIVERSITY - [GTU], AHMEDABAD', 'Oct-Nov', 'Entrance, Merit-based, CAT, GATE, JEE, GUJCAT', 'Gujarat', 'India', 'https://www.gtu.ac.in/', 'assets/pdf/gtu.pdf', 'MBA, M.Pharm, BCA+MCA, Polytechnic, M.C.A, PG Diploma, BBA+MBA', 'assets/img/gtu_clg.jpg'),
(72, 'Algonquin College', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.algonquincollege.com/', 'assets/pdf/algonquin_clg.pdf', 'Diploma in Computer Programmer,Advanced Diploma in Computer Engineering Technology,Bachelor of Hospitality and Tourism Management ,Advanced Diploma in Electrical Engineering Technology', 'assets/img/algonquin_clg.jpg'),
(73, 'Cambrian College,Sudbury', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://cambriancollege.ca/', 'assets/pdf/cambrian_clg.pdf', 'Early Childhood Education,Business - Accounting (BUAP),I.T. Business Analysis (BAGC),Human Resources Management – Graduate Certificate (HMPD),Computer System Technology (CETY),Dental Hygeine (DHYG),Environmental Monitoring & Impact Assessment (EMPD)', 'assets/img/cambrian_clg.jpg'),
(74, 'Canadore College,North Bay', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.canadorecollege.ca/', 'assets/pdf/canadore_clg.pdf', 'Diploma in Mechanical Engineering Technician,Diploma in Civil Engineering Technician', 'assets/img/canadore_clg.jpg'),
(75, 'Centennial College,Toronto', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.centennialcollage.ca', 'assets/pdf/centennial_clg.pdf', 'Graduate Certificate in Global Business Management,Diploma in Hospitality - Hotel Operations Management,Diploma in Computer Systems Technician – Networking,Graduate Certificate in International Business Management,Bachelor of Information Technology ', 'assets/img/centennial_clg.jpg'),
(76, 'St.Clair College,Windsor', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.stclaircollege.ca/', 'assets/pdf/st.clair_clg.pdf', 'Diploma in Hospitality – Hotel & Restaurant,Diploma in Business - Accounting,Diploma in Journalism,Advanced Diploma in Graphic Design,Diploma in Electrical Engineering Technician,Advanced Diploma in Business Administration - Marketing', 'assets/img/st.clair_clg.jpg'),
(77, 'Conestoga College,Kichener', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.conestogac.on.ca/', 'assets/pdf/conestoga_clg.pdf', 'Diploma in Computer Programmer,Advanced Diploma in Business Administration - Management,Graduate Certificate in Information Technology Business Analysis - Operations,Diploma in Biotechnology Technician,Practical Nursing', 'assets/img/conestoga_clg.jpg'),
(78, 'Durham Collage,Oshawa', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.durhamcollege.ca', 'assets/pdf/durham_clg.pdf', 'Graduate Certificate in Human Resources Management,Graduate Certificate in Project Management,Diploma in Computer Programmer,Advanced Diploma in Accounting-Business,Diploma in Mechanical Engineering Technician,Advanced Diploma in Architectural Technology', 'assets/img/durham_clg.jpg'),
(79, 'Confederation College,Thunderbay', 'Sep/Jan', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.confederationcollege.ca/', 'assets/pdf/confederation_clg.pdf', 'Diploma in Business - Human Resources,Diploma in Instrumentation Engineering and Control Technician - Process Automation,Bachelor of Science in Nursing', 'assets/img/confederation_clg.jpg'),
(80, 'Fanshawe College, London', 'Sep/Jan', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.fanshawec.ca', 'assets/pdf/fanshawe_clg.pdf', 'Diploma in Food and Beverage Management (Co-op),Advanced Diploma in Cyber Security,Diploma in Business - Finance,Diploma in Business - Marketing (Co-op),Honours Bachelor of Interior Design,Advanced Diploma in Game - Design', 'assets/img/fanshawe_clg.jpg'),
(81, 'Geroge Brown College,Toronto', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.georgebrown.ca/', 'assets/pdf/georgebrown_clg.pdf', 'Diploma in Computer Systems Technician,Advanced Diploma in Computer Programmer Analyst,Graduate Certificate in Financial Planning,Graduate Certificate in Wireless Networking,Diploma in Architectural Technician,Advanced Diploma in Graphic Design', 'assets/img/georgebrown_clg.jpg'),
(82, 'Bow Valley College,Calagary', 'Sep/Jan/May', 'IELTS/TOEFL', 'Ontario', 'Canada', 'https://www.bowvalleycollege.ca/', 'assets/pdf/bowvalley_clg.pdf', 'Diploma in Business Administration General Business Major,Human Resources Certificate,International English Language Learning Program', 'assets/img/bowvalley_clg.jpg'),
(83, 'Lakeland College,Vermillion', 'Sep/Jan', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.lakelandcollege.ca/', 'assets/pdf/lakeland_clg.pdf', 'Diploma in Interior Design Technology,Diploma in Administrative Professional,Diploma in Small Business and Entrepreneurship Major,Diploma in Accounting Major,Diploma in General Business Major', 'assets/img/lakeland_clg.jpg'),
(84, 'Medicine Hat College,Alberta', 'Sep/Jan', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.mhc.ab.ca/', 'assets/pdf/mhc_clg.pdf', 'Bachelor of Business Administration,Diploma in Environmental Science,Administrative Office Management,Diploma in Power Engineering Technology', 'assets/img/mhc_clg.jpg'),
(85, 'Norquest College,Edmonton', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.norquest.ca/', 'assets/pdf/norquest.pdf', 'Diploma in Business Administration,Diploma in Environmental Protection Technology,Certificate in Health Care Leadership,Certificate in Accounting Technician', 'assets/img/norquest_clg.jpg'),
(86, 'NAIT,Edmonton', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.nait.ca/', 'assets/pdf/nait.pdf', 'Diploma in Business Administration - Management,Diploma in Computer Engineering Technology,Diploma in Civil Engineering Technology,Bachelor of Business Administration,Diploma in Chemical Engineering Technology', 'assets/img/nait_clg.jpg'),
(87, 'Lethbridge College,Vulcan Country', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.lethbridgecollege.ca', 'assets/pdf/lethbridge_clg.pdf', 'Diploma in Business Administration,Certificate in Automotive Systems', 'assets/img/lethbridge_clg.jpg'),
(88, 'MacEwan Universite,Edmonton', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.macewan.ca', 'assets/pdf/macewan_uni.pdf', 'Business Management Diploma,Bachelor of Science in Nursing (BScN),Legal Assistant diploma', 'assets/img/macewan_uni.jpg'),
(89, 'SAIT,Calgary', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.sait.ca/', 'assets/pdf/sait_clg.pdf', 'Diploma in Hospitality Management,Diploma in Information Technology,Diploma in Civil Engineering Technologies,Diploma in Journalism,Diploma in Architectural Technologies', 'assets/img/sait_clg.jpg'),
(90, 'Concordia University,Edmonton', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.concordia.ab.ca', 'assets/pdf/concordia.pdf', 'Business and Administration Studies,Computer and Information Technology,Fine Arts and Performing Arts, Mathematics,Religious Studies', 'assets/img/Concordia.jpg'),
(91, 'University of Alberta,Calagary', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.ualberta.ca/', 'assets/pdf/unioalberta.pdf', 'MSc in Computing Science,MBA,MSc in Electrical and Computer Engineering,Master of Public Health (MPH)BSc in Computing Science General', 'assets/img/unioalberta.jpg'),
(92, 'Memorial University,St.Johns', 'Sep/Jan/May', 'IELTS/TOEFL', 'Alberta', 'Canada', 'https://www.grenfell.mun.ca', 'assets/pdf/memorial_uni.pdf', 'Master of Business Administration,Master of Science in Computer Science,Master of Science in Management,MEng in Electrical Engineering', 'assets/img/memorial_uni.jpg'),
(93, 'Camosun College,Victoria', 'Sep/Jan', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://camousun.ca/', 'assets/pdf/camosun_clg.pdf', 'Bachelor of Business Administration,Diploma in Civil Engineering Technology,Diploma in Community, Family & Child Studies,Diploma in Arts and Science Studies,Bachelor of Athletic and Exercise Therapy\r\n', 'assets/img/camosun_clg.jpg'),
(94, 'College of New Caledonia,Prince George', 'Sep/Jan', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://www.cnc.bc.ca/', 'assets/pdf/caledonia_clg.pdf', 'Marketing & Management Diploma,Accounting and Finance Diploma,Dental Hygiene Diploma,Medical Radiography Technology Diploma', 'assets/img/caledonia_clg.jpg'),
(95, 'College of the Rockies,Cranbrook', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://www.cotr.bc.ca/', 'assets/pdf/rockies_clg.pdf', 'B.B.A,Diploma Hospitality Management,Certificate Tourism Management,Diploma Accounting,Certificate Business Management', 'assets/img/rockies_clg.jpg'),
(96, 'Douglas Colleges,New Westminster', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', ' http://www.douglascollege.ca/', 'assets/pdf/douglas_clg.pdf', 'B.B.A,B.S.W,Certificate Accounting,Diploma Hospitality Management,Diploma General Business,Certificate Computing Science', 'assets/img/douglas_clg.jpg'),
(97, 'Langara College', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'https://langara.ca/', 'assets/pdf/langara_clg.pdf', 'B.B.A,[B.Sc] Bioinformatics,Diploma Data Analytics,Diploma Marketing Management,Associate of Science Biology,Bachelor of Science in Nursing [B.S.N]', 'assets/img/langara_clg.jpg'),
(98, 'North Island College', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'https://www.nic.bc.ca/', 'assets/pdf/nic_clg.pdf', 'Computer Information Systems Certificate,Web Design - Interactive Media Certificate,Business Administration Certificate,Communication Design Diploma', 'assets/img/nic_clg.jpg'),
(99, 'Selkirk College,Castlegar', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://www.selkrirk.ca/', 'assets/pdf/selkirk_clg.pdf', 'Post-Graduate Diploma in Accounting,Diploma in Business Administration,Diploma in Digital Arts,Certificate in Web Development', 'assets/img/selkirk_clg.jpg'),
(100, 'University of the Fraser Valley,Abbotsford', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://www.ufv.ca/', 'assets/pdf/ufv.pdf', 'Practical Nursing Diploma,Bachelor of Computer Information Systems,CIS Diploma Program,Fashion Design Diploma,Bachelor of Science,Bachelor of Kinesiology', 'assets/img/ufv.jpg'),
(101, 'UNBC,Prince George', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://www.unbc.ca/', 'assets/pdf/unbc.pdf', 'Business Administration (MSc),Master of Computer Science,BSc in Computer Science,MSc in Nursing,MSc Health Science,BSc in Psychology', 'assets/img/unbc.jpg'),
(102, 'University of Victoria,Victoria', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://www.uvic.ca', 'assets/pdf/uvic.pdf', 'MSc in Computer Science,Daytime MBA,(B.Sc.) in Computer Science,Master of Social Work,MSc in Environmental Studies,Master of Science in Chemistry,MSc in Biology\r\n', 'assets/img/uvic.jpg'),
(103, 'Assiniboine Community College,Brandon ', 'Sep/Jan/May', 'IELTS/TOEFL', 'Manitoba', 'Canada', 'http://assiniboine.net', 'assets/pdf/assiniboine_clg.pdf', 'Certificate Food Processing - Animal Proteins,Diploma Business Administration - Accounting,Diploma Agribusiness,Diploma Social Service Worker,Diploma Office Management,Advanced Diploma Accounting', 'assets/img/assiniboine_clg.jpg'),
(104, 'Red River College,Winnipeg', 'Sep/Jan/May', 'IELTS/TOEFL', 'Manitoba', 'Canada', 'http://www.rrc.ca/', 'assets/pdf/rrc_clg.pdf', 'Diploma Business Administration,Diploma Civil Engineering Technology,Diploma Business Technology Management,Diploma Aircraft Maintenance,Diploma Culinary Arts,Certificate Dental Assisting', 'assets/img/rrc_clg.jpg'),
(105, 'University Of Manitoba,Winnipeg', 'Sep/Jan/May', 'IELTS/TOEFL', 'Manitoba', 'Canada', 'http://umanitoba.ca/', 'assets/pdf/umanitoba.pdf', 'Master of Science in Computer Science,M.B.A,Bachelor of Computer Science Honours,Master of Finance,Master of Arts in Economics,Master of Architecture,Master of Fine Art', 'assets/img/umanitoba.jpg'),
(106, 'The Universigty of Winnipeg,Winnipeg', 'Sep/Jan/May', 'IELTS/TOEFL', 'Manitoba', 'Canada', 'https://www.uwinnipeg.ca/', 'assets/pdf/uwinnipeg_clg.pdf', 'Business and Administration,B.A/B.SC Applied Computer Science,BSc Biology,B.A. Economics,BSc Physics', 'assets/img/uwinnipeg_clg.jpg'),
(107, 'Brandon University,Bardon', 'Sep/Jan', 'IELTS/TOEFL', 'Manitoba', 'Canada', 'http://www.bradonu.ca/', 'assets/pdf/brandon_clg.pdf', 'Diploma Business Administration,Certificate Food Processing,Diploma Agribusiness,Diploma Social Service Worker,Diploma Office Management,Advanced Diploma Accounting,Certificate Piping Trades', 'assets/img/brandon_clg.jpg'),
(108, 'Saskatchewan Polytechnic,Saskatoon', 'Sep/Jan', 'IELTS/TOEFL', 'Saskatchewan ', 'Canada', 'http://saskpolytech.ca/', 'assets/pdf/saskpolytech.pdf', 'Business (Management) Diploma,Hotel and Restaurant Management Diploma,Business (Marketing) Diploma,Bachelor of Psychiatric Nursing,Mining Engineering Technology Diploma,Environmental Engineering Technology Diploma', 'assets/img/saskpolytech.jpg'),
(109, 'University of Regina,Regina', 'Sep/Jan/May', 'IELTS/TOEFL', 'Saskatchewan ', 'Canada', 'http://www.uregina.ca/ ', 'assets/pdf/uregina.pdf', 'MSc in Computer Science,MBA - International Business,Post-Grad Diploma in Business,BSc in Nursing,B.Sc. Honours in Computer Science,M.Sc in Chemistry,Master of Fine Arts in Studio Art,MSc in Physics,M.Sc in Psychology', 'assets/img/uregina.jpg'),
(110, 'Parkland College,Yorkton', 'Sep/Jan/May', 'IELTS/TOEFL', 'Saskatchewan', 'Canada', 'http://www.parkland.edu/', 'assets/pdf/parkland.pdf', 'Bachelor of Science in Nursing,Business Diploma (Management),Bachelor of Science in Kinesiology,Business Certificate,Automotive Service Technician Certificate', 'assets/img/parkland.jpg'),
(111, 'University of Saskatchewan,Saskatoon', 'Sep/Jan', 'IELTS/TOEFL', 'Saskatchewan ', 'Canada', 'http://www.usask.ca/', 'assets/pdf/usask.pdf', 'MSc in Computer Science,MSc Finance,MSc in Civil Engineering,MEng in Electrical Engineering,BSc in Computer Science,PGD in Electrical Engineering,BE in Computer Engineering', 'assets/img/usask.jpg'),
(112, 'Mount Allison University,Sackville', 'Sep/Jan/May', 'IELTS/TOEFL', 'New Brunswick', 'Canada', 'http://www.mta.ca', 'assets/pdf/mta_university.pdf', 'BSc Aviation,B.Sc. in Computer Science,Bachelor of Commerce,BA Economics (Hons),B.Sc. Biology (Hons),BSc Psychology (Hons)', 'assets/img/mta_university.jpg'),
(113, 'New Brunswick College of Craft and Design,Fredericton', 'Sep/Jan/May', 'IELTS/TOEFL', 'New Brunswick', 'Canada', 'http://nbccd.ca/', 'assets/pdf/56', 'Diploma Business Administration - Accounting,Diploma Business Administration - Marketing,P.G Certificate Business Analysis,Diploma Practical Nurse,Certificate Early Childhood Education', 'assets/img/nbccd_clg.jpg'),
(114, 'St.Thomas University,Frederiction', 'Sep/Jan/May', 'IELTS/TOEFL', 'New Brunswick', 'Canada', 'www.stu.ca/', 'assets/pdf/st.thomas.pdf', 'BA in Journalism and Communications,Bachelor of Political Science,BA in Science and Technology Studies,Certificate Gerontology', 'assets/img/st.thomas.jpg'),
(115, 'University of New Brunswick,Fredericton', 'Sep/Jan/May', 'IELTS/TOEFL', 'New Brunswick', 'Canada', 'www.unb.ca/', 'assets/pdf/unb_clg.pdf', 'Master of Computer Science,MBA / Juris Doctor,MBA at Fredericton Campus,MScE Electrical Engineering,MEng Civil Engineering,MEng Electrical Engineering,Certificate in Business Administration (Level I),Bachelor of Science in Biology', 'assets/img/unb_clg.jpg'),
(116, 'Universite de Moncton,Edmundston', 'Sep/Jan', 'IELTS/TOEFL', 'New Brunswick', 'Canada', 'https://www.umoncton.ca/', 'assets/pdf/umoncton_uni.pdf', '[M.Sc] Computer Science,[B.Eng] Electrical Engineering,[Ph.D] Life Sciences,Diploma Law,[B.Sc] Informatics,[M.Sc] Nursing science,[M.A] Psychology,[B.Eng] Civil Engineering', 'assets/img/umoncton_uni.jpg'),
(117, 'Lasalle College,Montreal', 'Sep/Jan/May', 'IELTS/TOEFL', 'Quebec', 'Canada', 'http://www.lasallecollege.com', 'assets/pdf/lasallecollege.pdf', '3D Animation for Television and Cinema,3D Creation for Video Games ,Graphic Design  arrow_forward,Interior Design Course,Diploma in Fashion Design  arrow_forward,Diploma in Fashion Marketing  ,Diploma in Food Service Management  ', 'assets/img/lasallecollege.jpg'),
(118, 'McGill University,Montreal ', 'Sep/Jan/May', 'IELTS/TOEFL', 'Quebec', 'Canada', 'http://www.mcgill.ca/', 'assets/pdf/mcgill.pdf', 'Master of Science in Computer Science,MBA,Graduate Certificate in Marketing,Master of Management - Finance,MSc in Mechanical Engineering,MEng in Mechanical Engineering,B.Eng. in Computer Engineering', 'assets/img/mcgill.jpg'),
(119, 'Universite de Montreal,Montreal ', 'Sep/Jan/May', 'IELTS/TOEFL', 'Quebec', 'Canada', 'https://www.umontreal.ca/en/', 'assets/pdf/umontreal.pdf', '[M.Eng] Computer Engineering,[B.Eng] Computer Engineering,[Ph.D] Computer Engineering,Certificate Supply Chain Management,[M.Eng] Industrial Engineering, [M.Eng] Civil Engineering', 'assets/img/umontreal.jpg'),
(120, 'University de Sherbrooke,Sherbrooke', 'Sep/Jan', 'IELTS/TOEFL', 'Quebec', 'Canada', 'https://www.usherbrooke.ca/', 'assets/pdf/usherbrooke.pdf', 'MBA,Bachelor in Mechanical Engineering,Master of Communication,Master in Chemistry,Bachelor of Civil Engineering,Master in Biochemistry,Bachelor in Biology,Bachelor in Chemistry', 'assets/img/usherbrooke.jpg'),
(121, 'University du Quebec,Quebec City', 'Sep/Jan', 'IELTS/TOEFL', 'Quebec', 'Canada', 'http://uquebec.ca/', 'assets/pdf/uquebec.pdf', '[B.ASc] Computer and Electronic Systems,Doctor of Philosophy [Ph.D] Administration,Certificate Film Scenarios,[M.Sc] Tourism Development,[M.B.A] Accounting Sciences,[M.Eng] Software Engineering', 'assets/img/uquebec.jpg'),
(122, 'Universite Laval,Quebec City', 'Sep/Jan', 'IELTS/TOEFL', 'Quebec', 'Canada', 'http://www.ulaval.ca/', 'assets/pdf/ulaval.pdf', 'MBA in Finance,Master of Business Administration (MBA),Masters of Computer Science,Master\'s in Electrical Engineering,Bachelor in Computer Science,BBA in Finance', 'assets/img/ulaval.jpg'),
(123, 'Cape Breton Universiy,Sydney', 'Sep/Jan/May', 'IELTS/TOEFL', 'Nova Scotia', 'Canada', 'https://www.cbu.ca/', 'assets/pdf/cape_breton.pdf', 'Post-Baccalaureate Diploma in Supply Chain Management,MBA in Community Economic Development,Bachelor of Business Administration,Bachelor of Science-Nursing,Bachelor of Science in Biology', 'assets/img/cape_breton.jpg'),
(124, 'Dalhousie University,Halifax', 'Sep/Jan/May', 'IELTS/TOEFL', 'Nova Scotia', 'Canada', 'https://www.dal.ca/', 'assets/pdf/dal_uni.pdf', 'Master of Applied Computer Science,Bachelor of Computer Science,Master of Computer Science,MEng Civil Engineering,MEng Mechanical Engineering', 'assets/img/dal_uni.jpg'),
(125, 'Mount Saint Vincent University,Halifax', 'Sep/Jan/May', 'IELTS/TOEFL', 'Nova Scotia', 'Canada', 'http://www.msvu.ca', 'assets/pdf/msvu_uni.pdf', 'B.sc in Computer Science,Master of Public Relations,Bachelor of Business Administration,Master of Arts (Communication),Bachelors of Arts in Economics,Bachelors of Arts in Political Science', 'assets/img/msvu_uni.jpg'),
(126, 'St.Francis Xavier University,Antigonish', 'Sep/Jan', 'IELTS/TOEFL', 'Nova Scotia', 'Canada', 'https://www.stfx.ca/', 'assets/pdf/stfx_uni.pdf', 'MSc in Computer Science,BSc in Computer Science,Diploma in Engineering,Bachelor of Science in Nursing,BA in Computer Science,Bachelor of Business Administration (General)', 'assets/img/stfx_uni.jpg'),
(127, 'University of King\'s College,Halifax', 'Sep/Jan/May', 'IELTS/TOEFL', 'Nova Scotia', 'Canada', 'https://ukings.ca/', 'assets/pdf/ukings.pdf', 'Master Journalism,[M.F.A] Creative Nonfiction,Bachelor Journalism,Bachelor Journalism', 'assets/img/ukings.jpg'),
(128, 'Saint Mary\'s University,Halifax', 'Sep/Jan/May', 'IELTS/TOEFL', 'Nova Scotia', 'Canada', 'https://smu.ca/', 'assets/pdf/smu.pdf', 'Master of Business Administration,MSc in Computing & Data Analytics,Master of Finance,Master of Technology Entrepreneurship & Innovation,B.com with major in Management,Executive Master of Business Administration (EMBA)', 'assets/img/smu.jpg'),
(129, 'Acadia University,Wolfville', 'Sep/Jan', 'IELTS/TOEFL', 'Nova Scotia', 'Canada', 'https://www.acadiau.ca/', 'assets/pdf/acadiau.pdf', 'MSc in Computer Science,Bachelor of Business Administration (BBA),Bachelor of Computer Science,Masters in Clinical Psychology,BASc with CAS- Engineering,Bachelors of Kinesiology,BBA in Finance', 'assets/img/acadiau.jpg'),
(130, 'University of Prince Edward Island,Charlottetown', 'Sep/Jan/May', 'IELTS/TOEFL', 'Prince Edward Island', 'Canada', 'http://www.upei.ca/', 'assets/pdf/upei.pdf', 'Executive Master of Business Administration,Bachelor of Science in Computer Science,Bachelor of Education (BEd),Master of Science,MBA in Global Leadership,Master of Veterinary Science,Master in Global Affairs', 'assets/img/upei.jpg'),
(131, 'Arbutus College,Vancouver', 'Sep/Jan/May', 'IELTS/TOEFL', 'British Columbia', 'Canada', 'http://arbutuscollege.com/', 'assets/pdf/arbutuscollege.pdf', 'Certificate Business Management,Certificate Hospitality and Business Skills,Certificate Marketing,Diploma Marketing,Certificate International Trade,Diploma International Trade', 'assets/img/arbutuscollege.jpg'),
(132, 'Long Island University - Brooklyn', 'Jan / Sept', 'TOEFL / IELTS / GRE', 'The North East Region', 'USA', 'https://www.liu.edu', 'assets/pdf/Liu_Brooklyn.pdf', 'BA(social science) ,BSc(Chemistry & Computer science) ,MSc Biology ,Ph.d Clinical psychology ', 'assets/img/Liu_brooklyn.jpg'),
(133, 'State university of New York - Buffalo State/Old Westbury/Polytechnic Institute', 'Jan / Sept', 'TOEFL / IELTS / GRE / SAT', 'The North East Region', 'USA', 'https://suny.buffalostate.edu', 'assets/pdf/uniofbuf.pdf', 'MS / BTech / BSc / MA / MArch', 'assets/img/SUofNY_b.jpg'),
(134, 'The College Of Saint Rose', 'Jan / Sept', 'TOEFL / IELTS / GMAT / GRE ', 'The North East Region', 'USA', 'https://www.strose.edu ', 'assets/pdf/colofros.pdf', 'MArch / MA / BSc / BHM / BBA', 'assets/img/CSofROSE.jpg'),
(135, 'Duquesne University', 'Jan ', 'TOEFL / IELTS / GMAT / LSAT', 'The North East Region', 'USA', 'https://www.duq.edu', 'assets/pdf/duqu.pdf', 'MEng / MA / MTech / BTech / MBA', 'assets/img/duqu.jpg'),
(136, 'Robert Morris University', 'Jan / Sept', 'TOEFL / IELTS / MCAT / GRE ', 'The North East Region', 'USA', 'https://www.rmu.edu', 'assets/pdf/morcol.pdf', 'BBA / BSC / BTech / BHM', 'assets/img/rm_uni.jpg'),
(137, 'Merrimack College', 'Aug - Sept', 'TOEFL / IELTS / SAT / GRE ', 'The North East Region', 'USA', 'https://www.merrimack.edu', 'assets/pdf/marcol.pdf', 'MSc / MTech / MArch / MEM', 'assets/img/marrimack.jpg'),
(138, 'University of Massachusetts - Boston', 'AUG / NOV', 'TOEFL / IELTS / SAT / GRE / GMAT', 'The North East Region', 'USA', 'https://www.umb.edu', 'assets/pdf/uniofmass.pdf', 'MBA / BSc / MA / MSC / BTech / MASc', 'assets/img/umass.jpg'),
(139, 'University of Massachusetts - Darthmouth', 'AUG / NOV', 'TOEFL / IELTS / SAT / GRE / GMAT', 'The North East Region', 'USA', 'https://www.umassd.edu', 'assets/pdf/uniofmass.pdf', 'MBA / BSc / MA / MSC / BTech / MASc', 'assets/img/umass.jpg'),
(140, 'University of Massachusetts - Lowell', 'AUG / NOV', 'TOEFL / IELTS / SAT / GRE / GMAT', 'The North East Region', 'USA', 'https://www.uml.edu', 'assets/pdf/uniofmass.pdf', 'MBA / BSc / MA / MSC / BTech / MASc', 'assets/img/umass.jpg'),
(141, 'University of New Haven', 'MAY / NOV', 'TOEFL / IELTS / LSAT / GMAT', 'The North East Region ', 'USA', 'https://www.newhaven.edu', 'assets/pdf/uniofind.pdf', 'MS / BE / MIM / BHM / BBA / MArch', 'assets/img/unw.jpg'),
(142, 'College of Lake Country', 'Aug - Sept', 'TOEFL / IELTS / SAT', 'The Mid West Region', 'USA', 'https://www.clcillinois.edu ', 'assets/pdf/clg_of_lake.pdf', 'BA / ART / Legal studies / CAD / Computer Science', 'assets/img/clg_of_lake.jpg'),
(143, 'Greenville College', 'Aug / Nov', 'TOEFL / GRE / MCAT / IELTS', 'The Mid West Region', 'USA', ' https://www.greenville.edu', 'assets/pdf/green.pdf', 'ACCT / BUSN / EDUC / MRKT ', 'assets/img/greerCampus.jpg'),
(144, 'University of ST Francis', 'Aug / Sept', 'TOEFL / SAT / IELTS / GRE', 'The Mid West Region', 'USA', 'https://www.stfrancis.edu', 'assets/pdf/stfrancis.pdf', 'BBA / BA / BS / BSN / M.Ed', 'assets/img/stfrancis.jpg'),
(145, 'University of Indianapolis', 'AUG / SEPT ', 'TOEFL / IELTS / LSAT / GRE', 'The Mid West Region', 'USA', 'https://www.uindy.edu', 'assets/pdf/uniofind.pdf', 'BA /BS / MSN / MA', 'assets/img/uniofind.jpg'),
(146, 'University of Mount Union ', 'MAY / NOV', 'TOEFL / SAT / GRE / GMAT', 'The Mid West Region', 'USA', 'https://www.mountunion.edu', 'assets/pdf/uniofmu.pdf', 'MS / BE / MA / MCA / MASc', 'assets/img/uniofmu.jpg'),
(147, 'Mount Mercy University', 'AUG / NOV', 'TOEFL / SAT / GRE / IELTS', 'The Mid West Region', 'USA', 'https://www.mtmercy.edu', 'assets/pdf/mmuni.pdf', 'MS / BTech / BSc / MA / MArch', 'assets/img/mmuni.jpg'),
(148, 'Upper Lowa University', 'AUG / SEPT', 'TOEFL / SAT / LSAT / GMAT', 'The Mid West Region', 'USA', 'https://uiu.edu', 'assets/pdf/uplwuni.pdf', 'BBA / BA / BS / BSN / M.Ed', 'assets/img/uplwuni.jpg'),
(149, 'Northwood University', 'JAN / SEPT', 'TOEFL / MCAT / GRE / GMAT', 'The Mid West Region', 'USA', 'https://www.northwood.edu', 'assets/pdf/nwuni.pdf', 'MS / BE / MIM / BHM / BBA / MArch', 'assets/img/nwuni.jpg'),
(150, 'University of Michigan - Flint', 'JAN /SEPT', 'TOEFL / SAT / MCAT / LELTS', 'The Mid West Region', 'USA', 'https://www.umflint.edu', 'assets/pdf/uniofmi.pdf', 'BBA / BSC / BTech / BHM', 'assets/img/uniofmi.jpg'),
(151, 'Alma College', 'AUG / SEPT', 'TOEFL / MCAT / LSAT', 'The Mid West Region', 'USA', 'https://www.alma.edu', 'assets/pdf/almauni.pdf', 'MEng / MA / MTech / BTech / MBA', 'assets/img/almauni.jpg'),
(152, 'Corroll University', 'JAN /SEPT', 'TOEFL / SAT / IELTS / GRE', 'The Mid West Region', 'USA', 'https://www.carrollu.edu', 'assets/pdf/caruni.pdf', 'MS / BTech / BSc / MA / MArch', 'assets/img/caruni.jpg'),
(153, 'The University of Tampa', 'JAN / SEPT ', 'TOEFL / SAT / GRE / GMAT', 'The South Region', 'USA', 'https://www.ut.edu', 'assets/pdf/unioftamp.pdf', 'BA / ART / Legal studies / CAD / Computer Science', 'assets/img/unioftamp.jpg'),
(154, 'Jacksonville State University', 'AUG / NOV', 'TOEFL / SAT / IELTS / GRE', 'The South Region', 'USA', 'http://www.jsu.edu/', 'assets/pdf/clafuni.pdf', 'ACCT / BUSN / EDUC / MRKT ', 'assets/img/jackuni.jpg'),
(155, 'Campbellsville University', 'AUG / NOV', 'TOEFL / SAT / GRE / GMAT', 'The South Region', 'USA', 'https://www.campbellsville.edu', 'assets/pdf/campuni.pdf', 'MSc / MTech / MArch / MEM', 'assets/img/campuni.jpg'),
(156, 'Claflin University', 'AUG / SEPT', 'TOEFL / SAT / IELTS / GRE', 'The South Region', 'USA', 'https://www.claflin.edu', 'assets/pdf/clafuni.pdf', 'BBA / BA / BS / BSN / M.Ed', 'assets/img/clafuni.jpg'),
(157, 'College of Charleston', 'JAN / SEPT', 'TOEFL / SAT / GMAT / GRE', 'The South Region', 'USA', 'https://www.cofc.edu', 'assets/pdf/cofcharl.pdf', 'BA / ART / Legal studies / CAD / Computer Science', 'assets/img/cofcharl.jpg'),
(158, 'Columbus State University', 'AUG / NOV', 'TOEFL / LSAT / IELTS / GRE', 'The South Region', 'USA', 'https://www.columbusstate.edu', 'assets/pdf/csuni.pdf', 'MS / BTech / BSc / MA / MArch', 'assets/img/csuni.jpg'),
(159, 'Long Wood University', 'JAN / SEPT ', 'TOEFL / LSAT / IELTS / GMAT', 'The South Region', 'USA', 'http://www.longwood.edu', 'assets/pdf/lwuni.pdf', 'MEng / MA / MTech / BTech / MBA', 'assets/img/lwuni.jpg'),
(160, 'Texas Wesleyan University', 'AUG / SEPT', 'TOEFL / MCAT / SAT / GRE', 'The South Region', 'USA', 'https://txwes.edu', 'assets/pdf/texuni.pdf', 'BA(social science) ,BSc(Chemistry & Computer science) ,MSc Biology ,Ph.d Clinical psychology ', 'assets/img/texuni.jpg'),
(161, 'Stratford University', 'AUG / NOV', 'TOEFL / GMAT / GRE', 'The South Region', 'USA', 'https://www.stratford.edu', 'assets/pdf/stratuni.pdf', 'BBA / BA / BS / BSN / M.Ed', 'assets/img/stratuni.jpg'),
(162, 'Stepherd University', 'JAN / SEPT', 'TOEFL /  GRE', 'The South Region', 'USA', 'https://www.shepherd.edu', 'assets/pdf/shepuni.pdf', 'MS / BE / MIM / BHM / BBA / MArch', 'assets/img/shepuni.jpg'),
(163, 'Northern Arizona University', 'AUG / SEPT', 'TOEFL / SAT / GMAT / GRE', 'The West Region', 'USA', 'https://nau.edu', 'assets/pdf/nauni.pdf', 'BBA / BA / BS / BSN / M.Ed', 'assets/img/nauni.jpg'),
(164, 'Academy of Art University', 'JAN / SEPT', 'TOEFL / LSAT / IELTS / GMAT', 'The West Region', 'USA', 'https://www.academyart.edu', 'assets/pdf/aofauni.pdf', 'BA / ART / Legal studies / CAD / Computer Science', 'assets/img/aofauni.jpg'),
(165, 'California Lutheran University', 'AUG / NOV', 'TOEFL / MCAT / LSAT', 'The West Region', 'USA', 'https://www.callutheran.edu', 'assets/pdf/cluni.pdf', 'MEng / MA / MTech / BTech / MBA', 'assets/img/cluni.jpg'),
(166, 'Golden Gate University', 'JAN / SEPT', 'TOEFL / SAT / LSAT / GMAT', 'The West Region', 'USA', 'https://www.ggu.edu', 'assets/pdf/gguni.pdf', 'MS / BTech / BSc / MA / MArch', 'assets/img/gguni.jpg'),
(167, 'Humboldt State University', 'AUG / SEPT', 'TOEFL / SAT / GMAT / GRE', 'The West Region', 'USA', 'https://www.humboldt.edu', 'assets/pdf/humbsuni.pdf', 'MS / BTech / BSc / MA / MArch', 'assets/img/humbsuni.jpg'),
(168, 'San Jose State University', 'JAN / SEPT', 'TOEFL / SAT / IELTS / GRE', 'The West Region', 'USA', 'https://www.sjsu.edu', 'assets/pdf/sjsuni.pdf', 'MS / BE / MIM / BHM / BBA / MArch', 'assets/img/sjsuni.jpg'),
(169, 'University of Redlands', 'AUG / SEPT', 'TOEFL / MCAT / LSAT', 'The West Region', 'USA', 'https://www.redlands.edu', 'assets/pdf/uniofrl.pdf', 'BBA / BA / BS / BSN / M.Ed', 'assets/img/uniofrl.jpg'),
(170, 'University of Colorado -Denver', 'JAN / NOV', 'TOEFL / SAT / LSAT / GMAT', 'The West Region', 'USA', 'https://www.ucdenver.edu', 'assets/pdf/ucdenver.pdf', 'MEng / MA / MTech / BTech / MBA', 'assets/img/ucdenver.jpg'),
(171, 'Central Washington University', 'AUG / NOV', 'TOEFL / SAT / GMAT / GRE', 'The West Region', 'USA', 'https://www.cwu.edu', 'assets/pdf/cwuni.pdf', 'BA / ART / Legal studies / CAD / Computer Science', 'assets/img/cwuni.jpg'),
(172, 'The University of New Mexico', 'AUG / NOV', 'TOEFL / MCAT / LSAT', 'The West Region', 'USA', 'https://www.unm.edu', 'assets/pdf/uniofmx.pdf', 'ACCT / BUSN / EDUC / MRKT ', 'assets/img/uniofmx.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `overseas_admin`
--

CREATE TABLE `overseas_admin` (
  `adm_name` varchar(15) NOT NULL,
  `adm_email` varchar(30) NOT NULL,
  `adm_pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `overseas_admin`
--

INSERT INTO `overseas_admin` (`adm_name`, `adm_email`, `adm_pwd`) VALUES
('Dhrumil Jani', 'djadmin@gmail.com', 'djadmin'),
('Harsh Doshi', 'hd.admin@gmail.com', 'hdadmin');

-- --------------------------------------------------------

--
-- Table structure for table `part_time_work`
--

CREATE TABLE `part_time_work` (
  `ptw_id` int(6) NOT NULL,
  `ptw_place_name` varchar(100) NOT NULL,
  `ptw_city` varchar(100) NOT NULL,
  `ptw_state` varchar(50) NOT NULL,
  `ptw_country` varchar(50) NOT NULL,
  `ptw_hours` varchar(50) NOT NULL,
  `ptw_salary` varchar(50) NOT NULL,
  `ptw_requirement` varchar(500) NOT NULL,
  `uid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `part_time_work`
--

INSERT INTO `part_time_work` (`ptw_id`, `ptw_place_name`, `ptw_city`, `ptw_state`, `ptw_country`, `ptw_hours`, `ptw_salary`, `ptw_requirement`, `uid`) VALUES
(1, 'Sales Associate at Bansidhar Jewellers', 'Sudbusry', 'Ontario', 'Canada', '3', '$3 per hour', 'Expertise in Microsoft Office ( Word, Excel, PowerPoint, E-Mail),  Ability to handle multiple tasks at once, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office; lift heavy objects, stretch, and bend; operate cash register and office computer.', 7),
(2, 'Cashier at Ambika Supper Mart', 'Ahemdabad', 'Gujarat', 'India', '5 To 8 hr', '500 INR Per hour', 'Expertise in Microsoft Office ( Word, Excel, PowerPoint, E-Mail),  Ability to handle multiple tasks at once, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office and basic of computer; ', 31),
(3, ' Marketing & Sales Intern at Mahi Marcketing agency', 'Surat', 'Gujarat', 'India', '5 To 8 hr', '1000 INR per hour', 'Expertise in sales and marketing work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel maneuver around sales floor, stock room, and office', 31),
(4, 'Sales Manger at Demart', 'Mehsana', 'Gujarat', 'India', '5 To 6 hr', '500 INR per hour', 'Expertise in sales&lead a sales team by providing guidance, training and mentorship, setting sales quotas and goals, creating sales plans, analyzing data, assigning sales territories and building their team.', 31),
(5, 'Tour Guide at Om Sai Travel Agency', 'Jaipur', 'Rajasthan', 'India', '2 To 3 hour', '450 INR Per month', 'Knowlege in history of rajasthan,Good customer service skills,Organizational skills,Time management skills,Research skills\r\nExcellent communication skills.', 32),
(6, ' Library Assistant at University Of Kota', 'Kota', 'Rajsthan', 'India', '4 hour', '350 INR per hour', 'They organize the shelves, take care of the online records, run the circulation desk, process new materials that come into the library, issue library cards, maintain office equipment, and help library-goers check out, return, and find materials.', 32),
(7, 'Waiter/Waitress at Hotel Summer Villa', 'Udaipur', 'Rajasthan', 'India', '5 ', '500 INR per hour', 'Expertise in restaurants, bars, hotels, casinos, and other food-serving establishments. They interact directly with customers taking orders, serving food and beverages, and take payments from patrons.', 32),
(8, ' Front Desk Associate at Hotel Grand Heritage', 'New Delhi', 'Delhi', 'India', '5 To 6 hr', '600 INR Per month', 'Previous hospitality experience would be advantageous,Strong written and verbal communication skills,Well-presented anprofessional appearance,Competency with Microsoft Office,Ability to learn on the job,Excellent customer service skills.', 33),
(9, 'Cashier at Reliance Digital', 'Mustafabad', 'Delhi', 'India', '5 to 6 Hour', '750 INR per hour', 'Expertise Operating scanners, scales, cash registers, and other electronics,Balancing the cash register and generating reports for credit and debit sales.', 33),
(10, 'Accountant at Heli finances services', 'Firozabad', 'Delhi', 'India', '5 hour', '800 INR per hour', 'Associate degrees in accounting are available, most professionals in the field have at least a bachelors degree.  These include examining records, reconciling accounts, preparing financial reports and completing tax returns.', 33),
(11, 'Bartender at Thalasa club', 'Mumbai', 'Maharashtra', 'India', '5 To 6 hr', '1000 INR per hour', 'Availability to work nights, weekends, and holidays,Positive, engaging personality, and professional appearance,Basic math and computer skills.', 34),
(12, 'Boutique Sales Associate at Zara ', 'Pune ', 'Maharashtra', 'India', '5 to 6 Hour', '1250 INR per hour', 'Retail sales experience,A professional appearance.Maintain a positive attitude and focus on customer satisfaction in a fast-paced environment,The ability to read, write, and perform basic math.', 34),
(13, 'Mail carrier at Bluedart ', 'Thane', 'Maharashtra', 'India', '2 To 3 hour', '300 INR per hour', 'Completed 10th grade or above, available to work on weekends and night shifts and perseon must have two wheeler and four wheeler\r\ndriving licence', 34),
(14, 'Software Engineering Intern at X-byte Technology', 'Banglore', 'Karnataka', 'India', '5 To 6 hr', '1500 INR per hour', 'The candidate needs to have a degree in Computer Science/engineering and be proficient in C++ and/or Java programming language.', 35),
(15, 'Customer Service Representative at BioClinica', 'Mysore', 'Karnataka', 'India', '3 to 5 Hour', '550 INR per hour', 'High school diploma, general education degree, or equivalent. Ability to stay calm when customers are stressed or upset. Comfortable using computers. Experience working with customer support.', 35),
(16, 'Cashier at Anna elctronic', 'Mangalore', 'Karnataka', 'India', '4 to 5 hour', '700 INR per hour', 'Expertise Operating scanners, scales, cash registers, and other electronics,Balancing the cash register and generating reports for credit and debit sales.', 35),
(17, 'Sales Associate at kalyan Jewellers', 'Lucknow', 'Uttar Predesh', 'India', '5 To 6 hr', '450 INR per hour', 'Expertise in Microsoft Office ( Word, Excel, PowerPoint, E-Mail),  Ability to handle multiple tasks at once, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office; lift heavy objects, stretch, and bend; operate cash register and office computer.', 36),
(18, 'Mail carrier at Bluedart', 'Kanpur', 'Uttar Predesh', 'India', '4 hour', '350 per hour', 'Completed 10th grade or above, available to work on weekends and night shifts and perseon must have two wheeler and four wheeler\r\ndriving licence', 36),
(19, 'Software Engineering Intern at Techno byte ', 'Noida', 'Uttar Predesh', 'India', '5 hour', '1300 INR per hour', 'The candidate needs to have a degree in Computer Science/engineering and be proficient in React js and/or  Node js.', 36),
(20, ' Social Media Manager at Cashkaro ', 'Kochi', 'Kerla', 'India', '5 To 6 hr', '1100 INR per hour', 'Expertise business management, marketing, media and communication, public relations and digital marketing.', 37),
(21, 'Cashier at Reliance Digital', 'Tiruvantpuram', 'Kerla', 'India', '5 to 6 Hour', '750 INR per hour', 'Expertise Operating scanners, scales, cash registers, and other electronics,Balancing the cash register and generating reports for credit and debit sales.', 37),
(22, 'Accountant at Bajaj Finance', 'Kochi', 'Kerla', 'India', '6 hour', '700 INR per hour', 'Associate degrees in accounting are available, most professionals in the field have at least a bachelors degree.  These include examining records, reconciling accounts, preparing financial reports and completing tax returns.', 37),
(23, 'Marketing & Sales Intern Sandeep Technology ', 'Indore', 'Madhya Pradesh', 'India', '2 To 4 hour', '1000 INR per hour', 'Expertise in sales and marketing work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel maneuver around sales floor, stock room, and office', 38),
(24, 'Customer Service Representative at LableMN', 'Bhopal', 'Madhya Pradesh', 'India', '4 hour', '550 INR per hour', 'High school diploma, general education degree, or equivalent. Ability to stay calm when customers are stressed or upset. Comfortable using computers. Experience working with customer support.', 38),
(25, 'Front Desk Associate at Hotel Sahara', 'Jabalpur', 'Madhya Pradesh', 'India', '4 to 5 hour', '700 INR per hour', 'Previous hospitality experience would be advantageous,Strong written and verbal communication skills,Well-presented anprofessional appearance,Competency with Microsoft Office,Ability to learn on the job,Excellent customer service skills.', 38),
(26, 'Cashier at Metro ', 'Ottawa', 'Ontario', 'Canada', '2 To 4 hour', '9 CAD per hour', 'Expertise in Microsoft Office ( Word, Excel, PowerPoint, E-Mail),  Ability to handle multiple tasks at once, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office and basic of computer', 7),
(27, 'Warehouse Worker at Pet Valu\r\n', 'Toronto', 'Ontario', 'Canada', '4 hour', '18 CAD per hour', 'Must have experience using a hand pallet jack.Reach truck certification also an asset, not required.Comfortable lifting products up to 50 lbs each.\r\n', 7),
(28, 'Delivery boy at Uber eats', 'Alberta', 'Alberta', 'Canada', '2 To 3 hour', '12 CAD per hour', 'Valid driver\'s license. -Clean driving record and sound knowledge of road safety regulations -Proven delivery experience is preferred. ', 40),
(29, 'Part-Time Driver at FedEx', 'Edmonton', 'Alberta', 'Canada', '2 To 3 hour', '15 CAD per hour', 'Valid driver\'s license. -Clean driving record and sound knowledge of road safety regulations -Proven delivery experience is preferred. ', 40),
(30, 'Floor Supervisor at CALVIN KLEIN', 'Vermilion', 'Alberta', 'Canada', '5 to 6 Hour', '15 CAD per hour', 'A high school qualification or equivalent,Prior experience in a managerial position.,Excellent interpersonal skills.Prior experience in Sales would be advantageous.\r\n', 40),
(31, 'Sales Associate at Meta Cannabis Co.', 'St.John\'s', 'Newfoundland And Labrador ', 'Canada', '2 To 3 hour', '13 CAD per hour', 'Expertise in Microsoft Office ( Word, Excel, PowerPoint, E-Mail),  Ability to handle multiple tasks at once, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office; lift heavy objects, stretch, and bend; operate cash register and office computer.', 41),
(32, 'Marketing & Sales Intern  at Welland', 'St.John\'s', 'Newfoundland And Labrador ', 'Canada', '3 to 5 Hour', '14 CAD per hour', 'Expertise in sales and marketing work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel maneuver around sales floor, stock room, and office', 41),
(33, 'Library Assistant at Camosun College', 'Victoria', 'British Columbia', 'Canada', '2 To 4 hour', '8 CAD per hour', 'They organize the shelves, take care of the online records, run the circulation desk, process new materials that come into the library, issue library cards, maintain office equipment, and help library-goers check out, return, and find materials.', 42),
(34, 'Front Desk Associate at Hotel Grand Heritage', 'Vancouver', 'British Columbia', 'Canada', '4 hour', '10 CAD per hour', 'Previous hospitality experience would be advantageous,Strong written and verbal communication skills,Well-presented anprofessional appearance,Competency with Microsoft Office,Ability to learn on the job,Excellent customer service skills.', 42),
(35, 'Bartender at Thalasa club', 'Vancouver', 'British Columbia', 'Canada', '4 to 5 hour', '9 CAD per hour', 'Availability to work nights, weekends, and holidays,Positive, engaging personality, and professional appearance,Basic math and computer skills.', 42),
(36, 'Delivery boy at Uber eats', 'Saskatoon', 'Saskatchewan', 'Canada', '2 To 4 hour', '14  CAD per hour', 'Valid driver\'s license. -Clean driving record and sound knowledge of road safety regulations -Proven delivery experience is preferred. ', 43),
(37, 'Social Media Manager at Bridge Digital Inc', 'Regina', 'Saskatchewan', 'Canada', '4 hour', '15 CAD per hour', 'Expertise business management, marketing, media and communication, public relations and digital marketing.', 43),
(38, 'Part-Time Driver at FedEx', 'Sackvile', 'New Brunswick', 'Canada', '5 To 6 hr', '15 CAD per hour', 'available to work on weekends and night shifts and perseon must have two wheeler and four wheeler\r\ndriving licence', 44),
(39, 'Sales Associate at Mohan Jewellers', 'Edmonston', 'New Brunswick', 'Canada', '5 to 6 Hour', '15 CAD per hour', 'xpertise in Microsoft Office ( Word, Excel, PowerPoint, E-Mail),  Ability to handle multiple tasks at once, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office; lift heavy objects, stretch, and bend; operate cash register and office computer.', 44),
(40, 'Warehouse Worker at Pet Valu\r\n', 'Frederiction', 'New Brunswick', 'Canada', '4 to 5 hour', '11 CAD per hour', 'Must have experience using a hand pallet jack.Reach truck certification also an asset, not required.\r\nComfortable lifting products up to 50 lbs each.\r\n', 44),
(41, 'Cashier at walmart elctronic', 'Quebec City', 'Quebec', 'Canada', '5 To 6 hr', '15 CAD per hour', 'Expertise Operating scanners, scales, cash registers, and other electronics,Balancing the cash register and generating reports for credit and debit sales.', 45),
(42, 'Cashier at costco', 'Montreal', 'Quebec', 'Canada', '4 hour', '15 CAD per hour', 'Expertise Operating scanners, scales, cash registers, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office and basic of computer', 45),
(43, 'Software Engineering Intern at X-byte Technology', 'sherbrooke', 'Quebec', 'Canada', '5 hour', '19 CAD per hour', 'The candidate needs to have a degree in Computer Science/engineering and be proficient in C++ and/or Java programming language.', 45),
(44, 'Accountant at Sydney Finance', 'Sydney', 'Nova Scotia', 'Canada', '2 To 3 hour', '15 CAD per hour', 'Associate degrees in accounting are available, most professionals in the field have at least a bachelors degree.  These include examining records, reconciling accounts, preparing financial reports and completing tax returns.', 46),
(45, 'Marketing & Sales Intern San Technology', 'Halifax', 'Nova Scotia', 'Canada', '4 hour', '18 CAD per hour', 'Expertise in sales and marketing work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel maneuver around sales floor, stock room, and office', 46),
(46, 'Customer Service Representative at Zara', 'Wolfville', 'Nova Scotia', 'Canada', '5 hour', '9 CAD per hour', 'High school diploma, general education degree, or equivalent. Ability to stay calm when customers are stressed or upset. Comfortable using computers. Experience working with customer support.', 46),
(47, 'Front Desk Associate at Hotel Sahara', 'Bradon', 'Manitoba', 'Canada', '2 To 3 hour', '15 CAD per hour', 'Previous hospitality experience would be advantageous,Strong written and verbal communication skills,Well-presented anprofessional appearance,Competency with Microsoft Office,Ability to learn on the job,Excellent customer service skills.', 47),
(48, 'Floor Supervisor at Metro', 'Duphin', 'Manitoba', 'Canada', '4 hour', '18 CAD per hour', 'A high school qualification or equivalent,Prior experience in a managerial position.,Excellent interpersonal skills.Prior experience in Sales would be advantageous.\r\n', 47),
(49, 'Library Assistant at University of Winnipeg', 'Winnipeg', 'Manitoba', 'Canada', '4 to 5 hour', '9 CAD per hour', 'They organize the shelves, take care of the online records, run the circulation desk, process new materials that come into the library, issue library cards, maintain office equipment, and help library-goers check out, return, and find materials.', 47),
(50, 'Mail carrier at DHL', 'New York', 'The Notheast Region', 'USA', '2 To 3 hour', '8 USD per hour', 'Completed 10th grade or above, available to work on weekends and night shifts and perseon must have two wheeler and four wheeler driving licence', 48),
(51, 'Software Engineering Intern at Milco byte ', 'Philadelphia', 'The Northeast Reagion', 'USA', '3 to 5 Hour', '15 CAD per hour', 'The candidate needs to have a degree in Computer Science/engineering and be proficient in React js and/or  Node js.', 48),
(52, ' Social Media Manager at Zingoye', 'Boston', 'The Northeast Region', 'USA', '4 to 5 hour', '10CAD per hour', 'Expertise business management, marketing, media and communication, public relations and digital marketing.', 48),
(53, 'Warehouse Worker at Pet Valu\r\n', 'Pittsburgh', 'The Notheast Region', 'USA', '2 To 3 hour', '15 USD per hour', 'Must have experience using a hand pallet jack.Reach truck certification also an asset, not required.\r\nComfortable lifting products up to 50 lbs each.\r\n', 48),
(54, 'Accountant at NYC Finance', 'New York', 'The Notheast Region', 'USA', '4 hour', '14 USD per hour', 'Associate degrees in accounting are available, most professionals in the field have at least a bachelors degree.  These include examining records, reconciling accounts, preparing financial reports and completing tax returns.', 48),
(55, 'Mail carrier at Amazon', 'Colorado', 'The West Region', 'USA', '2 To 3 hour', '11 CAD per hour', 'Completed 10th grade or above, available to work on weekends and night shifts and perseon must have two wheeler and four wheeler driving licence', 49),
(56, 'Bartender at LUX club', 'Los Angeles', 'The West Region', 'USA', '4 hour', '15 CAD per hour', 'Availability to work nights, weekends, and holidays,Positive, engaging personality, and professional appearance,Basic math and computer skills.', 49),
(57, 'Customer Service Representative at Clinica', 'San francisco', 'The West Region', 'USA', '4 to 5 hour', '11 CAD per hour', 'High school diploma, general education degree, or equivalent. Ability to stay calm when customers are stressed or upset. Comfortable using computers. Experience working with customer support.', 49),
(58, 'Cashier at Best Buy', 'California', 'The West Region', 'USA', '4 to 5 hour ', '15 USD per month', 'Expertise Operating scanners, scales, cash registers, and other electronics,Balancing the cash register and generating reports for credit and debit sales.', 49),
(59, 'Warehouse Worker at FedEx', 'San Jose', 'The West Region', 'USA', '2 to 3 hour', '10 USD per hour', 'Must have experience using a hand pallet jack.Reach truck certification also an asset, not required.Comfortable lifting products up to 50 lbs each.\r\n', 49),
(60, 'Front Desk Associate at Hotel Grand ', 'Florida', 'The South Region', 'USA', '2 To 4 hour', '14 USD per hour', 'Previous hospitality experience would be advantageous,Strong written and verbal communication skills,Well-presented anprofessional appearance,Competency with Microsoft Office,Ability to learn on the job,Excellent customer service skills.', 50),
(61, 'Social Media Manager at Gopisa', 'Albama', 'The South Region', 'USA', '3 to 5 Hour', '18 USD per hour', 'Expertise business management, marketing, media and communication, public relations and digital marketing.', 50),
(62, 'Sales Associate at Cannabis Co.', 'Campbellsville', 'The South Region', 'USA', '5 hour', '13 USD per hour', 'Expertise in Microsoft Office ( Word, Excel, PowerPoint, E-Mail),  Ability to handle multiple tasks at once, work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel; maneuver around sales floor, stock room, and office; lift heavy objects, stretch, and bend; operate cash register and office computer.', 50),
(63, 'Customer Service Representative at Zara', 'Columbas', 'The South Region', 'USA', '4 to 5 hour ', '16 USD per hour', 'High school diploma, general education degree, or equivalent. Ability to stay calm when customers are stressed or upset. Comfortable using computers. Experience working with customer support.', 50),
(64, 'Software Engineering Intern at Bydu Technology', 'Texas', 'The South Region', 'USA', '2 to 3 hour', '10 USD per hour', 'The candidate needs to have a degree in Computer Science/engineering and be proficient in C++ and/or Java programming language.', 50),
(65, 'Library Assistant at Methodist University', 'Fayette', 'The Midwest Region', 'USA', '2 To 4 hour', '9 USD per hour', 'They organize the shelves, take care of the online records, run the circulation desk, process new materials that come into the library, issue library cards, maintain office equipment, and help library-goers check out, return, and find materials.', 51),
(66, 'Delivery boy at Uber eats', 'Joilet', 'The Midwest Region', 'USA', '3 to 5 Hour', '11 USD per hour', 'Valid driver\'s license. -Clean driving record and sound knowledge of road safety regulations -Proven delivery experience is preferred. ', 51),
(67, 'Marketing & Sales Intern Walmart', 'Indiannapolis', 'The Midwest Region', 'USA', '5 hour', '15 USD per hour', 'Expertise in sales and marketing work under pressure, and meet deadlines,  Ability to communicate with customers and store personnel maneuver around sales floor, stock room, and office', 51),
(68, 'Floor Supervisor at Metro', 'Cedar Rapids', 'The Midwest Region', 'USA', '4 to 5 hour ', '15 USD per hour', 'A high school qualification or equivalent,Prior experience in a managerial position.,Excellent interpersonal skills.Prior experience in Sales would be advantageous.\r\n', 51);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(6) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `umobile` varchar(13) NOT NULL,
  `ustate` varchar(20) NOT NULL,
  `ucon` varchar(20) NOT NULL,
  `upwd` varchar(255) NOT NULL,
  `urole` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `uemail`, `umobile`, `ustate`, `ucon`, `upwd`, `urole`) VALUES
(1, 'Harsh Doshi', 'harshdoshi123@gmail.com', '9409645486', 'pune', 'India', '$2y$10$AXPxWil5f2/Z9X5/ohp2/uFJ2h4oyEMcEem62F.nvpdyw6vm6Y4OC', 'student'),
(6, 'Dhrumil Jani', 'hrdinfopro1@gmail.com', '8452013652', 'Delhi', 'India', '$2y$10$e/9NyzV8Xe.I/br0ycu8uOwREeCs0QRmpuTCE7paITQkewQe/pdvK', 'house owner'),
(7, 'Rudra Patel', 'rudrapatel18@gnu.ac.in', '7895463210', 'Ontario', 'Canada', '$2y$10$2VvuCwlaWCFCd9GfcsfIgumfIMwi89EK2TChHOzSZ71ksBkAGeRq2', 'shop owner'),
(8, 'Jainish Gajjar', 'jg1109@gmail.com', '9587462103', 'Banglore', 'India', '$2y$10$g9AYQgEQ4UC6R2oK0xHmf.ASc8J0GEiAegztbSVGb4aXSXkVPdSw6', 'student'),
(9, 'Nikhil Hinduja', 'nik3107@gmail.com', '7356210254', 'California', 'USA', '$2y$10$n6WMy778rDCpABoH1ryYPe1V53QQal.SKmRoQRBleLsroGA9j0o0y', 'shop owner'),
(11, 'Fenu Patel', 'fenu@gmail.com', '9632145278', 'Gujarat', 'India', '$2y$10$U/Is3gRaH4A3nzCxzur8Te7lbzGban58dl5E/z2w1H4hib4xwnHEy', 'house owner'),
(12, 'Riya Patel', 'riya12@gmail.com', '7845129632', 'Maharastra', 'India', '$2y$10$QDeNUMdJ8tV0p.CEaX55KekUgTO4cPL/PAbeDXQ9uGaOZjtxqfnam', 'house owner'),
(13, 'Rajveer Rana', 'rajveer123@gmail.com', '3285749632', 'Rajasthan', 'India', '$2y$10$oZGs2L5DQD0gHCFHH0HfQe89NTl3CN0Xl84bGHO2Twg6moiBQSPBu', 'house owner'),
(14, 'Shivang Trivedi', 'shivang1@gmail.com', '8541369875', 'Uttar Pradesh', 'India', '$2y$10$7By8CMrtwjKjtxf6V7ZxJO4MU52q.af/GW/wKL9cZcjvChFgCkFQO', 'house owner'),
(15, 'Het Patel', 'het12@gmail.com', '7896325241', 'Karnataka', 'India', '$2y$10$qxUZPhTy.TeEvx23ul83dewy/f4ChOgxXpOpinkgvoEFxXWS0RzMS', 'house owner'),
(16, 'Kurban Ail', 'kurban1@gmail.com', '8574963214', 'Madhya pradesh', 'India', '$2y$10$Jg84LuObfgIzzmpRRmf.aeUSYbFWEJRWAz11Zb8C27orMpMCeXrEO', 'house owner'),
(17, 'Ravi Bhatiya', 'ravib12@gmail.com', '9632857425', 'Kerla', 'India', '$2y$10$G9h2q5VmhGrkduff0haaW.TB7VTF8M4SbdnqfKf0XQZF3Uys0Qm.e', 'house owner'),
(18, 'Tejas Patel', 'tejas1@gmail.com', '9632857489', 'Ontario', 'Canada', '$2y$10$xfPi/2lPvDxHG5BSjLWwU.r3uM4GrBH0i8NpZsBhl2Rb7IW26vWxC', 'house owner'),
(19, 'Lucky Patel', 'lucky12@gmail.com', '9632851247', 'Alberta', 'Canada', '$2y$10$s7PpfONTxZW5/84e6bJtFefGN4VK2ZW9Qxw3zCHCX5aDnmc82uJmW', 'house owner'),
(20, 'Deep Patel', 'deep12@gmail.com', '9632857896', 'Newfoundland and Lab', 'Canada', '$2y$10$zbLjO.ttZHGCYvIMHeSTMeM6dS5EfcwuZGHhg/RcKipWtRm5xgLbe', 'house owner'),
(21, 'Devang Joshi', 'devang12@gmail.com', '9632857412', 'British Columbia', 'Canada', '$2y$10$VZ8bBe4tPkr2MFI2dnk6.ewOJI5Jf2rEauTNKDHodEqDuhpe.IKYm', 'house owner'),
(22, 'Nikhil Bhateja', 'nikhil12@gmail.com', '9632857412', 'Manitoba', 'Canada', '$2y$10$cR6dCqLRyCZHiw3tXIyhd.5EdvjNKkS7KNedJLG9l4Ll2qYdV/RGe', 'house owner'),
(23, 'Dhruval Patel', 'dhruval12@gmail.com', '9632857412', 'Saskatchewan', 'Canada', '$2y$10$n4Nh5qFMVMAjEhjFD7l4iuwqlpg1KHuz2qRnFwKU4kUvw7KGN/4p.', 'house owner'),
(24, 'Rohit Sharma', 'rohit45@gmail.com', '875963274', 'New Brunswick', 'Canada', '$2y$10$z1Di0M49jpLNrnYw45OaU.qtSgTMhLshbe2EuX6kuQ2xPXLn8hwO.', 'house owner'),
(25, 'Jimi Nisham', 'jimi12@gmail.com', '9632857412', 'Quebec', 'Canada', '$2y$10$NCZYTHs1RbimmiNyAJOspu0EEyF0Z.4mMpDD2D/Rxr7x0nqM7nnPm', 'house owner'),
(26, 'Smith Jems', 'smith12@gmail.com', '9632857412', 'Nova Scotia', 'Canada', '$2y$10$..cs2xTwsYQ79dpUltY4IOMIdwZj4KtYomhlNWG2j1VKQ.9u0grbS', 'house owner'),
(27, 'Jaimik Raval', 'jaimik12@gmail.com', '8578153695', 'The North Region', 'USA', '$2y$10$UmIkvSPAx3RMO9L4fihsje0gxhK.4M3nq3hVFLe3YAgTKiVW4oni6', 'house owner'),
(28, 'Prehan Seth', 'prehan12@gmail.com', '7845129632', 'The West Region', 'USA', '$2y$10$X.UtXXqsUZgW18uZxQcNGOzj51BSSMn3pmRNh8j95oHzqtVwBk8fK', 'house owner'),
(29, 'Dev Dave', 'dev12@gmail.com', '9658453874', 'The South Region', 'USA', '$2y$10$tFnTkM2A5Y2wBwVGDxgSFu2752uMdn62p7MDPMgai5NhcJ0J7ou9S', 'house owner'),
(30, 'Yash Kothari', 'yash123@gmail.com', '9632857934', 'The Mid West Region', 'USA', '$2y$10$ZB4kUsY5o8pasFwghIp46OV3kyXbkGaGCtr4intTOVaxb43SLf/aq', 'house owner'),
(31, 'Neha Maheta', 'neha123@gmail.com', '7813964598', 'Gujarat', 'India', '$2y$10$RPUTzmyxloegVTCVLF1P1u7FN1DvVWEBPb47YBou5jal7AVBon6Km', 'shop owner'),
(32, 'Kuldeep Patel', 'kuldeep123@gmail.com', '9632851478', 'Rajasthan', 'India', '$2y$10$fPTeWVm/I.tVzS/ORT68q.IZipPat2BxPC70MqA4iE.1jxdKcoqJK', 'shop owner'),
(33, 'Monika Bhatiya', 'monika123@gmail.com', '7364596320', 'Delhi', 'India', '$2y$10$jOQJBIGohh5471iecUaj/.dVBm5T2mxACjTgUAilzH3WSh06Dk2DS', 'shop owner'),
(34, 'Manshi Limbachiya', 'manshi123@gmail.com', '9632857412', 'Maharashtra', 'India', '$2y$10$hge4WDpWtgO98lc2oHl2De85RDppCVhkt9t/EPXOJIkqyT8nF3gtC', 'shop owner'),
(35, 'Manish Singh', 'manish123@gmail.com', '9634592783', 'Karnataka', 'India', '$2y$10$2DIzblYoBVQl5EE3t1m7o.MTitw/xQ.fCu3RMmnbEvlN5holyvVI.', 'shop owner'),
(36, 'Chetan Panchal', 'chetan123@gmail.com', '8532147965', 'Uttar Pradesh', 'India', '$2y$10$dtBK91oS6cbRcER8uwhzpOlpoMuwP3X5BLHb9YNnYaQiO2CItC9AC', 'shop owner'),
(37, 'Krunal Doshi', 'krunal123@gmail.com', '8796354125', 'Kerla', 'India', '$2y$10$CxDyd4Yc73XnPb9sT0xqaO5mpV49biX83igEwjkvqP/ucn.oD80fK', 'shop owner'),
(38, 'Shubham Purohit', 'shubham123@gmail.com', '9845368712', 'Madhya Pradesh', 'India', '$2y$10$hRsJsXNonP33x7b3QlUtleeRo4oDgUr0p8NsevcuqsOdgUKADyYEy', 'shop owner'),
(40, 'Urvish Patel', 'urvish123@gmail.com', '9825457836', 'Alberta', 'Canada', '$2y$10$Tt5YFZHK9PQ5YsSkSNa1oeI7hxhuZqcOAGugEg1ZO.S83X2up6i/6', 'shop owner'),
(41, 'Alin Lakhatriya', 'alin123@gmail.com', '9745369878', 'Newfoundland and Lab', 'Canada', '$2y$10$A8eW38SWdZtjKtEYugPlvuoIWo6Imq/lKEFNZIH8oTR7n47Us6hb6', 'shop owner'),
(42, 'Kalpesh Raval', 'kalpesh12@gmaijl.com', '9658742569', 'British Columbia', 'Canada', '$2y$10$UaDKAbMitmmy7Jpxa6srmunlEryO1502k9CDAobSLWzwFT91jvl7O', 'shop owner'),
(43, 'Anjali Maheta', 'anjli123@gmail.com', '9825743678', 'Saskatchewan', 'Canada', '$2y$10$exV3MbCftqKMjhEZ4hYCpOphTN6hkp0A.rLEUFvW4IAJTzH2.wnUK', 'shop owner'),
(44, 'Prachi Dave', 'parchi123@gmaiil.com', '8547963215', 'New Brunswick', 'Canada', '$2y$10$qRE9a6GDy3gghqjlaqUmyedOpWWCKyo3EN9f/effYi0Sqmhtt1XrW', 'shop owner'),
(45, 'Sendra Boso', 'sendra123@gmail.om', '6598742396', 'Quebec', 'Canada', '$2y$10$fp7Jb/rwpxr0p12YMZSUPOsM40bR33RSFYdykOsX8P5ae0wRmKCby', 'shop owner'),
(46, 'Mohit Manocha', 'mohit123@gmail.com', '7425893645', 'Nova Scotia', 'Canada', '$2y$10$rsZBwIAjPq6rYadKwvj.x.4DXjiUMc3uNvCuqx1DdM0Maw/1kS00u', 'shop owner'),
(47, 'Cheri Singh', 'cheri123@gmail.com', '8725963214', 'Manitoba', 'Canada', '$2y$10$ty81z.LRmcqEmyOMp0ZUFuHD7rTy075eRx/PlZRpu6DYfGmcvBDDu', 'shop owner'),
(48, 'Rahul Dalwadi', 'rahul12@gmail.com', '9874253014', 'The Northeast Region', 'USA', '$2y$10$qqNwwqoiZMjD.AllG1NYPOQch86Me2u0i3NoKT6dD58YEjwuSLQ8W', 'shop owner'),
(49, 'Manisha Raval', 'manisha12@gmail.com', '8541236987', 'The West Region', 'USA', '$2y$10$xmZH163iUrBfzh/Rw499POS63Y6idfEzWBW6/PUAHXM/SS0AlN5TO', 'shop owner'),
(50, 'Himali Dalvi', 'himani12@gamil.com', '6987123698', 'The South Region', 'USA', '$2y$10$8uTxP2cCIcn0GGG0ZUeDjeHuUZ//kl0SPqnD8pNhaKjgBV/66kEC.', 'shop owner'),
(51, 'Nivan Bhojak', 'nivan12@gmail.com', '9874256314', 'The Midwest Region', 'USA', '$2y$10$ts8/L.jt9f5TXfwhHMcgnuxjd4xzO4zYWt4XeHkunH3jnu1myPZD.', 'shop owner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `uid_acc_ref` (`uid`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`clg_id`);

--
-- Indexes for table `overseas_admin`
--
ALTER TABLE `overseas_admin`
  ADD PRIMARY KEY (`adm_email`);

--
-- Indexes for table `part_time_work`
--
ALTER TABLE `part_time_work`
  ADD PRIMARY KEY (`ptw_id`),
  ADD KEY `uid_ptw_ref` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `acc_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `clg_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `part_time_work`
--
ALTER TABLE `part_time_work`
  MODIFY `ptw_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `uid_acc_ref` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `part_time_work`
--
ALTER TABLE `part_time_work`
  ADD CONSTRAINT `uid_ptw_ref` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
