-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2022 at 08:15 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digpac_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `AccId` varchar(6) DEFAULT NULL,
  `BusAccId` varchar(6) DEFAULT NULL,
  `BusAccName` varchar(35) DEFAULT NULL,
  `BusAccNumber` varchar(30) DEFAULT NULL,
  `BusAccRouting` varchar(40) DEFAULT NULL,
  `BusAccType` varchar(45) DEFAULT NULL,
  `AccFilter` varchar(3) DEFAULT NULL,
  `AccCode` varchar(4) DEFAULT NULL,
  `AccNo` varchar(12) DEFAULT NULL,
  `AccType` varchar(25) DEFAULT NULL,
  `AccName` varchar(60) DEFAULT NULL,
  `Category` varchar(12) DEFAULT NULL,
  `Debits` varchar(12) DEFAULT NULL,
  `Credits` varchar(12) DEFAULT NULL,
  `Balance` varchar(12) DEFAULT NULL,
  `BalanceType` varchar(7) DEFAULT NULL,
  `Lookup` varchar(3) DEFAULT NULL,
  `UseRegister` varchar(3) DEFAULT NULL,
  `UseChecks` varchar(3) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `RecordNo` varchar(4) DEFAULT NULL,
  `RecordBy` varchar(35) DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `ReviseBy` varchar(35) DEFAULT NULL,
  `ReviseDate` varchar(4) DEFAULT NULL,
  `ReviseTime` varchar(8) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addressables`
--

CREATE TABLE `addressables` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `addressable_id` bigint(20) UNSIGNED NOT NULL,
  `addressable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `line_one` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_two` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ap_detail`
--

CREATE TABLE `ap_detail` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(6) NOT NULL,
  `gl_detail_id` bigint(20) DEFAULT NULL,
  `unid` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `DP` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `InvId` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `InvNo` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `InvDate` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `mAccId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `RecordNo` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `PostToGl` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `batch` varchar(12) CHARACTER SET latin1 DEFAULT 'unchecked',
  `Posted` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `Approved` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `AccId` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `AutoId` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Autoitem` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `Active` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `Date_old` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Division` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RefDate_old` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Reference` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `RefCard` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `CheckNo` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Transaction` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `Entry` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Status` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Category` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `JobBusId` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `JobBusName` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `JobId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `JobName` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `BusId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `BusName` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `Description` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `DetailMemo` text CHARACTER SET latin1 DEFAULT NULL,
  `Debit` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Credit` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Amount` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Balance` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Processing` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `BHPHContract` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `BHPHBalance` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccName` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccType` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `BalanceType` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `AccFilter` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `AccCode` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `AccName` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `AccNo` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `AccType` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `CostId` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `CostDiv` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `CostDivNo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `CostCode` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `CostId2` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `CostItem` varchar(65) CHARACTER SET latin1 DEFAULT NULL,
  `SerialNo` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `UserName` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `UserId` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `RecordDate` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `RecordTime` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `RecordAge` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `UpdatedBy` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `UpdatedDate` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `UpdatedTime` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `weight` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `Edit1` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sDate` date DEFAULT NULL,
  `srDate` date DEFAULT NULL,
  `RefDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ap_master`
--

CREATE TABLE `ap_master` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(6) NOT NULL,
  `DP` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `RecordNo` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `mAccId` varchar(46) CHARACTER SET latin1 DEFAULT NULL,
  `AutoId` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Autoitem` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `Active` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `Date_old` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `CheckNo` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Transaction` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `Entry` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `EntryFlag` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Status` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `BusId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `BusName` varchar(191) CHARACTER SET latin1 DEFAULT NULL,
  `BusBranch` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `BusAddress1` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `BusAddress2` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `CheckMemo` text CHARACTER SET latin1 DEFAULT NULL,
  `Credit` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Debit` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Balance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amount` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Processing` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `NetBalance` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `AccId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccId` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccName` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccType` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccNo` varchar(36) CHARACTER SET latin1 DEFAULT NULL,
  `BusAccRouting` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `AccType` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `SerialNo` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `UserName` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `UserId` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `weight` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `RecordDate` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `RecordTime` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `RecordAge` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `UpdatedBy` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `UpdatedDate` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `UpdatedTime` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `sDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autos`
--

CREATE TABLE `autos` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `RecordNo` varchar(12) DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `RecordAge` varchar(30) DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `UpdatedBy` varchar(30) DEFAULT NULL,
  `UpdatedDate` varchar(30) DEFAULT NULL,
  `UpdatedTime` varchar(30) DEFAULT NULL,
  `sort` varchar(6) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `STOCK` varchar(15) DEFAULT NULL,
  `VinNumber` varchar(30) DEFAULT NULL,
  `Investor` varchar(15) DEFAULT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `Make` varchar(32) DEFAULT NULL,
  `Model` varchar(32) DEFAULT NULL,
  `Mileage` varchar(6) DEFAULT NULL,
  `Color` varchar(32) DEFAULT NULL,
  `Color2` varchar(40) DEFAULT NULL,
  `DealerID` varchar(12) DEFAULT NULL,
  `Dealer` varchar(40) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `LocationCode` varchar(40) DEFAULT NULL,
  `Trim` varchar(30) DEFAULT NULL,
  `STYLE` varchar(40) DEFAULT NULL,
  `CYLINDER` varchar(4) DEFAULT NULL,
  `Transmission` varchar(10) DEFAULT NULL,
  `Engine` varchar(40) DEFAULT NULL,
  `Drive` varchar(40) DEFAULT NULL,
  `Train` varchar(40) DEFAULT NULL,
  `FuelType` varchar(10) DEFAULT NULL,
  `VIN` varchar(40) DEFAULT NULL,
  `Features` varchar(1500) DEFAULT NULL,
  `Warranty` varchar(60) DEFAULT NULL,
  `PurchaseDate` varchar(40) DEFAULT NULL,
  `PurchasePrice` varchar(7) DEFAULT NULL,
  `AddedCost` varchar(7) DEFAULT NULL,
  `TotalCost` varchar(7) DEFAULT NULL,
  `RetailPrice` varchar(7) DEFAULT NULL,
  `InternetPrice` varchar(7) DEFAULT NULL,
  `DiscountPrice` varchar(15) DEFAULT NULL,
  `MMRPrice` varchar(15) DEFAULT NULL,
  `BlueBook` varchar(50) DEFAULT NULL,
  `DownPayment` varchar(7) DEFAULT NULL,
  `MonthlyPayment` varchar(7) DEFAULT NULL,
  `SaleDate` varchar(15) DEFAULT NULL,
  `SalePrice` varchar(18) DEFAULT NULL,
  `ROI` varchar(15) DEFAULT NULL,
  `BHPHContract` varchar(12) DEFAULT NULL,
  `BHPHPayment` varchar(12) DEFAULT NULL,
  `BHPHBalance` varchar(15) DEFAULT NULL,
  `SalesComments` varchar(1500) DEFAULT NULL,
  `Certified` varchar(10) DEFAULT NULL,
  `VideoURL` varchar(60) DEFAULT NULL,
  `VehicleType` varchar(50) DEFAULT NULL,
  `WholesalePrice` varchar(70) DEFAULT NULL,
  `MPGCity` varchar(10) DEFAULT NULL,
  `MPGHwy` varchar(10) DEFAULT NULL,
  `MPGCombined` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `autos_items`
--

CREATE TABLE `autos_items` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `OptionName` varchar(75) DEFAULT NULL,
  `OptionGroup` varchar(50) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autos_mail`
--

CREATE TABLE `autos_mail` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autos_options`
--

CREATE TABLE `autos_options` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `subid` varchar(6) DEFAULT NULL,
  `OptionName` varchar(75) DEFAULT NULL,
  `OptionGroup` varchar(50) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autos_settings`
--

CREATE TABLE `autos_settings` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `LocationCode` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `Definition` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `busDirectory1`
--

CREATE TABLE `busDirectory1` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `RecordNo` varchar(12) DEFAULT NULL,
  `DirName` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(6) NOT NULL,
  `use_accounts` varchar(3) DEFAULT NULL,
  `FirstName` varchar(191) DEFAULT NULL,
  `LastName` varchar(191) DEFAULT NULL,
  `Title` varchar(191) DEFAULT NULL,
  `BusName` varchar(191) DEFAULT NULL,
  `BusBranch` varchar(191) DEFAULT NULL,
  `BusName2` varchar(191) DEFAULT NULL,
  `BusAddress1` varchar(191) DEFAULT NULL,
  `BusCity` varchar(191) DEFAULT NULL,
  `BusSt` varchar(2) DEFAULT NULL,
  `BusZip` varchar(11) DEFAULT NULL,
  `BusZipPlus` varchar(6) DEFAULT NULL,
  `BusAddress2` varchar(191) DEFAULT NULL,
  `BusPhone` varchar(14) DEFAULT NULL,
  `BusPhone2` varchar(14) DEFAULT NULL,
  `BusWebsite` varchar(60) DEFAULT NULL,
  `BusEmail` varchar(40) DEFAULT NULL,
  `TextCarrier` varchar(200) DEFAULT NULL,
  `BusType` varchar(30) DEFAULT NULL,
  `BusDirectory` varchar(65) DEFAULT NULL,
  `groupitems` varchar(75) DEFAULT NULL,
  `DirId` varchar(6) DEFAULT NULL,
  `DirNo` varchar(6) DEFAULT NULL,
  `DirGroup` varchar(75) DEFAULT NULL,
  `DirName` varchar(75) DEFAULT NULL,
  `Bus_Ext1` varchar(15) DEFAULT NULL,
  `Bus_BulkMail` varchar(8) DEFAULT NULL,
  `Bus_Active` varchar(3) DEFAULT NULL,
  `Bus_EntryNote2` varchar(50) DEFAULT NULL,
  `BookMark` varchar(1) DEFAULT NULL,
  `Ref_By` varchar(45) DEFAULT NULL,
  `RecordNo` varchar(14) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `phone_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `cid` varchar(10) DEFAULT NULL,
  `subid` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `RecordName` varchar(60) DEFAULT NULL,
  `RecordNo` varchar(4) DEFAULT NULL,
  `RecordBy` varchar(35) DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `RecordAge` varchar(8) DEFAULT NULL,
  `ReviseTime` varchar(8) DEFAULT NULL,
  `CurrentTime` varchar(6) DEFAULT NULL,
  `TimeDifference` varchar(4) DEFAULT NULL,
  `TimeExecute` varchar(15) DEFAULT NULL,
  `TimeModify` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `SerialNo` varchar(30) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Address1` varchar(35) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `ZipPlus` varchar(5) DEFAULT NULL,
  `Address2` varchar(45) DEFAULT NULL,
  `BusName` varchar(30) DEFAULT NULL,
  `BusName2` varchar(30) DEFAULT NULL,
  `BusAddress1` varchar(30) DEFAULT NULL,
  `BusAddress2` varchar(30) DEFAULT NULL,
  `BusPhone` varchar(10) DEFAULT NULL,
  `BusPhone2` varchar(10) DEFAULT NULL,
  `BusFax` varchar(10) DEFAULT NULL,
  `BusTollFree` varchar(10) DEFAULT NULL,
  `BusWebsite` varchar(40) DEFAULT NULL,
  `BusEmail` varchar(60) DEFAULT NULL,
  `BusId` varchar(5) DEFAULT NULL,
  `BusCity` varchar(20) DEFAULT NULL,
  `BusSt` varchar(2) DEFAULT NULL,
  `BusZip` varchar(5) DEFAULT NULL,
  `BusZipPlus` varchar(6) DEFAULT NULL,
  `Active` varchar(1) DEFAULT NULL,
  `BookMark` varchar(1) DEFAULT NULL,
  `Title` varchar(15) DEFAULT NULL,
  `Phone1` varchar(10) DEFAULT NULL,
  `Phone2` varchar(10) DEFAULT NULL,
  `Phone3` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `WebSite` varchar(60) DEFAULT NULL,
  `Notes` varchar(60) DEFAULT NULL,
  `EMContact` varchar(30) DEFAULT NULL,
  `EMPhone1` varchar(10) DEFAULT NULL,
  `EMPhone2` varchar(10) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `Marital` varchar(1) DEFAULT NULL,
  `Prefix` varchar(10) DEFAULT NULL,
  `Suffix` varchar(10) DEFAULT NULL,
  `Sirs` varchar(4) DEFAULT NULL,
  `Greeting` varchar(15) DEFAULT NULL,
  `Ethinicity` varchar(10) DEFAULT NULL,
  `Birthdate` varchar(6) DEFAULT NULL,
  `Age` varchar(2) DEFAULT NULL,
  `BirthdayCard` varchar(2) DEFAULT NULL,
  `MinusDays` varchar(3) DEFAULT NULL,
  `SendDate` varchar(6) DEFAULT NULL,
  `Allien` varchar(15) DEFAULT NULL,
  `SSN` varchar(9) DEFAULT NULL,
  `DLNumber` varchar(20) DEFAULT NULL,
  `DLState` varchar(2) DEFAULT NULL,
  `DLExpires` varchar(6) DEFAULT NULL,
  `DLValid` varchar(1) DEFAULT NULL,
  `MailTo` varchar(1) DEFAULT NULL,
  `Label1` varchar(35) DEFAULT NULL,
  `MailLabel` varchar(200) DEFAULT NULL,
  `BusCard` varchar(40) DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `BusExt1` varchar(15) DEFAULT NULL,
  `BusExt2` varchar(15) DEFAULT NULL,
  `UserIp` varchar(25) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `RecordDate` varchar(4) DEFAULT NULL,
  `RecordTime` varchar(6) DEFAULT NULL,
  `ReviseDate` varchar(4) DEFAULT NULL,
  `RevisedTime` varchar(6) DEFAULT NULL,
  `CurrentDate` varchar(4) DEFAULT NULL,
  `CurrentTime` varchar(6) DEFAULT NULL,
  `MsgNotice` varchar(20) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `costcodes`
--

CREATE TABLE `costcodes` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(4) NOT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `CostDiv` varchar(2) DEFAULT NULL,
  `CostDivNo` varchar(2) DEFAULT NULL,
  `CostCode` varchar(35) DEFAULT NULL,
  `weight` varchar(35) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='web content';

-- --------------------------------------------------------

--
-- Table structure for table `costitems`
--

CREATE TABLE `costitems` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(6) NOT NULL,
  `Sort` varchar(3) DEFAULT NULL,
  `CostId` varchar(3) DEFAULT NULL,
  `ActiveDiv` varchar(3) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `CostDiv` varchar(2) DEFAULT NULL,
  `CostDivNo` varchar(2) DEFAULT NULL,
  `CostCode` varchar(35) DEFAULT NULL,
  `CostItem` text DEFAULT NULL,
  `CostMemo` text DEFAULT NULL,
  `ItemSpecs` text DEFAULT NULL,
  `PriceId` varchar(35) DEFAULT NULL,
  `QTY` varchar(12) DEFAULT NULL,
  `EX` varchar(3) DEFAULT NULL,
  `TYPE` varchar(6) DEFAULT NULL,
  `MatPrice` varchar(12) DEFAULT NULL,
  `MatAmount` varchar(12) DEFAULT NULL,
  `LbrPrice` varchar(12) DEFAULT NULL,
  `LbrAmount` varchar(12) DEFAULT NULL,
  `SubPrice` varchar(12) DEFAULT NULL,
  `SubAmount` varchar(12) DEFAULT NULL,
  `EqpPrice` varchar(12) DEFAULT NULL,
  `EqpAmount` varchar(12) DEFAULT NULL,
  `Cost` varchar(12) DEFAULT NULL,
  `Markup` varchar(12) DEFAULT NULL,
  `Profit` varchar(12) DEFAULT NULL,
  `Total` varchar(12) DEFAULT NULL,
  `PriceType` varchar(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='web content';

-- --------------------------------------------------------

--
-- Table structure for table `costleads`
--

CREATE TABLE `costleads` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `subid` varchar(10) DEFAULT NULL,
  `CostCode` varchar(255) DEFAULT NULL,
  `CostItem` varchar(255) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `costprice`
--

CREATE TABLE `costprice` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(4) NOT NULL,
  `subid` int(6) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `costquotes`
--

CREATE TABLE `costquotes` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `CostId` varchar(6) DEFAULT NULL,
  `CostId2` varchar(6) DEFAULT NULL,
  `CostDiv` varchar(2) DEFAULT NULL,
  `CostDivNo` varchar(2) DEFAULT NULL,
  `CostCode` varchar(175) DEFAULT NULL,
  `CostItem` varchar(250) DEFAULT NULL,
  `VenName` varchar(45) DEFAULT NULL,
  `VenPhone` varchar(20) DEFAULT NULL,
  `VenContact` varchar(80) DEFAULT NULL,
  `ItemPrice` varchar(25) DEFAULT NULL,
  `ItemNote` varchar(25) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daily_logs`
--

CREATE TABLE `daily_logs` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `am_conditions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pm_conditions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `precipitation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weather_affects` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inspections_delays` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materials` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personnel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expenses` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directory_group1`
--

CREATE TABLE `directory_group1` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory_group2`
--

CREATE TABLE `directory_group2` (
  `uuid` char(36) DEFAULT NULL,
  `id` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `group1` varchar(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory_group3`
--

CREATE TABLE `directory_group3` (
  `uuid` char(36) DEFAULT NULL,
  `id` varchar(4) NOT NULL DEFAULT '',
  `group2` varchar(3) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory_popup`
--

CREATE TABLE `directory_popup` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `DirGroup` varchar(12) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_initial` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `race` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leader_id` int(6) DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_id` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `state_id_id` bigint(20) UNSIGNED DEFAULT NULL,
  `us_citizen` tinyint(1) UNSIGNED DEFAULT NULL,
  `hourly_rate` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily_rate` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekly_rate` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_rate` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hired_at` timestamp NULL DEFAULT NULL,
  `terminated_at` timestamp NULL DEFAULT NULL,
  `termination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_groups`
--

CREATE TABLE `employee_groups` (
  `uuid` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(6) NOT NULL,
  `name` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `active` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `created_by` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `updated_by` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `make` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erosion`
--

CREATE TABLE `erosion` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `RecordNo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstOrder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstTitle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstDate` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstAttn` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstBy` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstDrawings` varchar(1200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstHeading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AIADate` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AIAContract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AIAFooter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstStatus` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusId` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusAddress1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusAddress2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobId` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobAddress1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobAddress2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobScope` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostId` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostDiv` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostDivNo` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostId2` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostItem` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTY` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EX` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MatAmount` varchar(181) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LbrAmount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubAmount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EqpAmount` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Markup` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rebate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NetTotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SerialNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserIp` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Active` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionHash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionOf` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisedDate` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrackingNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `erosion_items`
--

CREATE TABLE `erosion_items` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `Hide` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Active` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordNo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstId` int(11) DEFAULT NULL,
  `EstName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstDate` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstStart` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstEnd` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstDays` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Selected` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusId` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobId` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostDiv` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostDivNo` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostId2` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostItem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostMemo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SF` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UM` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SFx` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTY` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EX` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MatPrice` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MatAmount` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LbrPrice` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LbrAmount` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubPrice` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubAmount` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EqpPrice` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EqpAmount` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cost` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Markup` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profit` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Discount` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rebate` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NetTotal` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SerialNo` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserIp` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `RecordNo` varchar(15) DEFAULT NULL,
  `publish` varchar(15) DEFAULT NULL,
  `division` varchar(75) DEFAULT NULL,
  `code` varchar(75) DEFAULT NULL,
  `EstOrder` varchar(191) DEFAULT NULL,
  `EstTitle` varchar(250) DEFAULT NULL,
  `EstDate` varchar(25) DEFAULT NULL,
  `EstName` varchar(60) DEFAULT NULL,
  `EstAttn` varchar(60) DEFAULT NULL,
  `EstBy` varchar(35) DEFAULT NULL,
  `EstDrawings` varchar(1200) DEFAULT NULL,
  `EstHeading` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `AIADate` varchar(250) DEFAULT NULL,
  `AIAContract` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AIAFooter` text DEFAULT NULL,
  `EstStatus` varchar(50) DEFAULT NULL,
  `BusId` varchar(6) DEFAULT NULL,
  `BusName` varchar(45) DEFAULT NULL,
  `BusAddress1` varchar(45) DEFAULT NULL,
  `BusAddress2` varchar(45) DEFAULT NULL,
  `JobId` varchar(12) DEFAULT NULL,
  `JobName` varchar(255) DEFAULT NULL,
  `JobAddress1` varchar(45) DEFAULT NULL,
  `JobAddress2` varchar(45) DEFAULT NULL,
  `JobScope` varchar(100) DEFAULT NULL,
  `CostId` varchar(6) DEFAULT NULL,
  `CostDiv` varchar(6) DEFAULT NULL,
  `CostDivNo` varchar(2) DEFAULT NULL,
  `CostCode` varchar(255) DEFAULT NULL,
  `CostId2` varchar(6) DEFAULT NULL,
  `CostItem` varchar(255) DEFAULT NULL,
  `QTY` varchar(12) DEFAULT NULL,
  `EX` varchar(3) DEFAULT NULL,
  `MatAmount` varchar(181) DEFAULT NULL,
  `LbrAmount` varchar(191) DEFAULT NULL,
  `SubAmount` varchar(191) DEFAULT NULL,
  `EqpAmount` varchar(12) DEFAULT NULL,
  `Cost` varchar(191) DEFAULT NULL,
  `Markup` varchar(191) DEFAULT NULL,
  `Profit` varchar(191) DEFAULT NULL,
  `Total` varchar(191) DEFAULT NULL,
  `Rebate` varchar(191) DEFAULT NULL,
  `NetTotal` varchar(191) DEFAULT NULL,
  `SerialNo` varchar(191) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `RevisionID` varchar(15) DEFAULT NULL,
  `RevisionHash` varchar(32) DEFAULT NULL,
  `RevisionOf` varchar(15) DEFAULT NULL,
  `RevisedDate` varchar(25) DEFAULT NULL,
  `TrackingNO` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_details`
--

CREATE TABLE `estimates_details` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `est_id` int(11) DEFAULT NULL,
  `est_item_id` int(11) DEFAULT NULL,
  `RecordNo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTY` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EX` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amount` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_items`
--

CREATE TABLE `estimates_items` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `Hide` varchar(1) DEFAULT NULL,
  `Sort` varchar(3) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `RecordNo` varchar(15) DEFAULT NULL,
  `EstId` int(6) DEFAULT NULL,
  `EstName` varchar(60) DEFAULT NULL,
  `EstDate` varchar(12) DEFAULT NULL,
  `EstStart` varchar(16) DEFAULT NULL,
  `EstEnd` varchar(16) DEFAULT NULL,
  `EstDays` varchar(3) DEFAULT NULL,
  `Selected` varchar(6) DEFAULT NULL,
  `BusId` varchar(6) DEFAULT NULL,
  `BusName` varchar(45) DEFAULT NULL,
  `JobId` varchar(12) DEFAULT NULL,
  `JobName` varchar(255) DEFAULT NULL,
  `CostId` varchar(191) DEFAULT NULL,
  `CostDiv` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CostDivNo` varchar(2) DEFAULT NULL,
  `CostCode` varchar(255) DEFAULT NULL,
  `CostId2` varchar(6) DEFAULT NULL,
  `CostItem` text DEFAULT NULL,
  `CostMemo` text DEFAULT NULL,
  `CostTitle` text DEFAULT NULL,
  `SF` varchar(25) DEFAULT NULL,
  `UM` varchar(2) DEFAULT NULL,
  `SFx` varchar(2) DEFAULT NULL,
  `QTY` varchar(12) DEFAULT NULL,
  `EX` varchar(3) DEFAULT NULL,
  `MatPrice` varchar(15) DEFAULT NULL,
  `MatAmount` varchar(15) DEFAULT NULL,
  `LbrPrice` varchar(15) DEFAULT NULL,
  `LbrAmount` varchar(15) DEFAULT NULL,
  `SubPrice` varchar(15) DEFAULT NULL,
  `SubAmount` varchar(15) DEFAULT NULL,
  `EqpPrice` varchar(15) DEFAULT NULL,
  `EqpAmount` varchar(15) DEFAULT NULL,
  `Cost` varchar(15) DEFAULT NULL,
  `Markup` varchar(15) DEFAULT NULL,
  `Profit` varchar(15) DEFAULT NULL,
  `Total` varchar(15) DEFAULT NULL,
  `Discount` varchar(12) DEFAULT NULL,
  `Rebate` varchar(16) DEFAULT NULL,
  `NetTotal` varchar(16) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `lab_sum_detail` varchar(191) DEFAULT NULL,
  `mat_sum_detail` varchar(191) DEFAULT NULL,
  `sub_sum_detail` varchar(191) DEFAULT NULL,
  `eqp_sum_detail` varchar(191) DEFAULT NULL,
  `mat_sum_checked` varchar(191) DEFAULT NULL,
  `lab_sum_checked` varchar(191) DEFAULT NULL,
  `sub_sum_checked` varchar(191) DEFAULT NULL,
  `eqp_sum_checked` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expenseables`
--

CREATE TABLE `expenseables` (
  `expense_id` bigint(20) UNSIGNED NOT NULL,
  `expenseable_id` bigint(20) UNSIGNED NOT NULL,
  `expenseable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timesheet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `business_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gl_master_id` int(6) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gl_detail`
--

CREATE TABLE `gl_detail` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(6) NOT NULL,
  `ap_detail_id` bigint(20) DEFAULT NULL,
  `unid` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DP` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ApId` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `InvId` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InvNo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InvDate` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mAccId` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordNo` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PostToGl` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Posted` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccId` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoId` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Autoitem` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Division` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Active` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_old` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RefDate_old` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Reference` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RefCard` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CheckNo` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Transaction` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Entry` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `Category` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `JobBusId` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `JobBusName` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `JobId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `JobName` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `BusId` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `BusName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DetailMemo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Debit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Credit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amount` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Balance` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BHPHContract` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BHPHBalance` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusAccId` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusAccName` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusAccType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BalanceType` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccFilter` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccCode` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccNo` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccType` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostId` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostDiv` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostDivNo` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostCode` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostId2` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CostItem` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SerialNo` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordDate` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordTime` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordAge` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UpdatedBy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UpdatedDate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UpdatedTime` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Edit1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `srDate` date DEFAULT NULL,
  `RefDate` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` timestamp NULL DEFAULT NULL,
  `deleted_by` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gl_master`
--

CREATE TABLE `gl_master` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `DP` varchar(2) DEFAULT NULL,
  `RecordNo` varchar(191) DEFAULT NULL,
  `mAccId` varchar(46) DEFAULT NULL,
  `AutoId` varchar(12) DEFAULT NULL,
  `Autoitem` varchar(40) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `Date_old` varchar(12) DEFAULT NULL,
  `CheckNo` varchar(12) DEFAULT NULL,
  `Transaction` varchar(15) DEFAULT NULL,
  `Entry` varchar(12) DEFAULT NULL,
  `EntryFlag` varchar(25) DEFAULT NULL,
  `Status` varchar(12) DEFAULT NULL,
  `BusId` varchar(6) DEFAULT NULL,
  `BusName` varchar(191) DEFAULT NULL,
  `BusBranch` varchar(35) DEFAULT NULL,
  `BusAddress1` varchar(40) DEFAULT NULL,
  `BusAddress2` varchar(40) DEFAULT NULL,
  `CheckMemo` text DEFAULT NULL,
  `Credit` varchar(12) DEFAULT NULL,
  `Debit` varchar(20) DEFAULT NULL,
  `Balance` varchar(60) DEFAULT NULL,
  `Amount` varchar(12) DEFAULT NULL,
  `AccId` varchar(6) DEFAULT NULL,
  `BusAccId` varchar(12) DEFAULT NULL,
  `BusAccName` varchar(60) DEFAULT NULL,
  `BusAccType` varchar(30) DEFAULT NULL,
  `BusAccNo` varchar(36) DEFAULT NULL,
  `BusAccRouting` varchar(12) DEFAULT NULL,
  `AccType` varchar(35) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserId` varchar(15) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `RecordDate` varchar(20) DEFAULT NULL,
  `RecordTime` varchar(20) DEFAULT NULL,
  `RecordAge` varchar(30) DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `UpdatedBy` varchar(30) DEFAULT NULL,
  `UpdatedDate` varchar(30) DEFAULT NULL,
  `UpdatedTime` varchar(30) DEFAULT NULL,
  `sDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `RecordNo` varchar(15) DEFAULT NULL,
  `InvDate` varchar(20) DEFAULT NULL,
  `InvDaysDue` varchar(3) DEFAULT NULL,
  `InvDueDate` varchar(20) DEFAULT NULL,
  `InvDatePaid` varchar(40) DEFAULT NULL,
  `InvPO` varchar(30) DEFAULT NULL,
  `InvRef` varchar(150) DEFAULT NULL,
  `InvTerms` varchar(60) DEFAULT NULL,
  `InvMemo` varchar(255) DEFAULT NULL,
  `InvAttn` varchar(35) DEFAULT NULL,
  `BusId` varchar(6) DEFAULT NULL,
  `BusName` varchar(45) DEFAULT NULL,
  `BusAddress1` varchar(45) DEFAULT NULL,
  `BusAddress2` varchar(45) DEFAULT NULL,
  `JobId` varchar(12) DEFAULT NULL,
  `JobName` varchar(255) DEFAULT NULL,
  `JobAddress1` varchar(45) DEFAULT NULL,
  `JobAddress2` varchar(45) DEFAULT NULL,
  `JobRef` varchar(100) DEFAULT NULL,
  `JobPhone` varchar(35) DEFAULT NULL,
  `JobScope` varchar(100) DEFAULT NULL,
  `CostId` varchar(6) DEFAULT NULL,
  `CostDiv` varchar(6) DEFAULT NULL,
  `CostDivNo` varchar(2) DEFAULT NULL,
  `CostCode` varchar(255) DEFAULT NULL,
  `CostId2` varchar(6) DEFAULT NULL,
  `CostItem` varchar(255) DEFAULT NULL,
  `Total` varchar(12) DEFAULT NULL,
  `Credits` varchar(12) DEFAULT NULL,
  `Balance` varchar(12) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `RecordDate` varchar(20) DEFAULT NULL,
  `RecordTime` varchar(25) DEFAULT NULL,
  `CreatedBy` varchar(40) DEFAULT NULL,
  `UpdatedDate` varchar(25) DEFAULT NULL,
  `UpdatedTime` varchar(40) DEFAULT NULL,
  `UpdatedBy` varchar(191) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices_items`
--

CREATE TABLE `invoices_items` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `InvId` varchar(15) DEFAULT NULL,
  `InvDate` tinytext DEFAULT NULL,
  `RecordNo` varchar(15) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `Sort` varchar(3) DEFAULT NULL,
  `BusId` varchar(6) DEFAULT NULL,
  `BusName` varchar(45) DEFAULT NULL,
  `JobId` varchar(12) DEFAULT NULL,
  `JobName` varchar(255) DEFAULT NULL,
  `CostId` varchar(6) DEFAULT NULL,
  `CostDiv` varchar(6) DEFAULT NULL,
  `CostDivNo` varchar(2) DEFAULT NULL,
  `CostCode` varchar(255) DEFAULT NULL,
  `CostId2` varchar(6) DEFAULT NULL,
  `CostItem` text DEFAULT NULL,
  `CostMemo` text DEFAULT NULL,
  `CostTitle` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `QTY` varchar(12) DEFAULT NULL,
  `EX` varchar(3) DEFAULT NULL,
  `Price` varchar(15) DEFAULT NULL,
  `Amount` varchar(15) DEFAULT NULL,
  `Total` varchar(12) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `BusId` varchar(6) DEFAULT NULL,
  `BusName` varchar(250) DEFAULT NULL,
  `BusAddress1` varchar(250) DEFAULT NULL,
  `BusCity` varchar(60) DEFAULT NULL,
  `BusSt` varchar(2) DEFAULT NULL,
  `BusZip` varchar(5) DEFAULT NULL,
  `BusPhone` varchar(250) DEFAULT NULL,
  `BusEmail` varchar(250) DEFAULT NULL,
  `JobName` varchar(250) DEFAULT NULL,
  `JobAddress1` varchar(250) DEFAULT NULL,
  `JobAddress2` varchar(250) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Estimated` varchar(12) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `RecordName` varchar(60) DEFAULT NULL,
  `RecordNo` varchar(12) DEFAULT NULL,
  `RecordBy` varchar(35) DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `RecordAge` varchar(8) DEFAULT NULL,
  `ReviseBy` varchar(35) DEFAULT NULL,
  `ReviseDate` varchar(4) DEFAULT NULL,
  `ReviseTime` varchar(8) DEFAULT NULL,
  `CurrentDate` varchar(8) DEFAULT NULL,
  `CurrentTime` varchar(6) DEFAULT NULL,
  `TimeDiff` varchar(4) DEFAULT NULL,
  `TimeExecute` varchar(15) DEFAULT NULL,
  `TimeModify` varchar(15) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `phone_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `generated_conversions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `MemberId` varchar(14) DEFAULT NULL,
  `Role` varchar(12) DEFAULT NULL,
  `SerialNo` varchar(14) DEFAULT NULL,
  `Password` varchar(35) DEFAULT NULL,
  `ContactPrefix` varchar(35) DEFAULT NULL,
  `ContactFirst` varchar(35) DEFAULT NULL,
  `ContactMiddle` varchar(35) DEFAULT NULL,
  `ContactLast` varchar(35) DEFAULT NULL,
  `ContactSuffix` varchar(35) DEFAULT NULL,
  `Gender` varchar(35) DEFAULT NULL,
  `HomeAddress` varchar(35) DEFAULT NULL,
  `City` varchar(35) DEFAULT NULL,
  `State` varchar(35) DEFAULT NULL,
  `ZipCode` varchar(35) DEFAULT NULL,
  `ContactPhone` varchar(35) DEFAULT NULL,
  `ContactFax` varchar(35) DEFAULT NULL,
  `ContactEmail` varchar(155) DEFAULT NULL,
  `Business` varchar(35) DEFAULT NULL,
  `BusinessAddress` varchar(35) DEFAULT NULL,
  `BusinessCity` varchar(35) DEFAULT NULL,
  `BusinessState` varchar(35) DEFAULT NULL,
  `BusinessZipCode` varchar(35) DEFAULT NULL,
  `BusinessTelephone` varchar(35) DEFAULT NULL,
  `BusinessFax` varchar(10) DEFAULT NULL,
  `Position` varchar(35) DEFAULT NULL,
  `DegreeType1` varchar(35) DEFAULT NULL,
  `DegreeType2` varchar(35) DEFAULT NULL,
  `DegreeType3` varchar(35) DEFAULT NULL,
  `EducationField1` varchar(40) DEFAULT NULL,
  `EducationField2` varchar(40) DEFAULT NULL,
  `EducationField3` varchar(40) DEFAULT NULL,
  `DegreeYear1` varchar(35) DEFAULT NULL,
  `DegreeYear2` varchar(35) DEFAULT NULL,
  `DegreeYear3` varchar(35) DEFAULT NULL,
  `Affiliate` varchar(255) DEFAULT NULL,
  `LeadershipPosition` varchar(35) DEFAULT NULL,
  `Commissions` varchar(75) DEFAULT NULL,
  `Salary` varchar(35) DEFAULT NULL,
  `AgeRange` varchar(35) DEFAULT NULL,
  `pid1` varchar(6) DEFAULT NULL,
  `pid2` varchar(6) DEFAULT NULL,
  `ProductType1` varchar(35) DEFAULT NULL,
  `ProductType2` varchar(35) DEFAULT NULL,
  `MemberType` varchar(35) DEFAULT NULL,
  `Contribution` varchar(75) DEFAULT NULL,
  `Item1` varchar(55) DEFAULT NULL,
  `Item2` varchar(55) DEFAULT NULL,
  `Quantity1` varchar(15) DEFAULT NULL,
  `Quantity2` varchar(15) DEFAULT NULL,
  `Price1` varchar(12) DEFAULT NULL,
  `Price2` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `SSN` varchar(12) DEFAULT NULL,
  `ActiveTF` varchar(35) DEFAULT NULL,
  `Address1` varchar(35) DEFAULT NULL,
  `Address2` varchar(35) DEFAULT NULL,
  `EducationField` varchar(150) DEFAULT NULL,
  `Available` varchar(35) DEFAULT NULL,
  `BeginDate` varchar(35) DEFAULT NULL,
  `Branch` varchar(35) DEFAULT NULL,
  `Business2` varchar(35) DEFAULT NULL,
  `BusinessAddress2` varchar(35) DEFAULT NULL,
  `BusinessCountry` varchar(35) DEFAULT NULL,
  `BusinessEMail` varchar(35) DEFAULT NULL,
  `BusinessZipPlus` varchar(35) DEFAULT NULL,
  `CardName` varchar(35) DEFAULT NULL,
  `Chapter` varchar(35) DEFAULT NULL,
  `Commission` varchar(35) DEFAULT NULL,
  `ConfirmationNumber` varchar(35) DEFAULT NULL,
  `Contact` varchar(35) DEFAULT NULL,
  `ContactID` varchar(35) DEFAULT NULL,
  `ContactLastFirst` varchar(35) DEFAULT NULL,
  `ContactTitle` varchar(35) DEFAULT NULL,
  `CorrectAddress` varchar(35) DEFAULT NULL,
  `Correspondence` varchar(35) DEFAULT NULL,
  `Country` varchar(35) DEFAULT NULL,
  `DateJoined` varchar(35) DEFAULT NULL,
  `Deceased` varchar(35) DEFAULT NULL,
  `DelegateDate` varchar(35) DEFAULT NULL,
  `DelegateType` varchar(35) DEFAULT NULL,
  `DepositDate` varchar(35) DEFAULT NULL,
  `DropDate` varchar(35) DEFAULT NULL,
  `DropReason` varchar(35) DEFAULT NULL,
  `Editedby` varchar(35) DEFAULT NULL,
  `EINNumber` varchar(35) DEFAULT NULL,
  `ExpirationLetter` varchar(35) DEFAULT NULL,
  `ExpireDate` varchar(35) DEFAULT NULL,
  `Extension` varchar(35) DEFAULT NULL,
  `Field1` varchar(35) DEFAULT NULL,
  `Field2` varchar(35) DEFAULT NULL,
  `Field3` varchar(35) DEFAULT NULL,
  `Flag1` varchar(35) DEFAULT NULL,
  `Flag2` varchar(35) DEFAULT NULL,
  `GoldPlus` varchar(35) DEFAULT NULL,
  `GoldID` varchar(35) DEFAULT NULL,
  `LabelLine` varchar(35) DEFAULT NULL,
  `LabelLine2` varchar(35) DEFAULT NULL,
  `LabelLine3` varchar(35) DEFAULT NULL,
  `LabelLine4` varchar(35) DEFAULT NULL,
  `LabelLine5` varchar(35) DEFAULT NULL,
  `LabelLine6` varchar(35) DEFAULT NULL,
  `LabelLine7` varchar(35) DEFAULT NULL,
  `LifeMemberApplicant` varchar(35) DEFAULT NULL,
  `LifeMemberReceiptDate` varchar(35) DEFAULT NULL,
  `LifeMmbrAppDate` varchar(35) DEFAULT NULL,
  `MemberCard` varchar(35) DEFAULT NULL,
  `MemberCardDate` varchar(35) DEFAULT NULL,
  `Membership` varchar(35) DEFAULT NULL,
  `MembershipAmount` varchar(35) DEFAULT NULL,
  `MembershipDues` varchar(35) DEFAULT NULL,
  `MembershipType` varchar(35) DEFAULT NULL,
  `MemberStatus` varchar(35) DEFAULT NULL,
  `ML` varchar(35) DEFAULT NULL,
  `MLField` varchar(35) DEFAULT NULL,
  `NeedsRenewalCard` varchar(35) DEFAULT NULL,
  `NewCardSentDate` varchar(35) DEFAULT NULL,
  `NoticeSent` varchar(35) DEFAULT NULL,
  `Officer` varchar(35) DEFAULT NULL,
  `OrganizationLevel` varchar(35) DEFAULT NULL,
  `ReadThis` varchar(35) DEFAULT NULL,
  `ReceiptSource` varchar(35) DEFAULT NULL,
  `Region` varchar(35) DEFAULT NULL,
  `RegionCode` varchar(35) DEFAULT NULL,
  `RenDate` varchar(35) DEFAULT NULL,
  `Renewal` varchar(35) DEFAULT NULL,
  `RenewalCardDate` varchar(35) DEFAULT NULL,
  `RenewDate` varchar(35) DEFAULT NULL,
  `RevisedDate` varchar(35) DEFAULT NULL,
  `Salutation` varchar(35) DEFAULT NULL,
  `Subscribing` varchar(35) DEFAULT NULL,
  `TotalFoundation` varchar(35) DEFAULT NULL,
  `UniqueKey` varchar(35) DEFAULT NULL,
  `vDepGrpConference` varchar(35) DEFAULT NULL,
  `vDepositGroup` varchar(35) DEFAULT NULL,
  `ZipPlus` varchar(35) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membership_temp`
--

CREATE TABLE `membership_temp` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `MemberId` varchar(14) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `NewMember` varchar(35) DEFAULT NULL,
  `Role` varchar(12) DEFAULT NULL,
  `SerialNo` varchar(14) DEFAULT NULL,
  `Password` varchar(35) DEFAULT NULL,
  `ContactPrefix` varchar(35) DEFAULT NULL,
  `ContactFirst` varchar(35) DEFAULT NULL,
  `ContactMiddle` varchar(35) DEFAULT NULL,
  `ContactLast` varchar(35) DEFAULT NULL,
  `ContactSuffix` varchar(35) DEFAULT NULL,
  `Gender` varchar(35) DEFAULT NULL,
  `HomeAddress` varchar(35) DEFAULT NULL,
  `City` varchar(35) DEFAULT NULL,
  `State` varchar(35) DEFAULT NULL,
  `ZipCode` varchar(35) DEFAULT NULL,
  `ContactPhone` varchar(35) DEFAULT NULL,
  `ContactFax` varchar(35) DEFAULT NULL,
  `ContactEmail` varchar(155) DEFAULT NULL,
  `Business` varchar(35) DEFAULT NULL,
  `BusinessAddress` varchar(35) DEFAULT NULL,
  `BusinessCity` varchar(35) DEFAULT NULL,
  `BusinessState` varchar(35) DEFAULT NULL,
  `BusinessZipCode` varchar(35) DEFAULT NULL,
  `BusinessTelephone` varchar(35) DEFAULT NULL,
  `BusinessFax` varchar(10) DEFAULT NULL,
  `Position` varchar(35) DEFAULT NULL,
  `DegreeType1` varchar(35) DEFAULT NULL,
  `DegreeType2` varchar(35) DEFAULT NULL,
  `DegreeType3` varchar(35) DEFAULT NULL,
  `EducationField1` varchar(40) DEFAULT NULL,
  `EducationField2` varchar(40) DEFAULT NULL,
  `EducationField3` varchar(40) DEFAULT NULL,
  `DegreeYear1` varchar(35) DEFAULT NULL,
  `DegreeYear2` varchar(35) DEFAULT NULL,
  `DegreeYear3` varchar(35) DEFAULT NULL,
  `Affiliate` varchar(255) DEFAULT NULL,
  `LeadershipPosition` varchar(35) DEFAULT NULL,
  `Commissions` varchar(75) DEFAULT NULL,
  `Salary` varchar(35) DEFAULT NULL,
  `AgeRange` varchar(35) DEFAULT NULL,
  `pid1` varchar(6) DEFAULT NULL,
  `pid2` varchar(6) DEFAULT NULL,
  `ProductType1` varchar(35) DEFAULT NULL,
  `ProductType2` varchar(35) DEFAULT NULL,
  `MemberType` varchar(35) DEFAULT NULL,
  `Contribution` varchar(75) DEFAULT NULL,
  `Item1` varchar(55) DEFAULT NULL,
  `Item2` varchar(55) DEFAULT NULL,
  `Price1` varchar(12) DEFAULT NULL,
  `Price2` varchar(12) DEFAULT NULL,
  `SSN` varchar(12) DEFAULT NULL,
  `ActiveTF` varchar(35) DEFAULT NULL,
  `Address1` varchar(35) DEFAULT NULL,
  `Address2` varchar(35) DEFAULT NULL,
  `EducationField` varchar(150) DEFAULT NULL,
  `Available` varchar(35) DEFAULT NULL,
  `BeginDate` varchar(35) DEFAULT NULL,
  `Branch` varchar(35) DEFAULT NULL,
  `Business2` varchar(35) DEFAULT NULL,
  `BusinessAddress2` varchar(35) DEFAULT NULL,
  `BusinessCountry` varchar(35) DEFAULT NULL,
  `BusinessEMail` varchar(35) DEFAULT NULL,
  `BusinessZipPlus` varchar(35) DEFAULT NULL,
  `CardName` varchar(35) DEFAULT NULL,
  `Chapter` varchar(35) DEFAULT NULL,
  `Commission` varchar(35) DEFAULT NULL,
  `ConfirmationNumber` varchar(35) DEFAULT NULL,
  `Contact` varchar(35) DEFAULT NULL,
  `ContactID` varchar(35) DEFAULT NULL,
  `ContactLastFirst` varchar(35) DEFAULT NULL,
  `ContactTitle` varchar(35) DEFAULT NULL,
  `CorrectAddress` varchar(35) DEFAULT NULL,
  `Correspondence` varchar(35) DEFAULT NULL,
  `Country` varchar(35) DEFAULT NULL,
  `DateJoined` varchar(35) DEFAULT NULL,
  `Deceased` varchar(35) DEFAULT NULL,
  `DelegateDate` varchar(35) DEFAULT NULL,
  `DelegateType` varchar(35) DEFAULT NULL,
  `DepositDate` varchar(35) DEFAULT NULL,
  `DropDate` varchar(35) DEFAULT NULL,
  `DropReason` varchar(35) DEFAULT NULL,
  `Editedby` varchar(35) DEFAULT NULL,
  `EINNumber` varchar(35) DEFAULT NULL,
  `ExpirationLetter` varchar(35) DEFAULT NULL,
  `ExpireDate` varchar(35) DEFAULT NULL,
  `Extension` varchar(35) DEFAULT NULL,
  `Field1` varchar(35) DEFAULT NULL,
  `Field2` varchar(35) DEFAULT NULL,
  `Field3` varchar(35) DEFAULT NULL,
  `Flag1` varchar(35) DEFAULT NULL,
  `Flag2` varchar(35) DEFAULT NULL,
  `GoldPlus` varchar(35) DEFAULT NULL,
  `GoldID` varchar(35) DEFAULT NULL,
  `LabelLine` varchar(35) DEFAULT NULL,
  `LabelLine2` varchar(35) DEFAULT NULL,
  `LabelLine3` varchar(35) DEFAULT NULL,
  `LabelLine4` varchar(35) DEFAULT NULL,
  `LabelLine5` varchar(35) DEFAULT NULL,
  `LabelLine6` varchar(35) DEFAULT NULL,
  `LabelLine7` varchar(35) DEFAULT NULL,
  `LifeMemberApplicant` varchar(35) DEFAULT NULL,
  `LifeMemberReceiptDate` varchar(35) DEFAULT NULL,
  `LifeMmbrAppDate` varchar(35) DEFAULT NULL,
  `MemberCard` varchar(35) DEFAULT NULL,
  `MemberCardDate` varchar(35) DEFAULT NULL,
  `Membership` varchar(35) DEFAULT NULL,
  `MembershipAmount` varchar(35) DEFAULT NULL,
  `MembershipDues` varchar(35) DEFAULT NULL,
  `MembershipType` varchar(35) DEFAULT NULL,
  `MemberStatus` varchar(35) DEFAULT NULL,
  `ML` varchar(35) DEFAULT NULL,
  `MLField` varchar(35) DEFAULT NULL,
  `NeedsRenewalCard` varchar(35) DEFAULT NULL,
  `NewCardSentDate` varchar(35) DEFAULT NULL,
  `NoticeSent` varchar(35) DEFAULT NULL,
  `Officer` varchar(35) DEFAULT NULL,
  `OrganizationLevel` varchar(35) DEFAULT NULL,
  `ReadThis` varchar(35) DEFAULT NULL,
  `ReceiptSource` varchar(35) DEFAULT NULL,
  `Region` varchar(35) DEFAULT NULL,
  `RegionCode` varchar(35) DEFAULT NULL,
  `RenDate` varchar(35) DEFAULT NULL,
  `Renewal` varchar(35) DEFAULT NULL,
  `RenewalCardDate` varchar(35) DEFAULT NULL,
  `RenewDate` varchar(35) DEFAULT NULL,
  `RevisedDate` varchar(35) DEFAULT NULL,
  `Salutation` varchar(35) DEFAULT NULL,
  `Subscribing` varchar(35) DEFAULT NULL,
  `TotalFoundation` varchar(35) DEFAULT NULL,
  `UniqueKey` varchar(35) DEFAULT NULL,
  `vDepGrpConference` varchar(35) DEFAULT NULL,
  `vDepositGroup` varchar(35) DEFAULT NULL,
  `ZipPlus` varchar(35) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `migration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_with_commas`
--

CREATE TABLE `old_with_commas` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_rates`
--

CREATE TABLE `pay_rates` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` tinyint(1) UNSIGNED DEFAULT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_pay_period_start` timestamp NULL DEFAULT NULL,
  `activation_pay_period_end` timestamp NULL DEFAULT NULL,
  `deactivation_pay_period_start` timestamp NULL DEFAULT NULL,
  `deactivation_pay_period_end` timestamp NULL DEFAULT NULL,
  `deactivated_on` timestamp NULL DEFAULT NULL,
  `deactivated_memo` text CHARACTER SET utf8 DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `previous_pay_rate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phoneables`
--

CREATE TABLE `phoneables` (
  `phone_id` bigint(20) UNSIGNED NOT NULL,
  `phoneable_id` bigint(20) UNSIGNED NOT NULL,
  `phoneable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `iid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `updated` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `photo_rank`
--

CREATE TABLE `photo_rank` (
  `rid` bigint(11) NOT NULL,
  `pid` bigint(11) DEFAULT NULL,
  `rank` bigint(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `GroupNo` varchar(10) DEFAULT NULL,
  `CartNo` varchar(32) DEFAULT NULL,
  `Category` varchar(40) DEFAULT NULL,
  `MemberType` varchar(50) DEFAULT NULL,
  `Sort` varchar(6) DEFAULT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `Memo` varchar(255) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Price` varchar(8) DEFAULT NULL,
  `Total` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `Date` varchar(65) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Description` varchar(60) DEFAULT NULL,
  `Preview` varchar(150) DEFAULT NULL,
  `FCKeditor1` longtext DEFAULT NULL,
  `FileName` varchar(150) DEFAULT NULL,
  `Page` varchar(150) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_action`
--

CREATE TABLE `qw_action` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(11) NOT NULL,
  `subid` varchar(4) DEFAULT NULL,
  `SerialNo` varchar(30) DEFAULT NULL,
  `DocSort` varchar(10) DEFAULT NULL,
  `DocId` varchar(6) DEFAULT NULL,
  `DocName` varchar(30) DEFAULT NULL,
  `DocTitle` varchar(35) DEFAULT NULL,
  `DocHeader` varchar(255) DEFAULT NULL,
  `ShowHeader` varchar(3) DEFAULT NULL,
  `HelpText` mediumtext DEFAULT NULL,
  `HelpShow` varchar(6) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Menu` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Url` text CHARACTER SET latin1 DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `MainMenu` varchar(3) DEFAULT NULL,
  `Target` varchar(10) DEFAULT NULL,
  `DocRow` varchar(15) DEFAULT NULL,
  `DocTable` varchar(45) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `FontName1` varchar(35) DEFAULT NULL,
  `FontName2` varchar(35) DEFAULT NULL,
  `FontName3` varchar(35) DEFAULT NULL,
  `FontName4` varchar(35) DEFAULT NULL,
  `FontPath1` varchar(60) DEFAULT NULL,
  `FontPath2` varchar(60) DEFAULT NULL,
  `FontPath3` varchar(60) DEFAULT NULL,
  `FontPath4` varchar(60) DEFAULT NULL,
  `Pt1` varchar(6) DEFAULT NULL,
  `Pt2` varchar(6) DEFAULT NULL,
  `Pt3` varchar(6) DEFAULT NULL,
  `Pt4` varchar(6) DEFAULT NULL,
  `ColorName1` varchar(50) DEFAULT NULL,
  `ColorName2` varchar(50) DEFAULT NULL,
  `ColorName3` varchar(50) DEFAULT NULL,
  `ColorName4` varchar(50) DEFAULT NULL,
  `Color_R1` varchar(6) DEFAULT NULL,
  `Color_R2` varchar(6) DEFAULT NULL,
  `Color_R3` varchar(6) DEFAULT NULL,
  `Color_R4` varchar(6) DEFAULT NULL,
  `Color_G1` varchar(6) DEFAULT NULL,
  `Color_G2` varchar(6) DEFAULT NULL,
  `Color_G3` varchar(6) DEFAULT NULL,
  `Color_G4` varchar(6) DEFAULT NULL,
  `Color_B1` varchar(6) DEFAULT NULL,
  `Color_B2` varchar(6) DEFAULT NULL,
  `Color_B3` varchar(6) DEFAULT NULL,
  `Color_B4` varchar(6) DEFAULT NULL,
  `Hex_1` varchar(8) DEFAULT NULL,
  `Hex_2` varchar(8) DEFAULT NULL,
  `Hex_3` varchar(8) DEFAULT NULL,
  `Hex_4` varchar(8) DEFAULT NULL,
  `Slant1` varchar(6) DEFAULT NULL,
  `Slant2` varchar(6) DEFAULT NULL,
  `Slant3` varchar(6) DEFAULT NULL,
  `Slant4` varchar(6) DEFAULT NULL,
  `X1` varchar(6) DEFAULT NULL,
  `X2` varchar(6) DEFAULT NULL,
  `X3` varchar(6) DEFAULT NULL,
  `X4` varchar(6) DEFAULT NULL,
  `Y1` varchar(6) DEFAULT NULL,
  `Y2` varchar(6) DEFAULT NULL,
  `Y3` varchar(6) DEFAULT NULL,
  `Y4` varchar(6) DEFAULT NULL,
  `Img_X` varchar(6) DEFAULT NULL,
  `Img_Y` varchar(6) DEFAULT NULL,
  `Transp` varchar(6) DEFAULT NULL,
  `SecLevel` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_definitions`
--

CREATE TABLE `qw_definitions` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SubId` varchar(45) DEFAULT NULL,
  `SerialNo` varchar(100) DEFAULT NULL,
  `ColumnView` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(65) DEFAULT NULL,
  `Active` varchar(10) DEFAULT NULL,
  `TableName` varchar(65) DEFAULT NULL,
  `DocColumns` text DEFAULT NULL,
  `DocText` text DEFAULT NULL,
  `DocInsert` text DEFAULT NULL,
  `DocUpdate` text DEFAULT NULL,
  `DataType` varchar(35) DEFAULT NULL,
  `FieldType` varchar(65) DEFAULT NULL,
  `FieldName` varchar(65) DEFAULT NULL,
  `FieldLabel` varchar(65) DEFAULT NULL,
  `FieldId` varchar(6) DEFAULT NULL,
  `FieldRequired` varchar(3) DEFAULT NULL,
  `FieldSize` varchar(6) DEFAULT NULL,
  `FieldValue` tinytext DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_forms`
--

CREATE TABLE `qw_forms` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `FormName` varchar(40) DEFAULT NULL,
  `FormTable` varchar(30) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `RecordName` varchar(60) DEFAULT NULL,
  `RecordNo` varchar(4) DEFAULT NULL,
  `RecordBy` varchar(35) DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `RecordAge` varchar(8) DEFAULT NULL,
  `ReviseBy` varchar(35) DEFAULT NULL,
  `ReviseDate` varchar(4) DEFAULT NULL,
  `ReviseTime` varchar(8) DEFAULT NULL,
  `CurrentDate` varchar(8) DEFAULT NULL,
  `CurrentTime` varchar(6) DEFAULT NULL,
  `TimeDifference` varchar(4) DEFAULT NULL,
  `TimeExecute` varchar(15) DEFAULT NULL,
  `TimeModify` varchar(15) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_groupitems`
--

CREATE TABLE `qw_groupitems` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `GroupId` varchar(4) DEFAULT NULL,
  `GroupName` varchar(35) DEFAULT NULL,
  `GroupItem` varchar(35) DEFAULT NULL,
  `weight` int(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_groups`
--

CREATE TABLE `qw_groups` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(4) NOT NULL,
  `GroupName` varchar(35) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_icons`
--

CREATE TABLE `qw_icons` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `favorite` varchar(12) DEFAULT NULL,
  `active` varchar(3) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_library`
--

CREATE TABLE `qw_library` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(11) NOT NULL,
  `serial` varchar(30) DEFAULT NULL,
  `GroupItemId` varchar(4) DEFAULT NULL,
  `GroupId` int(4) DEFAULT NULL,
  `GroupName` varchar(40) DEFAULT NULL,
  `GroupItem` varchar(255) DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `active` varchar(3) DEFAULT NULL,
  `doc_name` varchar(60) DEFAULT NULL,
  `doc_date` varchar(60) DEFAULT NULL,
  `doc_align` varchar(6) DEFAULT NULL,
  `doc_width` varchar(6) DEFAULT NULL,
  `doc_logo` varchar(35) DEFAULT NULL,
  `doc_header` text DEFAULT NULL,
  `doc_banner` text DEFAULT NULL,
  `doc_title` varchar(35) DEFAULT NULL,
  `doc_path` text DEFAULT NULL,
  `show_header` varchar(3) DEFAULT NULL,
  `show_banner` varchar(120) DEFAULT NULL,
  `header_width` varchar(6) DEFAULT NULL,
  `header_height` varchar(6) DEFAULT NULL,
  `file_include1` text DEFAULT NULL,
  `file_include2` text DEFAULT NULL,
  `file_include3` text DEFAULT NULL,
  `file_include4` text DEFAULT NULL,
  `file_include5` text DEFAULT NULL,
  `file_include6` text DEFAULT NULL,
  `file_include7` text DEFAULT NULL,
  `file_include8` text DEFAULT NULL,
  `show_include1` varchar(6) DEFAULT NULL,
  `show_include2` varchar(6) DEFAULT NULL,
  `show_include3` varchar(6) DEFAULT NULL,
  `show_include4` varchar(6) DEFAULT NULL,
  `show_include5` varchar(6) DEFAULT NULL,
  `show_include6` varchar(6) DEFAULT NULL,
  `show_include7` varchar(6) DEFAULT NULL,
  `show_include8` varchar(6) DEFAULT NULL,
  `elm1` longtext DEFAULT NULL,
  `FCKeditor1` longtext DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `grouptab` text DEFAULT NULL,
  `img_temp` text DEFAULT NULL,
  `btn_width` varchar(6) DEFAULT NULL,
  `btn_height` varchar(6) DEFAULT NULL,
  `tab_width` varchar(6) DEFAULT NULL,
  `tab_height` varchar(6) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `target` varchar(10) DEFAULT NULL,
  `placement` varchar(15) DEFAULT NULL,
  `font_name` varchar(60) DEFAULT NULL,
  `font_path` varchar(60) DEFAULT NULL,
  `pt` varchar(6) DEFAULT NULL,
  `color_name` varchar(30) DEFAULT NULL,
  `color_r` varchar(6) DEFAULT NULL,
  `color_g` varchar(6) DEFAULT NULL,
  `color_b` varchar(6) DEFAULT NULL,
  `color_hex` varchar(10) DEFAULT NULL,
  `x1` varchar(6) DEFAULT NULL,
  `y1` varchar(6) DEFAULT NULL,
  `img_x` varchar(4) DEFAULT NULL,
  `img_y` varchar(4) DEFAULT NULL,
  `transp` varchar(4) DEFAULT NULL,
  `slant` varchar(6) DEFAULT NULL,
  `entrydate` varchar(30) DEFAULT NULL,
  `enteredby` varchar(35) DEFAULT NULL,
  `updated` varchar(35) DEFAULT NULL,
  `updatedby` varchar(35) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_loghits`
--

CREATE TABLE `qw_loghits` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(7) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `PageName` varchar(60) DEFAULT NULL,
  `PageId` varchar(10) DEFAULT NULL,
  `UserName` varchar(35) DEFAULT NULL,
  `UserIp` varchar(12) DEFAULT NULL,
  `NavUser` varchar(3) DEFAULT NULL,
  `UserLog` tinytext DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `RecordMonth` varchar(3) DEFAULT NULL,
  `RecordYear` varchar(2) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_main`
--

CREATE TABLE `qw_main` (
  `uuid` char(36) DEFAULT NULL,
  `id` bigint(11) NOT NULL,
  `UserMenu` varchar(30) DEFAULT NULL,
  `DocSort` varchar(10) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `IndexPage` varchar(60) DEFAULT NULL,
  `IndexActive` varchar(3) DEFAULT NULL,
  `SubNavActive` varchar(3) DEFAULT NULL,
  `SubNav1` varchar(75) DEFAULT NULL,
  `SubNav2` varchar(75) DEFAULT NULL,
  `SubNav3` varchar(75) DEFAULT NULL,
  `SubNavIcon1` varchar(75) DEFAULT NULL,
  `SubNavIcon2` varchar(75) DEFAULT NULL,
  `SubNavIcon3` varchar(75) DEFAULT NULL,
  `MainIcon` varchar(100) DEFAULT NULL,
  `DocName` varchar(20) DEFAULT NULL,
  `DocLogo` varchar(35) DEFAULT NULL,
  `DocTitle` varchar(35) DEFAULT NULL,
  `DocHeader` varchar(40) DEFAULT NULL,
  `Menu` varchar(35) DEFAULT NULL,
  `ShowHeader` varchar(3) DEFAULT NULL,
  `RepeatHeader` varchar(30) DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `NavTop` varchar(60) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `MemberImage` varchar(50) NOT NULL,
  `Url` text DEFAULT NULL,
  `Action` varchar(60) DEFAULT NULL,
  `Target` varchar(10) DEFAULT NULL,
  `DocRow` varchar(15) DEFAULT NULL,
  `Font` text DEFAULT NULL,
  `Pt1` varchar(6) DEFAULT NULL,
  `Color_R` varchar(6) DEFAULT NULL,
  `Color_G` varchar(6) DEFAULT NULL,
  `Color_B` varchar(6) DEFAULT NULL,
  `X1` varchar(6) DEFAULT NULL,
  `Y1` varchar(6) DEFAULT NULL,
  `Img_X` varchar(4) DEFAULT NULL,
  `Img_Y` varchar(4) DEFAULT NULL,
  `Transp` varchar(4) DEFAULT NULL,
  `RecordDate` varchar(30) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `SecLevel` varchar(25) DEFAULT NULL,
  `subid` varchar(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_members`
--

CREATE TABLE `qw_members` (
  `uuid` char(36) DEFAULT NULL,
  `id` mediumint(8) NOT NULL,
  `subid` varchar(6) DEFAULT NULL,
  `UserView` varchar(30) NOT NULL,
  `SecLevel` varchar(25) DEFAULT NULL,
  `UserName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `SSN` varchar(255) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Bus_Id` varchar(6) DEFAULT NULL,
  `Bus_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `FCKeditor1` longtext DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `RecordAge` varchar(8) DEFAULT NULL,
  `ReviseBy` varchar(35) DEFAULT NULL,
  `ReviseDate` varchar(4) DEFAULT NULL,
  `ReviseTime` varchar(8) DEFAULT NULL,
  `CurrentDate` varchar(8) DEFAULT NULL,
  `CurrentTime` varchar(6) DEFAULT NULL,
  `TimeDiff` varchar(4) DEFAULT NULL,
  `TimeExecute` varchar(15) DEFAULT NULL,
  `TimeModify` varchar(15) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_mysetup`
--

CREATE TABLE `qw_mysetup` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `MyEIN` varchar(5) DEFAULT NULL,
  `subid` varchar(10) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `MyFirstName` varchar(35) DEFAULT NULL,
  `MyLastName` varchar(35) DEFAULT NULL,
  `MyTitle` varchar(35) DEFAULT NULL,
  `MyCompany` varchar(35) DEFAULT NULL,
  `MyAddress` varchar(45) DEFAULT NULL,
  `MyCity` varchar(35) DEFAULT NULL,
  `MyState` varchar(35) DEFAULT NULL,
  `MyZip` varchar(5) DEFAULT NULL,
  `MyPhone` varchar(15) DEFAULT NULL,
  `MyFax` varchar(15) DEFAULT NULL,
  `MyMobil` varchar(15) DEFAULT NULL,
  `MyEmail` varchar(100) DEFAULT NULL,
  `MyDomain` varchar(100) DEFAULT NULL,
  `MyDatabase` varchar(150) DEFAULT NULL,
  `MyUserName` varchar(100) DEFAULT NULL,
  `MyPassword` varchar(100) DEFAULT NULL,
  `MyHostName` varchar(300) DEFAULT NULL,
  `MyApplication` varchar(35) DEFAULT NULL,
  `MyRoll` varchar(10) DEFAULT NULL,
  `MyLogoStyle1` varchar(100) DEFAULT NULL,
  `MyLogoStyle2` varchar(100) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `Weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_payment`
--

CREATE TABLE `qw_payment` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(4) NOT NULL,
  `serial` varchar(12) DEFAULT NULL,
  `entrydate` date DEFAULT NULL,
  `entrytime` varchar(6) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `userip` varchar(60) DEFAULT NULL,
  `x_cus_id` varchar(6) DEFAULT NULL,
  `x_first_name` varchar(30) DEFAULT NULL,
  `x_last_name` varchar(30) DEFAULT NULL,
  `x_address` varchar(40) DEFAULT NULL,
  `x_city` varchar(30) DEFAULT NULL,
  `x_state` varchar(2) DEFAULT NULL,
  `x_zip` varchar(5) DEFAULT NULL,
  `x_email` varchar(150) DEFAULT NULL,
  `x_account` varchar(12) DEFAULT NULL,
  `x_amount` varchar(8) DEFAULT NULL,
  `approved` varchar(3) DEFAULT NULL,
  `adn_confirm` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_position`
--

CREATE TABLE `qw_position` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `x1` varchar(10) DEFAULT NULL,
  `y1` varchar(10) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_reports`
--

CREATE TABLE `qw_reports` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `CreatedBy` varchar(60) DEFAULT NULL,
  `UserName` varchar(35) DEFAULT NULL,
  `ReportName` varchar(60) DEFAULT NULL,
  `ReportTitle` varchar(60) DEFAULT NULL,
  `ReportTable` varchar(60) DEFAULT NULL,
  `ReportFields` varchar(250) DEFAULT NULL,
  `ReportFilter` text DEFAULT NULL,
  `FCKeditor1` tinytext DEFAULT NULL,
  `ReportWhere` varchar(100) DEFAULT NULL,
  `ReportEqual` varchar(25) DEFAULT NULL,
  `ReportSelect` varchar(100) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_role`
--

CREATE TABLE `qw_role` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `Role` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_settings`
--

CREATE TABLE `qw_settings` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `RecordNo` varchar(18) DEFAULT NULL,
  `qw_default` varchar(12) DEFAULT NULL,
  `qw_group` varchar(15) DEFAULT NULL,
  `qw_bus` varchar(6) DEFAULT NULL,
  `qw_job` varchar(6) DEFAULT NULL,
  `qw_year` varchar(12) DEFAULT NULL,
  `qw_where` varchar(50) DEFAULT NULL,
  `qw_date1` varchar(12) DEFAULT NULL,
  `qw_date2` varchar(12) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_tickets`
--

CREATE TABLE `qw_tickets` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `Sort` varchar(3) DEFAULT NULL,
  `Subject` varchar(250) DEFAULT NULL,
  `AssignedTo` varchar(100) DEFAULT NULL,
  `Category` varchar(150) DEFAULT NULL,
  `Description` tinytext DEFAULT NULL,
  `Priority` varchar(100) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `StartDate` varchar(25) DEFAULT NULL,
  `DueDate` varchar(25) DEFAULT NULL,
  `DateCompleted` varchar(50) DEFAULT NULL,
  `FCKeditor1` longtext DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_users`
--

CREATE TABLE `qw_users` (
  `uuid` char(36) DEFAULT NULL,
  `id` mediumint(8) NOT NULL,
  `subid` varchar(6) DEFAULT NULL,
  `RecordNo` varchar(12) DEFAULT NULL,
  `SecLevel` varchar(25) DEFAULT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `BusId` varchar(6) DEFAULT NULL,
  `BusName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `FCKeditor1` longtext DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `SSN` varchar(14) DEFAULT NULL,
  `UserView` varchar(30) DEFAULT NULL,
  `MenuActive` varchar(6) DEFAULT NULL,
  `AdminActive` varchar(6) DEFAULT NULL,
  `MenuUrl` varchar(150) DEFAULT NULL,
  `HomeUrl` varchar(100) DEFAULT NULL,
  `MenuList` varchar(255) DEFAULT NULL,
  `Background` varchar(255) DEFAULT NULL,
  `TabColor` varchar(100) DEFAULT NULL,
  `RecordDate` varchar(8) DEFAULT NULL,
  `RecordTime` varchar(8) DEFAULT NULL,
  `CreatedBy` varchar(35) DEFAULT NULL,
  `UpdatedBy` varchar(35) DEFAULT NULL,
  `UpdatedDate` varchar(35) DEFAULT NULL,
  `UpdatedTime` varchar(35) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_users_menus`
--

CREATE TABLE `qw_users_menus` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `Sort` varchar(3) DEFAULT NULL,
  `DocId` varchar(12) DEFAULT NULL,
  `RecordNo` varchar(12) DEFAULT NULL,
  `FirstName` varchar(35) DEFAULT NULL,
  `UserName` varchar(35) DEFAULT NULL,
  `UserMenu` varchar(20) DEFAULT NULL,
  `DocName` varchar(20) DEFAULT NULL,
  `Icon` varchar(150) DEFAULT NULL,
  `Selected` varchar(35) DEFAULT NULL,
  `Active` varchar(20) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qw_views`
--

CREATE TABLE `qw_views` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `Image` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qw_web`
--

CREATE TABLE `qw_web` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `serial` varchar(30) DEFAULT NULL,
  `SecLevel` varchar(3) DEFAULT NULL,
  `subid` varchar(4) DEFAULT NULL,
  `groupid` varchar(4) DEFAULT NULL,
  `groupname` varchar(40) DEFAULT NULL,
  `groupitem` varchar(255) DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `active` varchar(3) DEFAULT NULL,
  `doc_name` varchar(60) DEFAULT NULL,
  `doc_date` varchar(60) DEFAULT NULL,
  `doc_align` varchar(6) DEFAULT NULL,
  `doc_width` varchar(6) DEFAULT NULL,
  `doc_logo` varchar(35) DEFAULT NULL,
  `doc_header` text DEFAULT NULL,
  `doc_banner` text DEFAULT NULL,
  `doc_title` varchar(35) DEFAULT NULL,
  `doc_path` text DEFAULT NULL,
  `show_header` varchar(3) DEFAULT NULL,
  `show_banner` varchar(120) DEFAULT NULL,
  `header_width` varchar(6) DEFAULT NULL,
  `header_height` varchar(6) DEFAULT NULL,
  `file_include1` text DEFAULT NULL,
  `file_include2` text DEFAULT NULL,
  `file_include3` text DEFAULT NULL,
  `file_include4` text DEFAULT NULL,
  `file_include5` text DEFAULT NULL,
  `file_include6` text DEFAULT NULL,
  `file_include7` text DEFAULT NULL,
  `file_include8` text DEFAULT NULL,
  `file_include9` text DEFAULT NULL,
  `show_include1` varchar(6) DEFAULT NULL,
  `show_include2` varchar(6) DEFAULT NULL,
  `show_include3` varchar(6) DEFAULT NULL,
  `show_include4` varchar(6) DEFAULT NULL,
  `show_include5` varchar(6) DEFAULT NULL,
  `show_include6` varchar(6) DEFAULT NULL,
  `show_include7` varchar(6) DEFAULT NULL,
  `show_include8` varchar(6) DEFAULT NULL,
  `show_include9` varchar(6) DEFAULT NULL,
  `elm1` longtext DEFAULT NULL,
  `FCKeditor1` longtext DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `grouptab` text DEFAULT NULL,
  `img_temp` text DEFAULT NULL,
  `btn_width` varchar(6) DEFAULT NULL,
  `btn_height` varchar(6) DEFAULT NULL,
  `tab_width` varchar(6) DEFAULT NULL,
  `tab_height` varchar(6) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `url_active` varchar(3) DEFAULT NULL,
  `target` varchar(10) DEFAULT NULL,
  `placement` varchar(15) DEFAULT NULL,
  `font_name` varchar(60) DEFAULT NULL,
  `font_path` varchar(60) DEFAULT NULL,
  `pt` varchar(6) DEFAULT NULL,
  `color_name` varchar(30) DEFAULT NULL,
  `color_r` varchar(6) DEFAULT NULL,
  `color_g` varchar(6) DEFAULT NULL,
  `color_b` varchar(6) DEFAULT NULL,
  `color_hex` varchar(10) DEFAULT NULL,
  `x1` varchar(6) DEFAULT NULL,
  `y1` varchar(6) DEFAULT NULL,
  `img_x` varchar(4) DEFAULT NULL,
  `img_y` varchar(4) DEFAULT NULL,
  `transp` varchar(4) DEFAULT NULL,
  `slant` varchar(6) DEFAULT NULL,
  `entrydate` varchar(30) DEFAULT NULL,
  `enteredby` varchar(35) DEFAULT NULL,
  `updated` varchar(35) DEFAULT NULL,
  `updatedby` varchar(35) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `KeyValue` varchar(12) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `group_records` varchar(6) DEFAULT NULL,
  `NoRows1` varchar(10) DEFAULT NULL,
  `NoRows2` varchar(10) DEFAULT NULL,
  `NoRows3` varchar(10) DEFAULT NULL,
  `NoRows4` varchar(10) DEFAULT NULL,
  `ReportColor` varchar(150) DEFAULT NULL,
  `opacity` varchar(15) DEFAULT NULL,
  `FontSize` varchar(25) DEFAULT NULL,
  `FontColor` varchar(16) DEFAULT NULL,
  `Height` varchar(6) DEFAULT NULL,
  `AddURL` varchar(200) DEFAULT NULL,
  `EditURL` varchar(200) DEFAULT NULL,
  `DeleteURL` varchar(200) DEFAULT NULL,
  `ReportName` varchar(35) DEFAULT NULL,
  `ReportTitle` varchar(60) DEFAULT NULL,
  `ReportHeader` varchar(1000) DEFAULT NULL,
  `ReportTable` varchar(30) DEFAULT NULL,
  `add_where` varchar(60) DEFAULT NULL,
  `where_column` varchar(60) DEFAULT NULL,
  `operand` varchar(35) DEFAULT NULL,
  `where_value` varchar(60) DEFAULT NULL,
  `ReportFilter` text DEFAULT NULL,
  `date_from` varchar(65) DEFAULT NULL,
  `date_to` varchar(65) DEFAULT NULL,
  `union_tables` varchar(12) DEFAULT NULL,
  `RecordNo` varchar(15) DEFAULT NULL,
  `ReportOpenURL` varchar(200) DEFAULT NULL,
  `date_range` varchar(3) DEFAULT NULL,
  `ReportCustomURL` varchar(150) DEFAULT NULL,
  `PrintToPdf` varchar(6) DEFAULT NULL,
  `PdfColumns` varchar(100) DEFAULT NULL,
  `PrintOrientation` varchar(100) DEFAULT NULL,
  `PrintPaper` varchar(100) DEFAULT NULL,
  `PositionDom` varchar(250) DEFAULT NULL,
  `ActiveTab` varchar(20) DEFAULT NULL,
  `RecordDate` varchar(12) DEFAULT NULL,
  `RecordTime` varchar(12) DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `UpdatedDate` varchar(12) DEFAULT NULL,
  `UpdatedTime` varchar(12) DEFAULT NULL,
  `UpdatedBy` varchar(30) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `FCKeditor1` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `width` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports_fields`
--

CREATE TABLE `reports_fields` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SubId` varchar(12) DEFAULT NULL,
  `RecordNo` varchar(12) DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `Active` varchar(20) DEFAULT NULL,
  `Checked` varchar(15) DEFAULT NULL,
  `ReportTable` varchar(35) DEFAULT NULL,
  `FieldName` varchar(35) DEFAULT NULL,
  `LabelHead` varchar(35) DEFAULT NULL,
  `LabelFoot` varchar(35) DEFAULT NULL,
  `FieldAlign` varchar(12) DEFAULT NULL,
  `RowColor` varchar(150) DEFAULT NULL,
  `opacity` varchar(15) DEFAULT NULL,
  `RowSumCK` varchar(20) DEFAULT NULL,
  `RowSumNO` varchar(10) DEFAULT NULL,
  `RowPDF` varchar(20) DEFAULT NULL,
  `pdf_columns` varchar(150) DEFAULT NULL,
  `search_columns` varchar(150) DEFAULT NULL,
  `FieldWidth` varchar(12) DEFAULT NULL,
  `FieldValue` varchar(150) DEFAULT NULL,
  `FieldId` varchar(150) DEFAULT NULL,
  `RecordDate` varchar(12) DEFAULT NULL,
  `RecordTime` varchar(12) DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `UpdatedDate` varchar(12) DEFAULT NULL,
  `UpdatedTime` varchar(12) DEFAULT NULL,
  `UpdatedBy` varchar(30) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports_toolbar`
--

CREATE TABLE `reports_toolbar` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `report_id` varchar(16) DEFAULT NULL,
  `sort` varchar(4) DEFAULT NULL,
  `report_table` varchar(35) DEFAULT NULL,
  `action_name` varchar(250) DEFAULT NULL,
  `action_url` text DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `icon_name` varchar(65) DEFAULT NULL,
  `icon_color` varchar(24) DEFAULT NULL,
  `active` varchar(16) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `ST` varchar(6) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `RecordNo` varchar(12) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state_ids`
--

CREATE TABLE `state_ids` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issued` timestamp NULL DEFAULT NULL,
  `sex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eyes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `RecordNo` varchar(20) DEFAULT NULL,
  `Test1` varchar(12) DEFAULT NULL,
  `Test2` varchar(20) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `text_sms_carriers`
--

CREATE TABLE `text_sms_carriers` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `TextCarrier` varchar(60) DEFAULT NULL,
  `SMSAddress` varchar(75) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `record_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_interval` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_end_date` timestamp NULL DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_datetime` timestamp NULL DEFAULT NULL,
  `end_datetime` timestamp NULL DEFAULT NULL,
  `break` float DEFAULT NULL,
  `hours` float DEFAULT NULL,
  `hourly_rate` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `daily_rate` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `weekly_rate` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `sub_rate` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `pay_amount` double DEFAULT NULL,
  `adjustment_amount` double DEFAULT NULL,
  `expenses_total` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `average` double DEFAULT NULL,
  `memo` text CHARACTER SET utf8 DEFAULT NULL,
  `extras` text CHARACTER SET utf8 DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `daily_log_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pay_rate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `costcode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gl_master_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `paid_at_copy` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets_code`
--

CREATE TABLE `timesheets_code` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `Year` varchar(12) DEFAULT NULL,
  `Month` varchar(20) DEFAULT NULL,
  `Week` varchar(60) DEFAULT NULL,
  `Day` varchar(6) DEFAULT NULL,
  `YearM` varchar(60) DEFAULT NULL,
  `YearMW` varchar(4) DEFAULT NULL,
  `YearMWD` varchar(35) DEFAULT NULL,
  `WkEnd` varchar(8) DEFAULT NULL,
  `SpellWeek` varchar(12) DEFAULT NULL,
  `SpellMonth` varchar(14) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_members`
--

CREATE TABLE `web_members` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `subid` varchar(4) DEFAULT NULL,
  `StageName` varchar(35) DEFAULT NULL,
  `SerialNo` varchar(30) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `groupid` int(4) DEFAULT NULL,
  `groupname` varchar(40) DEFAULT NULL,
  `groupitem` varchar(255) DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `doc_name` varchar(60) DEFAULT NULL,
  `doc_date` varchar(60) DEFAULT NULL,
  `doc_align` varchar(6) DEFAULT NULL,
  `doc_width` varchar(6) DEFAULT NULL,
  `doc_logo` varchar(35) DEFAULT NULL,
  `doc_header` text DEFAULT NULL,
  `doc_banner` text DEFAULT NULL,
  `doc_title` varchar(35) DEFAULT NULL,
  `doc_path` text DEFAULT NULL,
  `show_header` varchar(3) DEFAULT NULL,
  `show_banner` varchar(120) DEFAULT NULL,
  `header_width` varchar(6) DEFAULT NULL,
  `header_height` varchar(6) DEFAULT NULL,
  `file_include1` text DEFAULT NULL,
  `file_include2` text DEFAULT NULL,
  `file_include3` text DEFAULT NULL,
  `file_include4` text DEFAULT NULL,
  `file_include5` text DEFAULT NULL,
  `file_include6` text DEFAULT NULL,
  `file_include7` text DEFAULT NULL,
  `file_include8` text DEFAULT NULL,
  `file_include9` text DEFAULT NULL,
  `show_include1` varchar(6) DEFAULT NULL,
  `show_include2` varchar(6) DEFAULT NULL,
  `show_include3` varchar(6) DEFAULT NULL,
  `show_include4` varchar(6) DEFAULT NULL,
  `show_include5` varchar(6) DEFAULT NULL,
  `show_include6` varchar(6) DEFAULT NULL,
  `show_include7` varchar(6) DEFAULT NULL,
  `show_include8` varchar(6) DEFAULT NULL,
  `show_include9` varchar(6) DEFAULT NULL,
  `elm1` longtext DEFAULT NULL,
  `FCKeditor1` longtext DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `grouptab` text DEFAULT NULL,
  `img_temp` text DEFAULT NULL,
  `btn_width` varchar(6) DEFAULT NULL,
  `btn_height` varchar(6) DEFAULT NULL,
  `tab_width` varchar(6) DEFAULT NULL,
  `tab_height` varchar(6) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `target` varchar(10) DEFAULT NULL,
  `placement` varchar(15) DEFAULT NULL,
  `font_name` varchar(60) DEFAULT NULL,
  `font_path` varchar(60) DEFAULT NULL,
  `pt` varchar(6) DEFAULT NULL,
  `color_name` varchar(30) DEFAULT NULL,
  `color_r` varchar(6) DEFAULT NULL,
  `color_g` varchar(6) DEFAULT NULL,
  `color_b` varchar(6) DEFAULT NULL,
  `color_hex` varchar(10) DEFAULT NULL,
  `x1` varchar(6) DEFAULT NULL,
  `y1` varchar(6) DEFAULT NULL,
  `img_x` varchar(4) DEFAULT NULL,
  `img_y` varchar(4) DEFAULT NULL,
  `transp` varchar(4) DEFAULT NULL,
  `slant` varchar(6) DEFAULT NULL,
  `entrydate` varchar(30) DEFAULT NULL,
  `RecordDate` varchar(50) NOT NULL,
  `enteredby` varchar(35) DEFAULT NULL,
  `updated` varchar(35) DEFAULT NULL,
  `updatedby` varchar(35) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  `UserIp` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_music`
--

CREATE TABLE `web_music` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `subid` int(6) DEFAULT NULL,
  `UserId` varchar(12) DEFAULT NULL,
  `UserIp` varchar(60) DEFAULT NULL,
  `FirstName` varchar(35) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `StageName` varchar(35) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `SongName` varchar(20) DEFAULT NULL,
  `SongTitle` varchar(100) DEFAULT NULL,
  `MusicType` varchar(100) DEFAULT NULL,
  `FileName` varchar(150) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_music_type`
--

CREATE TABLE `web_music_type` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `EnteredBy` varchar(70) DEFAULT NULL,
  `MusicType` varchar(100) DEFAULT NULL,
  `Active` varchar(6) DEFAULT NULL,
  `weight` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_orders`
--

CREATE TABLE `web_orders` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `SerialNo` varchar(14) DEFAULT NULL,
  `OrderNo` varchar(14) DEFAULT NULL,
  `MemberId` varchar(14) DEFAULT NULL,
  `MemberType` varchar(40) DEFAULT NULL,
  `ExpireDate` varchar(14) DEFAULT NULL,
  `FirstName` varchar(40) DEFAULT NULL,
  `LastName` varchar(40) DEFAULT NULL,
  `Business` varchar(40) DEFAULT NULL,
  `UserName` varchar(35) DEFAULT NULL,
  `UserIp` varchar(24) DEFAULT NULL,
  `PurchaseDate` varchar(14) DEFAULT NULL,
  `InvoiceNo` varchar(14) DEFAULT NULL,
  `CartNo` varchar(10) DEFAULT NULL,
  `Category` varchar(15) DEFAULT NULL,
  `Item` varchar(150) DEFAULT NULL,
  `Quantity` varchar(6) DEFAULT NULL,
  `Price` varchar(15) DEFAULT NULL,
  `Total` varchar(15) DEFAULT NULL,
  `Description` varchar(40) DEFAULT NULL,
  `RecordDate` varchar(12) DEFAULT NULL,
  `RecordTime` varchar(12) DEFAULT NULL,
  `weight` varchar(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_orders_temp`
--

CREATE TABLE `web_orders_temp` (
  `uuid` char(36) DEFAULT NULL,
  `id` int(6) NOT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `SerialNo` varchar(12) DEFAULT NULL,
  `OrderNo` varchar(14) DEFAULT NULL,
  `MemberId` varchar(14) DEFAULT NULL,
  `MemberType` varchar(40) DEFAULT NULL,
  `ExpireDate` varchar(14) DEFAULT NULL,
  `FirstName` varchar(40) DEFAULT NULL,
  `LastName` varchar(40) DEFAULT NULL,
  `Business` varchar(40) DEFAULT NULL,
  `UserName` varchar(35) DEFAULT NULL,
  `UserIp` varchar(24) DEFAULT NULL,
  `PurchaseDate` varchar(12) DEFAULT NULL,
  `InvoiceNo` varchar(14) DEFAULT NULL,
  `CartNo` varchar(10) DEFAULT NULL,
  `Category` varchar(15) DEFAULT NULL,
  `Item` varchar(150) DEFAULT NULL,
  `Quantity` varchar(6) DEFAULT NULL,
  `Price` varchar(15) DEFAULT NULL,
  `Total` varchar(15) DEFAULT NULL,
  `Description` varchar(40) DEFAULT NULL,
  `RecordDate` varchar(12) DEFAULT NULL,
  `RecordTime` varchar(12) DEFAULT NULL,
  `weight` varchar(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `addressables`
--
ALTER TABLE `addressables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_detail`
--
ALTER TABLE `ap_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unid` (`unid`);

--
-- Indexes for table `ap_master`
--
ALTER TABLE `ap_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `BusId` (`BusId`);

--
-- Indexes for table `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autos_items`
--
ALTER TABLE `autos_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autos_mail`
--
ALTER TABLE `autos_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autos_options`
--
ALTER TABLE `autos_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autos_settings`
--
ALTER TABLE `autos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busDirectory1`
--
ALTER TABLE `busDirectory1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD KEY `id` (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- Indexes for table `costcodes`
--
ALTER TABLE `costcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costitems`
--
ALTER TABLE `costitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costleads`
--
ALTER TABLE `costleads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costprice`
--
ALTER TABLE `costprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costquotes`
--
ALTER TABLE `costquotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_logs`
--
ALTER TABLE `daily_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory_group1`
--
ALTER TABLE `directory_group1`
  ADD UNIQUE KEY `country_code` (`id`);

--
-- Indexes for table `directory_group2`
--
ALTER TABLE `directory_group2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory_group3`
--
ALTER TABLE `directory_group3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory_popup`
--
ALTER TABLE `directory_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FirstName_LastName` (`first_name`,`last_name`),
  ADD KEY `employee_group_id` (`leader_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `employee_groups`
--
ALTER TABLE `employee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erosion`
--
ALTER TABLE `erosion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RecordNo_TrackingNO` (`RecordNo`,`TrackingNO`);

--
-- Indexes for table `erosion_items`
--
ALTER TABLE `erosion_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EstId` (`EstId`),
  ADD KEY `CostDiv` (`CostDiv`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RecordNo_TrackingNO` (`RecordNo`,`TrackingNO`);

--
-- Indexes for table `estimates_details`
--
ALTER TABLE `estimates_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `est_id` (`est_id`),
  ADD KEY `est_item_id` (`est_item_id`);

--
-- Indexes for table `estimates_items`
--
ALTER TABLE `estimates_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EstId` (`EstId`),
  ADD KEY `CostDiv` (`CostDiv`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gl_master_id` (`gl_master_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gl_detail`
--
ALTER TABLE `gl_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RecordNo` (`RecordNo`);

--
-- Indexes for table `gl_master`
--
ALTER TABLE `gl_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RecordNo` (`RecordNo`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices_items`
--
ALTER TABLE `invoices_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_temp`
--
ALTER TABLE `membership_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old_with_commas`
--
ALTER TABLE `old_with_commas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_rates`
--
ALTER TABLE `pay_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_rank`
--
ALTER TABLE `photo_rank`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_action`
--
ALTER TABLE `qw_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_definitions`
--
ALTER TABLE `qw_definitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_forms`
--
ALTER TABLE `qw_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_groupitems`
--
ALTER TABLE `qw_groupitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_groups`
--
ALTER TABLE `qw_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_icons`
--
ALTER TABLE `qw_icons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `qw_library`
--
ALTER TABLE `qw_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `placement` (`placement`);

--
-- Indexes for table `qw_loghits`
--
ALTER TABLE `qw_loghits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_main`
--
ALTER TABLE `qw_main`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DocName` (`DocName`);

--
-- Indexes for table `qw_members`
--
ALTER TABLE `qw_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`UserName`),
  ADD UNIQUE KEY `ssn` (`SSN`);

--
-- Indexes for table `qw_mysetup`
--
ALTER TABLE `qw_mysetup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_payment`
--
ALTER TABLE `qw_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_position`
--
ALTER TABLE `qw_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_reports`
--
ALTER TABLE `qw_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_role`
--
ALTER TABLE `qw_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`Role`);
ALTER TABLE `qw_role` ADD FULLTEXT KEY `password` (`Password`);

--
-- Indexes for table `qw_settings`
--
ALTER TABLE `qw_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_tickets`
--
ALTER TABLE `qw_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_users`
--
ALTER TABLE `qw_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`UserName`);

--
-- Indexes for table `qw_users_menus`
--
ALTER TABLE `qw_users_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_views`
--
ALTER TABLE `qw_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qw_web`
--
ALTER TABLE `qw_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports_fields`
--
ALTER TABLE `reports_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports_toolbar`
--
ALTER TABLE `reports_toolbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_ids`
--
ALTER TABLE `state_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_sms_carriers`
--
ALTER TABLE `text_sms_carriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmpId` (`employee_id`);

--
-- Indexes for table `timesheets_code`
--
ALTER TABLE `timesheets_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_members`
--
ALTER TABLE `web_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_music`
--
ALTER TABLE `web_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_music_type`
--
ALTER TABLE `web_music_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_orders`
--
ALTER TABLE `web_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_orders_temp`
--
ALTER TABLE `web_orders_temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addressables`
--
ALTER TABLE `addressables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ap_detail`
--
ALTER TABLE `ap_detail`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ap_master`
--
ALTER TABLE `ap_master`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autos`
--
ALTER TABLE `autos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autos_items`
--
ALTER TABLE `autos_items`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autos_mail`
--
ALTER TABLE `autos_mail`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autos_options`
--
ALTER TABLE `autos_options`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autos_settings`
--
ALTER TABLE `autos_settings`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `busDirectory1`
--
ALTER TABLE `busDirectory1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costcodes`
--
ALTER TABLE `costcodes`
  MODIFY `id` bigint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costitems`
--
ALTER TABLE `costitems`
  MODIFY `id` bigint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costleads`
--
ALTER TABLE `costleads`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costprice`
--
ALTER TABLE `costprice`
  MODIFY `id` bigint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costquotes`
--
ALTER TABLE `costquotes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_logs`
--
ALTER TABLE `daily_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directory_popup`
--
ALTER TABLE `directory_popup`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_groups`
--
ALTER TABLE `employee_groups`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erosion`
--
ALTER TABLE `erosion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `erosion_items`
--
ALTER TABLE `erosion_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates_details`
--
ALTER TABLE `estimates_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates_items`
--
ALTER TABLE `estimates_items`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gl_detail`
--
ALTER TABLE `gl_detail`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gl_master`
--
ALTER TABLE `gl_master`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices_items`
--
ALTER TABLE `invoices_items`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_temp`
--
ALTER TABLE `membership_temp`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_with_commas`
--
ALTER TABLE `old_with_commas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_rates`
--
ALTER TABLE `pay_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_rank`
--
ALTER TABLE `photo_rank`
  MODIFY `rid` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_action`
--
ALTER TABLE `qw_action`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_definitions`
--
ALTER TABLE `qw_definitions`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_forms`
--
ALTER TABLE `qw_forms`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_groupitems`
--
ALTER TABLE `qw_groupitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_groups`
--
ALTER TABLE `qw_groups`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_icons`
--
ALTER TABLE `qw_icons`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_library`
--
ALTER TABLE `qw_library`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_loghits`
--
ALTER TABLE `qw_loghits`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_main`
--
ALTER TABLE `qw_main`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_members`
--
ALTER TABLE `qw_members`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_mysetup`
--
ALTER TABLE `qw_mysetup`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_payment`
--
ALTER TABLE `qw_payment`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_position`
--
ALTER TABLE `qw_position`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_reports`
--
ALTER TABLE `qw_reports`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_role`
--
ALTER TABLE `qw_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_settings`
--
ALTER TABLE `qw_settings`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_tickets`
--
ALTER TABLE `qw_tickets`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_users`
--
ALTER TABLE `qw_users`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_users_menus`
--
ALTER TABLE `qw_users_menus`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_views`
--
ALTER TABLE `qw_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qw_web`
--
ALTER TABLE `qw_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_fields`
--
ALTER TABLE `reports_fields`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_toolbar`
--
ALTER TABLE `reports_toolbar`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state_ids`
--
ALTER TABLE `state_ids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text_sms_carriers`
--
ALTER TABLE `text_sms_carriers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets_code`
--
ALTER TABLE `timesheets_code`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_members`
--
ALTER TABLE `web_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_music`
--
ALTER TABLE `web_music`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_music_type`
--
ALTER TABLE `web_music_type`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_orders`
--
ALTER TABLE `web_orders`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_orders_temp`
--
ALTER TABLE `web_orders_temp`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
