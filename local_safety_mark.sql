-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 01:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_safety_mark`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_heads`
--

CREATE TABLE `account_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` double(100,2) NOT NULL DEFAULT 0.00,
  `account_head_type_id` int(11) NOT NULL,
  `account_head_sub_type_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_heads`
--

INSERT INTO `account_heads` (`id`, `employee_id`, `client_id`, `product_id`, `name`, `account_code`, `opening_balance`, `account_head_type_id`, `account_head_sub_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, 'Kamrul Islam', '10001', 0.00, 4, NULL, 1, '2023-05-29 17:31:48', '2023-05-29 17:31:48'),
(2, NULL, NULL, 1, '3\" Sliding outer top', '10002', 0.00, 5, NULL, 1, '2023-05-29 17:39:40', '2023-05-29 17:39:40'),
(3, NULL, NULL, 2, '3\" Sliding outer Low Bottom', '10003', 0.00, 5, NULL, 1, '2023-05-29 17:40:07', '2023-05-29 17:40:07'),
(4, NULL, NULL, NULL, 'Cash In Hand', '10004', 100000.00, 1, 2, 1, '2023-05-29 18:00:26', '2023-05-29 18:00:26'),
(5, NULL, NULL, NULL, 'Brac Bank', '10005', 200000.00, 1, 2, 1, '2023-05-29 18:00:56', '2023-05-29 18:00:56'),
(6, NULL, 2, NULL, 'Baitul Islam', '10006', 0.00, 5, NULL, 1, '2023-05-29 18:11:02', '2023-05-29 18:11:02'),
(7, NULL, 3, NULL, 'Arafat', '10007', 0.00, 5, NULL, 1, '2023-05-29 18:13:52', '2023-05-29 18:13:52'),
(8, NULL, NULL, NULL, 'Material Cost', '10008', 0.00, 4, NULL, 1, '2023-05-29 20:11:47', '2023-05-29 20:11:47'),
(9, NULL, NULL, NULL, 'Installation Cost', '10009', 0.00, 4, NULL, 1, '2023-05-29 20:12:29', '2023-05-29 20:12:29'),
(10, NULL, NULL, NULL, 'Daily Conveyanvce', '10010', 0.00, 4, NULL, 1, '2023-05-29 20:13:50', '2023-05-29 20:13:50'),
(11, NULL, NULL, NULL, 'Daily Conveyance', '10011', 0.00, 4, NULL, 1, '2023-05-29 20:14:11', '2023-05-29 20:14:11'),
(12, NULL, NULL, NULL, 'Mahakhai Interior Project', '10012', 0.00, 5, NULL, 1, '2023-05-29 20:15:02', '2023-05-29 20:15:02'),
(13, NULL, NULL, 3, 'Wooden Wheel', '10013', 0.00, 5, NULL, 1, '2023-05-30 06:09:56', '2023-05-30 06:09:56'),
(14, NULL, 4, NULL, 'Yadiznn China', '10014', 0.00, 4, NULL, 1, '2023-05-30 06:13:05', '2023-05-30 06:13:05'),
(15, NULL, NULL, 4, 'Product 4', '10015', 0.00, 5, NULL, 1, '2023-06-05 09:13:05', '2023-06-05 09:13:05'),
(16, NULL, 5, NULL, 'Khalil Shah', '10016', 0.00, 4, NULL, 1, '2023-06-05 09:16:33', '2023-06-05 09:16:33'),
(17, NULL, NULL, 1, 'Product 1', '10017', 0.00, 5, NULL, 1, '2023-06-05 10:14:19', '2023-06-05 10:14:19'),
(18, NULL, NULL, 2, 'IPS', '10018', 0.00, 5, NULL, 1, '2023-06-05 10:25:18', '2023-06-05 10:25:18'),
(19, NULL, NULL, 3, 'M 1', '10019', 0.00, 5, NULL, 1, '2023-06-05 10:26:04', '2023-06-05 10:26:04'),
(20, NULL, NULL, 4, 'M 2', '10020', 0.00, 5, NULL, 1, '2023-06-05 10:26:17', '2023-06-05 10:26:17'),
(21, NULL, NULL, 5, 'M 3', '10021', 0.00, 5, NULL, 1, '2023-06-05 10:26:30', '2023-06-05 10:26:30'),
(22, NULL, NULL, 6, 'UPS 123456', '10022', 0.00, 5, NULL, 1, '2023-06-06 06:08:40', '2023-06-06 06:08:40'),
(23, NULL, NULL, 13, 'UPS-M-00000005', '10023', 0.00, 5, NULL, 1, '2023-06-07 07:15:14', '2023-06-07 07:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `account_head_sub_types`
--

CREATE TABLE `account_head_sub_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_head_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_head_sub_types`
--

INSERT INTO `account_head_sub_types` (`id`, `account_head_type_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fixed Asset', '2023-02-22 04:58:30', '2023-02-22 04:58:30'),
(2, 1, 'Current Asset', '2023-02-22 04:58:30', '2023-02-22 04:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `account_head_types`
--

CREATE TABLE `account_head_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_head_types`
--

INSERT INTO `account_head_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Asset', '2023-02-22 04:56:48', '2023-02-22 04:56:48'),
(2, 'Liability', '2023-02-22 04:56:48', '2023-02-22 04:56:48'),
(3, 'Capital', '2023-02-22 04:56:48', '2023-02-22 04:56:48'),
(4, 'Expense', '2023-02-22 04:56:48', '2023-02-22 04:56:48'),
(5, 'Income', '2023-02-22 04:56:48', '2023-02-22 04:56:48'),
(6, 'Retained Earnings', '2023-02-22 04:56:48', '2023-02-22 04:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `balance_transfers`
--

CREATE TABLE `balance_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `financial_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `voucher_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=Bank To Cash; 2=Cash To Bank; 3=Bank To Bank,4=Cash to Cash',
  `source_account_head_id` bigint(20) UNSIGNED NOT NULL,
  `target_account_head_id` bigint(20) UNSIGNED NOT NULL,
  `source_cheque_date` date DEFAULT NULL,
  `source_cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_cheque_date` date DEFAULT NULL,
  `target_cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(100,2) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'Customer = 1, Supplier = 2',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `opening_due` double(20,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `type`, `name`, `id_no`, `designation`, `mobile`, `alternative_mobile`, `owner_name`, `email`, `address`, `date_of_birth`, `opening_due`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nur Hossain', '101', NULL, '01796406979', NULL, 'KI Limited', NULL, 'Mouchak,Dhaka', NULL, 0.00, 1, '2023-05-29 17:31:48', '2023-05-29 17:31:48'),
(2, 1, 'Baitul Islam', '102', NULL, '01765456567', NULL, NULL, NULL, 'Keraniganj', '1970-01-01', 0.00, 1, '2023-05-29 18:11:02', '2023-05-29 18:11:02'),
(3, 1, 'Arafat', '103', NULL, '01765433443', NULL, NULL, 'arafat@gmail.com', 'Baridhara', '1970-01-01', 0.00, 1, '2023-05-29 18:13:52', '2023-05-29 18:13:52'),
(4, 2, 'Yadiznn China', '104', NULL, '87654345434', NULL, 'Asif Talukdar', NULL, 'China', NULL, 0.00, 1, '2023-05-30 06:13:05', '2023-06-05 09:16:14'),
(5, 2, 'Khalil Shah', '105', NULL, '01726979563', NULL, '2aIT', NULL, 'Mohanagar,Rampura,Dhaka', NULL, 0.00, 1, '2023-06-05 09:16:33', '2023-06-05 09:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `config_products`
--

CREATE TABLE `config_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_products`
--

INSERT INTO `config_products` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 2, '2023-06-07 05:47:22', '2023-06-07 05:47:22'),
(5, 1, '2023-06-07 05:53:04', '2023-06-07 05:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `config_product_details`
--

CREATE TABLE `config_product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_product_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `loss_quantity_percent` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_product_details`
--

INSERT INTO `config_product_details` (`id`, `config_product_id`, `product_id`, `quantity`, `loss_quantity_percent`, `created_at`, `updated_at`) VALUES
(12, 4, 3, 1.00, 0.50, '2023-06-07 05:47:22', '2023-06-07 05:47:22'),
(13, 4, 4, 2.00, 1.00, '2023-06-07 05:47:22', '2023-06-07 05:47:22'),
(14, 4, 5, 2.00, 1.00, '2023-06-07 05:47:22', '2023-06-07 05:47:22'),
(15, 4, 2, 1.00, 0.50, '2023-06-07 05:47:22', '2023-06-07 05:47:22'),
(16, 5, 6, 2.00, 0.50, '2023-06-07 05:53:04', '2023-06-07 05:53:04'),
(17, 5, 1, 2.00, 0.50, '2023-06-07 05:53:04', '2023-06-07 05:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=kent customer, 2=dealer customer, 3=distributor customer',
  `customer_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_filter` tinyint(4) DEFAULT NULL,
  `reference_area_id` bigint(20) DEFAULT NULL,
  `customer_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Account', 1, '2023-03-11 10:01:59', '2023-03-11 10:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cash', 1, '2023-03-11 10:02:21', '2023-03-11 10:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_type_id` bigint(20) DEFAULT NULL COMMENT '1=employee,2=third PArty',
  `department_id` bigint(20) DEFAULT NULL,
  `employee_type_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `company_branch_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `section_id` bigint(11) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `blood_group_id` bigint(20) DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmation_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `marital_status` tinyint(4) DEFAULT NULL,
  `emergency_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` double(20,2) DEFAULT NULL,
  `others_deduct` double(20,2) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `house_rent` double(20,2) DEFAULT NULL,
  `travel` double(20,2) DEFAULT NULL,
  `medical` double(20,2) DEFAULT NULL,
  `gross_salary` double(20,2) DEFAULT NULL,
  `previous_salary` double(20,2) DEFAULT NULL,
  `opening_balance` double(20,2) DEFAULT 0.00,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `education_qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_type` tinyint(4) DEFAULT NULL,
  `reporting_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` tinyint(255) DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `card_type_id`, `department_id`, `employee_type_id`, `zone_id`, `company_branch_id`, `field_id`, `section_id`, `designation_id`, `blood_group_id`, `id_no`, `joining_date`, `confirmation_date`, `name`, `employee_image`, `address`, `father_name`, `mother_name`, `mobile`, `nid`, `email`, `gender`, `marital_status`, `emergency_contact`, `alternative_mobile`, `current_address`, `permanent_address`, `date_of_birth`, `issue_date`, `expire_date`, `nid_photo`, `signature_photo`, `employee_photo`, `bank_name`, `bank_branch`, `bank_account`, `basic_salary`, `others_deduct`, `tax`, `house_rent`, `travel`, `medical`, `gross_salary`, `previous_salary`, `opening_balance`, `remarks`, `sort`, `created_at`, `updated_at`, `education_qualification`, `employee_type`, `reporting_to`, `religion`, `cv`, `user_id`, `status`) VALUES
(3, NULL, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, '0002', '2023-03-14 00:00:00', '2023-03-22 00:00:00', 'Sami Un Navi', NULL, NULL, NULL, NULL, '01765513111', '232435465768', 'samiunnavi@gmail.com', 1, 1, NULL, NULL, 'symoli, Dhaka', 'Ashiadari Monohorganj', '2023-03-30 00:00:00', NULL, NULL, NULL, NULL, 'uploads/employee/ba71ceee-c22d-11ed-93a7-847beb205fc8.jpg', NULL, NULL, '123456789012', NULL, NULL, NULL, NULL, NULL, NULL, 26000.00, 22000.00, 0.00, NULL, NULL, '2023-03-14 06:01:57', '2023-03-14 06:01:57', 'Bsc in cse', NULL, 'Asadul Kabir', NULL, 'uploads/employee/ba8637bc-c22d-11ed-a881-847beb205fc8.pdf', NULL, 1),
(4, NULL, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, '0002', '2023-03-14 00:00:00', '2023-03-15 00:00:00', 'Tarek Habib', NULL, NULL, 'Md. Shahjahan Bhuiyan', 'Shahan Ara Jahan', '01765511122', '32354656787889', 'habibtarek@gmail.com', 1, 1, NULL, NULL, 'symoli, Dhaka', 'Ashiadari Monohorganj', '2023-03-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2343545676', NULL, NULL, NULL, NULL, NULL, NULL, 26000.00, 22000.00, 0.00, NULL, NULL, '2023-03-14 11:27:42', '2023-03-14 11:27:42', 'Bsc in cse', NULL, 'Asadul Kabir', NULL, 'uploads/employee/3c19ec60-c25b-11ed-8195-847beb205fc8.pdf', NULL, 1),
(5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0003', '2023-01-02 00:00:00', '2023-05-26 00:00:00', 'Baitul', NULL, NULL, 'Anwar Talukdar', 'Rabeya Begum', '01796406979', '12345678', 'baitul@gmail.com', 1, 1, NULL, NULL, 'Mohammadpur', 'Barisal', '2022-04-01 00:00:00', NULL, NULL, NULL, NULL, 'uploads/employee/a02fc912-fe43-11ed-ae6f-141877a6df51.jpg', NULL, NULL, '12345678', NULL, NULL, NULL, NULL, NULL, NULL, 25000.00, 20000.00, 0.00, NULL, NULL, '2023-05-29 17:09:52', '2023-05-29 17:09:52', 'BSC', NULL, 'Zaman', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `department_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Horipur Gas Field', 1, '2022-09-12 06:46:53', '2022-09-13 03:04:56'),
(2, 3, 'Kailashtilla Gas Field', 1, '2022-09-12 06:47:12', '2022-09-13 03:05:09'),
(3, 3, 'Rashidpur Gas Field', 1, '2022-09-12 06:47:25', '2022-09-14 04:28:28'),
(4, 3, 'Beanibazar Gas Field', 1, '2022-09-12 06:47:32', '2022-09-13 03:05:28'),
(5, 3, 'Kailashtilla MSTE Plant', 1, '2022-09-12 06:47:41', '2022-09-13 03:05:36'),
(6, 9, 'Rashidpur Condensate Fractionation Plant', 1, '2022-09-12 06:47:54', '2022-09-13 03:06:41'),
(7, 9, 'Rashidpur 4000 BPD CFP', 1, '2022-09-12 06:48:03', '2022-09-13 03:06:50'),
(58, 2, 'Alid', 1, '2022-12-08 08:55:20', '2022-12-08 08:55:20'),
(59, 2, 'Hello', 1, '2022-12-08 12:46:30', '2022-12-08 12:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `finished_goods`
--

CREATE TABLE `finished_goods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double(50,2) NOT NULL,
  `unit_price` double(50,2) NOT NULL,
  `selling_price` double(50,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finished_goods`
--

INSERT INTO `finished_goods` (`id`, `name`, `config_product_id`, `category_id`, `quantity`, `unit_price`, `selling_price`, `date`, `created_at`, `updated_at`) VALUES
(13, 'UPS-M-00000005', 5, 1, 1.00, 700.00, 1000.00, '2023-06-07', '2023-06-07 07:15:14', '2023-06-07 07:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `finished_goods_row_materials`
--

CREATE TABLE `finished_goods_row_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `finished_goods_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `per_unit_quantity` double(50,2) NOT NULL,
  `consumption_quantity` double(50,2) NOT NULL,
  `consumption_unit_price` double(50,2) NOT NULL,
  `remain_quantity` double(50,2) NOT NULL,
  `consumption_loss_quantity_percent` double(10,2) NOT NULL,
  `consumption_loss_quantity` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finished_goods_row_materials`
--

INSERT INTO `finished_goods_row_materials` (`id`, `finished_goods_id`, `product_id`, `inventory_id`, `per_unit_quantity`, `consumption_quantity`, `consumption_unit_price`, `remain_quantity`, `consumption_loss_quantity_percent`, `consumption_loss_quantity`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 2.00, 2.00, 100.00, 15.00, 1.00, 0.02, '2023-06-06', '2023-06-06 09:41:15', '2023-06-06 09:41:15'),
(2, 2, 3, 1, 2.00, 2.00, 100.00, 15.00, 1.00, 0.02, '2023-06-06', '2023-06-06 10:16:33', '2023-06-06 10:16:33'),
(3, 3, 3, 1, 2.00, 2.00, 100.00, 15.00, 1.00, 0.02, '2023-06-06', '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(4, 3, 5, 2, 3.00, 3.00, 130.00, 20.00, 1.00, 0.03, '2023-06-06', '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(5, 3, 1, 4, 5.00, 5.00, 250.00, 10.00, 2.00, 0.10, '2023-06-06', '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(6, 3, 4, 3, 4.00, 4.00, 120.00, 10.00, 0.50, 0.02, '2023-06-06', '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(7, 4, 3, 1, 2.00, 2.00, 100.00, 13.00, 1.00, 0.02, '2023-06-06', '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(8, 4, 5, 2, 3.00, 3.00, 130.00, 17.00, 1.00, 0.03, '2023-06-06', '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(9, 4, 1, 4, 5.00, 5.00, 250.00, 5.00, 2.00, 0.10, '2023-06-06', '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(10, 4, 4, 3, 4.00, 4.00, 120.00, 6.00, 0.50, 0.02, '2023-06-06', '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(11, 5, 3, 1, 2.00, 2.00, 400.00, 161.00, 1.00, 0.02, '2023-06-06', '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(12, 5, 5, 2, 3.00, 3.00, 150.00, 64.00, 1.00, 0.03, '2023-06-06', '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(13, 5, 1, 4, 5.00, 5.00, 200.00, 59.00, 2.00, 0.10, '2023-06-06', '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(14, 5, 4, 3, 4.00, 4.00, 230.00, 52.00, 0.50, 0.02, '2023-06-06', '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(15, 6, 3, 1, 2.00, 2.00, 400.00, 159.00, 1.00, 0.02, '2023-06-06', '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(16, 6, 5, 2, 3.00, 3.00, 150.00, 61.00, 1.00, 0.03, '2023-06-06', '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(17, 6, 1, 4, 5.00, 5.00, 200.00, 54.00, 2.00, 0.10, '2023-06-06', '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(18, 6, 4, 3, 4.00, 4.00, 230.00, 48.00, 0.50, 0.02, '2023-06-06', '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(71, 13, 6, 8, 2.00, 2.00, 250.00, 56.00, 0.50, 0.01, '2023-06-07', '2023-06-07 07:55:29', '2023-06-07 07:55:29'),
(72, 13, 1, 4, 2.00, 2.00, 100.00, 28.00, 0.50, 0.01, '2023-06-07', '2023-06-07 07:55:29', '2023-06-07 07:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT NULL COMMENT '1=Finish Goods, 2= Row Material',
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_price` double(20,2) NOT NULL DEFAULT 0.00,
  `avg_unit_price` double(20,2) NOT NULL DEFAULT 0.00,
  `selling_price` double(20,2) NOT NULL DEFAULT 0.00,
  `total` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_category_id`, `product_id`, `warehouse_id`, `product_type`, `serial`, `quantity`, `unit_price`, `avg_unit_price`, `selling_price`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 1, 2, '00000001', 223.00, 200.00, 0.00, 0.00, 0.00, '2023-06-06 04:06:00', '2023-06-06 12:51:54'),
(2, 2, 5, 1, 2, '00000002', 31.00, 150.00, 0.00, 0.00, 0.00, '2023-06-06 04:06:00', '2023-06-06 12:51:54'),
(3, 2, 4, 1, 2, '00000003', 34.00, 150.00, 0.00, 0.00, 0.00, '2023-06-06 08:49:15', '2023-06-07 05:27:09'),
(4, 1, 1, 1, 2, '00000004', 26.00, 100.00, 0.00, 0.00, 0.00, '2023-06-06 08:49:15', '2023-06-07 07:55:29'),
(7, 2, 2, 1, 2, '00000007', 40.00, 150.00, 0.00, 0.00, 0.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(8, 1, 6, 1, 2, '00000008', 54.00, 250.00, 0.00, 0.00, 0.00, '2023-06-07 06:33:59', '2023-06-07 07:55:29'),
(12, NULL, 13, NULL, 1, '00000012', 1.00, 700.00, 700.00, 1000.00, 700.00, '2023-06-07 07:55:29', '2023-06-07 07:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_logs`
--

CREATE TABLE `inventory_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_type` tinyint(4) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `finished_goods_id` int(11) DEFAULT NULL,
  `finished_goods_row_material_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1=In; 2=Out',
  `date` date NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `consumption_loss_quantity` double(20,2) NOT NULL DEFAULT 0.00,
  `unit_price` double(20,2) NOT NULL DEFAULT 0.00,
  `avg_unit_price` double(20,2) NOT NULL DEFAULT 0.00,
  `selling_price` double(20,2) NOT NULL DEFAULT 0.00,
  `sale_total` double(20,2) NOT NULL DEFAULT 0.00,
  `total` double(20,2) NOT NULL DEFAULT 0.00,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `sales_order_id` int(10) UNSIGNED DEFAULT NULL,
  `purchase_order_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_id` int(10) UNSIGNED DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_order_no` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_logs`
--

INSERT INTO `inventory_logs` (`id`, `serial`, `product_category_id`, `product_id`, `product_type`, `warehouse_id`, `finished_goods_id`, `finished_goods_row_material_id`, `type`, `date`, `quantity`, `consumption_loss_quantity`, `unit_price`, `avg_unit_price`, `selling_price`, `sale_total`, `total`, `client_id`, `supplier_id`, `sales_order_id`, `purchase_order_id`, `inventory_id`, `note`, `sales_order_no`, `created_at`, `updated_at`) VALUES
(1, '00000001', 2, 3, 0, 1, NULL, NULL, 1, '2023-06-06', 5.00, 0.00, 400.00, 0.00, 0.00, 0.00, 2000.00, NULL, 5, NULL, 1, 1, 'Purchase Product', NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(2, '00000002', 2, 5, 0, 1, NULL, NULL, 1, '2023-06-06', 10.00, 0.00, 350.00, 0.00, 0.00, 0.00, 3500.00, NULL, 5, NULL, 1, 2, 'Purchase Product', NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(3, '00000001', 2, 3, 0, 1, NULL, NULL, 1, '2023-06-06', 10.00, 0.00, 100.00, 0.00, 0.00, 0.00, 1000.00, NULL, 5, NULL, 2, 1, 'Purchase Product', NULL, '2023-06-06 08:49:15', '2023-06-06 08:49:15'),
(4, '00000003', 2, 4, 0, 1, NULL, NULL, 1, '2023-06-06', 10.00, 0.00, 120.00, 0.00, 0.00, 0.00, 1200.00, NULL, 5, NULL, 2, 3, 'Purchase Product', NULL, '2023-06-06 08:49:15', '2023-06-06 08:49:15'),
(5, '00000002', 2, 5, 0, 1, NULL, NULL, 1, '2023-06-06', 10.00, 0.00, 130.00, 0.00, 0.00, 0.00, 1300.00, NULL, 5, NULL, 2, 2, 'Purchase Product', NULL, '2023-06-06 08:49:15', '2023-06-06 08:49:15'),
(6, '00000004', 1, 1, 0, 1, NULL, NULL, 1, '2023-06-06', 10.00, 0.00, 250.00, 0.00, 0.00, 0.00, 2500.00, NULL, 5, NULL, 2, 4, 'Purchase Product', NULL, '2023-06-06 08:49:15', '2023-06-06 08:49:15'),
(7, '00000001', 2, 3, 1, NULL, 3, 3, 4, '2023-06-06', 2.00, 0.02, 100.00, 0.00, 0.00, 0.00, 100.00, NULL, NULL, NULL, NULL, 1, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(8, '00000002', 2, 5, 1, NULL, 3, 4, 4, '2023-06-06', 3.00, 0.03, 130.00, 0.00, 0.00, 0.00, 130.00, NULL, NULL, NULL, NULL, 2, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(9, '00000004', 1, 1, 1, NULL, 3, 5, 4, '2023-06-06', 5.00, 0.10, 250.00, 0.00, 0.00, 0.00, 250.00, NULL, NULL, NULL, NULL, 4, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(10, '00000003', 2, 4, 1, NULL, 3, 6, 4, '2023-06-06', 4.00, 0.02, 120.00, 0.00, 0.00, 0.00, 120.00, NULL, NULL, NULL, NULL, 3, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:17:15', '2023-06-06 10:17:15'),
(11, '00000001', 2, 3, 1, NULL, 4, 7, 4, '2023-06-06', 2.00, 0.02, 100.00, 0.00, 0.00, 0.00, 100.00, NULL, NULL, NULL, NULL, 1, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(12, '00000002', 2, 5, 1, NULL, 4, 8, 4, '2023-06-06', 3.00, 0.03, 130.00, 0.00, 0.00, 0.00, 130.00, NULL, NULL, NULL, NULL, 2, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(13, '00000004', 1, 1, 1, NULL, 4, 9, 4, '2023-06-06', 5.00, 0.10, 250.00, 0.00, 0.00, 0.00, 250.00, NULL, NULL, NULL, NULL, 4, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(14, '00000003', 2, 4, 1, NULL, 4, 10, 4, '2023-06-06', 4.00, 0.02, 120.00, 0.00, 0.00, 0.00, 120.00, NULL, NULL, NULL, NULL, 3, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:18:09', '2023-06-06 10:18:09'),
(15, '00000001', 2, 3, NULL, 1, NULL, NULL, 1, '2023-06-06', 50.00, 0.00, 400.00, 0.00, 0.00, 0.00, 20000.00, NULL, 5, NULL, 4, 1, 'Purchase Product', NULL, '2023-06-06 10:29:39', '2023-06-06 10:29:39'),
(16, '00000001', 2, 3, NULL, 1, NULL, NULL, 1, '2023-06-06', 50.00, 0.00, 400.00, 0.00, 0.00, 0.00, 20000.00, NULL, 5, NULL, 5, 1, 'Purchase Product', NULL, '2023-06-06 10:30:33', '2023-06-06 10:30:33'),
(17, '00000002', 2, 5, NULL, 1, NULL, NULL, 1, '2023-06-06', 50.00, 0.00, 150.00, 0.00, 0.00, 0.00, 7500.00, NULL, 5, NULL, 5, 2, 'Purchase Product', NULL, '2023-06-06 10:30:33', '2023-06-06 10:30:33'),
(18, '00000003', 2, 4, NULL, 1, NULL, NULL, 1, '2023-06-06', 50.00, 0.00, 230.00, 0.00, 0.00, 0.00, 11500.00, NULL, 5, NULL, 5, 3, 'Purchase Product', NULL, '2023-06-06 10:30:33', '2023-06-06 10:30:33'),
(19, '00000004', 1, 1, NULL, 1, NULL, NULL, 1, '2023-06-06', 59.00, 0.00, 200.00, 0.00, 0.00, 0.00, 11800.00, NULL, 5, NULL, 5, 4, 'Purchase Product', NULL, '2023-06-06 10:30:33', '2023-06-06 10:30:33'),
(20, '00000001', 2, 3, 1, NULL, 5, 11, 4, '2023-06-06', 2.00, 0.02, 400.00, 0.00, 0.00, 0.00, 400.00, NULL, NULL, NULL, NULL, 1, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(21, '00000002', 2, 5, 1, NULL, 5, 12, 4, '2023-06-06', 3.00, 0.03, 150.00, 0.00, 0.00, 0.00, 150.00, NULL, NULL, NULL, NULL, 2, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(22, '00000004', 1, 1, 1, NULL, 5, 13, 4, '2023-06-06', 5.00, 0.10, 200.00, 0.00, 0.00, 0.00, 200.00, NULL, NULL, NULL, NULL, 4, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(23, '00000003', 2, 4, 1, NULL, 5, 14, 4, '2023-06-06', 4.00, 0.02, 230.00, 0.00, 0.00, 0.00, 230.00, NULL, NULL, NULL, NULL, 3, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:30:57', '2023-06-06 10:30:57'),
(24, '00000001', 2, 3, 1, NULL, 6, 15, 4, '2023-06-06', 2.00, 0.02, 400.00, 0.00, 0.00, 0.00, 400.00, NULL, NULL, NULL, NULL, 1, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(25, '00000002', 2, 5, 1, NULL, 6, 16, 4, '2023-06-06', 3.00, 0.03, 150.00, 0.00, 0.00, 0.00, 150.00, NULL, NULL, NULL, NULL, 2, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(26, '00000004', 1, 1, 1, NULL, 6, 17, 4, '2023-06-06', 5.00, 0.10, 200.00, 0.00, 0.00, 0.00, 200.00, NULL, NULL, NULL, NULL, 4, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(27, '00000003', 2, 4, 1, NULL, 6, 18, 4, '2023-06-06', 4.00, 0.02, 230.00, 0.00, 0.00, 0.00, 230.00, NULL, NULL, NULL, NULL, 3, 'Manufacturer Row Material Consumption', NULL, '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(28, '00000005', NULL, 2, 1, NULL, 6, NULL, 3, '2023-06-06', 1.00, 0.00, 3170.00, 3170.00, 4000.00, 0.00, 3170.00, NULL, NULL, NULL, NULL, 5, 'Finished Goods Product', NULL, '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(34, '00000001', 2, 3, NULL, 1, NULL, NULL, 1, '2023-06-06', 11.00, 0.00, 200.00, 0.00, 0.00, 0.00, 2200.00, NULL, 5, NULL, 6, 1, 'Purchase Product', NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(35, '00000003', 2, 4, NULL, 1, NULL, NULL, 1, '2023-06-06', 11.00, 0.00, 200.00, 0.00, 0.00, 0.00, 2200.00, NULL, 5, NULL, 6, 3, 'Purchase Product', NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(90, '00000004', 1, 1, NULL, 1, NULL, NULL, 1, '2023-06-07', 30.00, 0.00, 100.00, 0.00, 0.00, 0.00, 3000.00, NULL, 1, NULL, 8, 4, 'Purchase Product', NULL, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(91, '00000003', 2, 4, NULL, 1, NULL, NULL, 1, '2023-06-07', 30.00, 0.00, 150.00, 0.00, 0.00, 0.00, 4500.00, NULL, 1, NULL, 9, 3, 'Purchase Product', NULL, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(92, '00000007', 2, 2, NULL, 1, NULL, NULL, 1, '2023-06-07', 40.00, 0.00, 150.00, 0.00, 0.00, 0.00, 6000.00, NULL, 4, NULL, 10, 7, 'Purchase Product', NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(93, '00000008', 1, 6, NULL, 1, NULL, NULL, 1, '2023-06-07', 50.00, 0.00, 250.00, 0.00, 0.00, 0.00, 12500.00, NULL, 4, NULL, 10, 8, 'Purchase Product', NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(101, '00000008', 1, 6, 1, NULL, 13, 71, 4, '2023-06-07', 2.00, 0.01, 250.00, 0.00, 0.00, 0.00, 250.00, NULL, NULL, NULL, NULL, 8, 'Manufacturer Row Material Consumption', NULL, '2023-06-07 07:55:29', '2023-06-07 07:55:29'),
(102, '00000004', 1, 1, 1, NULL, 13, 72, 4, '2023-06-07', 2.00, 0.01, 100.00, 0.00, 0.00, 0.00, 100.00, NULL, NULL, NULL, NULL, 4, 'Manufacturer Row Material Consumption', NULL, '2023-06-07 07:55:29', '2023-06-07 07:55:29'),
(103, '00000012', NULL, 13, 1, NULL, 13, NULL, 3, '2023-06-07', 1.00, 0.00, 700.00, 700.00, 1000.00, 0.00, 700.00, NULL, NULL, NULL, NULL, 12, 'Finished Goods Product', NULL, '2023-06-07 07:55:29', '2023-06-07 07:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `journal_vouchers`
--

CREATE TABLE `journal_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `financial_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `jv_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payee_depositor_account_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `finished_goods_id` int(11) DEFAULT NULL,
  `tax_section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `e_tin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_vouchers`
--

INSERT INTO `journal_vouchers` (`id`, `sales_order_id`, `purchase_order_id`, `financial_year`, `date`, `jv_no`, `payee_depositor_account_head_id`, `finished_goods_id`, `tax_section_id`, `e_tin`, `notes`, `is_delete`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '2022-2023', '2023-06-06', 'JV-1', 16, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(2, NULL, 2, '2022-2023', '2023-06-06', 'JV-2', 16, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(3, NULL, 5, '2022-2023', '2023-06-06', 'JV-3', 16, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(4, NULL, NULL, '2022-2023', '2023-06-06', 'JV-4', 3, 6, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(5, NULL, NULL, '2022-2023', '2023-06-06', 'JV-5', 3, 7, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-06 10:34:18', '2023-06-06 10:34:18'),
(6, NULL, 6, '2022-2023', '2023-06-06', 'JV-6', 16, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(7, NULL, NULL, '2022-2023', '2023-06-06', 'JV-7', 22, 8, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-06 11:39:57', '2023-06-06 11:39:57'),
(8, NULL, NULL, '2022-2023', '2023-06-06', 'JV-8', 3, 9, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-06 12:22:28', '2023-06-06 12:22:28'),
(9, NULL, NULL, '2022-2023', '2023-06-06', 'JV-9', 3, 10, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-06 12:43:11', '2023-06-06 12:43:11'),
(10, NULL, NULL, '2022-2023', '2023-06-06', 'JV-10', 22, 11, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-06 12:45:15', '2023-06-06 12:45:15'),
(11, NULL, NULL, '2022-2023', '2023-06-06', 'JV-11', 3, 12, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-06 12:51:46', '2023-06-06 12:51:46'),
(12, NULL, 8, '2022-2023', '2023-06-07', 'JV-12', 1, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(13, NULL, 9, '2022-2023', '2023-06-07', 'JV-13', 1, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(14, NULL, 10, '2022-2023', '2023-06-07', 'JV-14', 14, NULL, NULL, NULL, NULL, 0, NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(15, NULL, NULL, '2022-2023', '2023-06-07', 'JV-15', 1, 13, NULL, NULL, 'Finished Goods', 0, NULL, '2023-06-07 07:15:14', '2023-06-07 07:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `journal_voucher_details`
--

CREATE TABLE `journal_voucher_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal_voucher_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=debit,2=credit',
  `account_head_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(100,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_voucher_details`
--

INSERT INTO `journal_voucher_details` (`id`, `journal_voucher_id`, `type`, `account_head_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 2000.00, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(2, 1, 1, 4, 3500.00, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(3, 1, 2, 16, 5500.00, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(4, 2, 1, 4, 1000.00, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(5, 2, 1, 4, 1200.00, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(6, 2, 1, 4, 1300.00, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(7, 2, 1, 4, 2500.00, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(8, 2, 2, 16, 6000.00, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(9, 3, 1, 4, 20000.00, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(10, 3, 1, 4, 7500.00, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(11, 3, 1, 4, 11500.00, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(12, 3, 1, 4, 11800.00, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(13, 3, 2, 16, 50800.00, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(14, 4, 1, 3, 3170.00, '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(20, 6, 1, 4, 2200.00, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(21, 6, 1, 4, 2200.00, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(22, 6, 2, 16, 4400.00, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(73, 12, 1, 5, 3000.00, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(74, 12, 2, 1, 3000.00, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(75, 13, 1, 5, 4500.00, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(76, 13, 2, 1, 4500.00, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(77, 14, 1, 5, 6000.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(78, 14, 1, 5, 12500.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(79, 14, 2, 14, 18500.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(83, 15, 1, 1, 700.00, '2023-06-07 07:55:29', '2023-06-07 07:55:29'),
(84, 15, 2, 22, 500.00, '2023-06-07 07:55:29', '2023-06-07 07:55:29'),
(85, 15, 2, 2, 200.00, '2023-06-07 07:55:29', '2023-06-07 07:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_08_06_133014_create_banks_table', 1),
(6, '2020_08_06_133407_create_branches_table', 1),
(7, '2020_08_06_133615_create_bank_accounts_table', 1),
(8, '2022_03_22_085255_create_account_heads_table', 1),
(9, '2022_04_13_105538_create_suppliers_table', 1),
(10, '2022_04_17_155254_create_warehouses_table', 1),
(13, '2022_04_18_124631_create_employee_types_table', 1),
(14, '2022_04_18_124700_create_employees_table', 1),
(16, '2022_04_19_120717_create_units_table', 1),
(17, '2022_04_19_123111_create_accessories_table', 1),
(18, '2022_04_19_135458_create_purchase_orders_table', 1),
(19, '2022_04_19_155158_create_cashes_table', 1),
(20, '2022_04_19_160930_create_mobile_bankings_table', 1),
(21, '2022_04_19_163521_create_purchase_order_products_table', 1),
(22, '2022_04_20_105615_create_purchase_inventories_table', 1),
(23, '2022_04_20_105815_create_purchase_inventory_logs_table', 1),
(24, '2022_04_20_113908_create_purchase_products_table', 1),
(25, '2022_04_20_131148_create_product_categories_table', 1),
(27, '2022_04_20_223331_create_purchase_payments_table', 1),
(28, '2022_04_20_223744_create_transaction_logs_table', 1),
(29, '2022_05_08_150828_create_customers_table', 2),
(30, '2022_05_11_100613_create_sales_orders_table', 3),
(31, '2022_05_11_101030_create_sale_payments_table', 3),
(32, '2022_05_12_143748_create_sales_order_products_table', 3),
(45, '2022_09_14_100522_create_product_types_table', 1),
(51, '2023_02_13_152622_create_products_table', 14),
(52, '2023_03_14_113949_create_salary_change_logs_table', 15),
(53, '2022_04_17_163407_create_models_table', 16),
(54, '2022_04_18_102146_create_zones_table', 16),
(55, '2022_04_19_102657_create_dealers_table', 16),
(56, '2022_07_02_160848_create_service_payments_table', 16),
(57, '2022_07_02_164542_create_employee_cashes_table', 16),
(58, '2022_07_18_122533_create_service_customers_table', 16),
(59, '2022_07_18_154529_create_discount_rates_table', 16),
(60, '2022_08_28_154922_create_sale_price_settings_table', 16),
(61, '2022_08_29_162346_create_distributors_table', 16),
(62, '2022_09_03_112724_create_technician_conveyance_requisitions_table', 16),
(63, '2022_09_03_112846_create_technician_conveyance_requisition_details_table', 16),
(64, '2022_09_03_135622_create_conveyance_payments_table', 16),
(65, '2022_09_14_144029_create_commission_types_table', 16),
(66, '2023_01_07_154948_create_service_bills_table', 16),
(67, '2023_01_07_155055_create_service_bill_products_table', 16),
(69, '2023_03_21_180911_create_tax_section_table', 17),
(70, '2023_02_22_055316_create_balance_transfers_table', 18),
(71, '2023_03_23_120226_create_inventories_table', 19),
(72, '2023_03_23_120620_create_inventory_logs_table', 20),
(73, '2023_03_23_121526_create_journal_vouchers_table', 21),
(74, '2023_03_23_121916_create_journal_voucher_details_table', 22),
(75, '2023_03_23_123704_create_receipt_payment_files_table', 23),
(76, '2023_03_23_124153_create_receipt_payments_table', 24),
(77, '2023_03_23_124531_create_receipt_payment_details_table', 25),
(78, '2023_03_28_120025_create_clients_table', 26),
(80, '2023_05_22_155712_create_brands_table', 27),
(81, '2023_06_06_125224_create_config_products_table', 27),
(82, '2023_06_06_125536_create_config_product_details_table', 28),
(83, '2023_06_06_131937_create_finished_goods_table', 29),
(84, '2023_06_06_132454_create_finished_goods_row_materials_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `unit_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'M9', 1, NULL, 1, '2023-06-05 10:14:19', '2023-06-06 06:17:14'),
(2, 2, 'M4', 1, NULL, 1, '2023-06-05 10:25:18', '2023-06-07 04:52:10'),
(3, 2, 'M 1', 1, NULL, 1, '2023-06-05 10:26:04', '2023-06-06 06:17:40'),
(4, 2, 'M 2', 1, NULL, 1, '2023-06-05 10:26:17', '2023-06-06 06:17:45'),
(5, 2, 'M 3', 2, NULL, 1, '2023-06-05 10:26:30', '2023-06-06 06:17:31'),
(6, 1, 'M8', 1, NULL, 1, '2023-06-06 06:08:40', '2023-06-07 04:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_type` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_type`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'UPS', 1, '2023-02-13 09:49:32', '2023-06-06 06:07:52'),
(2, NULL, 'IPS', 1, '2023-02-13 09:50:20', '2023-06-06 06:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1=govt,2=private',
  `category` tinyint(4) DEFAULT NULL COMMENT '	1=consultancy, 2=construction	',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(20,2) NOT NULL DEFAULT 0.00,
  `paid` double(20,2) NOT NULL DEFAULT 0.00,
  `due` double(20,2) NOT NULL DEFAULT 0.00,
  `duration_start` date DEFAULT NULL,
  `duration_end` date DEFAULT NULL,
  `project_progress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_duration` int(11) DEFAULT NULL,
  `attachment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `client_id`, `type`, `category`, `name`, `address`, `phone_number`, `amount`, `paid`, `due`, `duration_start`, `duration_end`, `project_progress`, `total_duration`, `attachment`, `attachment1`, `attachment2`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL, 'Mohakhai Interior Project', 'Mohakhali, Dhaka', '01765454567', 200000.00, 0.00, 200000.00, '2023-04-01', '2023-05-30', '40', NULL, 'uploads/consultancy_project/attachment/e592869e-fe4c-11ed-877c-141877a6df51.pdf', 'uploads/consultancy_project/attachment1/e59329a0-fe4c-11ed-b537-141877a6df51.pdf', 'uploads/consultancy_project/attachment2/e593548e-fe4c-11ed-a995-141877a6df51.pdf', 1, '2023-05-29 18:16:14', '2023-05-29 18:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `sub_total` double(20,2) NOT NULL DEFAULT 0.00,
  `total` double(20,2) NOT NULL DEFAULT 0.00,
  `paid` double(20,2) NOT NULL DEFAULT 0.00,
  `transport_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `vat` double(20,2) DEFAULT 0.00,
  `vat_percentage` double(20,2) DEFAULT 0.00,
  `discount` double(20,2) DEFAULT 0.00,
  `discount_percentage` double(20,2) DEFAULT 0.00,
  `due` double(50,2) NOT NULL DEFAULT 0.00,
  `refund` double(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `order_no`, `supplier_id`, `brand_id`, `warehouse_id`, `date`, `sub_total`, `total`, `paid`, `transport_cost`, `vat`, `vat_percentage`, `discount`, `discount_percentage`, `due`, `refund`, `created_at`, `updated_at`) VALUES
(1, '00000001', 5, NULL, 1, '2023-06-06', 5500.00, 5500.00, 4000.00, 0.00, 0.00, NULL, 0.00, NULL, 1500.00, 0.00, '2023-06-06 04:06:00', '2023-06-06 04:14:34'),
(2, '00000002', 5, NULL, 1, '2023-06-06', 6000.00, 6000.00, 6000.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00, 0.00, '2023-06-06 08:49:15', '2023-06-06 08:49:16'),
(3, '00000003', 5, NULL, 1, '2023-06-06', 0.00, 0.00, 25800.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00, 0.00, '2023-06-06 10:28:06', '2023-06-06 10:28:06'),
(4, '00000004', 5, NULL, 1, '2023-06-06', 0.00, 0.00, 25800.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00, 0.00, '2023-06-06 10:29:39', '2023-06-06 10:29:39'),
(5, '00000005', 5, NULL, 1, '2023-06-06', 50800.00, 50800.00, 25800.00, 0.00, 0.00, NULL, 0.00, NULL, 25000.00, 0.00, '2023-06-06 10:30:33', '2023-06-06 10:30:34'),
(6, '00000006', 5, NULL, 1, '2023-06-06', 4400.00, 4400.00, 2000.00, 0.00, 0.00, NULL, 0.00, NULL, 2400.00, 0.00, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(7, '00000007', 1, NULL, 1, '2023-06-07', 0.00, 0.00, 2000.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00, 0.00, '2023-06-07 05:17:25', '2023-06-07 05:17:25'),
(8, '00000008', 1, NULL, 1, '2023-06-07', 3000.00, 3000.00, 2000.00, 0.00, 0.00, NULL, 0.00, NULL, 1000.00, 0.00, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(9, '00000009', 1, NULL, 1, '2023-06-07', 4500.00, 4500.00, 3500.00, 0.00, 0.00, NULL, 0.00, NULL, 1000.00, 0.00, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(10, '00000010', 4, NULL, 1, '2023-06-07', 18500.00, 18500.00, 10500.00, 0.00, 0.00, NULL, 0.00, NULL, 8000.00, 0.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_products`
--

CREATE TABLE `purchase_order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(1) DEFAULT NULL,
  `purchase_inventory_id` int(10) UNSIGNED DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_price` double(20,2) NOT NULL DEFAULT 0.00,
  `selling_price` double(20,2) DEFAULT 0.00,
  `total` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_products`
--

INSERT INTO `purchase_order_products` (`id`, `purchase_order_id`, `product_id`, `product_category_id`, `purchase_inventory_id`, `warehouse_id`, `name`, `serial`, `quantity`, `unit_price`, `selling_price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 1, 1, 'M 1', '00000001', 5.00, 400.00, 0.00, 2000.00, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(2, 1, 5, 2, 2, 1, 'M 3', '00000002', 10.00, 350.00, 0.00, 3500.00, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(3, 2, 3, 2, 1, 1, 'M 1', '00000001', 10.00, 100.00, 0.00, 1000.00, '2023-06-06 08:49:15', '2023-06-06 08:49:15'),
(4, 2, 4, 2, 3, 1, 'M 2', '00000003', 10.00, 120.00, 0.00, 1200.00, '2023-06-06 08:49:15', '2023-06-06 08:49:15'),
(5, 2, 5, 2, 2, 1, 'M 3', '00000002', 10.00, 130.00, 0.00, 1300.00, '2023-06-06 08:49:15', '2023-06-06 08:49:15'),
(6, 2, 1, 1, 4, 1, 'M9', '00000004', 10.00, 250.00, 0.00, 2500.00, '2023-06-06 08:49:15', '2023-06-06 08:49:16'),
(7, 3, 3, 2, NULL, 1, 'M 1', NULL, 50.00, 400.00, 0.00, 20000.00, '2023-06-06 10:28:06', '2023-06-06 10:28:06'),
(8, 4, 3, 2, NULL, 1, 'M 1', NULL, 50.00, 400.00, 0.00, 20000.00, '2023-06-06 10:29:39', '2023-06-06 10:29:39'),
(9, 5, 3, 2, 1, 1, 'M 1', '00000001', 50.00, 400.00, 0.00, 20000.00, '2023-06-06 10:30:33', '2023-06-06 10:30:33'),
(10, 5, 5, 2, 2, 1, 'M 3', '00000002', 50.00, 150.00, 0.00, 7500.00, '2023-06-06 10:30:33', '2023-06-06 10:30:33'),
(11, 5, 4, 2, 3, 1, 'M 2', '00000003', 50.00, 230.00, 0.00, 11500.00, '2023-06-06 10:30:33', '2023-06-06 10:30:33'),
(12, 5, 1, 1, 4, 1, 'M9', '00000004', 59.00, 200.00, 0.00, 11800.00, '2023-06-06 10:30:33', '2023-06-06 10:30:34'),
(13, 6, 3, 2, 1, 1, 'M 1', '00000001', 11.00, 200.00, 0.00, 2200.00, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(14, 6, 4, 2, 3, 1, 'M 2', '00000003', 11.00, 200.00, 0.00, 2200.00, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(15, 8, 1, 1, 4, 1, 'M9', '00000004', 30.00, 100.00, 0.00, 3000.00, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(16, 9, 4, 2, 3, 1, 'M 2', '00000003', 30.00, 150.00, 0.00, 4500.00, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(17, 10, 2, 2, 7, 1, 'M4', '00000007', 40.00, 150.00, 0.00, 6000.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(18, 10, 6, 1, 8, 1, 'M8', '00000008', 50.00, 250.00, 0.00, 12500.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_branch_id` bigint(20) DEFAULT NULL,
  `purchase_order_id` int(10) UNSIGNED DEFAULT NULL,
  `supplier_id` int(20) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Pay; 2=Refund',
  `transaction_method` tinyint(4) NOT NULL COMMENT '1=Cash; 2=Bank',
  `bank_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_account_id` int(10) UNSIGNED DEFAULT NULL,
  `cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(20,2) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type` tinyint(2) DEFAULT NULL COMMENT '1=Online,2=Offline',
  `product_category_id` bigint(20) NOT NULL,
  `product_sub_category_id` bigint(20) NOT NULL,
  `category_type` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_product` double(20,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt_payments`
--

CREATE TABLE `receipt_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payee_depositor_account_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_account_head_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `financial_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `receipt_payment_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` int(11) NOT NULL COMMENT '1=receipt,2=payment',
  `payment_type` int(11) NOT NULL COMMENT '1=bank,2=cash',
  `cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `issuing_bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuing_branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuing_account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuing_account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_tin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float(20,2) NOT NULL DEFAULT 0.00,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipt_payments`
--

INSERT INTO `receipt_payments` (`id`, `sales_order_id`, `purchase_order_id`, `payee_depositor_account_head_id`, `tax_section_id`, `payment_account_head_id`, `project_id`, `financial_year`, `date`, `receipt_payment_no`, `transaction_type`, `payment_type`, `cheque_no`, `cheque_date`, `issuing_bank_name`, `issuing_branch_name`, `issuing_account_name`, `issuing_account_no`, `e_tin`, `notes`, `amount`, `is_delete`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 16, NULL, 4, NULL, '2022-2023', '2023-06-06', 'CV-4-10004', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(2, NULL, 1, 16, NULL, 5, NULL, '2022-2023', '2023-06-06', 'CV-5-10005', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hi', 0.00, 0, NULL, '2023-06-06 04:14:34', '2023-06-06 04:14:34'),
(3, NULL, 2, 16, NULL, 4, NULL, '2022-2023', '2023-06-06', 'CV-5-10004', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(4, NULL, 5, 16, NULL, 4, NULL, '2022-2023', '2023-06-06', 'CV-6-10004', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(5, NULL, 6, 16, NULL, 4, NULL, '2022-2023', '2023-06-06', 'CV-7-10004', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(6, NULL, 8, 1, NULL, 5, NULL, '2022-2023', '2023-06-07', 'CV-6-10005', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(7, NULL, 9, 1, NULL, 5, NULL, '2022-2023', '2023-06-07', 'CV-7-10005', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(8, NULL, 10, 14, NULL, 5, NULL, '2022-2023', '2023-06-07', 'CV-8-10005', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_payment_details`
--

CREATE TABLE `receipt_payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_payment_id` bigint(20) UNSIGNED NOT NULL,
  `account_head_id` bigint(20) UNSIGNED NOT NULL,
  `parent_deduction_account_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vat_account_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ait_account_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `other_head` tinyint(1) NOT NULL DEFAULT 0,
  `vat_base_amount` double(100,2) NOT NULL DEFAULT 0.00,
  `vat_rate` double(10,2) NOT NULL DEFAULT 0.00,
  `vat_amount` double(100,2) NOT NULL DEFAULT 0.00,
  `ait_base_amount` double(100,2) NOT NULL DEFAULT 0.00,
  `ait_rate` double(10,2) NOT NULL DEFAULT 0.00,
  `ait_amount` double(100,2) NOT NULL DEFAULT 0.00,
  `other_amount` double(100,2) NOT NULL DEFAULT 0.00,
  `amount` double(100,2) NOT NULL DEFAULT 0.00,
  `net_total` double(100,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipt_payment_details`
--

INSERT INTO `receipt_payment_details` (`id`, `receipt_payment_id`, `account_head_id`, `parent_deduction_account_head_id`, `vat_account_head_id`, `ait_account_head_id`, `other_head`, `vat_base_amount`, `vat_rate`, `vat_amount`, `ait_base_amount`, `ait_rate`, `ait_amount`, `other_amount`, `amount`, `net_total`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2500.00, 2500.00, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(2, 2, 5, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1500.00, 1500.00, '2023-06-06 04:14:34', '2023-06-06 04:14:34'),
(3, 3, 4, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6000.00, 6000.00, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(4, 4, 4, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 25800.00, 25800.00, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(5, 5, 4, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2000.00, 2000.00, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(6, 6, 5, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2000.00, 2000.00, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(7, 7, 5, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3500.00, 3500.00, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(8, 8, 5, NULL, NULL, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10500.00, 10500.00, '2023-06-07 06:33:59', '2023-06-07 06:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_payment_files`
--

CREATE TABLE `receipt_payment_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `journal_voucher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_change_logs`
--

CREATE TABLE `salary_change_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` int(11) NOT NULL COMMENT '6=bonus',
  `basic_salary` double(20,2) NOT NULL,
  `house_rent` double(20,2) NOT NULL,
  `travel` double(20,2) NOT NULL,
  `medical` double(20,2) NOT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `others_deduct` double(20,2) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `gross_salary` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `sub_total` double(20,2) NOT NULL,
  `vat_percentage` double(20,2) NOT NULL DEFAULT 0.00,
  `vat` double(20,2) NOT NULL DEFAULT 0.00,
  `ait_percentage` double(20,2) NOT NULL DEFAULT 0.00,
  `ait` double(20,2) NOT NULL DEFAULT 0.00,
  `discount_percentage` double(20,2) NOT NULL DEFAULT 0.00,
  `discount` double(20,2) NOT NULL DEFAULT 0.00,
  `total` double(20,2) NOT NULL DEFAULT 0.00,
  `paid` double(20,2) NOT NULL DEFAULT 0.00,
  `due` double(20,2) NOT NULL DEFAULT 0.00,
  `user_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_orders`
--

INSERT INTO `sales_orders` (`id`, `order_no`, `warehouse_id`, `client_id`, `date`, `sub_total`, `vat_percentage`, `vat`, `ait_percentage`, `ait`, `discount_percentage`, `discount`, `total`, `paid`, `due`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(1, '00000001', 1, 2, '2023-05-30', 89.35, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 89.35, 0.00, 89.35, 1, 'Sell Note', '2023-05-29 18:12:29', '2023-05-29 18:12:29'),
(2, '00000002', 1, 3, '2023-05-30', 89.35, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 89.35, 89.35, 0.00, 1, NULL, '2023-05-30 07:09:45', '2023-05-30 07:09:45'),
(3, '00000003', 1, 3, '2023-05-31', 2976.91, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2976.91, 2000.00, 976.91, 1, NULL, '2023-05-31 19:12:13', '2023-05-31 19:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_products`
--

CREATE TABLE `sales_order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_order_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `product_sub_category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_price` double(20,2) NOT NULL,
  `selling_price` double(20,2) NOT NULL,
  `total` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_order_products`
--

INSERT INTO `sales_order_products` (`id`, `sales_order_id`, `product_category_id`, `product_sub_category_id`, `product_id`, `color_id`, `size_id`, `warehouse_id`, `client_id`, `date`, `quantity`, `unit_price`, `selling_price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 7, 2, 1, 2, 1, 2, '2023-05-30', 1.00, 87.60, 89.35, 89.35, '2023-05-29 18:12:29', '2023-05-29 18:12:29'),
(2, 2, 1, 7, 2, 1, 2, 1, 3, '2023-05-30', 1.00, 87.60, 89.35, 89.35, '2023-05-30 07:09:45', '2023-05-30 07:09:45'),
(3, 3, 1, 7, 2, 1, 2, 1, 3, '2023-05-31', 1.00, 2918.54, 2976.91, 2976.91, '2023-05-31 19:12:13', '2023-05-31 19:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_type` tinyint(2) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_due` double(20,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_sections`
--

CREATE TABLE `tax_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_logs`
--

CREATE TABLE `transaction_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `transaction_type` int(11) DEFAULT NULL,
  `amount` double(100,2) NOT NULL DEFAULT 0.00,
  `other_head` int(11) NOT NULL DEFAULT 0,
  `account_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receipt_payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `receipt_payment_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `balance_transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `journal_voucher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `journal_voucher_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payee_depositor_account_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_account_head_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL COMMENT '1=Bank,2=Cash',
  `reconciliation` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=checked,0=unchecked',
  `financial_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_payment_sl` bigint(20) DEFAULT NULL,
  `receipt_payment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jv_type` int(11) DEFAULT NULL COMMENT '1=debit,2-credit',
  `jv_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `payout` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'vat and ait,salary payout =1,0=not payout',
  `payout_start_date` date DEFAULT NULL,
  `payout_end_date` date DEFAULT NULL,
  `salary_group_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_challan_date` date DEFAULT NULL,
  `salary_challan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_challan_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_challan_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_group_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_challan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_challan_date` date DEFAULT NULL,
  `vat_challan_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_challan_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ait_group_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ait_challan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ait_challan_date` date DEFAULT NULL,
  `ait_challan_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ait_challan_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_logs`
--

INSERT INTO `transaction_logs` (`id`, `date`, `transaction_type`, `amount`, `other_head`, `account_head_id`, `receipt_payment_id`, `project_id`, `receipt_payment_detail_id`, `balance_transfer_id`, `journal_voucher_id`, `journal_voucher_detail_id`, `payee_depositor_account_head_id`, `tax_section_id`, `payment_account_head_id`, `client_id`, `payment_type`, `reconciliation`, `financial_year`, `receipt_payment_sl`, `receipt_payment_no`, `jv_type`, `jv_no`, `cheque_no`, `cheque_date`, `payout`, `payout_start_date`, `payout_end_date`, `salary_group_no`, `salary_challan_date`, `salary_challan_no`, `salary_challan_link`, `salary_challan_copy`, `vat_group_no`, `vat_challan_no`, `vat_challan_date`, `vat_challan_link`, `vat_challan_copy`, `ait_group_no`, `ait_challan_no`, `ait_challan_date`, `ait_challan_link`, `ait_challan_copy`, `notes`, `created_at`, `updated_at`) VALUES
(1, '2023-05-29', 8, 438.00, 0, 4, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 0, '2023-2024', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', '2023-05-29 18:09:37', '2023-05-29 18:09:37'),
(2, '2023-05-29', 9, 438.00, 0, 1, NULL, NULL, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, NULL, 0, '2023-2024', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', '2023-05-29 18:09:37', '2023-05-29 18:09:37'),
(3, '2023-05-30', 8, 89.35, 0, 3, NULL, NULL, NULL, NULL, 2, 3, 6, NULL, NULL, NULL, NULL, 0, '2023-2024', NULL, 'JV-2', 1, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sell Note', '2023-05-29 18:12:29', '2023-05-29 18:12:29'),
(4, '2023-05-30', 9, 89.35, 0, 6, NULL, NULL, NULL, NULL, 2, 4, 6, NULL, NULL, NULL, NULL, 0, '2023-2024', NULL, 'JV-2', 2, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sell Note', '2023-05-29 18:12:30', '2023-05-29 18:12:30'),
(5, '2023-05-30', 11, 100.00, 0, 5, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 5, NULL, 1, 0, '2022-2023', 1, 'BV-1-10005', NULL, NULL, '12345678', '2023-05-30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Details', '2023-05-29 20:06:42', '2023-05-29 20:06:42'),
(6, '2023-05-30', 2, 100.00, 0, 1, 1, NULL, 1, NULL, NULL, NULL, 1, NULL, 5, NULL, 1, 0, '2022-2023', 1, 'BV-1-10005', NULL, NULL, '12345678', '2023-05-30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Details', '2023-05-29 20:06:42', '2023-05-29 20:06:42'),
(7, '2023-05-30', 14, 20000.00, 0, 4, 2, 1, NULL, NULL, NULL, NULL, 7, NULL, 4, NULL, 2, 0, '2023-2024', 1, 'CMR-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Receipt Note', '2023-05-29 20:35:16', '2023-05-29 20:35:16'),
(8, '2023-05-30', 1, 20000.00, 0, 12, 2, NULL, 2, NULL, NULL, NULL, 12, NULL, 4, NULL, 2, 0, '2023-2024', 1, 'CMR-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Receipt Note', '2023-05-29 20:35:16', '2023-05-29 20:35:16'),
(9, '2023-05-30', 11, 121.00, 0, 5, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, 5, NULL, 1, 0, '2023-2024', 1, 'BV-1-10005', NULL, NULL, '12345678', '2023-05-30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', '2023-05-29 21:00:09', '2023-05-29 21:00:09'),
(10, '2023-05-30', 2, 121.00, 0, 1, 3, NULL, 3, NULL, NULL, NULL, 1, NULL, 5, NULL, 1, 0, '2023-2024', 1, 'BV-1-10005', NULL, NULL, '12345678', '2023-05-30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', '2023-05-29 21:00:09', '2023-05-29 21:00:09'),
(11, '2023-05-30', 12, 620.00, 0, 4, 4, 1, NULL, NULL, NULL, NULL, 1, NULL, 4, NULL, 2, 0, '2023-2024', 1, 'CV-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Project expense note', '2023-05-29 21:27:30', '2023-05-29 21:27:30'),
(12, '2023-05-30', 2, 250.00, 0, 10, 4, NULL, 4, NULL, NULL, NULL, 10, NULL, 4, NULL, 2, 0, '2023-2024', 1, 'CV-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Project expense note', '2023-05-29 21:27:30', '2023-05-29 21:27:30'),
(13, '2023-05-30', 2, 170.00, 0, 9, 4, NULL, 5, NULL, NULL, NULL, 9, NULL, 4, NULL, 2, 0, '2023-2024', 1, 'CV-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Project expense note', '2023-05-29 21:27:30', '2023-05-29 21:27:30'),
(14, '2023-05-30', 2, 200.00, 0, 8, 4, NULL, 6, NULL, NULL, NULL, 8, NULL, 4, NULL, 2, 0, '2023-2024', 1, 'CV-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Project expense note', '2023-05-29 21:27:30', '2023-05-29 21:27:30'),
(15, '2023-05-30', 13, 4500.00, 0, 5, 5, 1, NULL, NULL, NULL, NULL, 7, NULL, 5, NULL, 1, 0, '2023-2024', 1, 'BMR-1-10005', NULL, NULL, '12345678', '2023-06-08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test receipt note', '2023-05-29 21:36:16', '2023-05-29 21:36:16'),
(16, '2023-05-30', 1, 4500.00, 0, 12, 5, NULL, 7, NULL, NULL, NULL, 12, NULL, 5, NULL, 1, 0, '2023-2024', 1, 'BMR-1-10005', NULL, NULL, '12345678', '2023-06-08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test receipt note', '2023-05-29 21:36:16', '2023-05-29 21:36:16'),
(17, '2023-05-30', 8, 18200.00, 0, 5, NULL, NULL, NULL, NULL, 3, 5, 14, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Note', '2023-05-30 06:47:43', '2023-05-30 06:47:43'),
(18, '2023-05-30', 9, 18200.00, 0, 14, NULL, NULL, NULL, NULL, 3, 6, 14, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Note', '2023-05-30 06:47:43', '2023-05-30 06:47:43'),
(19, '2023-05-30', 8, 89.35, 0, 3, NULL, NULL, NULL, NULL, 4, 7, 7, NULL, NULL, NULL, NULL, 0, '2023-2024', NULL, 'JV-3', 1, 'JV-3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 07:09:45', '2023-05-30 07:09:45'),
(20, '2023-05-30', 9, 89.35, 0, 7, NULL, NULL, NULL, NULL, 4, 8, 7, NULL, NULL, NULL, NULL, 0, '2023-2024', NULL, 'JV-3', 2, 'JV-3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 07:09:45', '2023-05-30 07:09:45'),
(21, '2023-05-30', 13, 89.35, 0, 4, 6, NULL, NULL, NULL, NULL, NULL, 7, NULL, 4, NULL, 1, 0, '2023-2024', 2, 'BMR-2-10004', NULL, NULL, NULL, '2023-05-30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 07:09:45', '2023-05-30 07:09:45'),
(22, '2023-05-30', 1, 89.35, 0, 7, 6, NULL, 8, NULL, NULL, NULL, 7, NULL, 4, NULL, 1, 0, '2023-2024', 2, 'BMR-2-10004', NULL, NULL, NULL, '2023-05-30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 07:09:45', '2023-05-30 07:09:45'),
(25, '2023-05-30', 12, 100.00, 0, 4, 7, NULL, NULL, NULL, NULL, NULL, 14, NULL, 4, NULL, 2, 0, '2023-2024', 2, 'CV-2-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Note', '2023-05-30 08:24:50', '2023-05-30 08:24:50'),
(26, '2023-05-30', 2, 100.00, 0, 14, 7, NULL, 9, NULL, NULL, NULL, 14, NULL, 4, NULL, 2, 0, '2023-2024', 2, 'CV-2-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Note', '2023-05-30 08:24:50', '2023-05-30 08:24:50'),
(27, '2023-05-31', 8, 2918.54, 0, 4, NULL, NULL, NULL, NULL, 6, 11, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-2', 1, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', '2023-05-31 18:47:27', '2023-05-31 18:47:27'),
(28, '2023-05-31', 9, 2918.54, 0, 1, NULL, NULL, NULL, NULL, 6, 12, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-2', 2, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', '2023-05-31 18:47:27', '2023-05-31 18:47:27'),
(31, '2023-05-31', 13, 2000.00, 0, 4, 8, NULL, NULL, NULL, NULL, NULL, 7, NULL, 4, NULL, 1, 0, '2023-2024', 3, 'BMR-3-10004', NULL, NULL, NULL, '2023-05-31', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31 19:12:13', '2023-05-31 19:12:13'),
(32, '2023-05-31', 1, 2000.00, 0, 7, 8, NULL, 10, NULL, NULL, NULL, 7, NULL, 4, NULL, 1, 0, '2023-2024', 3, 'BMR-3-10004', NULL, NULL, NULL, '2023-05-31', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31 19:12:13', '2023-05-31 19:12:13'),
(36, '2023-06-05', 12, 2700.00, 0, 5, 1, NULL, NULL, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 2, 'CV-2-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:34:55', '2023-06-05 12:34:55'),
(37, '2023-06-05', 2, 2700.00, 0, 16, 1, NULL, 1, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 2, 'CV-2-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:34:55', '2023-06-05 12:34:55'),
(38, '2023-06-05', 8, 5700.00, 0, 5, NULL, NULL, NULL, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:39:04', '2023-06-05 12:39:04'),
(39, '2023-06-05', 8, 5700.00, 0, 5, NULL, NULL, NULL, NULL, 1, 2, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:39:04', '2023-06-05 12:39:04'),
(40, '2023-06-05', 9, 5500.00, 0, 16, NULL, NULL, NULL, NULL, 1, 3, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:39:04', '2023-06-05 12:39:04'),
(41, '2023-06-05', 12, 2700.00, 0, 5, 1, NULL, NULL, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 3, 'CV-3-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:39:04', '2023-06-05 12:39:04'),
(42, '2023-06-05', 2, 2700.00, 0, 16, 1, NULL, 1, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 3, 'CV-3-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:39:04', '2023-06-05 12:39:04'),
(43, '2023-06-05', 8, 6000.00, 0, 5, NULL, NULL, NULL, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:45:58', '2023-06-05 12:45:58'),
(44, '2023-06-05', 8, 6000.00, 0, 5, NULL, NULL, NULL, NULL, 1, 2, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:45:58', '2023-06-05 12:45:58'),
(45, '2023-06-05', 9, 5500.00, 0, 16, NULL, NULL, NULL, NULL, 1, 3, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:45:58', '2023-06-05 12:45:58'),
(46, '2023-06-05', 12, 4000.00, 0, 5, 1, NULL, NULL, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 4, 'CV-4-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:45:58', '2023-06-05 12:45:58'),
(47, '2023-06-05', 2, 4000.00, 0, 16, 1, NULL, 1, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 4, 'CV-4-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-05 12:45:58', '2023-06-05 12:45:58'),
(48, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:39:21', '2023-06-06 03:39:21'),
(49, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 1, 2, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:39:21', '2023-06-06 03:39:21'),
(50, '2023-06-06', 9, 5500.00, 0, 16, NULL, NULL, NULL, NULL, 1, 3, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:39:21', '2023-06-06 03:39:21'),
(51, '2023-06-06', 12, 3000.00, 0, 4, 1, NULL, NULL, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 1, 'CV-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:39:21', '2023-06-06 03:39:21'),
(52, '2023-06-06', 2, 3000.00, 0, 16, 1, NULL, 1, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 1, 'CV-1-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:39:21', '2023-06-06 03:39:21'),
(53, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:48:32', '2023-06-06 03:48:32'),
(54, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 1, 2, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:48:32', '2023-06-06 03:48:32'),
(55, '2023-06-06', 9, 6000.00, 0, 16, NULL, NULL, NULL, NULL, 1, 3, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:48:32', '2023-06-06 03:48:32'),
(56, '2023-06-06', 12, 3000.00, 0, 4, 1, NULL, NULL, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 2, 'CV-2-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:48:32', '2023-06-06 03:48:32'),
(57, '2023-06-06', 2, 3000.00, 0, 16, 1, NULL, 1, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 2, 'CV-2-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:48:32', '2023-06-06 03:48:32'),
(58, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:56:23', '2023-06-06 03:56:23'),
(59, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 1, 2, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:56:23', '2023-06-06 03:56:23'),
(60, '2023-06-06', 9, 6000.00, 0, 16, NULL, NULL, NULL, NULL, 1, 3, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:56:23', '2023-06-06 03:56:23'),
(61, '2023-06-06', 12, 3000.00, 0, 4, 2, NULL, NULL, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 3, 'CV-3-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:56:23', '2023-06-06 03:56:23'),
(62, '2023-06-06', 2, 3000.00, 0, 16, 2, NULL, 2, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 3, 'CV-3-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 03:56:23', '2023-06-06 03:56:23'),
(63, '2023-06-06', 8, 5500.00, 0, 4, NULL, NULL, NULL, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(64, '2023-06-06', 8, 5500.00, 0, 4, NULL, NULL, NULL, NULL, 1, 2, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 1, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(65, '2023-06-06', 9, 5500.00, 0, 16, NULL, NULL, NULL, NULL, 1, 3, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-1', 2, 'JV-1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(66, '2023-06-06', 12, 2500.00, 0, 4, 1, NULL, NULL, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 4, 'CV-4-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(67, '2023-06-06', 2, 2500.00, 0, 16, 1, NULL, 1, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 4, 'CV-4-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 04:06:00', '2023-06-06 04:06:00'),
(68, '2023-06-06', 12, 1500.00, 0, 5, 2, NULL, NULL, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 5, 'CV-5-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hi', '2023-06-06 04:14:34', '2023-06-06 04:14:34'),
(69, '2023-06-06', 2, 1500.00, 0, 16, 2, NULL, 2, NULL, NULL, NULL, 16, NULL, 5, NULL, 2, 0, '2022-2023', 5, 'CV-5-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hi', '2023-06-06 04:14:34', '2023-06-06 04:14:34'),
(70, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 2, 4, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-2', 1, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(71, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 2, 5, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-2', 1, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(72, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 2, 6, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-2', 1, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(73, '2023-06-06', 8, 6000.00, 0, 4, NULL, NULL, NULL, NULL, 2, 7, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-2', 1, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(74, '2023-06-06', 9, 6000.00, 0, 16, NULL, NULL, NULL, NULL, 2, 8, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-2', 2, 'JV-2', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(75, '2023-06-06', 12, 6000.00, 0, 4, 3, NULL, NULL, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 5, 'CV-5-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(76, '2023-06-06', 2, 6000.00, 0, 16, 3, NULL, 3, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 5, 'CV-5-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 08:49:16', '2023-06-06 08:49:16'),
(77, '2023-06-06', 8, 50800.00, 0, 4, NULL, NULL, NULL, NULL, 3, 9, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-3', 1, 'JV-3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(78, '2023-06-06', 8, 50800.00, 0, 4, NULL, NULL, NULL, NULL, 3, 10, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-3', 1, 'JV-3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(79, '2023-06-06', 8, 50800.00, 0, 4, NULL, NULL, NULL, NULL, 3, 11, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-3', 1, 'JV-3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(80, '2023-06-06', 8, 50800.00, 0, 4, NULL, NULL, NULL, NULL, 3, 12, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-3', 1, 'JV-3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(81, '2023-06-06', 9, 50800.00, 0, 16, NULL, NULL, NULL, NULL, 3, 13, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-3', 2, 'JV-3', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(82, '2023-06-06', 12, 25800.00, 0, 4, 4, NULL, NULL, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 6, 'CV-6-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(83, '2023-06-06', 2, 25800.00, 0, 16, 4, NULL, 4, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 6, 'CV-6-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 10:30:34', '2023-06-06 10:30:34'),
(84, '2023-06-06', 8, 3170.00, 0, 3, NULL, NULL, NULL, NULL, 4, 14, 3, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-4', 1, 'JV-4', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Finished Goods', '2023-06-06 10:31:28', '2023-06-06 10:31:28'),
(90, '2023-06-06', 8, 4400.00, 0, 4, NULL, NULL, NULL, NULL, 6, 20, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-6', 1, 'JV-6', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(91, '2023-06-06', 8, 4400.00, 0, 4, NULL, NULL, NULL, NULL, 6, 21, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-6', 1, 'JV-6', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(92, '2023-06-06', 9, 4400.00, 0, 16, NULL, NULL, NULL, NULL, 6, 22, 16, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-6', 2, 'JV-6', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(93, '2023-06-06', 12, 2000.00, 0, 4, 5, NULL, NULL, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 7, 'CV-7-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(94, '2023-06-06', 2, 2000.00, 0, 16, 5, NULL, 5, NULL, NULL, NULL, 16, NULL, 4, NULL, 2, 0, '2022-2023', 7, 'CV-7-10004', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-06 11:37:14', '2023-06-06 11:37:14'),
(145, '2023-06-07', 8, 3000.00, 0, 5, NULL, NULL, NULL, NULL, 12, 73, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-12', 1, 'JV-12', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(146, '2023-06-07', 9, 3000.00, 0, 1, NULL, NULL, NULL, NULL, 12, 74, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-12', 2, 'JV-12', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(147, '2023-06-07', 12, 2000.00, 0, 5, 6, NULL, NULL, NULL, NULL, NULL, 1, NULL, 5, NULL, 2, 0, '2022-2023', 6, 'CV-6-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(148, '2023-06-07', 2, 2000.00, 0, 1, 6, NULL, 6, NULL, NULL, NULL, 1, NULL, 5, NULL, 2, 0, '2022-2023', 6, 'CV-6-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:18:42', '2023-06-07 05:18:42'),
(149, '2023-06-07', 8, 4500.00, 0, 5, NULL, NULL, NULL, NULL, 13, 75, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-13', 1, 'JV-13', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(150, '2023-06-07', 9, 4500.00, 0, 1, NULL, NULL, NULL, NULL, 13, 76, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-13', 2, 'JV-13', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(151, '2023-06-07', 12, 3500.00, 0, 5, 7, NULL, NULL, NULL, NULL, NULL, 1, NULL, 5, NULL, 2, 0, '2022-2023', 7, 'CV-7-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(152, '2023-06-07', 2, 3500.00, 0, 1, 7, NULL, 7, NULL, NULL, NULL, 1, NULL, 5, NULL, 2, 0, '2022-2023', 7, 'CV-7-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 05:27:09', '2023-06-07 05:27:09'),
(153, '2023-06-07', 8, 18500.00, 0, 5, NULL, NULL, NULL, NULL, 14, 77, 14, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-14', 1, 'JV-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(154, '2023-06-07', 8, 18500.00, 0, 5, NULL, NULL, NULL, NULL, 14, 78, 14, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-14', 1, 'JV-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(155, '2023-06-07', 9, 18500.00, 0, 14, NULL, NULL, NULL, NULL, 14, 79, 14, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-14', 2, 'JV-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(156, '2023-06-07', 12, 10500.00, 0, 5, 8, NULL, NULL, NULL, NULL, NULL, 14, NULL, 5, NULL, 2, 0, '2022-2023', 8, 'CV-8-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(157, '2023-06-07', 2, 10500.00, 0, 14, 8, NULL, 8, NULL, NULL, NULL, 14, NULL, 5, NULL, 2, 0, '2022-2023', 8, 'CV-8-10005', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 06:33:59', '2023-06-07 06:33:59'),
(161, '2023-06-07', 8, 700.00, 0, 1, NULL, NULL, NULL, NULL, 15, 83, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-15', 1, 'JV-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Finished Goods', '2023-06-07 07:55:29', '2023-06-07 07:55:29'),
(162, '2023-06-07', 9, 500.00, 0, 22, NULL, NULL, NULL, NULL, 15, 84, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-15', 2, 'JV-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Row Material Consumption', '2023-06-07 07:55:29', '2023-06-07 07:55:29'),
(163, '2023-06-07', 9, 200.00, 0, 2, NULL, NULL, NULL, NULL, 15, 85, 1, NULL, NULL, NULL, NULL, 0, '2022-2023', NULL, 'JV-15', 2, 'JV-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Row Material Consumption', '2023-06-07 07:55:29', '2023-06-07 07:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pcs', '1', '2023-05-16 02:10:37', '2023-06-05 09:51:01'),
(2, 'Kg', '1', '2023-06-05 10:12:44', '2023-06-05 10:12:44'),
(3, 'Box', '1', '2023-06-05 10:12:50', '2023-06-05 10:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) DEFAULT 1 COMMENT '1=Admin,2=Technician ',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `name`, `username`, `email`, `role`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Safety Mark', 'Safety Mark', 'admin@gmail.com', 1, NULL, '$2y$10$WzawcR47Bwvm8q6t6476mu.TPHDIP7B8gy7GmDLBwtVdgCIQacr.y', 1, 'iSqvcABq8MBIWnqULwlo4wUhWa22s7jNd99J8pcNgS9LlZ0lZCVF9h8H5qjO', '2022-04-21 05:45:37', '2023-01-31 14:45:44'),
(2, 3, 'Khalil', 'Khalil', 'technician@gmail.com', 2, NULL, '$2y$10$WzawcR47Bwvm8q6t6476mu.TPHDIP7B8gy7GmDLBwtVdgCIQacr.y', 1, NULL, '2023-03-14 06:01:57', '2023-03-14 06:01:57'),
(5, NULL, 'Baytul Ahmed', 'Baytul Ahmed', 'baytul@gmail.com', 2, NULL, '$2y$10$TnBjxiCY6KYCAybDYITybubSlf/atCR4QNTs0GSnGGF0Ka34C3CLm', 1, NULL, '2023-06-06 12:59:17', '2023-06-06 12:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_type` tinyint(2) DEFAULT NULL,
  `dealer_id` bigint(11) DEFAULT NULL,
  `distributor_id` bigint(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `company_type`, `dealer_id`, `distributor_id`, `name`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Mohakhali', 'Mohakhali Flyover,Dhaka', 1, '2023-05-16 02:10:12', '2023-05-16 02:10:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_heads`
--
ALTER TABLE `account_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_head_sub_types`
--
ALTER TABLE `account_head_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_head_types`
--
ALTER TABLE `account_head_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_transfers`
--
ALTER TABLE `balance_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_products`
--
ALTER TABLE `config_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_product_details`
--
ALTER TABLE `config_product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finished_goods`
--
ALTER TABLE `finished_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finished_goods_row_materials`
--
ALTER TABLE `finished_goods_row_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_logs`
--
ALTER TABLE `inventory_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_vouchers`
--
ALTER TABLE `journal_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_voucher_details`
--
ALTER TABLE `journal_voucher_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_products`
--
ALTER TABLE `purchase_order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_payments`
--
ALTER TABLE `receipt_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_payment_details`
--
ALTER TABLE `receipt_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_payment_files`
--
ALTER TABLE `receipt_payment_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_change_logs`
--
ALTER TABLE `salary_change_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_order_products`
--
ALTER TABLE `sales_order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_sections`
--
ALTER TABLE `tax_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_heads`
--
ALTER TABLE `account_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `account_head_sub_types`
--
ALTER TABLE `account_head_sub_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_head_types`
--
ALTER TABLE `account_head_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `balance_transfers`
--
ALTER TABLE `balance_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `config_products`
--
ALTER TABLE `config_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `config_product_details`
--
ALTER TABLE `config_product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `finished_goods`
--
ALTER TABLE `finished_goods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `finished_goods_row_materials`
--
ALTER TABLE `finished_goods_row_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inventory_logs`
--
ALTER TABLE `inventory_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `journal_vouchers`
--
ALTER TABLE `journal_vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `journal_voucher_details`
--
ALTER TABLE `journal_voucher_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_order_products`
--
ALTER TABLE `purchase_order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipt_payments`
--
ALTER TABLE `receipt_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `receipt_payment_details`
--
ALTER TABLE `receipt_payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `receipt_payment_files`
--
ALTER TABLE `receipt_payment_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_change_logs`
--
ALTER TABLE `salary_change_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_order_products`
--
ALTER TABLE `sales_order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_sections`
--
ALTER TABLE `tax_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
