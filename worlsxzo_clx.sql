-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2022 at 12:49 PM
-- Server version: 10.3.34-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worlsxzo_clx`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_balances`
--

CREATE TABLE `account_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `balance` decimal(16,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_notes`
--

CREATE TABLE `app_notes` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_password_manager`
--

CREATE TABLE `app_password_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_password_manager`
--

INSERT INTO `app_password_manager` (`id`, `client_id`, `type`, `name`, `url`, `username`, `password`, `notes`, `created_at`, `updated_at`) VALUES
(4, 294, NULL, 'google 2', 'http://www.google.com', 'test', 'test', '', '2017-12-09 22:28:36', '2017-12-09 23:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `app_sms`
--

CREATE TABLE `app_sms` (
  `id` int(11) NOT NULL,
  `req_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `sms_from` text DEFAULT NULL,
  `sms_to` text DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `driver` text DEFAULT NULL,
  `resp` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `stype` varchar(200) NOT NULL DEFAULT 'Sent',
  `cid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `trid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms`
--

INSERT INTO `app_sms` (`id`, `req_time`, `sent_time`, `sms_from`, `sms_to`, `sms`, `driver`, `resp`, `status`, `stype`, `cid`, `aid`, `company_id`, `iid`, `trid`, `lid`, `oid`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '', '1753881177', 'Shabok | test. View: https://worldacademy.org.uk/?ng=tickets/admin/view/1', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-04 10:10:50', '2022-01-04 10:10:50'),
(2, NULL, NULL, '', '1753881177', 'Shabok | test. View: https://worldacademy.org.uk/?ng=tickets/admin/view/2', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-07 23:03:53', '2022-01-07 23:03:53'),
(3, NULL, NULL, 'CLX', '+8801799985299', 'test', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-21 13:08:19', '2022-01-21 13:08:19'),
(4, NULL, NULL, '', '', 'Thanks for Accepting Quote - 1. You can view this Quote- https://worldacademy.org.uk/?ng=client/q/1/token_9893234767', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-01 21:17:16', '2022-02-01 21:17:16'),
(5, NULL, NULL, '', '1753881177', 'Quote - 1 has been accepted. You can view this Quote- https://worldacademy.org.uk/?ng=client/q/1/token_9893234767', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-01 21:17:19', '2022-02-01 21:17:19'),
(6, NULL, NULL, '', '1753881177', 'Shabok | enrolment for . View: https://worldacademy.org.uk/?ng=tickets/admin/view/3', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-01 22:33:33', '2022-02-01 22:33:33'),
(7, NULL, NULL, '', '1753881177', 'Shabok | Test. View: https://worldacademy.org.uk/?ng=tickets/admin/view/4', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-03 21:19:47', '2022-02-03 21:19:47'),
(8, NULL, NULL, '', '1753881177', 'Shabok | New Test Ticket. View: https://worldacademy.org.uk/?ng=tickets/admin/view/5', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-03 21:32:46', '2022-02-03 21:32:46'),
(9, NULL, NULL, '', '1753881177', 'Shabok | enrolment for . View: https://worldacademy.org.uk/?ng=tickets/admin/view/6', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 10:45:45', '2022-02-05 10:45:45'),
(10, NULL, NULL, 'WARD', '+8801799985299', 'test', '', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-13 12:09:31', '2022-02-13 12:09:31'),
(11, NULL, NULL, 'World Academy', '01799985299', 'test', '', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-03-29 19:56:40', '2022-03-29 19:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `app_sms_drivers`
--

CREATE TABLE `app_sms_drivers` (
  `id` int(11) NOT NULL,
  `dname` varchar(200) DEFAULT NULL,
  `handler` varchar(200) DEFAULT NULL,
  `weburl` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `incoming_url` varchar(200) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `api_key` varchar(200) DEFAULT NULL,
  `api_secret` varchar(200) DEFAULT NULL,
  `route` varchar(200) DEFAULT NULL,
  `sender_id` varchar(100) DEFAULT NULL,
  `balance` decimal(14,2) DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms_drivers`
--

INSERT INTO `app_sms_drivers` (`id`, `dname`, `handler`, `weburl`, `description`, `url`, `incoming_url`, `method`, `username`, `password`, `api_key`, `api_secret`, `route`, `sender_id`, `balance`, `placeholder`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(135, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', '1.00', '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(136, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(137, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', '1.00', '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(138, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_sms_templates`
--

CREATE TABLE `app_sms_templates` (
  `id` int(11) NOT NULL,
  `tpl` varchar(200) DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_at_2` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms_templates`
--

INSERT INTO `app_sms_templates` (`id`, `tpl`, `sms`, `status`, `created_at`, `updated_at`, `updated_at_2`) VALUES
(1, 'Invoice Created', 'Your Invoice- {{invoice_id}} is created. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-23 08:59:37', NULL),
(2, 'Invoice Payment Reminder', 'We have not received payment for invoice {{invoice_id}}, dated {{invoice_date}}. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-23 09:01:14', NULL),
(3, 'Invoice Overdue Notice', 'Your Invoice- {{invoice_id}} is now overdue. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-23 08:59:20', NULL),
(4, 'Invoice Payment Confirmation', 'We have received your Payment for Invoice ID- {{invoice_id}}', NULL, NULL, '2017-11-23 09:02:15', NULL),
(5, 'Invoice Refund Confirmation', 'Your Payment for {{invoice_id}} has been refunded.', NULL, NULL, '2017-11-23 09:03:19', NULL),
(6, 'Quote Created', 'A Quote has been created- {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 09:03:19', NULL),
(7, 'Quote Accepted', 'Thanks for Accepting Quote - {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 09:03:19', NULL),
(8, 'Quote Cancelled', 'Quote has been cancelled - {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 09:03:19', NULL),
(9, 'Quote Accepted: Admin Notification', 'Quote - {{quote_id}} has been accepted. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 09:03:19', NULL),
(10, 'Quote Cancelled: Admin Notification', 'Quote - {{quote_id}} has been Cancelled. You can view this Quote- {{quote_url}}', NULL, NULL, NULL, NULL),
(12, 'Ticket Assigned: Admin Notification', 'Ticket - {{ticket_id}} has been assigned to you.', NULL, '2018-10-24 19:33:32', '2018-10-24 19:33:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_purchased` date DEFAULT NULL,
  `supported_until` date DEFAULT NULL,
  `price` decimal(16,4) DEFAULT NULL,
  `depreciation` decimal(16,4) DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `asset`, `name`, `brand`, `date_purchased`, `supported_until`, `price`, `depreciation`, `serial`, `image`, `status`, `notes`, `category_id`, `employee_id`, `contact_id`, `location_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, '', 'Macbook Pro', '', '2018-11-06', '2019-11-06', '1250.0000', NULL, 'SL37289274899', NULL, NULL, '', 6, NULL, NULL, NULL, NULL, '2018-11-06 10:12:09', '2018-11-06 10:12:23'),
(9, '', 'CloudOnex Business Suite', '', '2018-11-06', '2019-11-06', '299.0000', NULL, 'ABC-17284-278487-2222', NULL, NULL, '', 7, NULL, NULL, NULL, NULL, '2018-11-06 10:13:02', '2018-11-06 10:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `parent_id`, `name`, `api_name`, `plural`, `slug`, `prefix`, `sl`, `is_active`, `is_default`, `sort_order`, `created_at`, `updated_at`) VALUES
(6, 0, 'Electronics', '', '', '', '', '', 1, 0, 1, '2018-11-06 10:11:40', '2018-11-06 10:11:40'),
(7, 0, 'Software', '', '', '', '', '', 1, 0, 1, '2018-11-06 10:11:46', '2018-11-06 10:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `is_present` tinyint(1) NOT NULL DEFAULT 1,
  `total_time` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `note`, `employee_id`, `date`, `is_present`, `total_time`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, '2022-01-04', 1, NULL, '2022-01-04 21:58:36', '2022-01-04 21:58:36'),
(2, NULL, 0, '2022-01-03', 1, NULL, '2022-01-04 21:58:56', '2022-01-04 21:58:56'),
(3, NULL, 0, '2022-01-02', 1, NULL, '2022-01-04 21:59:02', '2022-01-04 21:59:02'),
(4, NULL, 0, '2022-01-03', 1, NULL, '2022-01-04 21:59:11', '2022-01-04 21:59:11'),
(5, 'test', 2, '2022-01-03', 1, NULL, '2022-01-04 21:59:24', '2022-01-04 21:59:24'),
(6, NULL, 0, '2022-01-04', 1, NULL, '2022-01-04 21:59:31', '2022-01-04 21:59:31'),
(7, 'test-2', 2, '2022-01-04', 1, NULL, '2022-01-04 21:59:36', '2022-01-04 21:59:36'),
(8, NULL, 0, '2022-01-02', 1, NULL, '2022-01-04 21:59:47', '2022-01-04 21:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `automation_tasks`
--

CREATE TABLE `automation_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uuid` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `next_date` date NOT NULL,
  `last_paid_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` decimal(16,8) NOT NULL,
  `recurring_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_days_before` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `add_transaction_automatically` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_skipped` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clx_integrations`
--

CREATE TABLE `clx_integrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clx_projects`
--

CREATE TABLE `clx_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `proposal_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `project_manager_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `members` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `estimate_finish_date` date DEFAULT NULL,
  `actual_finish_date` date DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(16,8) DEFAULT NULL,
  `budget` decimal(16,8) DEFAULT NULL,
  `logged_seconds` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_expense` decimal(16,8) DEFAULT NULL,
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_can_view_task` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_create_task` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_edit_task` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_comment` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_view_time` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_upload_file` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_discuss` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_view_timesheet` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_view_activity_log` tinyint(1) NOT NULL DEFAULT 0,
  `contact_can_view_members` tinyint(1) NOT NULL DEFAULT 0,
  `tab_tasks` tinyint(1) NOT NULL DEFAULT 1,
  `tab_timesheet` tinyint(1) NOT NULL DEFAULT 1,
  `tab_milestones` tinyint(1) NOT NULL DEFAULT 1,
  `tab_files` tinyint(1) NOT NULL DEFAULT 1,
  `tab_discussions` tinyint(1) NOT NULL DEFAULT 1,
  `tab_gantt_view` tinyint(1) NOT NULL DEFAULT 1,
  `tab_tickets` tinyint(1) NOT NULL DEFAULT 1,
  `tab_invoices` tinyint(1) NOT NULL DEFAULT 1,
  `tab_proposals` tinyint(1) NOT NULL DEFAULT 1,
  `tab_members` tinyint(1) NOT NULL DEFAULT 1,
  `tab_calendar` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clx_shared_preferences`
--

CREATE TABLE `clx_shared_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `relation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `related_to` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_customer` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invoice_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subscription_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_one_first_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_one_last_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_one_email` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_one_sign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_one_sign_ip_address` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_one_sign_date` date DEFAULT NULL,
  `party_one_signed` tinyint(1) NOT NULL DEFAULT 0,
  `party_two_first_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_two_last_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_two_email` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_two_sign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_two_sign_ip_address` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_two_sign_date` date DEFAULT NULL,
  `party_two_signed` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_customer` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE `credit_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_month` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_year` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `contact_id`, `card_type`, `card_holder_name`, `card_number`, `expiry_month`, `expiry_year`, `cvv`, `created_at`, `updated_at`) VALUES
(1, 294, '', 'Maria Elizabeth', '424242424242424242', '07', '22', '456', '2018-04-23 11:17:45', '2018-04-23 15:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounts`
--

CREATE TABLE `crm_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `jobtitle` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `o` int(11) DEFAULT 0,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `balance` decimal(16,2) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `ts` text DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `google` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT 0,
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT 0,
  `securityqid` int(10) NOT NULL DEFAULT 0,
  `securityqans` text DEFAULT NULL,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text DEFAULT NULL,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT 0,
  `language` text DEFAULT NULL,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `is_email_verified` int(1) NOT NULL DEFAULT 0,
  `is_phone_veirifed` int(1) NOT NULL DEFAULT 0,
  `photo_id_type` varchar(100) DEFAULT NULL,
  `photo_id` varchar(100) DEFAULT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'Customer',
  `drive` varchar(50) DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(100) DEFAULT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `secondary_email` varchar(200) DEFAULT NULL,
  `secondary_phone` varchar(200) DEFAULT NULL,
  `g_drive` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounts`
--

INSERT INTO `crm_accounts` (`id`, `account`, `fname`, `lname`, `company`, `business_number`, `jobtitle`, `cid`, `o`, `phone`, `fax`, `email`, `is_primary_contact`, `username`, `address`, `city`, `state`, `zip`, `country`, `balance`, `status`, `notes`, `options`, `tags`, `password`, `token`, `ts`, `img`, `web`, `facebook`, `google`, `linkedin`, `twitter`, `skype`, `tax_number`, `entity_number`, `currency`, `pmethod`, `autologin`, `lastlogin`, `lastloginip`, `stage`, `timezone`, `isp`, `lat`, `lon`, `gname`, `gid`, `sid`, `role`, `country_code`, `country_idd`, `signed_up_by`, `signed_up_ip`, `dob`, `ct`, `assistant`, `asst_phone`, `second_email`, `second_phone`, `taxexempt`, `latefeeoveride`, `overideduenotices`, `separateinvoices`, `disableautocc`, `billingcid`, `securityqid`, `securityqans`, `cardtype`, `cardlastfour`, `cardnum`, `startdate`, `expdate`, `issuenumber`, `bankname`, `banktype`, `bankcode`, `bankacct`, `gatewayid`, `language`, `pwresetkey`, `emailoptout`, `created_at`, `updated_at`, `pwresetexpiry`, `is_email_verified`, `is_phone_veirifed`, `photo_id_type`, `photo_id`, `type`, `drive`, `workspace_id`, `parent_id`, `code`, `display_name`, `secondary_email`, `secondary_phone`, `g_drive`) VALUES
(1, 'Shabok', '', '', '', '', '', 0, 2, '', '', 'training.ward@wardbd.net', 0, 'training.ward@wardbd.net', '', '', '', '', 'United Kingdom', '0.00', 'Active', '', NULL, '', '$2y$10$dGiTFUI78CY0Xy6a4xF47e.fuAWoR3RnMGhnEJBcQ84x.j.78vUMO', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-02-09 17:21:40', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-12-31 11:31:01', '2022-02-09 17:21:40', NULL, 0, 0, NULL, NULL, 'Customer', '1640950261jorof5odu15f', 0, 0, 'WARD-CUS-00001', NULL, '', NULL, 'https://worldacademy.org.uk'),
(2, 'Kazi Arif Papul', '', '', '', '01780175893', '', 0, 1, '01780175893', '', 'arifpapul19977@gmail.com', 0, NULL, '123, Mohammadpur, Dhaka-1207.', '', '', 'info@worldacademy.org.uk', 'United Kingdom', '0.00', 'Active', '', NULL, '', '$2y$10$WBuDZhjU0w7UlTj01TfzHO0oVq5QOVDY/WcZHp4S3.lSQObjNnYZ.', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-06 19:20:22', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1641496822si8320zir569', 0, 0, 'WARD-CUS-00002', NULL, '', NULL, NULL),
(3, 'Azizan', '', '', '', '', '', 0, 1, '', '', 'rupakzaidi@gmail.com', 0, 'rupakzaidi@gmail.com', '', '', '', '2222', 'Malaysia', '0.00', 'Active', '', NULL, '', '$2y$10$XpxlTvOpCLGUcrTyKtC.Tu7gN2JwQuw46s5UvuagRU.nZ0E8NIVoi', '2gsgcqsgs2pav0i70zajf415cac1af9c3ce841d7385aa01f568a', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-03-10 16:57:05', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'en', NULL, NULL, '2022-01-07 03:59:08', '2022-04-17 07:34:01', NULL, 0, 0, NULL, NULL, 'Supplier', '1641527948ogty9skqd8i5', 0, 0, 'SUP-00001', NULL, '', NULL, ''),
(5, 'Rakib', '', '', '', '', '', 0, 4, '', '', 'rakib@wardglobal.net', 0, '', '', '', '', '', 'Bangladesh', '0.00', 'Active', '', NULL, '', '$2y$10$acXiUE8mDSZ4XBiVZ7oQD.u5h4PZnksVOLypKQffBVsCMTytdFM2K', 'b86xo4ihwwfp5gv3zkzgff92a7a0e411508799d983e3c18ba413', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-01-21 04:41:59', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'en_gb', NULL, NULL, '2022-01-08 12:41:19', '2022-01-21 04:41:59', NULL, 0, 0, NULL, NULL, 'Customer', '16416456791ky6khzlj6i1', 0, 0, 'WARD-CUS-00004', NULL, '', NULL, NULL),
(6, 'Rosette Esmeralda', '', '', 'CIRCA LOGICA GROUP', '', '', 1, 1, '', '', 'rosette.musni@circalogicagroup.com', 0, 'rosette', '2/F Paragon Building, McArthur Highway, Balibago', 'Angeles City', 'Pampanga', '2009', 'Philippines', '0.00', 'Active', '', NULL, '', '$2y$10$WOVjZnR3E6649yExr.mgz.VZAAdkCc4OsTM61jLdFsNZsiAqonUre', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Circa Logica', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-12 07:19:10', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1641971950qfw1c73x9zhg', 0, 0, 'WARD-CUS-00005', NULL, 'rosette.musni@circalogicagroup.com', NULL, 'https://drive.google.com/drive/folders/1K7FdeYKBO9PzEgpoRx9NqjG8PWPICwIn?usp=sharing'),
(7, 'Rashed Salonga', '', '', 'CIRCA LOGICA GROUP', '', '', 1, 1, '', '', 'rashed.salonga@circalogicagroup.com', 0, '', '2/F Paragon Building, McArthur Highway, Balibago', 'Angeles City', 'Pampanga', '2009', 'Philippines', '0.00', 'Active', '', NULL, '', '$2y$10$.hBIzJvW5SzM4rnyzIwQHuTGjMl8DlPycrCLdmdH.ZYPPyhu7ysj.', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-12 07:41:25', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16419732853bldj1ffwjon', 0, 0, 'WARD-CUS-00006', NULL, '', NULL, 'https://drive.google.com/drive/folders/1K7FdeYKBO9PzEgpoRx9NqjG8PWPICwIn?usp=sharing'),
(8, 'Daniel T. Johnson', '', '', '', '', '', 0, 1, '', '', 'tugbah.johnson@yahoo.com', 0, NULL, '', '', '', '', 'Liberia', '0.00', 'Active', '', NULL, '', '$2y$10$E0Op3rka00HFsMmLQeGFCeVRvqboJpn8q1yIZokykYrluB44GLMBe', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-16 11:06:36', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1642331196g2rnc72r9xzp', 0, 0, 'WARD-CUS-00007', NULL, '', NULL, NULL),
(9, 'Test', '', '', '', '', '', 0, 1, '01799985299', '', 'rmnzaidi@gmail.com', 0, NULL, 'S-29 First Floor, Nurjahan Road, Mo', 'Dhaka', 'Dhaka', 'info@worldacademy.org.uk', 'Bangladesh', '0.00', 'Active', '', NULL, '', '$2y$10$iOtK3zBy2gidPH1fG3e2g.cZE9O.newCknZXAjhe9aBZG2jXGEM.6', 'yypei4sz32mxcrnd88j1a520b44ad3d9e728a4376147a6d41c80', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-05-27 19:20:58', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-22 17:14:11', '2022-05-27 19:20:58', NULL, 0, 0, NULL, NULL, 'Customer', '1642871651347pwd4veswo', 0, 0, 'WARD-CUS-00008', NULL, 'rmnzaidi@gmail.com', NULL, 'https://drive.google.com/drive/folders/0B03k4Z4q-pFlX3dobWNHaWxYYTQ?resourcekey=0-cR1OvHHZOA-uW3D9uKTasg&amp;usp=sharing'),
(10, 'Ashie', '', '', '', NULL, '', 0, 0, '', NULL, 'itxaxhu668@gmail.com', 0, NULL, '', '', '', '', '', '0.00', 'Active', '', NULL, '', '$2y$10$dkFfk5JSPzVwBScpRHJCeuhKjx.Ci9so/WcXkEp5fMuQ/Jd9RYpFi', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '39.45.150.150', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, '39.45.150.150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-05 07:01:27', NULL, NULL, 0, 0, NULL, NULL, 'Customer', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, 'DAIMA AFRICA BUSINESS CONSULTANTS - Uganda', '', '', '', '+256 782 332561', '', 0, 1, '+256 782 332561', '', 'kabaseke2020@gmail.com', 0, NULL, '', 'Uganda', 'Uganda', '', 'Uganda', '0.00', 'Active', 'Partner in Uganda, 20% royalty', NULL, '', '$2y$10$ZCHFToxlzToXaPENYRAedODyO1KYt4/or2ElfbUSwMtsNnxePj0j6', 'ffk2n5yvsrft9gxleyeqa47004667f5d4fd095db66c1f90b355e', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-02-19 16:49:49', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-13 10:16:20', '2022-02-19 16:49:49', NULL, 0, 0, NULL, NULL, 'Customer', '16447473808ucaslqws5lk', 0, 0, 'WARD-CUS-00009', NULL, 'daimaafricabusinessconsultants@gmail.com', NULL, 'https://drive.google.com/drive/folders/1TXpFdJumVODBDsa3YxIqJ-1F8y1qLFcm?usp=sharing'),
(12, 'Mr. Jazeentha Mohamed Riyas', '', '', '', '+94672279358', '', 0, 1, '+94753962000', '', 'getscampus@gmail.com', 0, '', 'No-67, Main Street Addalaichenai.05', 'Colombo', '', '', 'Sri Lanka', '0.00', 'Active', '', NULL, '', '$2y$10$hT.2JKM0ACPfuptPWKMuceN1.mJ9Jlx8RVR9HBx2LBUwDbJk6c/wm', '2abilmws5ig6szpoqlx20a3e76c0a251ecdb0ace3b23a503097f', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-02-27 11:25:12', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-26 09:55:10', '2022-02-27 11:25:12', NULL, 0, 0, NULL, NULL, 'Customer', '1645869310sktf3d7c5odi', 0, 0, 'WARD-CUS-00010', NULL, '', NULL, 'https://drive.google.com/drive/folders/1J7hNZoRaYNwnZ9lSDgT1ttaor3njsNBl?usp=sharing'),
(13, 'Mr. Roshan', '', '', '', '', '', 0, 1, '+9607230381', '', 'roshanfairook1@gmail.com', 0, NULL, '', 'Male', '', '', 'Maldives', '0.00', 'Active', '', NULL, '', '$2y$10$OtE75aR5aNSaTKztADpRSexVKii33CZhn3uiH7ChHav2lPxZe7gEO', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-02-26 18:38:48', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1645900728sraguw0k1t7z', 0, 0, 'WARD-CUS-00011', NULL, 'Training@academy.mv', NULL, 'https://drive.google.com/drive/folders/1w5_khjZELYcA3BDd70tPISu5T_WB_jBi?usp=sharing'),
(14, 'Soni Nakarmi', '', '', '', '', '', 0, 1, '', '', 'soni@ftonepal.org', 0, NULL, 'Kathmandu', '', '', '', 'Nepal', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-07 12:15:47', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649330147tjdtw006pnel', 0, 0, 'WARD-CUS-00012', NULL, '', NULL, ''),
(15, 'AUSTINE JOSEPH ODHIAMBO', '', '', '', '', '', 0, 1, '', '', 'austinejoseph42@gmail.com', 0, NULL, 'kenya', '', '', '', 'Kenya', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-07 17:58:07', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649350687zn375rdm1nm8', 0, 0, 'WARD-CUS-00013', NULL, '', NULL, ''),
(16, 'Blessing Ahmadu', '', '', '', '', '', 0, 1, '+234 815 639 2980', '', 'ahmadu.blessing.ab@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-09 11:14:19', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16494992590nyflwuymves', 0, 0, 'WARD-CUS-00014', NULL, '', NULL, ''),
(17, 'Fernandez, Brian Gilbert Paneda', '', '', '', '', '', 0, 1, '+63 917 729 0243', '', 'fernandezkeonbrian@gmail.com', 0, NULL, '', '', '', '+63', 'Philippines', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-09 11:40:58', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649500858vpyzfjxihu6x', 0, 0, 'WARD-CUS-00015', NULL, '', NULL, ''),
(18, 'Maria Nina B. Almueda', '', '', '', '', '', 0, 1, '', '', 'marianina.banares@jacobi.net', 0, NULL, '', '', '', '+63', 'Philippines', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-10 08:14:31', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649574871vaxbuj86hqmj', 0, 0, 'WARD-CUS-00016', NULL, '', NULL, ''),
(19, 'SEMIU OLANREWAJU EMMANUEL', '', '', '', '', '', 0, 1, '', '', 'adebolaolanrewaju947@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-10 09:26:06', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16495791668jsr0952jxjs', 0, 0, 'WARD-CUS-00017', NULL, '', NULL, ''),
(20, 'Ahmed Kofi Dzramedo', '', '', '', '', '', 0, 1, '+233 24 822 6728', '', 'ahmeddzramado@gmail.com', 0, '', '', '', '', '+233', 'Ghana', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PcHRO', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-10 11:28:24', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649586504f2id4wskx3q2', 0, 0, 'WARD-CUS-00018', NULL, '', NULL, ''),
(21, 'Adekunle Onafusi', '', '', '', '', '', 0, 1, '+234 706 202 6100', '', 'a.onafusi@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-11 06:54:34', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649656474bhacbma9gmk8', 0, 0, 'WARD-CUS-00019', NULL, '', NULL, ''),
(22, 'Alphonso Siebonue Kofi, Sr', '', '', '', '', '', 0, 1, '', '', '2015kofi@gmail.com', 0, NULL, '', '', '', '+231', 'Liberia', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-12 11:17:30', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649758650w8pagbl1u659', 0, 0, 'WARD-CUS-00020', NULL, '', NULL, ''),
(23, 'Kiotte Aaron Ilisan', '', '', '', '', '', 0, 1, '', '', 'qutieilisan@yahoo.com', 0, NULL, '', '', '', '+60', 'Maldives', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-13 07:02:12', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '164982973225h50u6fm59e', 0, 0, 'WARD-CUS-00021', NULL, '', NULL, ''),
(24, 'Elias Getahun', '', '', '', '', '', 0, 1, '+251 92 629 5657', '', 'natielageta@gmail.com', 0, NULL, '', '', '', '+251', 'Ethiopia', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-13 15:16:51', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1649859411hvqs3xzsxade', 0, 0, 'WARD-CUS-00022', NULL, '', NULL, ''),
(25, 'Joseph Gbao', '', '', '', '', '', 0, 1, '+232 78 864031', '', 'joseph.gbao@gmail.com', 0, NULL, '', '', '', '+232', 'Sierra Leone', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-15 07:10:47', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16500030477m8ybij4lbyn', 0, 0, 'WARD-CUS-00023', NULL, '', NULL, ''),
(26, 'MICHAEL OLUDARE AJAYI', '', '', '', '', '', 0, 1, '+234 701 283 8638', '', 'mikedareajayi@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-16 09:28:11', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16500976913b312mltytqw', 0, 0, 'WARD-CUS-00024', NULL, '', NULL, ''),
(27, 'Jonathan Anderson', '', '', '', '', '', 0, 1, '+233 55 986 3057', '', 'jonathananderson139@gmail.com', 0, NULL, '', '', '', '+233', 'Ghana', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-17 14:31:07', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1650202267xqitml2uzvji', 0, 0, 'WARD-CUS-00025', NULL, '', NULL, ''),
(28, 'WENDWESSEN ALEMAYEHU BEYENE', '', '', '', '', '', 0, 1, '+251 91 170 1241', '', 'wendeyenegeta@gmsil.come', 0, NULL, '', '', '', '+251', 'Ethiopia', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-19 07:27:52', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16503496728lxlg09rdgxv', 0, 0, 'WARD-CUS-00026', NULL, '', NULL, ''),
(29, 'Matthew Mensah', '', '', '', '', '', 0, 1, '+233 24 702 8142', '', 'matthewhighlanda14@gmail.com', 0, NULL, '', '', '', '+233', 'Ghana', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-19 10:50:44', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1650361844vwnk8leyei3a', 0, 0, 'WARD-CUS-00027', NULL, '', NULL, ''),
(30, 'JIMMY AKENA  DE LOTTO', '', '', '', '', '', 0, 1, '+211 916 788 924', '', 'jimmyakena05@gmail.com', 0, NULL, '', '', '', '+211 (South Sudan)', 'Sudan', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-04-28 06:14:35', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1651122875vugtpv1emc32', 0, 0, 'WARD-CUS-00028', NULL, '', NULL, ''),
(31, 'Obert Elijah', '', '', '', '', '', 0, 1, '840340145', '', 'obertelijah@gmail.com', 0, NULL, '', '', '', '', 'Mozambique', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-06 15:32:57', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16518475772fzuxlh4oej8', 0, 0, 'WARD-CUS-00029', NULL, '', NULL, ''),
(32, 'Toomay M. Robinson', '', '', '', '', '', 0, 1, '+231 88 654 9534', '', 'robinsontoomaymomo@gmail.com', 0, NULL, '', '', '', '+231', 'Liberia', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-07 16:23:08', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1651936988czwapjlonuop', 0, 0, 'WARD-CUS-00030', NULL, '', NULL, ''),
(33, 'FARID FADEL MUSTAFA ALGRIGNI', '', '', '', '', '', 0, 1, '+218 92-5442249', '', 'fareedgrigni@gmail.com', 0, NULL, '', '', '', '+218', 'Libyan Arab Jamahiriya', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-08 12:08:44', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '165200812428r4ceh0klls', 0, 0, 'WARD-CUS-00031', NULL, '', NULL, ''),
(34, 'Asad Ali', '', '', '', '', '', 0, 1, '+960 776-2046', '', 'asadaduali@gmail.com', 0, NULL, '', '', '', '+960', 'Maldives', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-08 12:11:47', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652008307eehrcqf1yobz', 0, 0, 'WARD-CUS-00032', NULL, '', NULL, ''),
(35, 'Lesley Yasmine Sosi', '', '', '', '', '', 0, 1, '+233 24 254 7640', '', 'lesleysosi69@gmail.com', 0, NULL, '', '', '', '+233', 'Ghana', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-10 12:48:29', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652183309ig6en9uj5fsb', 0, 0, 'WARD-CUS-00033', NULL, '', NULL, ''),
(36, 'Thomas Aquinas Kunde', '', '', '', '', '', 0, 1, '+233 24 846 9649', '', 'zenanoba@gmail.com', 0, NULL, '', '', '', '+233', 'Ghana', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-12 10:47:35', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652348855z3sew3rup0wf', 0, 0, 'WARD-CUS-00034', NULL, '', NULL, ''),
(37, 'Lual Gabriel', '', '', '', '', '', 0, 1, '+211 917 477 863', '', 'lualgabriel506@gmail.com', 0, NULL, '', '', '', '+211 (South Sudan)', 'Sudan', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-12 11:12:16', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652350336y7gzm1lh4vw2', 0, 0, 'WARD-CUS-00035', NULL, '', NULL, ''),
(38, 'Ashiru Mohammed Mustapha', '', '', '', '', '', 0, 1, '+234 812 295 7066', '', 'drashirumustapha@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-12 11:25:38', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652351138ydefn9624li5', 0, 0, 'WARD-CUS-00036', NULL, '', NULL, ''),
(39, 'Alpha Kanu', '', '', '', '', '', 0, 1, '+232 76 752672', '', 'alsteve88@gmail.com', 0, NULL, '', '', '', '+232', 'Sierra Leone', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-12 12:21:21', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652354481f5cqohaxqufo', 0, 0, 'WARD-CUS-00037', NULL, '', NULL, ''),
(40, 'JOSEPH EDSON', '', '', '', '', '', 0, 1, '+255 756 561 125', '', 'edsonjoseph910@gmail.com', 0, NULL, '', '', '', '+255', 'Tanzania', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-12 14:09:17', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652360957dcpbmvtd0q7g', 0, 0, 'WARD-CUS-00038', NULL, '', NULL, ''),
(41, 'G. Plason Z. Plakar', '', '', '', '', '', 0, 1, '+231 77 006 5926', '', 'zuerkanah98@gmail.com', 0, NULL, '', '', '', '+231', 'Liberia', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-12 14:11:44', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16523611040cjxmvlti2pu', 0, 0, 'WARD-CUS-00039', NULL, '', NULL, ''),
(42, 'Santos Paulo Bunga', '', '', '', '', '', 0, 1, '+244925381501', '', 'santospaulo10@hotmail.com', 0, NULL, '', '', '', '+244', 'Angola', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-14 11:21:38', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652523698p81z717js8pb', 0, 0, 'WARD-CUS-00040', NULL, '', NULL, ''),
(43, 'Chrispin George', '', '', '', '', '', 0, 1, '+23277895154', '', 'chrispingeorge631@gmail.com', 0, NULL, '', '', '', '+232', 'Sierra Leone', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-15 10:25:03', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652606703ovjbvlvh8z81', 0, 0, 'WARD-CUS-00041', NULL, '', NULL, ''),
(44, 'Abdiaziz Hussein Mohamed Ali', '', '', '', '', '', 0, 1, '+211 925 995 998', '', 'tacliin1988@gmail.com', 0, NULL, '', '', '', '+211', 'Sudan', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-18 10:14:47', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652865287cpc0sfqpn66j', 0, 0, 'WARD-CUS-00042', NULL, '', NULL, ''),
(45, 'Bina Mtawali', '', '', '', '', '', 0, 1, '+265 993 44 88 01', '', 'mtawalibina@yahoo.com', 0, NULL, '', '', '', '+265', 'Malawi', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-18 15:23:08', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16528837888prf52s1dnta', 0, 0, 'WARD-CUS-00043', NULL, '', NULL, ''),
(46, 'Edem Loveland Asempah', '', '', '', '', '', 0, 1, '+233 54 235 8160', '', 'edydave25@gmail.com', 0, NULL, '', '', '', '+233', 'Ghana', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-18 16:49:59', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1652888999gkf4qb96klhh', 0, 0, 'WARD-CUS-00044', NULL, '', NULL, ''),
(47, 'Byamanywoha Edgar', '', '', '', '', '', 0, 1, '+256 702 125280', '', 'bedgark@gmail.com', 0, NULL, '', '', '', '+256', 'Uganda', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-19 13:35:55', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16529637550u1hn57t79ei', 0, 0, 'WARD-CUS-00045', NULL, '', NULL, ''),
(48, 'MOGAJI Oluwatimilehin Babatope', '', '', '', '', '', 0, 1, '+234 818 474 5891', '', 'timmiemogaji@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-19 17:19:21', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '165297716148sg6f8pp76k', 0, 0, 'WARD-CUS-00046', NULL, '', NULL, ''),
(49, 'Teshome Sisay', '', '', '', '', '', 0, 1, '+251 91 001 3547', '', 'teshomes0910@gmail.com', 0, NULL, '', '', '', '+251', 'Ethiopia', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-19 19:31:47', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16529851076pgfyid2y475', 0, 0, 'WARD-CUS-00047', NULL, '', NULL, ''),
(50, 'Abraham Maker Gol', '', '', '', '', '', 0, 1, '+211 929 322 462', '', 'golmaker14@gmail.com', 0, NULL, '', '', '', '+211', 'Sudan', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-20 05:58:46', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653022726fn8tfywnvh79', 0, 0, 'WARD-CUS-00048', NULL, '', NULL, ''),
(51, 'Adelagun Abisola Oluwakemi', '', '', '', '', '', 0, 1, '+234 802 763 3661', '', 'bisolaadelagun@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-20 06:28:18', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653024498kppthm7e71fc', 0, 0, 'WARD-CUS-00049', NULL, '', NULL, ''),
(52, 'Adebayo Kazeem Sanni', '', '', '', '', '', 0, 1, '+234 909 223 3447', '', 'bayosanni5@gmail.com', 0, NULL, '', '', '', '+234', 'Nigeria', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-20 14:28:27', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653053307vp8md0w1vgtp', 0, 0, 'WARD-CUS-00050', NULL, '', NULL, ''),
(53, 'Junisa Kandeh Jambawai', '', '', '', '', '', 0, 1, '+232 78 479155', '', 'junisakandeh@gmail.com', 0, NULL, '', '', '', '+232', 'Sierra Leone', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-22 09:44:57', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653209097p3snoptw0v2o', 0, 0, 'WARD-CUS-00051', NULL, '', NULL, ''),
(54, 'Nelson Doe Avorkliyah', '', '', '', '', '', 0, 1, '+233 24 171 7895', '', 'n.avorkliyah@lmi-ghana.com', 0, NULL, '', '', '', '+233', 'Ghana', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-22 11:38:49', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653215929dmvn45mix5e6', 0, 0, 'WARD-CUS-00052', NULL, '', NULL, ''),
(55, 'Hoodh Mohamed', '', '', '', '', '', 0, 1, '+960 797-4719', '', 'hoodh.mohamed@gmail.com', 0, NULL, '', '', '', '+960', 'Maldives', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-23 07:34:04', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '16532876440syuxwlhtxs2', 0, 0, 'WARD-CUS-00053', NULL, '', NULL, ''),
(56, 'George N. Popel', '', '', '', '', '', 0, 1, '+231 88 675 9133', '', 'popelgeorge@gmail.com', 0, NULL, '', '', '', '+231', 'Liberia', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-23 20:01:39', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653332499zwee65irr7ih', 0, 0, 'WARD-CUS-00054', NULL, '', NULL, ''),
(57, 'Joseph Biandoma Musa', '', '', '', '', '', 0, 1, '+232 76 435181', '', 'Joebmusa@gmail.com', 0, NULL, '', '', '', '+232', 'Sierra Leone', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-25 15:27:33', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653488853owtnxfiw44iw', 0, 0, 'WARD-CUS-00055', NULL, '', NULL, ''),
(58, 'Donaldson Siegesmond Pontis', '', '', '', '', '', 0, 1, '+23299651338', '', 'donaldsonpontis@gmail.com', 0, NULL, '', '', '', '+232', 'Sierra Leone', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-26 07:38:19', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653547099mvoxhpirx2qn', 0, 0, 'WARD-CUS-00056', NULL, '', NULL, ''),
(59, 'John George Lujani', '', '', 'Tanzania Electric Supply Company Limited', '', '', 2, 1, '', '', 'johngeorgelujani@gmail.com', 0, NULL, 'Plot No. 114, Block G, Dar es Salaam Road, P.O.Box 453 Dodoma', 'Dodama', 'Tanzania', '453', 'Tanzania', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-26 07:59:53', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653548393mum6194nbobb', 0, 0, 'WARD-CUS-00057', NULL, '', NULL, ''),
(60, 'Otto Alex', '', '', '', '', '', 0, 1, '+211 926899897', '', 'alexotto1985n@gmail.com', 0, NULL, '', '', '', '+211', 'Sudan', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-05-27 15:56:35', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1653663395q3yc12o3ry8g', 0, 0, 'WARD-CUS-00058', NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfields`
--

CREATE TABLE `crm_customfields` (
  `id` int(10) NOT NULL,
  `ctype` text DEFAULT NULL,
  `relid` int(10) NOT NULL DEFAULT 0,
  `fieldname` text DEFAULT NULL,
  `fieldtype` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fieldoptions` text DEFAULT NULL,
  `regexpr` text DEFAULT NULL,
  `adminonly` text DEFAULT NULL,
  `required` text DEFAULT NULL,
  `showorder` text DEFAULT NULL,
  `showinvoice` text DEFAULT NULL,
  `sorder` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfieldsvalues`
--

CREATE TABLE `crm_customfieldsvalues` (
  `id` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_groups`
--

CREATE TABLE `crm_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `separateinvoices` text DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_groups`
--

INSERT INTO `crm_groups` (`id`, `gname`, `color`, `discount`, `parent`, `pid`, `exempt`, `description`, `separateinvoices`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Circa Logica', '', '', '', 0, '', '', '', 0, NULL, NULL),
(2, 'PcHRO', '', '', '', 0, '', '', '', 0, NULL, NULL),
(3, 'PGDOSH', '', '', '', 0, '', '', '', 0, NULL, NULL),
(4, 'CRMES', '', '', '', 0, '', '', '', 0, NULL, NULL),
(5, 'CSCMP', '', '', '', 0, '', '', '', 0, NULL, NULL),
(6, 'PGDHRM', '', '', '', 0, '', '', '', 0, NULL, NULL),
(7, 'PGDPM', '', '', '', 0, '', '', '', 0, NULL, NULL),
(8, 'PGDSCM', '', '', '', 0, '', '', '', 0, NULL, NULL),
(9, 'CHRP-Online', '', '', '', 0, '', '', '', 0, NULL, NULL),
(10, 'CHRAP', '', '', '', 0, '', '', '', 0, NULL, NULL),
(11, 'PGDBCMC', '', '', '', 0, '', '', '', 0, NULL, NULL),
(12, 'CHRG', '', '', '', 0, '', '', '', 0, NULL, NULL),
(13, 'CPA', '', '', '', 0, '', '', '', 0, NULL, NULL),
(14, 'cHRBP', '', '', '', 0, '', '', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_industries`
--

CREATE TABLE `crm_industries` (
  `id` int(11) NOT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_industries`
--

INSERT INTO `crm_industries` (`id`, `industry`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Agriculture', 1, 0, 0),
(2, 'Apparel', 1, 0, 0),
(3, 'Banking', 1, 0, 0),
(4, 'Biotechnology', 1, 0, 0),
(5, 'Chemicals', 1, 0, 0),
(6, 'Communications', 1, 0, 0),
(7, 'Construction', 1, 0, 0),
(8, 'Consulting', 1, 0, 0),
(9, 'Education', 1, 0, 0),
(10, 'Electronics', 1, 0, 0),
(11, 'Energy', 1, 0, 0),
(12, 'Engineering', 1, 0, 0),
(13, 'Entertainment', 1, 0, 0),
(14, 'Environmental', 1, 0, 0),
(15, 'Finance', 1, 0, 0),
(16, 'Food & Beverage', 1, 0, 0),
(17, 'Government', 1, 0, 0),
(18, 'Healthcare', 1, 0, 0),
(19, 'Hospitality', 1, 0, 0),
(20, 'Insurance', 1, 0, 0),
(21, 'Machinery', 1, 0, 0),
(22, 'Manufacturing', 1, 0, 0),
(23, 'Media', 1, 0, 0),
(24, 'Not For Profit', 1, 0, 0),
(25, 'Other', 1, 0, 0),
(26, 'Recreation', 1, 0, 0),
(27, 'Retail', 1, 0, 0),
(28, 'Shipping', 1, 0, 0),
(29, 'Technology', 1, 0, 0),
(30, 'Telecommunications', 1, 0, 0),
(31, 'Transportation', 1, 0, 0),
(32, 'Utilities', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_leads`
--

CREATE TABLE `crm_leads` (
  `id` int(11) NOT NULL,
  `secret` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `oid` int(11) NOT NULL DEFAULT 0,
  `salutation` varchar(200) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `middle_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `suffix` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `website` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `employees` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 0,
  `added_from` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `lost` int(1) NOT NULL DEFAULT 0,
  `junk` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_leads`
--

INSERT INTO `crm_leads` (`id`, `secret`, `status`, `o`, `oid`, `salutation`, `first_name`, `middle_name`, `last_name`, `suffix`, `title`, `company`, `company_id`, `website`, `industry`, `employees`, `email`, `phone`, `color`, `source`, `form_id`, `added_from`, `mobile`, `address`, `street`, `city`, `state`, `zip`, `country`, `created_by`, `created_at`, `updated_at`, `updated_by`, `viewed_at`, `cid`, `aid`, `iid`, `rid`, `sorder`, `assigned`, `last_contact`, `last_contact_by`, `date_converted`, `public`, `ratings`, `flag`, `lost`, `junk`, `trash`, `archived`, `memo`) VALUES
(1, NULL, 'New', 'World Academy', 1, 'Mr.', 'Test', NULL, 'test', NULL, NULL, NULL, 0, NULL, 'Agriculture', NULL, 'rmnzaidi@gmail.com', '01799985299', NULL, 'None', 0, NULL, NULL, NULL, 'S-29 First Floor, Nurjahan Road', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', 'World Academy', '2021-12-31 05:47:54', '2021-12-31 05:47:54', NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, NULL),
(2, NULL, NULL, NULL, 0, NULL, 'test', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'rmnzaidi@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-21 09:12:56', '2022-01-21 09:12:56', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 'testt');

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_sources`
--

CREATE TABLE `crm_lead_sources` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 1,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_sources`
--

INSERT INTO `crm_lead_sources` (`id`, `sname`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Advertisement', 1, 1, 0),
(2, 'Customer Event', 1, 1, 0),
(3, 'Employee Referral', 1, 1, 0),
(4, 'Google AdWords', 1, 1, 0),
(5, 'Other', 1, 1, 0),
(6, 'Partner', 1, 1, 0),
(7, 'Purchased List', 1, 1, 0),
(8, 'Trade Show', 1, 1, 0),
(9, 'Webinar', 1, 1, 0),
(10, 'Website', 1, 1, 0),
(11, 'Facebook', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_status`
--

CREATE TABLE `crm_lead_status` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `is_converted` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_status`
--

INSERT INTO `crm_lead_status` (`id`, `sname`, `is_active`, `is_default`, `is_converted`, `sorder`) VALUES
(1, 'Unqualified', 1, 0, 0, 0),
(2, 'New', 1, 1, 0, 0),
(3, 'Working', 1, 0, 0, 0),
(4, 'Nurturing', 1, 0, 0, 0),
(5, 'Qualified', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_salutations`
--

CREATE TABLE `crm_salutations` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_salutations`
--

INSERT INTO `crm_salutations` (`id`, `sname`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Mr.', 1, 0, 0),
(2, 'Ms.', 1, 0, 0),
(3, 'Mrs.', 1, 0, 0),
(4, 'Dr.', 1, 0, 0),
(5, 'Prof.', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,8) NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_first` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_mi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_last` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banking_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birht` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT 1,
  `ethnicity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_i9_form` tinyint(1) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` date DEFAULT NULL,
  `termination_reason` date DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `job_title`, `date_hired`, `department_id`, `manager_id`, `image`, `pay_frequency`, `currency`, `amount`, `employee_id`, `legal_name_title`, `legal_name_first`, `legal_name_mi`, `legal_name_last`, `banking_name`, `ssn`, `gender`, `date_of_birht`, `marital_status`, `is_citizen`, `ethnicity`, `has_i9_form`, `work_authorization_expires`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `country`, `phone`, `email`, `work_phone`, `work_mobile`, `work_fax`, `cc_email`, `other`, `emergency_contact_name_1`, `emergency_contact_phone_1`, `emergency_contact_relation_1`, `emergency_contact_name_2`, `emergency_contact_phone_2`, `emergency_contact_relation_2`, `last_day_worked`, `last_day_on_benefits`, `last_day_on_payroll`, `termination_type`, `termination_reason`, `is_recommended`, `is_active`, `facebook`, `google`, `linkedin`, `skype`, `twitter`, `summary`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Jakub Swierczak', 'Customer Success Manager', '2018-11-16', NULL, NULL, NULL, 'Monthly', 'USD', '7500.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '1101 Marina Villae Parkway, Suite 201', NULL, 'Alameda', 'California', '94501', 'United States', '(650) 488-7772', 'Jakub@cloudonex.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, '', NULL, '', 'His work motto is â€œIf our customers are happy it means Iâ€™m doing a good jobâ€. In his free time heâ€™s improving his guitar skills and beginning his running adventure, hoping one day he will cross a marathon finish line.', NULL, '2018-11-16 10:12:15', '2018-11-16 10:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `end_users`
--

CREATE TABLE `end_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sorder` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ib_assets`
--

CREATE TABLE `ib_assets` (
  `id` int(11) NOT NULL,
  `asset_name` varchar(200) DEFAULT NULL,
  `price` decimal(14,2) NOT NULL DEFAULT 0.00,
  `date_purchased` date DEFAULT NULL,
  `warranty_period` date DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_doc_rel`
--

CREATE TABLE `ib_doc_rel` (
  `id` int(11) NOT NULL,
  `rtype` varchar(100) NOT NULL DEFAULT 'contact',
  `rid` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `can_download` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib_doc_rel`
--

INSERT INTO `ib_doc_rel` (`id`, `rtype`, `rid`, `did`, `can_download`) VALUES
(1, 'invoice', 4, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ib_invoice_access_log`
--

CREATE TABLE `ib_invoice_access_log` (
  `id` int(11) NOT NULL,
  `lid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `customer` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `referer` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `country_iso` varchar(20) DEFAULT NULL,
  `viewed_at` varchar(200) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib_invoice_access_log`
--

INSERT INTO `ib_invoice_access_log` (`id`, `lid`, `cid`, `iid`, `company_id`, `customer`, `ip`, `browser`, `referer`, `city`, `postal_code`, `country`, `country_iso`, `viewed_at`, `lat`, `lon`) VALUES
(1, 0, 0, 1, 0, 'Shabok', '123.49.59.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-04 05:35:21', NULL, NULL),
(2, 0, 0, 2, 0, 'Shabok', '123.49.59.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-05 05:12:53', NULL, NULL),
(3, 0, 0, 2, 0, 'Shabok', '123.49.59.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/iview/2/token_5278227592/', '', NULL, '', NULL, '2022-01-05 05:15:39', NULL, NULL),
(4, 0, 0, 2, 0, 'Shabok', '123.49.59.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/dashboard/', '', NULL, '', NULL, '2022-01-05 05:17:42', NULL, NULL),
(5, 0, 0, 3, 0, 'Shabok', '123.49.59.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', '', '', NULL, '', NULL, '2022-01-05 06:33:26', NULL, NULL),
(6, 0, 0, 4, 0, 'Azizan', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-07 04:39:27', NULL, NULL),
(7, 0, 0, 4, 0, 'Azizan', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-07 04:40:28', NULL, NULL),
(8, 0, 0, 4, 0, 'Azizan', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-07 04:41:47', NULL, NULL),
(9, 0, 0, 4, 0, 'Azizan', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-07 04:42:30', NULL, NULL),
(10, 0, 0, 4, 0, 'Azizan', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/ipay/4/token_8514260964', '', NULL, '', NULL, '2022-01-07 04:43:18', NULL, NULL),
(11, 0, 0, 4, 0, 'Azizan', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-07 04:46:17', NULL, NULL),
(12, 0, 0, 4, 0, 'Azizan', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 04:49:26', NULL, NULL),
(13, 0, 0, 5, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/dashboard/', '', NULL, '', NULL, '2022-01-07 05:00:40', NULL, NULL),
(14, 0, 0, 5, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 05:02:23', NULL, NULL),
(15, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-07 05:10:33', NULL, NULL),
(16, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=cart/view/', '', NULL, '', NULL, '2022-01-07 05:11:24', NULL, NULL),
(17, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 05:17:09', NULL, NULL),
(18, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 05:40:49', NULL, NULL),
(19, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 05:41:04', NULL, NULL),
(20, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 05:41:35', NULL, NULL),
(21, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 05:44:34', NULL, NULL),
(22, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 05:45:31', NULL, NULL),
(23, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 06:13:16', NULL, NULL),
(24, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-07 06:14:58', NULL, NULL),
(25, 0, 0, 7, 0, 'test', '103.15.42.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/sl/57580b9538bdeabfeeaa956ed1241af40/', '', NULL, '', NULL, '2022-01-08 12:26:56', NULL, NULL),
(26, 0, 0, 7, 0, 'test', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-01-08 12:28:14', NULL, NULL),
(27, 0, 0, 7, 0, 'test', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-01-08 12:29:16', NULL, NULL),
(28, 0, 0, 8, 0, 'Rakib', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.55', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-08 12:48:20', NULL, NULL),
(29, 0, 0, 9, 0, 'Rosette Esmeralda', '112.198.46.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-01-12 08:04:33', NULL, NULL),
(30, 0, 0, 11, 0, 'Rakib', '27.147.205.239', 'QR Scanner Android', '', '', NULL, '', NULL, '2022-01-16 12:58:21', NULL, NULL),
(31, 0, 0, 11, 0, 'Rakib', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.0 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-01-16 12:58:25', NULL, NULL),
(32, 0, 0, 11, 0, 'Rakib', '27.147.205.239', 'QR Scanner Android', '', '', NULL, '', NULL, '2022-01-16 13:13:21', NULL, NULL),
(33, 0, 0, 11, 0, 'Rakib', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.0 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-01-16 13:13:23', NULL, NULL),
(34, 0, 0, 12, 0, 'test', '103.15.42.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/sl/1498246d9e202724de69cac394793e5b1/', '', NULL, '', NULL, '2022-01-16 13:16:54', NULL, NULL),
(35, 0, 0, 4, 0, 'Azizan', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-01-21 09:19:15', NULL, NULL),
(36, 0, 0, 13, 0, 'Azizan', '103.87.214.160', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'https://worldacademy.org.uk/?ng=client/dashboard/', '', NULL, '', NULL, '2022-01-28 16:58:49', NULL, NULL),
(37, 0, 0, 1, 0, 'Azizan', '45.118.245.69', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 'https://s523008.smtp02.pulse-stat.com/sl/e236d5e1a7291e115038bae4432566390/', '', NULL, '', NULL, '2022-01-31 05:19:59', NULL, NULL),
(38, 0, 0, 1, 0, 'Azizan', '45.115.112.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'https://worldacademy.org.uk/?ng=client/purchase_view/1/token_7438379271', '', NULL, '', NULL, '2022-01-31 07:01:24', NULL, NULL),
(39, 0, 0, 6, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-02-01 16:12:54', NULL, NULL),
(40, 0, 0, 5, 0, 'Shabok', '103.232.102.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'https://worldacademy.org.uk/?ng=client/invoices/', '', NULL, '', NULL, '2022-02-01 16:13:25', NULL, NULL),
(41, 0, 0, 15, 0, 'Test', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.46', '', '', NULL, '', NULL, '2022-03-23 16:15:00', NULL, NULL),
(42, 0, 0, 16, 0, 'Rakib', '27.147.205.239', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-02 07:28:40', NULL, NULL),
(43, 0, 0, 18, 0, 'AUSTINE JOSEPH ODHIAMBO', '154.159.237.128', 'Mozilla/5.0 (Linux; Android 10; Nokia 1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-07 19:53:41', NULL, NULL),
(44, 0, 0, 18, 0, 'AUSTINE JOSEPH ODHIAMBO', '154.159.237.128', 'Mozilla/5.0 (Linux; Android 10; Nokia 1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/18/token_1750036463', '', NULL, '', NULL, '2022-04-07 19:54:59', NULL, NULL),
(45, 0, 0, 18, 0, 'AUSTINE JOSEPH ODHIAMBO', '154.159.237.128', 'Mozilla/5.0 (Linux; Android 10; Nokia 1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-07 19:56:30', NULL, NULL),
(46, 0, 0, 18, 0, 'AUSTINE JOSEPH ODHIAMBO', '197.248.97.186', 'Mozilla/5.0 (Linux; Android 10; Nokia 1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-08 09:16:36', NULL, NULL),
(47, 0, 0, 19, 0, 'Test', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36 Edg/100.0.1185.29', '', '', NULL, '', NULL, '2022-04-09 07:52:01', NULL, NULL),
(48, 0, 0, 20, 0, 'Blessing Ahmadu', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-09 11:16:53', NULL, NULL),
(49, 0, 0, 20, 0, 'Blessing Ahmadu', '202.134.10.134', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-09 11:17:47', NULL, NULL),
(50, 0, 0, 20, 0, 'Blessing Ahmadu', '202.134.10.134', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-09 11:18:12', NULL, NULL),
(51, 0, 0, 20, 0, 'Blessing Ahmadu', '42.0.7.245', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-09 11:27:35', NULL, NULL),
(52, 0, 0, 21, 0, 'Fernandez, Brian Gilbert Paneda', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-09 11:45:01', NULL, NULL),
(53, 0, 0, 21, 0, 'Fernandez, Brian Gilbert Paneda', '180.191.210.124', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-04-09 11:48:05', NULL, NULL),
(54, 0, 0, 22, 0, 'Maria Nina B. Almueda', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-10 08:16:00', NULL, NULL),
(55, 0, 0, 22, 0, 'Maria Nina B. Almueda', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 08:22:55', NULL, NULL),
(56, 0, 0, 22, 0, 'Maria Nina B. Almueda', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 08:23:50', NULL, NULL),
(57, 0, 0, 22, 0, 'Maria Nina B. Almueda', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 08:25:50', NULL, NULL),
(58, 0, 0, 23, 0, 'SEMIU OLANREWAJU EMMANUEL', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-10 09:27:15', NULL, NULL),
(59, 0, 0, 23, 0, 'SEMIU OLANREWAJU EMMANUEL', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 09:31:50', NULL, NULL),
(60, 0, 0, 23, 0, 'SEMIU OLANREWAJU EMMANUEL', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'https://worldacademy.org.uk/?ng=invoices/view/23/', '', NULL, '', NULL, '2022-04-10 11:27:29', NULL, NULL),
(61, 0, 0, 24, 0, 'Ahmed Kofi Dzramedo', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-10 11:29:30', NULL, NULL),
(62, 0, 0, 24, 0, 'Ahmed Kofi Dzramedo', '37.111.197.33', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 11:31:06', NULL, NULL),
(63, 0, 0, 22, 0, 'Maria Nina B. Almueda', '1.37.81.5', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-04-10 12:38:25', NULL, NULL),
(64, 0, 0, 22, 0, 'Maria Nina B. Almueda', '1.37.81.5', 'Viber', '', '', NULL, '', NULL, '2022-04-10 12:39:56', NULL, NULL),
(65, 0, 0, 22, 0, 'Maria Nina B. Almueda', '210.185.184.182', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 12:41:34', NULL, NULL),
(66, 0, 0, 22, 0, 'Maria Nina B. Almueda', '210.185.184.182', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/22/token_2603146086', '', NULL, '', NULL, '2022-04-10 12:42:34', NULL, NULL),
(67, 0, 0, 22, 0, 'Maria Nina B. Almueda', '37.111.197.33', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 12:51:15', NULL, NULL),
(68, 0, 0, 22, 0, 'Maria Nina B. Almueda', '37.111.197.33', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 12:51:58', NULL, NULL),
(69, 0, 0, 22, 0, 'Maria Nina B. Almueda', '37.111.197.33', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 12:52:17', NULL, NULL),
(70, 0, 0, 22, 0, 'Maria Nina B. Almueda', '37.111.197.33', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 12:55:05', NULL, NULL),
(71, 0, 0, 22, 0, 'Maria Nina B. Almueda', '37.111.197.33', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 12:55:36', NULL, NULL),
(72, 0, 0, 22, 0, 'Maria Nina B. Almueda', '37.111.197.33', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 12:57:07', NULL, NULL),
(73, 0, 0, 22, 0, 'Maria Nina B. Almueda', '40.94.29.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-04-10 13:00:18', NULL, NULL),
(74, 0, 0, 22, 0, 'Maria Nina B. Almueda', '210.185.184.182', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 13:07:03', NULL, NULL),
(75, 0, 0, 22, 0, 'Maria Nina B. Almueda', '210.185.184.182', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-10 13:07:08', NULL, NULL),
(76, 0, 0, 21, 0, 'Fernandez, Brian Gilbert Paneda', '180.191.210.82', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-04-10 13:47:57', NULL, NULL),
(77, 0, 0, 21, 0, 'Fernandez, Brian Gilbert Paneda', '180.191.210.82', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-04-10 13:48:22', NULL, NULL),
(78, 0, 0, 24, 0, 'Ahmed Kofi Dzramedo', '154.160.22.129', 'Mozilla/5.0 (Linux; U; Android 11; en-us; Infinix PR652B Build/RP1A.201005.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.92 Mobile Safari/537.36 PHX/9.8', '', '', NULL, '', NULL, '2022-04-10 14:28:11', NULL, NULL),
(79, 0, 0, 22, 0, 'Maria Nina B. Almueda', '1.37.81.5', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-04-10 14:58:02', NULL, NULL),
(80, 0, 0, 22, 0, 'Maria Nina B. Almueda', '1.37.81.5', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-04-10 14:58:13', NULL, NULL),
(81, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-11 06:55:43', NULL, NULL),
(82, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.211.20', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-11 06:58:13', NULL, NULL),
(83, 0, 0, 22, 0, 'Maria Nina B. Almueda', '37.111.211.20', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-11 07:01:40', NULL, NULL),
(84, 0, 0, 25, 0, 'Adekunle Onafusi', '102.89.34.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '', '', NULL, '', NULL, '2022-04-11 08:55:19', NULL, NULL),
(85, 0, 0, 23, 0, 'SEMIU OLANREWAJU EMMANUEL', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-12 06:46:46', NULL, NULL),
(86, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '', '', NULL, '', NULL, '2022-04-12 08:15:09', NULL, NULL),
(87, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '', '', NULL, '', NULL, '2022-04-12 08:53:44', NULL, NULL),
(88, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '', '', NULL, '', NULL, '2022-04-12 08:54:29', NULL, NULL),
(89, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-12 08:56:02', NULL, NULL),
(90, 0, 0, 22, 0, 'Maria Nina B. Almueda', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-12 08:57:04', NULL, NULL),
(91, 0, 0, 22, 0, 'Maria Nina B. Almueda', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '', '', NULL, '', NULL, '2022-04-12 08:58:44', NULL, NULL),
(92, 0, 0, 27, 0, 'Kiotte Aaron Ilisan', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-13 07:04:06', NULL, NULL),
(93, 0, 0, 27, 0, 'Kiotte Aaron Ilisan', '202.153.84.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-04-13 07:24:45', NULL, NULL),
(94, 0, 0, 27, 0, 'Kiotte Aaron Ilisan', '202.1.195.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/27/token_3273225920', '', NULL, '', NULL, '2022-04-13 07:26:06', NULL, NULL),
(95, 0, 0, 27, 0, 'Kiotte Aaron Ilisan', '202.1.195.130', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-N950F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-04-13 07:27:29', NULL, NULL),
(96, 0, 0, 23, 0, 'SEMIU OLANREWAJU EMMANUEL', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-13 09:17:39', NULL, NULL),
(97, 0, 0, 23, 0, 'SEMIU OLANREWAJU EMMANUEL', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-13 09:26:29', NULL, NULL),
(98, 0, 0, 23, 0, 'SEMIU OLANREWAJU EMMANUEL', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-13 09:29:22', NULL, NULL),
(99, 0, 0, 28, 0, 'Elias Getahun', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'https://worldacademy.org.uk/?ng=invoices/view/28/', '', NULL, '', NULL, '2022-04-13 17:27:22', NULL, NULL),
(100, 0, 0, 28, 0, 'Elias Getahun', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-13 17:27:25', NULL, NULL),
(101, 0, 0, 28, 0, 'Elias Getahun', '202.134.14.136', 'WhatsApp/2.22.5.72 A', '', '', NULL, '', NULL, '2022-04-13 17:30:56', NULL, NULL),
(102, 0, 0, 28, 0, 'Elias Getahun', '202.134.14.136', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-13 17:31:43', NULL, NULL),
(103, 0, 0, 28, 0, 'Elias Getahun', '196.191.152.24', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-13 22:03:33', NULL, NULL),
(104, 0, 0, 28, 0, 'Elias Getahun', '196.191.152.24', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-13 22:05:51', NULL, NULL),
(105, 0, 0, 27, 0, 'Kiotte Aaron Ilisan', '202.153.84.226', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-N950F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 04:29:54', NULL, NULL),
(106, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.211.60', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 06:53:28', NULL, NULL),
(107, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.211.60', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 09:07:32', NULL, NULL),
(108, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.211.60', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 12:20:37', NULL, NULL),
(109, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.201.133', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 13:57:09', NULL, NULL),
(110, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.201.133', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 17:31:41', NULL, NULL),
(111, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.201.133', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 17:31:55', NULL, NULL),
(112, 0, 0, 25, 0, 'Adekunle Onafusi', '37.111.201.133', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-14 17:40:52', NULL, NULL),
(113, 0, 0, 28, 0, 'Elias Getahun', '202.134.10.130', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-15 05:32:09', NULL, NULL),
(114, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'WhatsApp/2.2210.9 N', '', '', NULL, '', NULL, '2022-04-15 07:12:55', NULL, NULL),
(115, 0, 0, 29, 0, 'Joseph Gbao', '37.111.212.217', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-15 08:21:29', NULL, NULL),
(116, 0, 0, 29, 0, 'Joseph Gbao', '37.111.212.217', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-15 08:22:28', NULL, NULL),
(117, 0, 0, 29, 0, 'Joseph Gbao', '37.111.212.217', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-15 08:23:42', NULL, NULL),
(118, 0, 0, 28, 0, 'Elias Getahun', '196.191.152.155', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-15 08:39:08', NULL, NULL),
(119, 0, 0, 29, 0, 'Joseph Gbao', '41.223.133.147', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '', '', NULL, '', NULL, '2022-04-15 08:41:29', NULL, NULL),
(120, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-15 12:27:21', NULL, NULL),
(121, 0, 0, 29, 0, 'Joseph Gbao', '37.111.200.74', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-15 17:49:41', NULL, NULL),
(122, 0, 0, 19, 0, 'Test', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36 Edg/100.0.1185.39', 'https://worldacademy.org.uk/?ng=client/dashboard/', '', NULL, '', NULL, '2022-04-16 06:08:48', NULL, NULL),
(123, 0, 0, 20, 0, 'Blessing Ahmadu', '202.134.10.134', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-16 06:26:04', NULL, NULL),
(124, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-16 09:10:58', NULL, NULL),
(125, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '27.147.205.239', 'WhatsApp/2.2212.8 N', '', '', NULL, '', NULL, '2022-04-16 09:40:45', NULL, NULL),
(126, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '27.147.205.239', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-16 09:46:54', NULL, NULL),
(127, 0, 0, 28, 0, 'Elias Getahun', '196.191.153.25', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-16 14:22:32', NULL, NULL),
(128, 0, 0, 28, 0, 'Elias Getahun', '196.191.153.25', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-16 14:25:35', NULL, NULL),
(129, 0, 0, 28, 0, 'Elias Getahun', '196.191.153.25', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-16 14:25:36', NULL, NULL),
(130, 0, 0, 28, 0, 'Elias Getahun', '196.191.153.25', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-16 14:25:40', NULL, NULL),
(131, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '119.30.39.122', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-16 15:14:24', NULL, NULL),
(132, 0, 0, 28, 0, 'Elias Getahun', '202.134.14.130', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 05:01:29', NULL, NULL),
(133, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 07:09:51', NULL, NULL),
(134, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 07:39:45', NULL, NULL),
(135, 0, 0, 25, 0, 'Adekunle Onafusi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 07:42:56', NULL, NULL),
(136, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '105.112.190.40', 'Mozilla/5.0 (Linux; Android 10; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 09:26:22', NULL, NULL),
(137, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '105.112.190.40', 'Mozilla/5.0 (Linux; Android 10; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 09:27:11', NULL, NULL),
(138, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'WhatsApp/2.2212.8 N', '', '', NULL, '', NULL, '2022-04-17 14:32:13', NULL, NULL),
(139, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.198.198', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 14:44:32', NULL, NULL),
(140, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.198.198', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-17 14:45:08', NULL, NULL),
(141, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.198.198', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-17 17:40:28', NULL, NULL),
(142, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.198.198', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-18 06:03:59', NULL, NULL),
(143, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.198.198', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-18 10:37:30', NULL, NULL),
(144, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.214.254', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-18 18:55:34', NULL, NULL),
(145, 0, 0, 29, 0, 'Joseph Gbao', '37.111.214.254', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-18 18:56:05', NULL, NULL),
(146, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'WhatsApp/2.2212.8 N', '', '', NULL, '', NULL, '2022-04-19 07:45:16', NULL, NULL),
(147, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 07:46:33', NULL, NULL),
(148, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-19 07:47:20', NULL, NULL),
(149, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 10:08:10', NULL, NULL),
(150, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 10:12:03', NULL, NULL),
(151, 0, 0, 33, 0, 'Matthew Mensah', '27.147.205.239', 'WhatsApp/2.2212.8 N', '', '', NULL, '', NULL, '2022-04-19 10:52:03', NULL, NULL),
(152, 0, 0, 33, 0, 'Matthew Mensah', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 10:52:24', NULL, NULL),
(153, 0, 0, 33, 0, 'Matthew Mensah', '27.147.205.239', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-19 10:53:20', NULL, NULL),
(154, 0, 0, 33, 0, 'Matthew Mensah', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 10:53:41', NULL, NULL),
(155, 0, 0, 33, 0, 'Matthew Mensah', '41.73.99.127', 'Mozilla/5.0 (Linux; Android 10; TECNO KC8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 10:55:40', NULL, NULL),
(156, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.192.42', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 19:41:47', NULL, NULL),
(157, 0, 0, 33, 0, 'Matthew Mensah', '37.111.192.42', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 19:42:48', NULL, NULL),
(158, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '37.111.192.42', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 19:44:52', NULL, NULL),
(159, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.192.42', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-19 22:18:47', NULL, NULL),
(160, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-20 06:19:19', NULL, NULL),
(161, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-20 09:05:26', NULL, NULL),
(162, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 05:46:12', NULL, NULL),
(163, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 08:25:51', NULL, NULL),
(164, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 08:27:03', NULL, NULL),
(165, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 08:57:37', NULL, NULL),
(166, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 09:44:15', NULL, NULL),
(167, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 09:44:40', NULL, NULL),
(168, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 10:19:19', NULL, NULL),
(169, 0, 0, 31, 0, 'Jonathan Anderson', '119.30.32.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 17:54:57', NULL, NULL),
(170, 0, 0, 29, 0, 'Joseph Gbao', '119.30.32.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 17:55:14', NULL, NULL),
(171, 0, 0, 18, 0, 'AUSTINE JOSEPH ODHIAMBO', '154.159.237.165', 'Mozilla/5.0 (Linux; Android 10; Nokia 1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-21 18:50:59', NULL, NULL),
(172, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-25 09:43:08', NULL, NULL),
(173, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-25 09:44:09', NULL, NULL),
(174, 0, 0, 29, 0, 'Joseph Gbao', '119.30.38.160', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-25 16:19:52', NULL, NULL),
(175, 0, 0, 31, 0, 'Jonathan Anderson', '119.30.38.160', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-25 16:20:02', NULL, NULL),
(176, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-26 07:14:54', NULL, NULL),
(177, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-26 07:50:42', NULL, NULL),
(178, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-26 10:12:05', NULL, NULL),
(179, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.210.20', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-26 16:06:37', NULL, NULL),
(180, 0, 0, 34, 0, 'Test', '39.38.206.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'https://worldacademy.org.uk/?ng=client/dashboard/', '', NULL, '', NULL, '2022-04-26 20:01:52', NULL, NULL),
(181, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 07:30:13', NULL, NULL),
(182, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 07:32:47', NULL, NULL),
(183, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 07:44:59', NULL, NULL),
(184, 0, 0, 31, 0, 'Jonathan Anderson', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 10:34:50', NULL, NULL),
(185, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '154.118.41.123', 'Mozilla/5.0 (Linux; Android 10; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 11:51:19', NULL, NULL),
(186, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '105.112.153.59', 'Mozilla/5.0 (Linux; Android 10; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 11:56:47', NULL, NULL),
(187, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '105.112.153.59', 'Mozilla/5.0 (Linux; Android 10; CPH2185) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 12:04:16', NULL, NULL),
(188, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.211.221', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 18:15:42', NULL, NULL),
(189, 0, 0, 31, 0, 'Jonathan Anderson', '154.160.7.243', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-A920F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 20:51:36', NULL, NULL),
(190, 0, 0, 31, 0, 'Jonathan Anderson', '154.160.7.243', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-A920F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 20:52:25', NULL, NULL),
(191, 0, 0, 31, 0, 'Jonathan Anderson', '154.160.7.243', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-A920F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 20:52:34', NULL, NULL),
(192, 0, 0, 31, 0, 'Jonathan Anderson', '154.160.7.243', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-A920F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/31/token_4957269111', '', NULL, '', NULL, '2022-04-27 20:53:58', NULL, NULL),
(193, 0, 0, 31, 0, 'Jonathan Anderson', '154.160.7.243', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-A920F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 20:59:40', NULL, NULL),
(194, 0, 0, 31, 0, 'Jonathan Anderson', '37.111.211.221', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-27 23:04:55', NULL, NULL),
(195, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '27.147.205.239', 'WhatsApp/2.2212.8 N', '', '', NULL, '', NULL, '2022-04-28 06:16:10', NULL, NULL),
(196, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-28 06:16:36', NULL, NULL),
(197, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '27.147.205.239', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-28 06:16:55', NULL, NULL),
(198, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.29', 'Mozilla/5.0 (Linux; Android 7.0; Infinix X603) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.101 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-28 06:44:43', NULL, NULL),
(199, 0, 0, 29, 0, 'Joseph Gbao', '37.111.201.28', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-28 20:13:22', NULL, NULL);
INSERT INTO `ib_invoice_access_log` (`id`, `lid`, `cid`, `iid`, `company_id`, `customer`, `ip`, `browser`, `referer`, `city`, `postal_code`, `country`, `country_iso`, `viewed_at`, `lat`, `lon`) VALUES
(200, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.233.118', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-29 10:25:26', NULL, NULL),
(201, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.233.118', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-29 17:27:56', NULL, NULL),
(202, 0, 0, 29, 0, 'Joseph Gbao', '37.111.233.118', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-29 17:30:28', NULL, NULL),
(203, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.233.118', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-29 18:29:38', NULL, NULL),
(204, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.210.117', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-30 16:03:11', NULL, NULL),
(205, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.210.117', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 16:03:16', NULL, NULL),
(206, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 16:03:40', NULL, NULL),
(207, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.210.117', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 16:03:51', NULL, NULL),
(208, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.210.117', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 16:04:12', NULL, NULL),
(209, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 16:07:27', NULL, NULL),
(210, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 16:15:03', NULL, NULL),
(211, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '37.111.210.117', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-04-30 16:34:56', NULL, NULL),
(212, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 16:36:23', NULL, NULL),
(213, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', 'https://mail.google.com/mail/mu/mp/609/', '', NULL, '', NULL, '2022-04-30 17:49:19', NULL, NULL),
(214, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', 'https://mail.google.com/mail/mu/mp/609/', '', NULL, '', NULL, '2022-04-30 17:52:17', NULL, NULL),
(215, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', 'https://mail.google.com/mail/mu/mp/609/', '', NULL, '', NULL, '2022-04-30 17:59:42', NULL, NULL),
(216, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/35/token_7881599126', '', NULL, '', NULL, '2022-04-30 18:02:00', NULL, NULL),
(217, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 18:05:08', NULL, NULL),
(218, 0, 0, 35, 0, 'JIMMY AKENA  DE LOTTO', '41.79.120.27', 'Mozilla/5.0 (Linux; Android 10; FRL-L22; HMSCore 5.0.0.329) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.2.320 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-04-30 18:06:15', NULL, NULL),
(219, 0, 0, 28, 0, 'Elias Getahun', '196.189.243.62', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-02 17:40:14', NULL, NULL),
(220, 0, 0, 36, 0, 'Obert Elijah', '27.147.205.239', 'WhatsApp/2.2214.12 N', '', '', NULL, '', NULL, '2022-05-06 15:34:18', NULL, NULL),
(221, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '', '', NULL, '', NULL, '2022-05-06 15:47:51', NULL, NULL),
(222, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-06 15:48:34', NULL, NULL),
(223, 0, 0, 36, 0, 'Obert Elijah', '197.218.0.70', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-06 15:48:43', NULL, NULL),
(224, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-06 15:50:18', NULL, NULL),
(225, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-06 15:52:14', NULL, NULL),
(226, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/36/token_6809411245', '', NULL, '', NULL, '2022-05-06 15:53:27', NULL, NULL),
(227, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '', '', NULL, '', NULL, '2022-05-06 15:53:40', NULL, NULL),
(228, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '', '', NULL, '', NULL, '2022-05-06 15:56:39', NULL, NULL),
(229, 0, 0, 36, 0, 'Obert Elijah', '197.249.235.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/36/token_6809411245', '', NULL, '', NULL, '2022-05-06 15:57:30', NULL, NULL),
(230, 0, 0, 28, 0, 'Elias Getahun', '27.147.205.239', 'WhatsApp/2.2214.12 N', '', '', NULL, '', NULL, '2022-05-06 17:05:27', NULL, NULL),
(231, 0, 0, 30, 0, 'MICHAEL OLUDARE AJAYI', '37.111.211.157', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-06 19:06:43', NULL, NULL),
(232, 0, 0, 28, 0, 'Elias Getahun', '202.134.14.129', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-06 19:08:27', NULL, NULL),
(233, 0, 0, 28, 0, 'Elias Getahun', '202.134.14.129', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-06 19:09:29', NULL, NULL),
(234, 0, 0, 37, 0, 'Toomay M. Robinson', '27.147.205.239', 'WhatsApp/2.2214.12 N', '', '', NULL, '', NULL, '2022-05-07 16:24:52', NULL, NULL),
(235, 0, 0, 37, 0, 'Toomay M. Robinson', '202.134.8.142', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-07 16:25:40', NULL, NULL),
(236, 0, 0, 37, 0, 'Toomay M. Robinson', '202.134.8.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-07 16:26:19', NULL, NULL),
(237, 0, 0, 37, 0, 'Toomay M. Robinson', '202.134.8.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-07 16:26:55', NULL, NULL),
(238, 0, 0, 37, 0, 'Toomay M. Robinson', '202.134.8.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-07 16:27:46', NULL, NULL),
(239, 0, 0, 37, 0, 'Toomay M. Robinson', '202.134.8.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-07 16:28:43', NULL, NULL),
(240, 0, 0, 37, 0, 'Toomay M. Robinson', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'https://worldacademy.org.uk/?ng=invoices/view/37/', '', NULL, '', NULL, '2022-05-07 17:20:52', NULL, NULL),
(241, 0, 0, 28, 0, 'Elias Getahun', '196.191.152.40', 'Mozilla/5.0 (Linux; Android 11; TECNO CG7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-07 17:32:20', NULL, NULL),
(242, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'WhatsApp/2.2214.12 N', '', '', NULL, '', NULL, '2022-05-08 12:10:06', NULL, NULL),
(243, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-08 12:10:32', NULL, NULL),
(244, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 12:10:42', NULL, NULL),
(245, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '156.38.52.190', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 12:10:43', NULL, NULL),
(246, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 12:10:44', NULL, NULL),
(247, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 12:10:56', NULL, NULL),
(248, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 12:11:31', NULL, NULL),
(249, 0, 0, 39, 0, 'Asad Ali', '27.147.205.239', 'WhatsApp/2.2214.12 N', '', '', NULL, '', NULL, '2022-05-08 12:13:46', NULL, NULL),
(250, 0, 0, 39, 0, 'Asad Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 12:16:03', NULL, NULL),
(251, 0, 0, 39, 0, 'Asad Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 12:16:28', NULL, NULL),
(252, 0, 0, 39, 0, 'Asad Ali', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-08 12:17:11', NULL, NULL),
(253, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:36:05', NULL, NULL),
(254, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:37:08', NULL, NULL),
(255, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:37:47', NULL, NULL),
(256, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:40:45', NULL, NULL),
(257, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:41:39', NULL, NULL),
(258, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:43:51', NULL, NULL),
(259, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:45:18', NULL, NULL),
(260, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:48:09', NULL, NULL),
(261, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:48:55', NULL, NULL),
(262, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:50:04', NULL, NULL),
(263, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:50:39', NULL, NULL),
(264, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:52:01', NULL, NULL),
(265, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:52:49', NULL, NULL),
(266, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 13:58:24', NULL, NULL),
(267, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:12:56', NULL, NULL),
(268, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:12:58', NULL, NULL),
(269, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:13:42', NULL, NULL),
(270, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:13:49', NULL, NULL),
(271, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:14:37', NULL, NULL),
(272, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:15:52', NULL, NULL),
(273, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:18:18', NULL, NULL),
(274, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:18:49', NULL, NULL),
(275, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:21:35', NULL, NULL),
(276, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 14:21:44', NULL, NULL),
(277, 0, 0, 37, 0, 'Toomay M. Robinson', '41.57.95.221', 'Mozilla/5.0 (Linux; Android 9; TECNO CC6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 17:31:37', NULL, NULL),
(278, 0, 0, 37, 0, 'Toomay M. Robinson', '41.57.95.221', 'Mozilla/5.0 (Linux; Android 9; TECNO CC6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 17:33:39', NULL, NULL),
(279, 0, 0, 37, 0, 'Toomay M. Robinson', '41.57.95.221', 'Mozilla/5.0 (Linux; Android 9; TECNO CC6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/37/token_7904020458', '', NULL, '', NULL, '2022-05-08 17:37:11', NULL, NULL),
(280, 0, 0, 39, 0, 'Asad Ali', '27.114.165.93', 'Mozilla/5.0 (Linux; Android 12; SM-G996B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 18:39:55', NULL, NULL),
(281, 0, 0, 39, 0, 'Asad Ali', '27.114.165.93', 'Mozilla/5.0 (Linux; Android 12; SM-G996B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/39/token_3865147950', '', NULL, '', NULL, '2022-05-08 18:40:44', NULL, NULL),
(282, 0, 0, 39, 0, 'Asad Ali', '27.114.165.23', 'Mozilla/5.0 (Linux; Android 12; SM-G996B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/39/token_3865147950', '', NULL, '', NULL, '2022-05-08 19:14:40', NULL, NULL),
(283, 0, 0, 39, 0, 'Asad Ali', '37.111.196.222', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-08 20:18:30', NULL, NULL),
(284, 0, 0, 28, 0, 'Elias Getahun', '202.134.10.139', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-09 10:27:36', NULL, NULL),
(285, 0, 0, 28, 0, 'Elias Getahun', '202.134.14.158', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 05:08:49', NULL, NULL),
(286, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'WhatsApp/2.2214.12 N', '', '', NULL, '', NULL, '2022-05-10 08:04:51', NULL, NULL),
(287, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-10 08:08:45', NULL, NULL),
(288, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 08:09:07', NULL, NULL),
(289, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '41.254.64.77', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 08:11:13', NULL, NULL),
(290, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 10:25:52', NULL, NULL),
(291, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 10:33:56', NULL, NULL),
(292, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-10 10:34:58', NULL, NULL),
(293, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '27.147.205.239', 'WhatsApp/2.2214.12 N', '', '', NULL, '', NULL, '2022-05-10 12:52:48', NULL, NULL),
(294, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.20.247', 'Mozilla/5.0 (Linux; Android 11; Infinix X689C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 12:53:22', NULL, NULL),
(295, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 12:53:51', NULL, NULL),
(296, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.20.247', 'Mozilla/5.0 (Linux; Android 11; Infinix X689C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 13:00:55', NULL, NULL),
(297, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.20.247', 'Mozilla/5.0 (Linux; Android 11; Infinix X689C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-10 14:52:59', NULL, NULL),
(298, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 10:56:23', NULL, NULL),
(299, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 11:32:07', NULL, NULL),
(300, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 12:29:57', NULL, NULL),
(301, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-11 12:30:40', NULL, NULL),
(302, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '156.38.51.8', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 12:30:52', NULL, NULL),
(303, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 12:30:59', NULL, NULL),
(304, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 13:57:35', NULL, NULL),
(305, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 14:38:16', NULL, NULL),
(306, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '119.30.41.213', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 18:14:08', NULL, NULL),
(307, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '23.28.82.117', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-11 23:06:36', NULL, NULL),
(308, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '156.38.49.82', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-11 23:07:10', NULL, NULL),
(309, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '23.28.82.117', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 'https://worldacademy.org.uk/?ng=client/iview/38/token_5474378582', '', NULL, '', NULL, '2022-05-11 23:10:00', NULL, NULL),
(310, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '23.28.82.117', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 'https://worldacademy.org.uk/?ng=client/iview/38/token_5474378582', '', NULL, '', NULL, '2022-05-11 23:10:55', NULL, NULL),
(311, 0, 0, 38, 0, 'FARID FADEL MUSTAFA ALGRIGNI', '23.28.82.117', 'WhatsApp/2.22.3.76 i', '', '', NULL, '', NULL, '2022-05-11 23:11:04', NULL, NULL),
(312, 0, 0, 29, 0, 'Joseph Gbao', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 06:00:20', NULL, NULL),
(313, 0, 0, 33, 0, 'Matthew Mensah', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 10:20:25', NULL, NULL),
(314, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'WhatsApp/2.2216.7 N', '', '', NULL, '', NULL, '2022-05-12 10:49:04', NULL, NULL),
(315, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-12 10:49:21', NULL, NULL),
(316, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.20.153', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.44 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-12 10:49:39', NULL, NULL),
(317, 0, 0, 42, 0, 'Lual Gabriel', '27.147.205.239', 'WhatsApp/2.2216.7 N', '', '', NULL, '', NULL, '2022-05-12 11:13:01', NULL, NULL),
(318, 0, 0, 42, 0, 'Lual Gabriel', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 11:18:29', NULL, NULL),
(319, 0, 0, 42, 0, 'Lual Gabriel', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 11:18:42', NULL, NULL),
(320, 0, 0, 42, 0, 'Lual Gabriel', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-12 11:19:32', NULL, NULL),
(321, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'WhatsApp/2.2216.7 N', '', '', NULL, '', NULL, '2022-05-12 11:27:04', NULL, NULL),
(322, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 11:30:53', NULL, NULL),
(323, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 11:31:07', NULL, NULL),
(324, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 11:34:36', NULL, NULL),
(325, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 11:36:49', NULL, NULL),
(326, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 12:04:51', NULL, NULL),
(327, 0, 0, 44, 0, 'Alpha Kanu', '27.147.205.239', 'WhatsApp/2.2216.7 N', '', '', NULL, '', NULL, '2022-05-12 12:22:11', NULL, NULL),
(328, 0, 0, 44, 0, 'Alpha Kanu', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 12:22:18', NULL, NULL),
(329, 0, 0, 44, 0, 'Alpha Kanu', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-12 12:23:26', NULL, NULL),
(330, 0, 0, 44, 0, 'Alpha Kanu', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 12:23:27', NULL, NULL),
(331, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.20.153', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.44 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-12 13:06:24', NULL, NULL),
(332, 0, 0, 45, 0, 'JOSEPH EDSON', '27.147.205.239', 'WhatsApp/2.2216.7 N', '', '', NULL, '', NULL, '2022-05-12 14:10:06', NULL, NULL),
(333, 0, 0, 46, 0, 'G. Plason Z. Plakar', '27.147.205.239', 'WhatsApp/2.2216.7 N', '', '', NULL, '', NULL, '2022-05-12 14:12:56', NULL, NULL),
(334, 0, 0, 45, 0, 'JOSEPH EDSON', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-12 14:13:10', NULL, NULL),
(335, 0, 0, 45, 0, 'JOSEPH EDSON', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 14:13:12', NULL, NULL),
(336, 0, 0, 46, 0, 'G. Plason Z. Plakar', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.2 Chrome/92.0.4515.166 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 14:13:49', NULL, NULL),
(337, 0, 0, 46, 0, 'G. Plason Z. Plakar', '27.147.205.239', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-12 14:14:16', NULL, NULL),
(338, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '102.91.5.10', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-12 22:06:54', NULL, NULL),
(339, 0, 0, 28, 0, 'Elias Getahun', '202.134.10.129', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-13 12:02:59', NULL, NULL),
(340, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.22.103', 'Mozilla/5.0 (Linux; Android 11; Infinix X689C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-13 15:48:09', NULL, NULL),
(341, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.22.103', 'Mozilla/5.0 (Linux; Android 11; Infinix X689C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-13 16:09:39', NULL, NULL),
(342, 0, 0, 47, 0, 'Santos Paulo Bunga', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-14 11:23:57', NULL, NULL),
(343, 0, 0, 47, 0, 'Santos Paulo Bunga', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-14 11:24:20', NULL, NULL),
(344, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.172.166.126', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-14 11:25:53', NULL, NULL),
(345, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.172.166.126', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-14 11:28:30', NULL, NULL),
(346, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.168.56.41', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 09:53:53', NULL, NULL),
(347, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.168.56.41', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 09:55:30', NULL, NULL),
(348, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-15 10:26:32', NULL, NULL),
(349, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 10:27:31', NULL, NULL),
(350, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 10:28:24', NULL, NULL),
(351, 0, 0, 45, 0, 'JOSEPH EDSON', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 10:40:16', NULL, NULL),
(352, 0, 0, 42, 0, 'Lual Gabriel', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 10:41:07', NULL, NULL),
(353, 0, 0, 44, 0, 'Alpha Kanu', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 10:41:49', NULL, NULL),
(354, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-15 10:48:26', NULL, NULL),
(355, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.168.13.132', 'WhatsApp/2.22.9.78 A', '', '', NULL, '', NULL, '2022-05-15 13:56:09', NULL, NULL),
(356, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.14.151', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-16 04:23:20', NULL, NULL),
(357, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.3.110', 'Mozilla/5.0 (Linux; Android 11; Infinix X689C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-16 07:55:04', NULL, NULL),
(358, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '37.111.210.254', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-16 08:44:07', NULL, NULL),
(359, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '37.111.210.254', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-16 12:44:39', NULL, NULL),
(360, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '37.111.210.254', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-16 16:24:48', NULL, NULL),
(361, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '37.111.210.254', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-16 16:38:08', NULL, NULL),
(362, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '37.111.210.254', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-16 17:34:12', NULL, NULL),
(363, 0, 0, 39, 0, 'Asad Ali', '49.229.161.50', 'Mozilla/5.0 (Linux; Android 12; SM-G996B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/39/token_3865147950', '', NULL, '', NULL, '2022-05-16 18:42:30', NULL, NULL),
(364, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-17 05:31:01', NULL, NULL),
(365, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '119.30.32.125', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-17 09:14:53', NULL, NULL),
(366, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-17 13:35:21', NULL, NULL),
(367, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.18.225', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-17 13:38:59', NULL, NULL),
(368, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-17 13:42:50', NULL, NULL),
(369, 0, 0, 32, 0, 'WENDWESSEN ALEMAYEHU BEYENE', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-17 14:18:20', NULL, NULL),
(370, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '102.176.94.38', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-17 16:04:46', NULL, NULL),
(371, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '102.176.94.38', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-17 16:06:14', NULL, NULL),
(372, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '119.30.35.157', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-17 17:31:48', NULL, NULL),
(373, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.0.67', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-17 21:47:44', NULL, NULL),
(374, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 06:05:51', NULL, NULL),
(375, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 06:08:49', NULL, NULL),
(376, 0, 0, 39, 0, 'Asad Ali', '27.114.165.117', 'Mozilla/5.0 (Linux; Android 12; SM-G996B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/39/token_3865147950', '', NULL, '', NULL, '2022-05-18 06:53:05', NULL, NULL),
(377, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-18 08:07:18', NULL, NULL),
(378, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 08:07:39', NULL, NULL),
(379, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '102.91.5.165', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 08:13:45', NULL, NULL),
(380, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-18 10:15:52', NULL, NULL),
(381, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 10:21:09', NULL, NULL),
(382, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-18 10:22:01', NULL, NULL),
(383, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 12:09:06', NULL, NULL),
(384, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 13:48:47', NULL, NULL),
(385, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 13:50:21', NULL, NULL),
(386, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 13:50:59', NULL, NULL),
(387, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.14.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 14:36:50', NULL, NULL),
(388, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.14.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', '', '', NULL, '', NULL, '2022-05-18 14:37:21', NULL, NULL),
(389, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.14.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', '', '', NULL, '', NULL, '2022-05-18 14:38:25', NULL, NULL),
(390, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.14.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 14:43:56', NULL, NULL),
(391, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.14.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 14:46:50', NULL, NULL),
(392, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '154.160.14.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/40/token_6179027325', '', NULL, '', NULL, '2022-05-18 14:54:19', NULL, NULL),
(393, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 15:02:18', NULL, NULL),
(394, 0, 0, 40, 0, 'Lesley Yasmine Sosi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 15:21:49', NULL, NULL),
(395, 0, 0, 50, 0, 'Bina Mtawali', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-18 15:25:36', NULL, NULL),
(396, 0, 0, 50, 0, 'Bina Mtawali', '202.134.8.128', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-18 15:27:47', NULL, NULL),
(397, 0, 0, 50, 0, 'Bina Mtawali', '202.134.8.128', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 15:27:56', NULL, NULL),
(398, 0, 0, 50, 0, 'Bina Mtawali', '105.234.160.15', 'Mozilla/5.0 (Linux; Android 10; TECNO KC8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 15:28:37', NULL, NULL),
(399, 0, 0, 51, 0, 'Edem Loveland Asempah', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-18 16:50:53', NULL, NULL),
(400, 0, 0, 51, 0, 'Edem Loveland Asempah', '202.134.8.128', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-18 16:52:10', NULL, NULL),
(401, 0, 0, 51, 0, 'Edem Loveland Asempah', '202.134.8.128', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 16:52:22', NULL, NULL),
(402, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.11.128', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 16:57:40', NULL, NULL);
INSERT INTO `ib_invoice_access_log` (`id`, `lid`, `cid`, `iid`, `company_id`, `customer`, `ip`, `browser`, `referer`, `city`, `postal_code`, `country`, `country_iso`, `viewed_at`, `lat`, `lon`) VALUES
(403, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.27.9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 20:58:55', NULL, NULL),
(404, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.27.9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 20:58:59', NULL, NULL),
(405, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.27.9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 21:09:42', NULL, NULL),
(406, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.27.9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 21:09:49', NULL, NULL),
(407, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.27.9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 21:13:44', NULL, NULL),
(408, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.27.9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-18 21:14:16', NULL, NULL),
(409, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '102.176.94.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '', '', NULL, '', NULL, '2022-05-18 21:31:08', NULL, NULL),
(410, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 06:37:35', NULL, NULL),
(411, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 09:54:46', NULL, NULL),
(412, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 10:19:27', NULL, NULL),
(413, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.168.145.249', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 11:33:31', NULL, NULL),
(414, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 12:58:04', NULL, NULL),
(415, 0, 0, 52, 0, 'Byamanywoha Edgar', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-19 13:37:06', NULL, NULL),
(416, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-19 17:20:03', NULL, NULL),
(417, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.145', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-19 17:20:29', NULL, NULL),
(418, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.145', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 17:21:08', NULL, NULL),
(419, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.145', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 17:21:34', NULL, NULL),
(420, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 18:05:52', NULL, NULL),
(421, 0, 0, 39, 0, 'Asad Ali', '27.114.165.227', 'Mozilla/5.0 (Linux; Android 12; SM-G996B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/39/token_3865147950', '', NULL, '', NULL, '2022-05-19 18:38:41', NULL, NULL),
(422, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '160.119.213.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:09:12', NULL, NULL),
(423, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '24.154.57.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:09:50', NULL, NULL),
(424, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '160.119.213.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:15:19', NULL, NULL),
(425, 0, 0, 54, 0, 'Teshome Sisay', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-19 19:32:38', NULL, NULL),
(426, 0, 0, 54, 0, 'Teshome Sisay', '202.134.14.145', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-19 19:33:06', NULL, NULL),
(427, 0, 0, 54, 0, 'Teshome Sisay', '196.191.53.152', 'Mozilla/5.0 (Linux; Android 11; SM-A217F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 19:35:01', NULL, NULL),
(428, 0, 0, 54, 0, 'Teshome Sisay', '196.190.121.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:35:19', NULL, NULL),
(429, 0, 0, 54, 0, 'Teshome Sisay', '23.228.130.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:36:59', NULL, NULL),
(430, 0, 0, 54, 0, 'Teshome Sisay', '196.190.121.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:43:15', NULL, NULL),
(431, 0, 0, 54, 0, 'Teshome Sisay', '196.190.121.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:43:59', NULL, NULL),
(432, 0, 0, 54, 0, 'Teshome Sisay', '196.190.121.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:45:02', NULL, NULL),
(433, 0, 0, 54, 0, 'Teshome Sisay', '196.190.121.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:48:00', NULL, NULL),
(434, 0, 0, 54, 0, 'Teshome Sisay', '202.134.14.145', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 19:49:04', NULL, NULL),
(435, 0, 0, 54, 0, 'Teshome Sisay', '196.190.121.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:50:17', NULL, NULL),
(436, 0, 0, 54, 0, 'Teshome Sisay', '196.190.121.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-19 19:54:54', NULL, NULL),
(437, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.145', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 19:55:25', NULL, NULL),
(438, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:25:55', NULL, NULL),
(439, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:26:10', NULL, NULL),
(440, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:26:21', NULL, NULL),
(441, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.214.36', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-19 20:26:45', NULL, NULL),
(442, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:27:41', NULL, NULL),
(443, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:33:48', NULL, NULL),
(444, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '160.119.213.154', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.73 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:40:00', NULL, NULL),
(445, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '160.119.213.154', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.73 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:41:06', NULL, NULL),
(446, 0, 0, 48, 0, 'Chrispin George', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:41:38', NULL, NULL),
(447, 0, 0, 48, 0, 'Chrispin George', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:42:59', NULL, NULL),
(448, 0, 0, 48, 0, 'Chrispin George', '37.111.214.36', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:44:00', NULL, NULL),
(449, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '160.119.213.154', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.73 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-19 20:46:33', NULL, NULL),
(450, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.158', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-19 23:32:03', NULL, NULL),
(451, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '216.68.248.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-20 03:08:45', NULL, NULL),
(452, 0, 0, 55, 0, 'Abraham Maker Gol', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-20 05:59:40', NULL, NULL),
(453, 0, 0, 55, 0, 'Abraham Maker Gol', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 06:03:09', NULL, NULL),
(454, 0, 0, 55, 0, 'Abraham Maker Gol', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-20 06:03:30', NULL, NULL),
(455, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 06:05:22', NULL, NULL),
(456, 0, 0, 56, 0, 'Adelagun Abisola Oluwakemi', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-20 06:30:22', NULL, NULL),
(457, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-20 06:31:55', NULL, NULL),
(458, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-20 06:32:36', NULL, NULL),
(459, 0, 0, 56, 0, 'Adelagun Abisola Oluwakemi', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-20 06:33:54', NULL, NULL),
(460, 0, 0, 47, 0, 'Santos Paulo Bunga', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-20 06:53:04', NULL, NULL),
(461, 0, 0, 47, 0, 'Santos Paulo Bunga', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-20 06:53:25', NULL, NULL),
(462, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.22.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-20 06:53:35', NULL, NULL),
(463, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '160.119.213.154', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 07:51:27', NULL, NULL),
(464, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '160.119.213.154', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 07:52:48', NULL, NULL),
(465, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '197.231.239.150', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/49/token_5694190576', '', NULL, '', NULL, '2022-05-20 07:54:56', NULL, NULL),
(466, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '197.231.239.150', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 07:59:18', NULL, NULL),
(467, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 09:11:57', NULL, NULL),
(468, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 09:12:28', NULL, NULL),
(469, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 09:12:45', NULL, NULL),
(470, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.22.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-20 10:57:47', NULL, NULL),
(471, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.22.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-20 10:57:47', NULL, NULL),
(472, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-20 14:30:48', NULL, NULL),
(473, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '41.217.62.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-20 14:31:25', NULL, NULL),
(474, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '197.149.127.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-20 14:31:38', NULL, NULL),
(475, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 14:50:38', NULL, NULL),
(476, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 14:53:02', NULL, NULL),
(477, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-20 14:53:21', NULL, NULL),
(478, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 14:53:43', NULL, NULL),
(479, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.2.129', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 14:54:07', NULL, NULL),
(480, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.3.193', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 14:59:24', NULL, NULL),
(481, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.2.57', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 15:01:46', NULL, NULL),
(482, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.2.129', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 15:07:23', NULL, NULL),
(483, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 15:09:43', NULL, NULL),
(484, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.22.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-20 15:14:52', NULL, NULL),
(485, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.22.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', 'https://worldacademy.org.uk/?ng=client/iview/41/token_4581231902', '', NULL, '', NULL, '2022-05-20 15:14:55', NULL, NULL),
(486, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.22.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-20 15:17:10', NULL, NULL),
(487, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 15:23:45', NULL, NULL),
(488, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 15:24:19', NULL, NULL),
(489, 0, 0, 41, 0, 'Thomas Aquinas Kunde', '154.160.22.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.58 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-20 15:24:26', NULL, NULL),
(490, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '41.217.62.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-20 16:54:42', NULL, NULL),
(491, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '41.217.62.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-20 16:57:48', NULL, NULL),
(492, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 17:00:48', NULL, NULL),
(493, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.142', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 17:01:15', NULL, NULL),
(494, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '202.134.14.142', 'WhatsApp/2.22.7.74 A', '', '', NULL, '', NULL, '2022-05-20 17:01:52', NULL, NULL),
(495, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '41.217.62.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-20 17:03:37', NULL, NULL),
(496, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '103.110.125.25', 'Mozilla/5.0 (Linux; Android 12; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 17:11:30', NULL, NULL),
(497, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '103.110.125.25', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-20 17:12:33', NULL, NULL),
(498, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.172.30.66', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-20 21:20:18', NULL, NULL),
(499, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.172.30.66', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/47/token_2622845561', '', NULL, '', NULL, '2022-05-20 21:21:27', NULL, NULL),
(500, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:31:59', NULL, NULL),
(501, 0, 0, 55, 0, 'Abraham Maker Gol', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:32:08', NULL, NULL),
(502, 0, 0, 49, 0, 'Abdiaziz Hussein Mohamed Ali', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:32:21', NULL, NULL),
(503, 0, 0, 48, 0, 'Chrispin George', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:32:40', NULL, NULL),
(504, 0, 0, 46, 0, 'G. Plason Z. Plakar', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:32:57', NULL, NULL),
(505, 0, 0, 45, 0, 'JOSEPH EDSON', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:33:20', NULL, NULL),
(506, 0, 0, 48, 0, 'Chrispin George', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:33:33', NULL, NULL),
(507, 0, 0, 45, 0, 'JOSEPH EDSON', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:33:50', NULL, NULL),
(508, 0, 0, 44, 0, 'Alpha Kanu', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:33:59', NULL, NULL),
(509, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 04:39:27', NULL, NULL),
(510, 0, 0, 33, 0, 'Matthew Mensah', '37.111.193.71', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 07:15:54', NULL, NULL),
(511, 0, 0, 56, 0, 'Adelagun Abisola Oluwakemi', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 08:38:03', NULL, NULL),
(512, 0, 0, 47, 0, 'Santos Paulo Bunga', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 08:40:16', NULL, NULL),
(513, 0, 0, 47, 0, 'Santos Paulo Bunga', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 11:30:39', NULL, NULL),
(514, 0, 0, 47, 0, 'Santos Paulo Bunga', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 11:31:06', NULL, NULL),
(515, 0, 0, 46, 0, 'G. Plason Z. Plakar', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 13:11:47', NULL, NULL),
(516, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 13:36:33', NULL, NULL),
(517, 0, 0, 46, 0, 'G. Plason Z. Plakar', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 14:05:12', NULL, NULL),
(518, 0, 0, 39, 0, 'Asad Ali', '27.114.165.5', 'Mozilla/5.0 (Linux; Android 12; SM-G996B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.58 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/39/token_3865147950', '', NULL, '', NULL, '2022-05-21 14:36:52', NULL, NULL),
(519, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.168.196.251', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 21:26:14', NULL, NULL),
(520, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.168.196.251', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-21 21:26:15', NULL, NULL),
(521, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 09:42:39', NULL, NULL),
(522, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-22 09:45:40', NULL, NULL),
(523, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 09:45:50', NULL, NULL),
(524, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 09:48:08', NULL, NULL),
(525, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-22 09:48:38', NULL, NULL),
(526, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 09:48:57', NULL, NULL),
(527, 0, 0, 48, 0, 'Chrispin George', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 11:19:43', NULL, NULL),
(528, 0, 0, 59, 0, 'Nelson Doe Avorkliyah', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-22 11:40:30', NULL, NULL),
(529, 0, 0, 59, 0, 'Nelson Doe Avorkliyah', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-22 11:43:52', NULL, NULL),
(530, 0, 0, 59, 0, 'Nelson Doe Avorkliyah', '154.160.9.14', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 11:44:01', NULL, NULL),
(531, 0, 0, 59, 0, 'Nelson Doe Avorkliyah', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 11:44:27', NULL, NULL),
(532, 0, 0, 59, 0, 'Nelson Doe Avorkliyah', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 12:12:41', NULL, NULL),
(533, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 12; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 13:22:23', NULL, NULL),
(534, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '41.223.132.235', 'Mozilla/5.0 (Linux; Android 11; TECNO LE6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:08:13', NULL, NULL),
(535, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '197.210.52.157', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:35:21', NULL, NULL),
(536, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '197.210.53.90', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:37:15', NULL, NULL),
(537, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:39:05', NULL, NULL),
(538, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:39:47', NULL, NULL),
(539, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-22 14:40:54', NULL, NULL),
(540, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '197.210.52.111', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:41:09', NULL, NULL),
(541, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:42:31', NULL, NULL),
(542, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:43:35', NULL, NULL),
(543, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:43:53', NULL, NULL),
(544, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:44:59', NULL, NULL),
(545, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:45:28', NULL, NULL),
(546, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '197.210.53.90', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:45:45', NULL, NULL),
(547, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 14:48:58', NULL, NULL),
(548, 0, 0, 54, 0, 'Teshome Sisay', '202.134.8.143', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 16:38:39', NULL, NULL),
(549, 0, 0, 54, 0, 'Teshome Sisay', '202.134.8.143', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 16:39:38', NULL, NULL),
(550, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.172.173.178', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 22:41:29', NULL, NULL),
(551, 0, 0, 47, 0, 'Santos Paulo Bunga', '105.172.173.178', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-22 22:41:30', NULL, NULL),
(552, 0, 0, 60, 0, 'Hoodh Mohamed', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-23 07:35:49', NULL, NULL),
(553, 0, 0, 60, 0, 'Hoodh Mohamed', '123.108.244.135', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 07:37:48', NULL, NULL),
(554, 0, 0, 60, 0, 'Hoodh Mohamed', '123.108.244.135', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-23 07:38:15', NULL, NULL),
(555, 0, 0, 61, 0, 'Santos Paulo Bunga', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-23 07:44:28', NULL, NULL),
(556, 0, 0, 61, 0, 'Santos Paulo Bunga', '119.30.39.151', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-23 08:01:27', NULL, NULL),
(557, 0, 0, 55, 0, 'Abraham Maker Gol', '123.108.244.135', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 08:12:29', NULL, NULL),
(558, 0, 0, 55, 0, 'Abraham Maker Gol', '123.108.244.135', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-23 08:13:07', NULL, NULL),
(559, 0, 0, 42, 0, 'Lual Gabriel', '123.108.244.135', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 08:16:22', NULL, NULL),
(560, 0, 0, 60, 0, 'Hoodh Mohamed', '123.176.7.54', 'Mozilla/5.0 (Linux; Android 11; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 08:35:57', NULL, NULL),
(561, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '197.210.71.74', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 10:09:18', NULL, NULL),
(562, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '197.210.71.74', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 10:10:10', NULL, NULL),
(563, 0, 0, 61, 0, 'Santos Paulo Bunga', '105.172.178.223', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 11:28:37', NULL, NULL),
(564, 0, 0, 61, 0, 'Santos Paulo Bunga', '105.172.178.223', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/61/token_0353176219', '', NULL, '', NULL, '2022-05-23 11:29:59', NULL, NULL),
(565, 0, 0, 61, 0, 'Santos Paulo Bunga', '105.172.178.223', 'Mozilla/5.0 (Linux; Android 11; SM-F127G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 11:31:35', NULL, NULL),
(566, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.32.119', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 11:54:10', NULL, NULL),
(567, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.32.139', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 12:03:00', NULL, NULL),
(568, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.33.27', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 12:04:45', NULL, NULL),
(569, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.33.27', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 12:13:23', NULL, NULL),
(570, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.33.27', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 12:16:21', NULL, NULL),
(571, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.32.19', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 12:29:43', NULL, NULL),
(572, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.33.27', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 12:32:43', NULL, NULL),
(573, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.32.139', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 13:17:40', NULL, NULL),
(574, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.32.99', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 13:42:28', NULL, NULL),
(575, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.32.139', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 14:28:01', NULL, NULL),
(576, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '123.108.244.135', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 14:59:24', NULL, NULL),
(577, 0, 0, 61, 0, 'Santos Paulo Bunga', '37.111.195.78', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 15:34:01', NULL, NULL),
(578, 0, 0, 61, 0, 'Santos Paulo Bunga', '37.111.195.78', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 15:34:32', NULL, NULL),
(579, 0, 0, 61, 0, 'Santos Paulo Bunga', '37.111.195.78', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 15:34:37', NULL, NULL),
(580, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '123.108.244.135', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 17:36:49', NULL, NULL),
(581, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '123.108.244.135', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 18:13:01', NULL, NULL),
(582, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '103.110.125.27', 'Mozilla/5.0 (Linux; Android 12; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 19:34:24', NULL, NULL),
(583, 0, 0, 57, 0, 'Adebayo Kazeem Sanni', '102.89.33.122', 'Mozilla/5.0 (Linux; Android 11; CPH1969) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 20:36:20', NULL, NULL),
(584, 0, 0, 62, 0, 'George N. Popel', '202.134.8.128', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 20:40:27', NULL, NULL),
(585, 0, 0, 62, 0, 'George N. Popel', '202.134.8.128', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-23 20:41:56', NULL, NULL),
(586, 0, 0, 62, 0, 'George N. Popel', '202.134.8.128', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-23 20:42:08', NULL, NULL),
(587, 0, 0, 48, 0, 'Chrispin George', '37.111.206.207', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 09:21:57', NULL, NULL),
(588, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 09:30:42', NULL, NULL),
(589, 0, 0, 59, 0, 'Nelson Doe Avorkliyah', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 10:03:11', NULL, NULL),
(590, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '2.123.98.68', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-24 10:28:42', NULL, NULL),
(591, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 11:18:08', NULL, NULL),
(592, 0, 0, 33, 0, 'Matthew Mensah', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 11:57:50', NULL, NULL),
(593, 0, 0, 46, 0, 'G. Plason Z. Plakar', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 11:58:53', NULL, NULL),
(594, 0, 0, 46, 0, 'G. Plason Z. Plakar', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 11:59:07', NULL, NULL),
(595, 0, 0, 60, 0, 'Hoodh Mohamed', '37.111.193.129', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-24 18:30:29', NULL, NULL),
(596, 0, 0, 43, 0, 'Ashiru Mohammed Mustapha', '2.123.98.68', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '', '', NULL, '', NULL, '2022-05-24 18:54:49', NULL, NULL),
(597, 0, 0, 56, 0, 'Adelagun Abisola Oluwakemi', '41.217.105.56', 'Mozilla/5.0 (Linux; Android 11; CPH2121) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-25 07:20:05', NULL, NULL),
(598, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '37.111.193.129', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 07:23:40', NULL, NULL),
(599, 0, 0, 60, 0, 'Hoodh Mohamed', '37.111.193.129', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 07:29:42', NULL, NULL),
(600, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 09:59:24', NULL, NULL),
(601, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 10:52:16', NULL, NULL),
(602, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 11:16:34', NULL, NULL),
(603, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-25 12:56:25', NULL, NULL),
(604, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-25 12:57:10', NULL, NULL);
INSERT INTO `ib_invoice_access_log` (`id`, `lid`, `cid`, `iid`, `company_id`, `customer`, `ip`, `browser`, `referer`, `city`, `postal_code`, `country`, `country_iso`, `viewed_at`, `lat`, `lon`) VALUES
(605, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 12:57:18', NULL, NULL),
(606, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 13:19:03', NULL, NULL),
(607, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 14:28:35', NULL, NULL),
(608, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 14:51:30', NULL, NULL),
(609, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 15:50:52', NULL, NULL),
(610, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 15:51:01', NULL, NULL),
(611, 0, 0, 60, 0, 'Hoodh Mohamed', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 17:04:53', NULL, NULL),
(612, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '119.30.32.196', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-25 19:56:08', NULL, NULL),
(613, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '154.118.75.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-25 22:03:14', NULL, NULL),
(614, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '154.118.75.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-25 22:12:13', NULL, NULL),
(615, 0, 0, 60, 0, 'Hoodh Mohamed', '37.111.212.32', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-26 07:28:47', NULL, NULL),
(616, 0, 0, 63, 0, 'Donaldson Siegesmond Pontis', '27.147.205.239', 'WhatsApp/2.2216.8 N', '', '', NULL, '', NULL, '2022-05-26 07:39:34', NULL, NULL),
(617, 0, 0, 63, 0, 'Donaldson Siegesmond Pontis', '37.111.212.32', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-26 07:39:58', NULL, NULL),
(618, 0, 0, 63, 0, 'Donaldson Siegesmond Pontis', '37.111.212.32', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-26 07:40:29', NULL, NULL),
(619, 0, 0, 61, 0, 'Santos Paulo Bunga', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 11; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-26 08:18:42', NULL, NULL),
(620, 0, 0, 60, 0, 'Hoodh Mohamed', '123.176.7.54', 'Mozilla/5.0 (Linux; Android 11; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-26 08:33:50', NULL, NULL),
(621, 0, 0, 60, 0, 'Hoodh Mohamed', '123.176.7.54', 'Mozilla/5.0 (Linux; Android 11; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-26 08:34:42', NULL, NULL),
(622, 0, 0, 60, 0, 'Hoodh Mohamed', '123.176.7.54', 'Mozilla/5.0 (Linux; Android 11; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/60/token_6179902512', '', NULL, '', NULL, '2022-05-26 08:46:19', NULL, NULL),
(623, 0, 0, 60, 0, 'Hoodh Mohamed', '123.176.7.54', 'Mozilla/5.0 (Linux; Android 11; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', 'https://worldacademy.org.uk/?ng=client/iview/60/token_6179902512', '', NULL, '', NULL, '2022-05-26 10:21:30', NULL, NULL),
(624, 0, 0, 63, 0, 'Donaldson Siegesmond Pontis', '41.223.132.206', 'Mozilla/5.0 (Linux; Android 10; TECNO KD6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-26 10:52:47', NULL, NULL),
(625, 0, 0, 63, 0, 'Donaldson Siegesmond Pontis', '208.117.230.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-26 10:52:51', NULL, NULL),
(626, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '27.147.205.239', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-26 11:56:39', NULL, NULL),
(627, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '123.49.59.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '', '', NULL, '', NULL, '2022-05-26 11:56:43', NULL, NULL),
(628, 0, 0, 53, 0, 'MOGAJI Oluwatimilehin Babatope', '27.147.205.239', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-26 12:05:42', NULL, NULL),
(629, 0, 0, 63, 0, 'Donaldson Siegesmond Pontis', '41.223.132.206', 'Mozilla/5.0 (Linux; Android 10; TECNO KD6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36', 'https://s523008.smtp02.pulse-stat.com/', '', NULL, '', NULL, '2022-05-26 13:17:47', NULL, NULL),
(630, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '37.111.207.202', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 05:08:48', NULL, NULL),
(631, 0, 0, 63, 0, 'Donaldson Siegesmond Pontis', '37.111.207.202', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 06:35:22', NULL, NULL),
(632, 0, 0, 52, 0, 'Byamanywoha Edgar', '27.147.205.239', 'WhatsApp/2.2218.8 N', '', '', NULL, '', NULL, '2022-05-27 15:45:36', NULL, NULL),
(633, 0, 0, 52, 0, 'Byamanywoha Edgar', '202.134.8.133', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-27 15:47:33', NULL, NULL),
(634, 0, 0, 52, 0, 'Byamanywoha Edgar', '41.75.188.214', 'Mozilla/5.0 (Linux; Android 10; TECNO CD7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 15:47:54', NULL, NULL),
(635, 0, 0, 52, 0, 'Byamanywoha Edgar', '202.134.8.133', 'Mozilla/5.0 (Linux; Android 5.1; X9009 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 15:48:51', NULL, NULL),
(636, 0, 0, 65, 0, 'Otto Alex', '27.147.205.239', 'WhatsApp/2.2218.8 N', '', '', NULL, '', NULL, '2022-05-27 15:57:39', NULL, NULL),
(637, 0, 0, 65, 0, 'Otto Alex', '37.111.207.202', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 15:59:23', NULL, NULL),
(638, 0, 0, 65, 0, 'Otto Alex', '37.111.207.202', 'WhatsApp/2.22.10.73 A', '', '', NULL, '', NULL, '2022-05-27 15:59:50', NULL, NULL),
(639, 0, 0, 65, 0, 'Otto Alex', '197.231.239.174', 'Mozilla/5.0 (Linux; Android 10; SM-A013G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 18:35:42', NULL, NULL),
(640, 0, 0, 65, 0, 'Otto Alex', '197.231.239.174', 'Mozilla/5.0 (Linux; Android 10; SM-A013G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 18:37:45', NULL, NULL),
(641, 0, 0, 65, 0, 'Otto Alex', '37.111.207.202', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-27 19:10:55', NULL, NULL),
(642, 0, 0, 58, 0, 'Junisa Kandeh Jambawai', '37.111.201.25', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A205F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', '', '', NULL, '', NULL, '2022-05-28 17:40:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb`
--

CREATE TABLE `ib_kb` (
  `id` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `groups` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `is_public` int(1) NOT NULL DEFAULT 1,
  `sorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib_kb`
--

INSERT INTO `ib_kb` (`id`, `gid`, `gname`, `status`, `type`, `groups`, `title`, `slug`, `description`, `created_by`, `created_at`, `updated_by`, `updated_at`, `views`, `is_public`, `sorder`) VALUES
(1, NULL, NULL, 'Published', NULL, NULL, 'test', 'test', '<p>test</p>', 1, '2022-01-04 10:31:41', NULL, '2022-01-04 10:31:41', 0, 1, NULL),
(2, NULL, NULL, 'Published', NULL, NULL, 'Bank information', 'bank-information', '<h4>Information for Bank Transfer/ Bank deposit:</h4><ul><li><u>Account Currency</u>: Euro Account [for Outside UK countries]</li><li><u>Account Name</u>: Cambridge Academy Of Professionals Ltd</li><li><u>Account Number</u>: 1708979</li><li><u>SWIFT/BIC</u>: TRWIBEB1XXX,</li><li><u>IBAN</u>: BE65 9671 7089 7996</li><li><u>Bank Name</u>: Wise</li><li><u>Bank Address</u>: Avenue Louise 54, Room S52, Brussels, 1050, Belgium</li></ul>', 1, '2022-04-09 11:55:29', NULL, '2022-04-09 11:55:29', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_groups`
--

CREATE TABLE `ib_kb_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib_kb_groups`
--

INSERT INTO `ib_kb_groups` (`id`, `gname`, `description`, `status`, `color`, `pid`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_rel`
--

CREATE TABLE `ib_kb_rel` (
  `id` int(11) NOT NULL,
  `kbid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_replies`
--

CREATE TABLE `ib_kb_replies` (
  `id` int(11) NOT NULL,
  `kbid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads_groups`
--

CREATE TABLE `leads_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `separateinvoices` text DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lead_forms`
--

CREATE TABLE `lead_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_source_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lead_status_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notify_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha` tinyint(1) NOT NULL DEFAULT 0,
  `submit_button_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_duplicate` tinyint(1) NOT NULL DEFAULT 1,
  `create_task` tinyint(1) NOT NULL DEFAULT 0,
  `webhook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_forms`
--

INSERT INTO `lead_forms` (`id`, `uuid`, `name`, `form_data`, `lead_source_id`, `lead_status_id`, `admin_id`, `notify_ids`, `captcha`, `submit_button_name`, `success_message`, `allow_duplicate`, `create_task`, `webhook_url`, `notification_email`, `created_at`, `updated_at`) VALUES
(1, '089be85c-0775-4654-8336-91600d5b439d', 'test', '[{\"type\":\"paragraph\",\"subtype\":\"p\",\"label\":\"Paragraph\",\"access\":false},{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Header\",\"access\":false},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"className\":\"form-control\",\"name\":\"first_name\",\"access\":false,\"subtype\":\"text\"},{\"type\":\"text\",\"subtype\":\"email\",\"required\":false,\"label\":\"Email\",\"className\":\"form-control\",\"name\":\"email\",\"access\":false},{\"type\":\"textarea\",\"required\":false,\"label\":\"Description\",\"className\":\"form-control\",\"name\":\"memo\",\"access\":false,\"subtype\":\"textarea\"}]', 10, 0, 1, NULL, 0, 'Submit', '<p>Thanks</p>', 1, 0, NULL, NULL, '2022-01-21 14:09:04', '2022-01-21 14:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `unit_price` decimal(16,2) DEFAULT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `total` decimal(16,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `short_urls`
--

CREATE TABLE `short_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_url` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `short_url_accesses`
--

CREATE TABLE `short_url_accesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_id` int(10) UNSIGNED NOT NULL,
  `ip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_agent` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contract_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invoice_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `next_renewal_date` date DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_api_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_plan` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `paused` tinyint(1) NOT NULL DEFAULT 0,
  `cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `terminated` tinyint(1) NOT NULL DEFAULT 0,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_customer` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `tax_1` decimal(8,2) DEFAULT NULL,
  `tax_2` decimal(8,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thank_you_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_api_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_plan` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_pricing_id` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_customer` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `user_id`, `group_id`, `title`, `slug`, `type`, `term`, `price`, `tax_1`, `tax_2`, `description`, `features`, `thank_you_message`, `button_text`, `status`, `email_subject`, `email_body`, `payment_gateway_api_name`, `payment_gateway_plan`, `stripe_pricing_id`, `archived`, `tax_included`, `show_in_customer`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'test', 'test', NULL, NULL, '100.00', NULL, NULL, '', '[]', NULL, 'subscribe', NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '2022-01-04 22:58:23', '2022-01-04 22:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `sys_accounts`
--

CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_activity`
--

CREATE TABLE `sys_activity` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_activity`
--

INSERT INTO `sys_activity` (`id`, `cid`, `msg`, `icon`, `stime`, `sdate`, `o`, `oname`) VALUES
(1, 1, '<p>sgsg</p>', 'fal fa-check', '1641532369', '2022-01-07', 1, 'World Academy');

-- --------------------------------------------------------

--
-- Table structure for table `sys_api`
--

CREATE TABLE `sys_api` (
  `id` int(11) NOT NULL,
  `label` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `apikey` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_appconfig`
--

CREATE TABLE `sys_appconfig` (
  `id` int(11) NOT NULL,
  `setting` varchar(200) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_appconfig`
--

INSERT INTO `sys_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'World Academy'),
(2, 'theme', 'default'),
(3, 'currency_code', '$'),
(4, 'language', 'en'),
(5, 'show-logo', '1'),
(6, 'nstyle', 'sydney'),
(7, 'dec_point', '.'),
(8, 'thousands_sep', ','),
(9, 'timezone', 'Europe/London'),
(10, 'country', 'United Kingdom'),
(11, 'country_code', 'US'),
(12, 'df', 'Y-m-d'),
(13, 'caddress', 'UK Partner <br> Cambridge Academy of Professionals, UK<br> ProfQual, UK'),
(14, 'account_search', '1'),
(15, 'redirect_url', 'dashboard'),
(16, 'rtl', '0'),
(17, 'ckey', '0982995697'),
(18, 'networth_goal', '350000'),
(19, 'sysEmail', 'info@worldacademy.org.uk'),
(20, 'url_rewrite', '0'),
(21, 'build', '1731'),
(22, 'animate', '0'),
(23, 'pdf_font', 'dejavusanscondensed'),
(24, 'accounting', '1'),
(25, 'invoicing', '1'),
(26, 'quotes', '1'),
(27, 'client_dashboard', '1'),
(28, 'contact_set_view_mode', 'search'),
(29, 'invoice_terms', '<h4><br></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>'),
(30, 'console_notify_invoice_created', '0'),
(31, 'i_driver', 'v2'),
(32, 'purchase_key', ''),
(33, 'c_cache', ''),
(34, 'mininav', '0'),
(35, 'hide_footer', '1'),
(36, 'design', 'default'),
(37, 'default_landing_page', 'login'),
(38, 'recaptcha', '0'),
(39, 'recaptcha_sitekey', ''),
(40, 'recaptcha_secretkey', ''),
(41, 'home_currency', 'USD'),
(42, 'currency_decimal_digits', 'true'),
(43, 'currency_symbol_position', 'p'),
(44, 'thousand_separator_placement', '3'),
(45, 'dashboard', 'canvas'),
(46, 'header_scripts', 'Welcome to World Academy'),
(47, 'footer_scripts', 'copyright @ World Academy'),
(48, 'ib_key', 'vLBLfhA6DNi1R2MFHO8IvFWr4Cn9665eHUF+L/sqAKM='),
(49, 'ib_s', 'PNhjeZ0sOFF3JNfzT2mLxvNNKPeh6ltqpE+G5LVSDSvgp/z79Sco7W4tJEoXYIl8'),
(50, 'ib_u_t', '1512841700'),
(51, 'ib_u_a', '0'),
(52, 'momentLocale', 'en'),
(53, 'contentAnimation', 'animated fadeIn'),
(54, 'calendar', '1'),
(55, 'leads', '1'),
(56, 'tasks', '1'),
(57, 'orders', '1'),
(58, 'show_quantity_as', ''),
(59, 'gmap_api_key', ''),
(60, 'license_key', ''),
(61, 'local_key', ''),
(62, 'ib_installed_at', '1485170108'),
(63, 'maxmind_installed', '1'),
(64, 'maxmind_db_version', ''),
(65, 'add_fund', '1'),
(66, 'add_fund_minimum_deposit', '1'),
(67, 'add_fund_maximum_deposit', '10000'),
(68, 'add_fund_maximum_balance', '25000'),
(69, 'add_fund_require_active_order', '0'),
(70, 'industry', 'default'),
(71, 'sales_target', '10000'),
(72, 'inventory', '1'),
(73, 'secondary_currency', ''),
(74, 'customer_custom_username', '1'),
(75, 'documents', '1'),
(76, 'projects', '0'),
(77, 'purchase', '1'),
(78, 'suppliers', '1'),
(79, 'support', '1'),
(80, 'hrm', '1'),
(81, 'companies', '1'),
(82, 'plugins', '1'),
(83, 'country_flag_code', 'gb'),
(84, 'graph_primary_color', '2196f3'),
(85, 'graph_secondary_color', 'eb3c00'),
(86, 'expense_type_1', 'Personal'),
(87, 'expense_type_2', 'Business'),
(88, 'edition', 'default'),
(89, 'assets', '1'),
(90, 'kb', '1'),
(91, 'business_id_1', ''),
(92, 'business_id_2', ''),
(93, 'logo_default', 'logo_0934952285.png'),
(94, 'logo_inverse', 'logo_inverse_3987766377.png'),
(95, 'add_fund_client', '1'),
(96, 'order_method', 'default'),
(97, 'purchase_code', ''),
(98, 'invoice_receipt_number', '0'),
(99, 'allow_customer_registration', '1'),
(100, 'fax_field', '0'),
(101, 'show_business_number', '1'),
(102, 'label_business_number', 'Business Number'),
(103, 'sms', '1'),
(104, 'sms_request_method', ''),
(105, 'sms_auth_header', ''),
(106, 'sms_req_url', ''),
(107, 'sms_notify_admin_new_deposit', '0'),
(108, 'sms_notify_customer_signed_up', '0'),
(109, 'sms_notify_customer_invoice_created', '0'),
(110, 'sms_notify_customer_invoice_paid', '0'),
(111, 'sms_notify_customer_payment_received', '0'),
(112, 'sms_api_handler', ''),
(113, 'sms_auth_username', ''),
(114, 'sms_auth_password', ''),
(115, 'sms_sender_name', ''),
(116, 'sms_http_params', NULL),
(117, 'purchase_invoice_payment_status', '0'),
(118, 'quote_confirmation_email', '1'),
(119, 'client_drive', '1'),
(120, 's_version', '7'),
(121, 'latest_file', ''),
(122, 'file_public_key', 'd050d069-c43d-4c7c-a478-8c9917c3ac2f'),
(123, 'cache_id', '1000'),
(124, 'invoice_show_watermark', '1'),
(125, 'show_country_flag', '0'),
(126, 'drive', '0'),
(127, 'tax_system', 'default'),
(128, 'pos', '1'),
(129, 'password_manager', 'default'),
(130, 'update_manager', '1'),
(131, 'app_credentials', '0'),
(132, 'business_location', ''),
(133, 'hr', '1'),
(134, 'mailgun_api_key', ''),
(135, 'sparkpost_api_key', ''),
(136, 'mailgun_domain', ''),
(137, 'show_sidebar_header', '1'),
(138, 'top_bar_is_dark', '0'),
(139, 'slack_webhook_url', ''),
(140, 'config_recaptcha_in_client_login', '0'),
(141, 'config_recaptcha_in_admin_login', '0'),
(142, 'contact_list_show_company_column', '0'),
(143, 'config_contact_list_show_group_column', '1'),
(144, 'contact_list_show_group_column', '0'),
(145, 'tickets_assigned_sms_notification', '1'),
(146, 'admin_layout', 'layouts/admin.tpl'),
(147, 'client_layout', 'layouts/client.tpl'),
(148, 'route_controller_directory', 'default'),
(149, 'disabled_theme_options', '0'),
(150, 'number_pad', '5'),
(151, 'customer_code_prefix', 'WARD-CUS-'),
(152, 'customer_code_template', ''),
(153, 'customer_code_current_number', '59'),
(154, 'supplier_code_prefix', 'SUP-'),
(155, 'supplier_code_template', ''),
(156, 'supplier_code_current_number', '2'),
(157, 'income_code_prefix', 'INC-'),
(158, 'income_code_template', ''),
(159, 'income_code_current_number', '1'),
(160, 'expense_code_prefix', 'EXP-'),
(161, 'expense_code_template', ''),
(162, 'expense_code_current_number', '1'),
(163, 'invoice_code_prefix', 'WARD-INV-'),
(164, 'invoice_code_template', ''),
(165, 'invoice_code_current_number', '66'),
(166, 'quotation_code_prefix', 'WARD-QUOTE-'),
(167, 'quotation_code_template', ''),
(168, 'quotation_code_current_number', '2'),
(169, 'purchase_code_prefix', 'WARD-PO-'),
(170, 'purchase_code_template', ''),
(171, 'purchase_code_current_number', '3'),
(172, 'contact_display_name_string', 'Display Name'),
(173, 'contact_extra_field', 'Display Name'),
(174, 'company_code_prefix', 'COMP-'),
(175, 'company_code_template', ''),
(176, 'company_code_current_number', '3'),
(177, 'ticket_code_prefix', ''),
(178, 'ticket_code_template', ''),
(179, 'ticket_code_current_number', ''),
(180, 'invoice_show_qr_code', '1'),
(181, 'address_format', 'default'),
(182, 'vat_number', ''),
(183, 'invoice_default_date', 'due_on_receipt'),
(184, 'dashboard_widgets_tickets', '1'),
(185, 'dashboard_widgets_tasks', '1'),
(186, 'invoice_client_can_attach_signature', '0'),
(187, 'logo_text', 'World Academy'),
(188, 'logo_square', 'logo-512x512-3681691142.png'),
(189, 'icon-270', 'icon-270x270-1641269060.png'),
(190, 'icon-192', 'icon-192x192-1641269060.png'),
(191, 'icon-180', 'icon-180x180-1641269060.png'),
(192, 'icon-32', 'icon-32x32-1641269060.png'),
(194, 'subscriptions', '1'),
(195, 'allow_customer_change_language', '1'),
(196, 'task_automatic_payment_reminder', '1'),
(197, 'hide_expense_client', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sys_canned_responses`
--

CREATE TABLE `sys_canned_responses` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_cart`
--

CREATE TABLE `sys_cart` (
  `id` int(11) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `ip` varchar(100) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  `coupon` varchar(200) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `lid` int(11) NOT NULL DEFAULT 0,
  `currency_id` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_cart`
--

INSERT INTO `sys_cart` (`id`, `secret`, `items`, `total`, `discount`, `ip`, `fullname`, `phone`, `email`, `status`, `browser`, `country`, `currency`, `language`, `coupon`, `lat`, `lon`, `item_count`, `cid`, `aid`, `lid`, `currency_id`, `company_id`, `created_at`, `updated_at`, `expiry`, `memo`) VALUES
(2, 'p265vgblt61bmwj7xofhcaff09e3845d1d8a85743757d88df819', '[{\"id\":\"1\",\"name\":\"CHRG\",\"price\":\"400.00\",\"qty\":5}]', '2000.00', '0.00', '27.147.205.239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0, 0, 0, 0, '2022-01-06 15:23:19', '2022-01-06 15:23:40', NULL, NULL),
(5, 'tmcyogxrbg44unq0rgu74d1880f4d816e0b45a019d35ca23a1bc', '[{\"id\":\"1\",\"name\":\"CHRG\",\"price\":\"400.00\",\"qty\":2}]', '800.00', '0.00', '27.147.205.239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 0, 0, 0, 0, '2022-01-21 09:17:46', '2022-01-21 09:17:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_cats`
--

CREATE TABLE `sys_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `total_amount` decimal(16,4) DEFAULT 0.0000,
  `budget` decimal(16,4) DEFAULT 0.0000,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_spend` decimal(16,4) DEFAULT 0.0000,
  `current_month_spend` decimal(16,4) DEFAULT 0.0000,
  `current_year_spend` decimal(16,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_cats`
--

INSERT INTO `sys_cats` (`id`, `name`, `type`, `sorder`, `total_amount`, `budget`, `created_at`, `updated_at`, `total_spend`, `current_month_spend`, `current_year_spend`) VALUES
(14, 'Advertising', 'Expense', 1, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(15, 'Bank and Credit Card Interest', 'Expense', 23, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(16, 'Car and Truck', 'Expense', 24, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(17, 'Commissions and Fees', 'Expense', 25, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(18, 'Contract Labor', 'Expense', 26, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(19, 'Contributions', 'Expense', 27, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(20, 'Cost of Goods Sold', 'Expense', 28, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(21, 'Credit Card Interest', 'Expense', 29, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(22, 'Depreciation', 'Expense', 31, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(23, 'Dividend Payments', 'Expense', 32, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(24, 'Employee Benefit Programs', 'Expense', 33, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(25, 'Entertainment', 'Expense', 34, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(26, 'Gift', 'Expense', 35, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(27, 'Insurance', 'Expense', 36, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(28, 'Legal, Accountant &amp; Other Professional Services', 'Expense', 37, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(29, 'Meals', 'Expense', 38, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(30, 'Mortgage Interest', 'Expense', 39, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(31, 'Non-Deductible Expense', 'Expense', 40, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(33, 'Other Business Property Leasing', 'Expense', 22, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(34, 'Owner Draws', 'Expense', 21, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(35, 'Payroll Taxes', 'Expense', 8, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(37, 'Phone', 'Expense', 9, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(38, 'Postage', 'Expense', 10, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(39, 'Rent', 'Expense', 12, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(40, 'Repairs &amp; Maintenance', 'Expense', 11, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(41, 'Supplies', 'Expense', 13, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(42, 'Taxes and Licenses', 'Expense', 14, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(43, 'Transfer Funds', 'Expense', 15, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(44, 'Travel', 'Expense', 16, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(45, 'Utilities', 'Expense', 17, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(46, 'Vehicle, Machinery &amp; Equipment Rental or Leasing', 'Expense', 18, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(47, 'Wages', 'Expense', 19, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(48, 'Regular Income', 'Income', 1, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(49, 'Owner Contribution', 'Income', 12, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(50, 'Interest Income', 'Income', 11, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(51, 'Expense Refund', 'Income', 10, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(52, 'Other Income', 'Income', 9, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(53, 'Salary', 'Income', 8, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(54, 'Equities', 'Income', 7, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(55, 'Rent &amp; Royalties', 'Income', 6, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(56, 'Home equity', 'Income', 5, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(57, 'Part Time Work', 'Income', 3, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(58, 'Account Transfer', 'Income', 4, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(60, 'Health Care', 'Expense', 20, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(63, 'Loans', 'Expense', 30, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(64, 'Selling Software', 'Income', 2, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(65, 'Software Customization', 'Income', 13, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(67, 'Salary', 'Expense', 7, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(68, 'Paypal', 'Expense', 6, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(69, 'Office Equipment', 'Expense', 5, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(70, 'Staff Entertaining', 'Expense', 3, '0.0000', '0.0000', NULL, '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000'),
(71, 'Uncategorized', 'Income', 0, '0.0000', '0.0000', '2018-04-05 04:59:50', '2018-11-20 16:57:47', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sys_companies`
--

CREATE TABLE `sys_companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo_url` varchar(200) DEFAULT NULL,
  `logo_path` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `emails` text DEFAULT NULL,
  `phones` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `ratings` varchar(50) DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_companies`
--

INSERT INTO `sys_companies` (`id`, `company_name`, `code`, `business_number`, `url`, `logo_url`, `logo_path`, `email`, `phone`, `emails`, `phones`, `tags`, `description`, `notes`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `source`, `added_from`, `o`, `cid`, `aid`, `pid`, `oid`, `rid`, `assigned`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_contact`, `last_contact_by`, `ratings`, `trash`, `archived`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'CIRCA LOGICA GROUP', 'COMP-00001', '', 'http://', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '2/F Paragon Building, McArthur Highway, Balibago', NULL, 'Angeles City', 'Pampanga', '2009', 'Philippines', NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, '2022-01-12 12:14:52', NULL, '2022-01-12 12:14:52', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, 'Tanzania Electric Supply Company Limited', 'COMP-00002', '', 'https://tanesco.co.tz/', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'Plot No. 114, Block G, Dar es Salaam Road, P.O.Box 453 Dodoma', NULL, 'Dodama', 'Tanzania', '453', 'Tanzania', NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, '2022-05-26 11:58:51', NULL, '2022-05-26 11:58:51', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_currencies`
--

CREATE TABLE `sys_currencies` (
  `id` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `rate` decimal(16,8) NOT NULL DEFAULT 1.00000000,
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `available_in` text DEFAULT NULL,
  `isdefault` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_currencies`
--

INSERT INTO `sys_currencies` (`id`, `cname`, `iso_code`, `symbol`, `rate`, `prefix`, `suffix`, `format`, `decimal_separator`, `thousand_separator`, `created_at`, `created_by`, `updated_at`, `updated_by`, `available_in`, `isdefault`, `trash`, `archived`) VALUES
(1, 'USD', 'USD', '$', '1.00000000', NULL, NULL, NULL, NULL, NULL, '2018-11-20 16:57:47', NULL, '2018-11-20 16:57:47', NULL, NULL, 0, 0, 0),
(2, 'GBP', 'GBP', '', '1.36000000', NULL, NULL, NULL, NULL, NULL, '2022-01-12 07:17:48', NULL, '2022-01-12 07:17:48', NULL, NULL, 0, 0, 0),
(3, 'EUR', 'EUR', '', '1.14000000', NULL, NULL, NULL, NULL, NULL, '2022-01-16 11:04:52', NULL, '2022-01-16 11:04:52', NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_documents`
--

CREATE TABLE `sys_documents` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `related_to` varchar(100) DEFAULT NULL,
  `relation_id` int(11) NOT NULL DEFAULT 0,
  `file_o_name` varchar(200) DEFAULT NULL,
  `file_r_name` varchar(200) DEFAULT NULL,
  `file_mime_type` varchar(200) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_dl_token` varchar(200) DEFAULT NULL,
  `file_owner` int(11) NOT NULL DEFAULT 0,
  `version` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `sha1` varchar(40) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `contacts` text DEFAULT NULL,
  `deals` text DEFAULT NULL,
  `leads` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `customer_can_download` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `is_global` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_documents`
--

INSERT INTO `sys_documents` (`id`, `title`, `related_to`, `relation_id`, `file_o_name`, `file_r_name`, `file_mime_type`, `file_path`, `file_dl_token`, `file_owner`, `version`, `link`, `sha1`, `md5`, `cid`, `gid`, `company_id`, `aid`, `contacts`, `deals`, `leads`, `created_at`, `created_by`, `updated_at`, `updated_by`, `customer_can_download`, `trash`, `archived`, `is_global`) VALUES
(1, 'test', NULL, 0, NULL, NULL, 'pdf', '_db9eeb7e951428164127287010494221.pdf', 'zfjoli4j63rl04yhbhxbsub3vjmggj', 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, NULL, '2022-01-04 05:08:22', NULL, '2022-01-04 05:08:22', NULL, 0, 0, 0, 0),
(2, 'test-2', NULL, 0, NULL, NULL, 'pdf', '_e0f48a10172292164127296510476358.pdf', 'ewrto7j4r8wn2l3psae25wkzuw74x3', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, NULL, NULL, '2022-01-04 05:09:31', NULL, '2022-01-04 05:09:31', NULL, 0, 0, 0, 1),
(3, 'INVOICE/WARD-INV- 00004 /Proof Of Payment', NULL, 0, NULL, NULL, 'jpg', '_57c0531e026261164153059410721158.jpg', '3wz595yhwpsy2prwu4v255puxeuc6r', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2022-01-07 04:43:18', NULL, '2022-01-07 04:43:18', NULL, 0, 0, 0, 0),
(4, 'Test', NULL, 0, NULL, NULL, 'xlsx', '_d82d678e941550164157180510163772.xlsx', 'j7swi7sx77tascynug5azmtfj7sjh6', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, NULL, NULL, '2022-01-07 16:10:37', NULL, '2022-01-07 16:10:37', NULL, 0, 0, 0, 1),
(5, 'Test kk', NULL, 0, NULL, NULL, 'xlsx', '_3368986b98163216415719901017866.xlsx', 'y91ip9pujkpifygaspwdv95m4gxn9f', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, NULL, NULL, '2022-01-07 16:13:19', NULL, '2022-01-07 16:13:19', NULL, 0, 0, 0, 1),
(6, 'test---', NULL, 0, NULL, NULL, 'pdf', '_098930a1744489164267065411068775.pdf', '60oh1fgdipaery6kyfuaaggdq5eqrx', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, NULL, NULL, '2022-01-20 09:24:25', NULL, '2022-01-20 09:24:25', NULL, 0, 0, 0, 0),
(7, 'CCBP-Cohort-1', NULL, 0, NULL, NULL, 'xlsx', '_37d7902c276892164404065010634632.xlsx', 'vuxzaq16p5vg4omklvppjq6ib8z5vb', 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, NULL, '2022-02-05 05:57:32', NULL, '2022-02-05 05:57:32', NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_emailconfig`
--

CREATE TABLE `sys_emailconfig` (
  `id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_emailconfig`
--

INSERT INTO `sys_emailconfig` (`id`, `method`, `host`, `username`, `password`, `apikey`, `port`, `secure`) VALUES
(1, 'smtp', 'smtp-pulse.com', 'training.ward@wardbd.net', 'wArdbCOm12', '', '465', 'ssl');

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_logs`
--

CREATE TABLE `sys_email_logs` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT 0,
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` int(11) NOT NULL DEFAULT 0,
  `purchase_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_logs`
--

INSERT INTO `sys_email_logs` (`id`, `userid`, `sender`, `email`, `subject`, `message`, `date`, `iid`, `rel_type`, `rel_id`, `purchase_id`) VALUES
(1, 1, '', 'training.ward@wardbd.net', 'test', '<p>test</p>', '2021-12-31 11:32:02', 0, NULL, 0, NULL),
(2, 1, '', 'training.ward@wardbd.net', 'test', '<p>test data</p>', '2022-01-02 06:08:29', 0, NULL, 0, NULL),
(3, 1, '', 'training.ward@wardbd.net', 'Test Mail', '<p>fgh fgh gfh </p>', '2022-01-02 12:07:02', 0, NULL, 0, NULL),
(4, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>fgh fgh gf</p>', '2022-01-02 14:59:36', 0, NULL, 0, NULL),
(5, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>sdf sdf dsfs</p>', '2022-01-02 15:05:01', 0, NULL, 0, NULL),
(6, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>gh hfghfgh</p>', '2022-01-02 15:06:04', 0, NULL, 0, NULL),
(7, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>ert ert </p>', '2022-01-02 15:19:41', 0, NULL, 0, NULL),
(8, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>Hello</p>', '2022-01-02 15:22:59', 0, NULL, 0, NULL),
(9, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>Hello</p>', '2022-01-02 15:25:39', 0, NULL, 0, NULL),
(10, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>Hello</p>', '2022-01-02 15:27:11', 0, NULL, 0, NULL),
(11, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>Hello</p>', '2022-01-02 15:27:57', 0, NULL, 0, NULL),
(12, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>hello2</p>', '2022-01-02 15:30:20', 0, NULL, 0, NULL),
(13, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>r</p>', '2022-01-02 15:32:17', 0, NULL, 0, NULL),
(14, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>lll</p>', '2022-01-02 15:34:46', 0, NULL, 0, NULL),
(15, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>lll</p>', '2022-01-02 15:35:56', 0, NULL, 0, NULL),
(16, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>lll</p>', '2022-01-02 15:41:44', 0, NULL, 0, NULL),
(17, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>lll</p>', '2022-01-02 15:42:40', 0, NULL, 0, NULL),
(18, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>lll</p>', '2022-01-02 15:43:19', 0, NULL, 0, NULL),
(19, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>llll</p>', '2022-01-02 15:45:27', 0, NULL, 0, NULL),
(20, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>xfgd</p>', '2022-01-02 15:46:19', 0, NULL, 0, NULL),
(21, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>xfgd</p>', '2022-01-02 15:59:09', 0, NULL, 0, NULL),
(22, 1, '', 'albrators@gmail.com', 'World Academy New Password for Admin', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n\n   Hello Shabok\n</p><p style=\"padding:5px\">\n		Here is your new password for <strong>World Academy. </strong>\n	</p><p style=\"padding:10px 5px\">\n    Log in URL: <a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{login_url}}\">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</p><p style=\"padding:5px\">For security reason, Please change your password after login. </p><p style=\"padding:0px 5px\">\n	World Academy Team</p>', '2022-01-02 16:00:33', 0, NULL, 0, NULL),
(23, 1, '', 'training.ward@wardbd.net', 'Test Mail', '<p>123</p>', '2022-01-02 16:12:02', 0, NULL, 0, NULL),
(24, 1, '', 'albrators@gmail.com', 'World Academy Email', '<p>sfdfs sf sdf</p>', '2022-01-02 16:13:25', 0, NULL, 0, NULL),
(25, 1, '', 'albrators@gmail.com', 'Test Mail', '<p>This is test mail<br></p>', '2022-01-02 16:17:56', 0, NULL, 0, NULL),
(26, 1, '', 'albrators@gmail.com', 'Casual Leave', 'dfg dfg d', '2022-01-03 16:49:42', 0, NULL, 0, NULL),
(27, 1, '', 'albrators@gmail.com', 'Test Mail', 'hi shafiq', '2022-01-03 16:53:14', 0, NULL, 0, NULL),
(28, 1, '', 'albrators@gmail.com', 'Regarding Casual Leave', 'fg hfgh fgh', '2022-01-03 16:55:03', 0, NULL, 0, NULL),
(29, 1, '', 'albrators@gmail.com', 'Test Mail', 'fdg dfg fdg', '2022-01-03 16:56:53', 0, NULL, 0, NULL),
(30, 1, '', 'rmnzaidi@gmail.com', 'test', 'test', '2022-01-03 17:51:29', 0, NULL, 0, NULL),
(31, 1, '', 'training.ward@wardbd.net', 'test', '<p><p>testtt</p></p>\n<p>----------------------------------------------<br /> Ticket ID: #VCR-10764369<br /> Subject: test<br /> Status: Open<br /> Ticket URL: https://worldacademy.org.uk/?ng=client/tickets/view/VCR-10764369/<br /> ----------------------------------------------</p>', '2022-01-04 05:11:51', 0, NULL, 0, NULL),
(32, 1, '', 'training.ward@wardbd.net', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/3/token_5171782944\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/3/token_5171782944</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00003<br>Invoice Amount: 2.00<br>Due Date: 2022-01-05</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-01-05 06:27:39', 3, NULL, 0, NULL),
(33, 1, '', 'training.ward@wardbd.net', 'World Academy Quote', '<p style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\nGreetings,</p><p style=\"padding: 5px;\">Dear {{contact_name}}, <br>Thank you for accepting the Quote.</p><p style=\"padding: 10px 5px;\">Quote: <a href=\"{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></p><p style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></p><p style=\"padding: 0px 5px;\">\nWorld Academy Team</p>', '2022-01-07 05:12:24', 0, NULL, 0, NULL),
(34, 4, '', 'rmnzaidi@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/7/token_6631100969\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/7/token_6631100969</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00007<br>Invoice Amount: 250.00<br>Due Date: 2022-01-08</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-01-08 12:23:07', 7, NULL, 0, NULL),
(35, 4, '', 'rmnzaidi@gmail.com', 'test', '<p>test</p>', '2022-01-08 12:24:32', 0, NULL, 0, NULL),
(36, 4, '', 'rakib@wardglobal.net', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/8/token_1552920669\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/8/token_1552920669</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00008<br>Invoice Amount: 150.00<br>Due Date: 2022-01-08</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-01-08 12:43:40', 8, NULL, 0, NULL),
(37, 1, '', 'rosette.musni@circalogicagroup.com', 'World Academy Invoice for CCBP &amp; CRSP', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/9/token_5962390197\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/9/token_5962390197</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00009<br>Invoice Amount: 1,650.00<br>Due Date: 2022-01-12</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-01-12 07:29:48', 9, NULL, 0, NULL),
(38, 1, '', 'rakib@wardglobal.net', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/11/token_7874121005\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/11/token_7874121005</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00011<br>Invoice Amount: 45.00<br>Due Date: 2022-01-16</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-01-16 12:52:49', 11, NULL, 0, NULL),
(39, 1, '', 'rmnzaidi@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/12/token_7138790712\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/12/token_7138790712</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00012<br>Invoice Amount: 1.00<br>Due Date: 2022-01-16</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-01-16 13:16:10', 12, NULL, 0, NULL),
(40, 2, '', 'rmnzaidi@gmail.com', 'test', 'test', '2022-01-21 09:13:59', 0, NULL, 0, NULL),
(41, 1, '', 'rmnzaidi@gmail.com', 'Test', 'Test', '2022-01-23 10:47:26', 0, NULL, 0, NULL),
(42, 3, '', 'rupakzaidi@gmail.com', 'World Academy Invoice', '<p style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,\'droid sans\',\'lucida sans\',sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\nGreetings,</p><p style=\"padding: 5px;\">This email serves as your official invoice from <strong>World Academy. </strong></p><p style=\"padding: 10px 5px;\">Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/purchase_view/1/token_7438379271\">https://worldacademy.org.uk/?ng=client/purchase_vi...</a><br>Invoice ID: WARD-PO-00001<br>Invoice Amount: 170.00</p><p style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span></p><p style=\"padding: 0px 5px;\">\nWorld Academy Team</p>', '2022-01-31 05:15:11', 1, NULL, 0, NULL),
(43, 0, '', 'training.ward@wardbd.net', 'World Academy Quote', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear Shabok,&nbsp;<br />Thank you for accepting the Quote.</div>\n<div style=\"padding: 10px 5px;\">Quote: <a href=\"https://worldacademy.org.uk/?ng=client/q/1/token_9893234767\" target=\"_blank\" rel=\"noopener noreferrer\">https://worldacademy.org.uk/?ng=client/q/1/token_9893234767</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />World Academy Team</div>\n</div>\n</div>', '2022-02-01 16:17:14', 0, NULL, 0, NULL),
(44, 0, '', 'info@worldacademy.org.uk', 'World Academy Quote Accpeted', 'Quote- 1 has been Accepted. You can view this quote- https://worldacademy.org.uk/?ng=client/q/1/token_9893234767', '2022-02-01 16:17:16', 0, NULL, 0, NULL),
(45, 1, '', 'training.ward@wardbd.net', 'test', '<p><p>adadada</p></p>\n<p>----------------------------------------------<br /> Ticket ID: #0YI-70847667<br /> Subject: test<br /> Status: Open<br /> Ticket URL: https://worldacademy.org.uk/?ng=client/tickets/view/0YI-70847667/<br /> ----------------------------------------------</p>', '2022-02-03 16:29:55', 0, NULL, 0, NULL),
(46, 1, '', 'training.ward@wardbd.net', 'enrolment for ', '<p><p>received and done</p></p>\n<p>----------------------------------------------<br /> Ticket ID: #E8Q-47994306<br /> Subject: enrolment for <br /> Status: Closed<br /> Ticket URL: https://worldacademy.org.uk/?ng=client/tickets/view/E8Q-47994306/<br /> ----------------------------------------------</p>', '2022-02-05 05:52:54', 0, NULL, 0, NULL),
(47, 1, '', 'rmnzaidi@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/15/token_0257666683\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/15/token_0257666683</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00015<br>Invoice Amount: 12.00<br>Due Date: 2022-03-23</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-03-23 16:13:43', 15, NULL, 0, NULL),
(48, 9, '', 'rmnzaidi@gmail.com', 'Greetings from World Academy', '<p>Dear</p><p>This is test</p><p><br></p><p><br></p>', '2022-03-29 14:51:43', 0, NULL, 0, NULL),
(49, 4, '', 'rakib@wardglobal.net', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/16/token_4065305331\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/16/token_4065305331</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00016<br>Invoice Amount: 200.00<br>Due Date: 2022-04-02</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-04-02 06:53:10', 16, NULL, 0, NULL),
(50, 1, '', 'marianina.banares@jacobi.net', 'World Academy Invoice Payment Confirmation', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\r\n\r\n\r\n   Greetings,\r\n</p><p style=\"padding:5px\">\r\n		This is a payment receipt for Invoice WARD-INV-00022 sent on 2022-04-10.\r\n	</p><p style=\"padding:5px\">\r\n		Login to your client Portal to view this invoice.\r\n	</p><p style=\"padding:10px 5px\">\r\n    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/22/token_2603146086\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/22/token_2603146086</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00022<br>Invoice Amount: 170.00<br>Due Date: 2022-04-10</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">\r\n	World Academy Team</p>', '2022-04-10 13:00:03', 22, NULL, 0, NULL),
(51, 1, '', 'a.onafusi@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/25/token_8937305811\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/25/token_8937305811</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00025<br>Invoice Amount: 170.00<br>Due Date: 2022-04-14</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-04-11 06:56:49', 25, NULL, 0, NULL),
(52, 1, '', 'qutieilisan@yahoo.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/27/token_3273225920\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/27/token_3273225920</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00027<br>Invoice Amount: 170.00<br>Due Date: 2022-04-16</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-04-13 07:05:40', 27, NULL, 0, NULL),
(53, 1, '', 'obertelijah@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/36/token_6809411245\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/36/token_6809411245</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00036<br>Invoice Amount: 100.00<br>Due Date: 2022-05-06</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-06 15:37:53', 36, NULL, 0, NULL),
(54, 1, '', 'fareedgrigni@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/38/token_5474378582\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/38/token_5474378582</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00038<br>Invoice Amount: 220.00<br>Due Date: 2022-05-08</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-08 12:10:40', 38, NULL, 0, NULL),
(55, 1, '', 'fareedgrigni@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/38/token_5474378582\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/38/token_5474378582</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00038<br>Invoice Amount: 420.00<br>Due Date: 2022-05-08</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-10 08:04:35', 38, NULL, 0, NULL),
(56, 1, '', 'lesleysosi69@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/40/token_6179027325\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/40/token_6179027325</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00040<br>Invoice Amount: 395.00<br>Due Date: 2022-05-10</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-10 12:52:23', 40, NULL, 0, NULL),
(57, 1, '', 'lualgabriel506@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/42/token_1205510331\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/42/token_1205510331</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00042<br>Invoice Amount: 200.00<br>Due Date: 2022-05-12</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-12 11:13:10', 42, NULL, 0, NULL),
(58, 1, '', 'drashirumustapha@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/43/token_3769426413\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/43/token_3769426413</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00043<br>Invoice Amount: 200.00<br>Due Date: 2022-05-12</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-12 11:26:57', 43, NULL, 0, NULL),
(59, 1, '', 'alsteve88@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/44/token_8964497119\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/44/token_8964497119</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00044<br>Invoice Amount: 200.00<br>Due Date: 2022-05-12</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-12 12:22:46', 44, NULL, 0, NULL),
(60, 1, '', 'edsonjoseph910@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/45/token_1895080080\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/45/token_1895080080</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00045<br>Invoice Amount: 250.00<br>Due Date: 2022-05-12</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-12 14:10:16', 45, NULL, 0, NULL),
(61, 1, '', 'zuerkanah98@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/46/token_0422337955\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/46/token_0422337955</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00046<br>Invoice Amount: 250.00<br>Due Date: 2022-05-12</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-12 14:12:46', 46, NULL, 0, NULL),
(62, 1, '', 'santospaulo10@hotmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/47/token_2622845561\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/47/token_2622845561</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00047<br>Invoice Amount: 250.00<br>Due Date: 2022-05-14</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-14 11:24:05', 47, NULL, 0, NULL),
(63, 1, '', 'chrispingeorge631@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/48/token_0452666831\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/48/token_0452666831</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00048<br>Invoice Amount: 220.00<br>Due Date: 2022-05-15</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-15 10:26:43', 48, NULL, 0, NULL),
(64, 1, '', 'tacliin1988@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/49/token_5694190576\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/49/token_5694190576</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00049<br>Invoice Amount: 650.00<br>Due Date: 2022-05-18</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-18 10:16:04', 49, NULL, 0, NULL),
(65, 1, '', 'tacliin1988@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/49/token_5694190576\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/49/token_5694190576</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00049<br>Invoice Amount: 250.00<br>Due Date: 2022-05-18</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-18 13:50:14', 49, NULL, 0, NULL),
(66, 1, '', 'mtawalibina@yahoo.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/50/token_3212340948\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/50/token_3212340948</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00050<br>Invoice Amount: 250.00<br>Due Date: 2022-05-18</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-18 15:25:22', 50, NULL, 0, NULL),
(67, 1, '', 'edydave25@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/51/token_1037738813\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/51/token_1037738813</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00051<br>Invoice Amount: 250.00<br>Due Date: 2022-05-18</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-18 16:51:01', 51, NULL, 0, NULL),
(68, 1, '', 'bedgark@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/52/token_7341523301\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/52/token_7341523301</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00052<br>Invoice Amount: 150.00<br>Due Date: 2022-05-19</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-19 13:37:14', 52, NULL, 0, NULL),
(69, 1, '', 'timmiemogaji@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/53/token_3852125024\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/53/token_3852125024</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00053<br>Invoice Amount: 200.00<br>Due Date: 2022-05-24</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-19 17:20:14', 53, NULL, 0, NULL),
(70, 1, '', 'teshomes0910@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/54/token_1469235397\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/54/token_1469235397</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00054<br>Invoice Amount: 150.00<br>Due Date: 2022-05-19</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-19 19:32:50', 54, NULL, 0, NULL),
(71, 1, '', 'golmaker14@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/55/token_3105188225\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/55/token_3105188225</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00055<br>Invoice Amount: 250.00<br>Due Date: 2022-05-25</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-20 05:59:49', 55, NULL, 0, NULL),
(72, 1, '', 'bisolaadelagun@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/56/token_7333098532\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/56/token_7333098532</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00056<br>Invoice Amount: 350.00<br>Due Date: 2022-05-20</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-20 06:30:17', 56, NULL, 0, NULL),
(73, 1, '', 'zenanoba@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/41/token_4581231902\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/41/token_4581231902</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00041<br>Invoice Amount: 250.00<br>Due Date: 2022-05-12</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-20 06:32:03', 41, NULL, 0, NULL),
(74, 1, '', 'santospaulo10@hotmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/47/token_2622845561\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/47/token_2622845561</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00047<br>Invoice Amount: 200.00<br>Due Date: 2022-06-08</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-20 06:53:15', 47, NULL, 0, NULL),
(75, 1, '', 'bayosanni5@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/57/token_9602487883\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/57/token_9602487883</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00057<br>Invoice Amount: 230.00<br>Due Date: 2022-05-20</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-20 14:31:07', 57, NULL, 0, NULL),
(76, 1, '', 'n.avorkliyah@lmi-ghana.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/59/token_1768454408\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/59/token_1768454408</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00059<br>Invoice Amount: 395.00<br>Due Date: 2022-05-22</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-22 11:41:07', 59, NULL, 0, NULL),
(77, 1, '', 'hoodh.mohamed@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/60/token_6179902512\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/60/token_6179902512</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00060<br>Invoice Amount: 395.00<br>Due Date: 2022-05-23</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-23 07:35:59', 60, NULL, 0, NULL);
INSERT INTO `sys_email_logs` (`id`, `userid`, `sender`, `email`, `subject`, `message`, `date`, `iid`, `rel_type`, `rel_id`, `purchase_id`) VALUES
(78, 1, '', 'hoodh.mohamed@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/60/token_6179902512\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/60/token_6179902512</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00060<br>Invoice Amount: 395.00<br>Due Date: 2022-05-23</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-23 07:37:32', 60, NULL, 0, NULL),
(79, 1, '', 'santospaulo10@hotmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/61/token_0353176219\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/61/token_0353176219</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00061<br>Invoice Amount: 50.00<br>Due Date: 2022-05-23</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-23 07:44:22', 61, NULL, 0, NULL),
(80, 1, '', 'popelgeorge@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/62/token_6027472290\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/62/token_6027472290</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00062<br>Invoice Amount: 150.00<br>Due Date: 2022-06-02</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-23 20:03:54', 62, NULL, 0, NULL),
(81, 1, '', 'timmiemogaji@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/53/token_3852125024\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/53/token_3852125024</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00053<br>Invoice Amount: 200.00<br>Due Date: 2022-05-31</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-25 12:56:21', 53, NULL, 0, NULL),
(82, 1, '', 'donaldsonpontis@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/63/token_7714136772\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/63/token_7714136772</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00063<br>Invoice Amount: 400.00<br>Due Date: 2022-05-26</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-26 07:39:33', 63, NULL, 0, NULL),
(83, 1, '', 'alexotto1985n@gmail.com', 'World Academy Invoice', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">   Greetings,</p>	<p style=\"padding:5px\">		This email serves as your official invoice from <strong>World Academy. </strong>	</p><p style=\"padding:10px 5px\">    Invoice URL: <a href=\"https://worldacademy.org.uk/?ng=client/iview/65/token_6050708771\" target=\"_blank\">https://worldacademy.org.uk/?ng=client/iview/65/token_6050708771</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: WARD-INV-00065<br>Invoice Amount: 250.00<br>Due Date: 2022-05-27</p><p style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></p><p style=\"padding:0px 5px\">	World Academy Team</p>', '2022-05-27 15:57:48', 65, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_templates`
--

CREATE TABLE `sys_email_templates` (
  `id` int(11) NOT NULL,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `language_id`, `subject`, `message`, `send`, `core`, `hidden`) VALUES
(3, 'Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This email serves as your official invoice from <strong>{{business_name}}. </strong>	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(7, 'Admin:Password Change Request', 1, '{{business_name}} password change request', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Hi {{name}},</div>	<div style=\"padding:5px\">		This is to confirm that we have received a Forgot Password request for your Account Username - {{username}} <br>From the IP Address - {{ip_address}}	</div>	<div style=\"padding:5px\">		Click this linke to reset your password- <br><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{password_reset_link}}\">{{password_reset_link}}</a>	</div><div style=\"padding:5px\">Please note: until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.</div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(10, 'Admin:New Password', 1, '{{business_name}} New Password for Admin', '<p style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n\n   Hello {{name}}\n</p><p style=\"padding:5px\">\n		Here is your new password for <strong>{{business_name}}. </strong>\n	</p><p style=\"padding:10px 5px\">\n    Log in URL: <a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{login_url}}\">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</p><p style=\"padding:5px\">For security reason, Please change your password after login. </p><p style=\"padding:0px 5px\">\n	{{business_name}} Team</p>', 'Yes', 'Yes', 0),
(12, 'Invoice:Invoice Payment Reminder', 1, '{{business_name}} Invoice Payment Reminder', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is a billing reminder that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is due on {{invoice_due_date}}. 	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(13, 'Invoice:Invoice Overdue Notice', 1, '{{business_name}} Invoice Overdue Notice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is the notice that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is now overdue.	</div>	<div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(14, 'Invoice:Invoice Payment Confirmation', 1, '{{business_name}} Invoice Payment Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Greetings,\n</div>\n\n\n\n	<div style=\"padding:5px\">\n		This is a payment receipt for Invoice {{invoice_id}} sent on {{invoice_date}}.\n	</div>\n\n\n	<div style=\"padding:5px\">\n		Login to your client Portal to view this invoice.\n	</div>\n\n\n<div style=\"padding:10px 5px\">\n    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div>\n\n\n<div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div>\n\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n\n</div>\n\n\n</div>', 'Yes', 'Yes', 0),
(15, 'Invoice:Invoice Refund Confirmation', 1, '{{business_name}} Invoice Refund Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is confirmation that a refund has been processed for Invoice {{invoice_id}} sent on {{invoice_date}}.	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(16, 'Quote:Quote Created', 1, '{{quote_subject}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style=\"padding:10px 5px\">    Quote Unique URL: <a href=\"{{quote_url}}\" target=\"_blank\">{{quote_url}}</a><br></div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(17, 'Client:Client Signup Email', 1, 'Your {{business_name}} Login Info', '<p>Dear {{client_name}},</p>\n<p>Welcome to {{business_name}}.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>{{business_name}} Team</p>', 'Yes', 'Yes', 0),
(18, 'Tickets:Client Ticket Created', 1, '{{subject}}', '<p>{{client_name}},</p>\n<p>Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. Your ticket ID is {{ticket_id}} and a copy of your original message is included below.</p>\n<p>Subject: {{ticket_subject}} <br /> Message: <br /> {{message}} <br /> Priority: {{ticket_priority}} <br /> Status: {{ticket_status}}</p>\n<p>You can view the ticket at any time at {{ticket_link}}</p>', 'Yes', 'Yes', 0),
(19, 'Tickets:Admin Ticket Created', 1, '{{subject}}', '<p>{{admin_view_link}}</p> {{message}}', 'Yes', 'Yes', 0),
(20, 'Tickets:Client Response', 1, '{{subject}}', '<p>{{ticket_message}}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>', 'Yes', 'Yes', 0),
(21, 'Tickets:Admin Response', 1, '{{subject}}', '<p>{{ticket_message}}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>', 'Yes', 'Yes', 0),
(23, 'Purchase Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,\'droid sans\',\'lucida sans\',sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">This email serves as your official invoice from <strong>{{business_name}}. </strong></div>\n<div style=\"padding: 10px 5px;\">Invoice URL: {{invoice_url}}<br />Invoice ID: {{invoice_id}}<br />Invoice Amount: {{invoice_amount}}</div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0),
(24, 'Quote:Quote Cancelled', 1, '{{business_name}} Quote', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />We are sorry to see you go. If you chnage your mind, you can Accept it again from following url. The quote is valid until {{valid_until}}.</div>\n<div style=\"padding: 10px 5px;\">Quote Unique URL: <a href=\"http://stackb.dev/{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0),
(25, 'Quote:Quote Accepted', 1, '{{business_name}} Quote', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />Thank you for accepting the Quote.</div>\n<div style=\"padding: 10px 5px;\">Quote: <a href=\"{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0),
(26, 'test', 1, 'Welcome to World Academy', '<p>Greetings from World Academy</p><p>Please visit our website for details</p><p><br></p><ul><li>shfkf\'</li><li>akhaksf</li></ul><p>Apply Norhhhhh<span id=\"selection-marker-1\" class=\"redactor-selection-marker\"></span></p>', 'Yes', 'No', 0),
(27, 'test', 1, 'Greetings from World Academy', '<p>Dear</p><p>This is test</p><p><br></p><p><br></p>', 'Yes', 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_events`
--

CREATE TABLE `sys_events` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `contacts` text DEFAULT NULL,
  `deals` text DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `etype` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `allday` int(1) NOT NULL DEFAULT 0,
  `notification` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoiceitems`
--

CREATE TABLE `sys_invoiceitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT 0,
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `taxed` int(1) NOT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `tax_rate` decimal(16,3) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax1` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax2` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax3` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(14,2) NOT NULL DEFAULT 0.00,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoiceitems`
--

INSERT INTO `sys_invoiceitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `tax_code`, `description`, `qty`, `amount`, `taxed`, `tax_name`, `tax_rate`, `taxamount`, `tax1`, `tax2`, `tax3`, `discount_type`, `discount_amount`, `total`, `duedate`, `paymentmethod`, `notes`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '', 0, '', NULL, 'CHRG', '1', '400.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '400.00', '2022-01-04', '', '', NULL, NULL, NULL),
(2, 2, 1, '', 0, '', '', '', '1', '1.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1.00', '2022-01-05', '', '', NULL, NULL, NULL),
(3, 3, 1, '', 0, '', '', '<p>CHRG</p>', '1', '1.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1.00', '2022-01-05', '', '', NULL, NULL, NULL),
(4, 3, 1, '', 0, '', '', '<p>CKIS</p>', '1', '1.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1.00', '2022-01-05', '', '', NULL, NULL, NULL),
(5, 4, 3, '', 0, '', NULL, 'CHRG', '2', '400.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '800.00', '2022-01-07', '', '', NULL, NULL, NULL),
(6, 5, 1, '', 0, '', NULL, 'Credit', '1', '200.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '200.00', '2022-01-07', '', '', NULL, NULL, NULL),
(7, 6, 1, '', 0, '', NULL, 'CHRG', '2', '400.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '800.00', '2022-01-07', '', '', NULL, NULL, NULL),
(8, 7, 4, '', 0, '', '', '<p>test</p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-01-08', '', '', NULL, NULL, NULL),
(9, 8, 5, '', 0, '', '', '', '1', '150.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '150.00', '2022-01-08', '', '', NULL, NULL, NULL),
(18, 9, 6, '', 0, '', '', '<p>Certified Compensation & Benefits Professional</p>', '7', '55.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '385.00', '2022-01-12', '', '', NULL, NULL, NULL),
(19, 9, 6, '', 0, '', '', '<p>Certified Recruitment & Selection Professional</p>', '23', '55.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1265.00', '2022-01-12', '', '', NULL, NULL, NULL),
(22, 10, 8, '', 0, '', '', '<p>First Installment for CPMS program by World Academy</p>', '1', '175.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '175.00', '2022-01-16', '', '', NULL, NULL, NULL),
(23, 11, 5, '', 0, '', '', '<p>1st Instlmnts for PGDHRM</p>', '1', '50.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '10.0000', '45.00', '2022-01-16', '', '', NULL, NULL, NULL),
(25, 12, 4, '', 0, '', '', '<p>test</p>', '1', '1.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1.00', '2022-01-16', '', '', NULL, NULL, NULL),
(26, 13, 3, '', 0, '', NULL, 'Credit', '1', '10.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '10.00', '2022-01-28', '', '', NULL, NULL, NULL),
(27, 14, 6, '', 0, '', '', '<p>Certified Compensation & Benefit Professional</p>', '14', '55.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '770.00', '2022-02-18', '', '', NULL, NULL, NULL),
(28, 14, 6, '', 0, '', '', '<p>Certified Recruitment & Selection Professional</p>', '15', '55.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '825.00', '2022-02-18', '', '', NULL, NULL, NULL),
(29, 15, 9, '', 0, '', '', '<p>test</p>', '1', '12.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '12.00', '2022-03-23', '', '', NULL, NULL, NULL),
(30, 16, 5, '', 0, '', '', '<p>Certified Reslut based opbdsd</p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-04-02', '', '', NULL, NULL, NULL),
(31, 17, 14, '', 0, '', '', '<p>Virtual class based Professional Certificate in HR Operations [10 sessions]</p>', '1', '170.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2022-04-07', '', '', NULL, NULL, NULL),
(32, 18, 15, '', 0, '', '', '<p>PGDHRM course: Final installment</p>', '1', '100.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '100.00', '2022-04-07', '', '', NULL, NULL, NULL),
(33, 19, 9, '', 0, '', '', '<p>invoice for pchro [1st instalment]</p>', '1', '100.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '100.00', '2022-04-09', '', '', NULL, NULL, NULL),
(34, 20, 16, '', 0, '', '', '<p>For the PcHRO (1st Instalment) </p>', '1', '100.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '100.00', '2022-04-09', '', '', NULL, NULL, NULL),
(36, 21, 17, '', 0, '', '', '<p style=\"margin-left: 20px;\">For the payment of PGDOSH (Full Payment) </p>', '1', '650.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '650.00', '2022-04-09', '', '', NULL, NULL, NULL),
(37, 22, 18, '', 0, '', '', '<p>for the payment of PcHRO-16th Batch (Full Payment) </p>', '1', '170.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2022-04-10', '', '', NULL, NULL, NULL),
(38, 23, 19, '', 0, '', '', '<p>For the payment of CRMES (Full Payment) </p>', '1', '395.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '395.00', '2022-04-10', '', '', NULL, NULL, NULL),
(39, 24, 20, '', 0, '', '', '<p>for the payment of PcHRO (Full Payment) </p>', '1', '170.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2022-04-10', '', '', NULL, NULL, NULL),
(40, 25, 21, '', 0, '', '', '<p>For the payment of PcHRO (Full Payment) </p>', '1', '170.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2022-04-11', '', '', NULL, NULL, NULL),
(42, 26, 22, '', 0, '', '', '<p style=\"margin-left: 20px;\">For the payment of PGDBCMC- 1st Instalment</p>', '1', '202.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '202.00', '2022-04-12', '', '', NULL, NULL, NULL),
(43, 27, 23, '', 0, '', '', '<p style=\"margin-left: 20px;\">For the payment of PcHRO (Full Payment) </p>', '1', '170.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2022-04-13', '', '', NULL, NULL, NULL),
(53, 28, 24, '', 0, '', '', '<p>for the payment of CRMES- 1st Installment</p>', '1', '135.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '135.00', '2022-05-06', '', '', NULL, NULL, NULL),
(45, 29, 25, '', 0, '', '', '<p>For the payment of CSCMP (Last Installment) </p>', '1', '195.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '195.00', '2022-04-15', '', '', NULL, NULL, NULL),
(46, 30, 26, '', 0, '', '', '<p>For the payment of PGDHRM (1st installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-04-16', '', '', NULL, NULL, NULL),
(47, 31, 27, '', 0, '', '', '<p>For the payment of CSCMP (Last installment)</p>', '1', '195.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '195.00', '2022-04-17', '', '', NULL, NULL, NULL),
(48, 32, 28, '', 0, '', '', '<p>For the payment of PGDPM (Full Payment) </p>', '1', '650.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '650.00', '2022-04-19', '', '', NULL, NULL, NULL),
(49, 33, 29, '', 0, '', '', '<p>For the payment of PGDOSH (1st installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-04-19', '', '', NULL, NULL, NULL),
(50, 34, 9, '', 0, '', NULL, 'Credit', '1', '2000.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '2000.00', '2022-04-26', '', '', NULL, NULL, NULL),
(51, 35, 30, '', 0, '', '', '<p>For the payment of PGDSCM (Final Installment) </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-04-28', '', '', NULL, NULL, NULL),
(52, 36, 31, '', 0, '', '', '<p>For the payment of CHRP-1st Instalment </p>', '1', '100.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '100.00', '2022-05-06', '', '', NULL, NULL, NULL),
(54, 37, 32, '', 0, '', '', '<p>For the payment of CHRAP (2nd Installment) </p>', '1', '150.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '150.00', '2022-05-07', '', '', NULL, NULL, NULL),
(57, 38, 33, '', 0, '', '', '<p>For the payment of PGDBCMC (1st installment)</p>', '420', '1.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '420.00', '2022-05-10', '', '', NULL, NULL, NULL),
(56, 39, 34, '', 0, '', '', '<p>For the payment of PGDSCM (Final Installment) </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-05-08', '', '', NULL, NULL, NULL),
(58, 40, 35, '', 0, '', '', '<p>For the payment of CHRG (Full Payment) </p>', '1', '395.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '395.00', '2022-05-10', '', '', NULL, NULL, NULL),
(76, 41, 36, '', 0, '', '', '<p>For the Payment of PGDOSH (1st Installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-20', '', '', NULL, NULL, NULL),
(60, 42, 37, '', 0, '', '', '<p>For the payment of PGDPM (2nd Installment) </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-05-12', '', '', NULL, NULL, NULL),
(81, 43, 38, '', 0, '', '', '<p>For the payment of PGDPM (2nd Installment) </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-05-22', '', '', NULL, NULL, NULL),
(62, 44, 39, '', 0, '', '', '<p>For the payment of PGDPM (2nd Installment)</p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-05-12', '', '', NULL, NULL, NULL),
(63, 45, 40, '', 0, '', '', '<p>For the payment of PGDHRM (2nd Installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-12', '', '', NULL, NULL, NULL),
(64, 46, 41, '', 0, '', '', '<p>For the payment of PGDOSH (1st Installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-12', '', '', NULL, NULL, NULL),
(77, 47, 42, '', 0, '', '', '<p>For the payment of PGDOSH (1st Installment) </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-05-20', '', '', NULL, NULL, NULL),
(66, 48, 43, '', 0, '', '', '<p>For the payment of PGDBCMC (1st Installment) </p>', '1', '220.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '220.00', '2022-05-15', '', '', NULL, NULL, NULL),
(68, 49, 44, '', 0, '', '', '<p>For the payment of PGDPM (Full Payment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-18', '', '', NULL, NULL, NULL),
(69, 50, 45, '', 0, '', '', '<p>For the payment of PGDOSH (First Installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-18', '', '', NULL, NULL, NULL),
(70, 51, 46, '', 0, '', '', '<p>For the payment of PGDOSH (1st Installment)</p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-18', '', '', NULL, NULL, NULL),
(91, 52, 47, '', 0, '', '', '<p>For the payment of PGDOSH (1st Installment) </p>', '1', '150.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '150.00', '2022-05-27', '', '', NULL, NULL, NULL),
(85, 53, 48, '', 0, '', '', '<p>For the payment of CHRG (1st Installment)</p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2022-05-25', '', '', NULL, NULL, NULL),
(73, 54, 49, '', 0, '', '', '<p>For the payment of PGDPM (1st Installment) </p>', '1', '150.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '150.00', '2022-05-19', '', '', NULL, NULL, NULL),
(74, 55, 50, '', 0, '', '', '<p>For the payment of PGDPM (1st Installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-20', '', '', NULL, NULL, NULL),
(75, 56, 51, '', 0, '', '', '<p>For the payment of PGDOSH (1st Installment)</p>', '1', '350.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '350.00', '2022-05-20', '', '', NULL, NULL, NULL),
(78, 57, 52, '', 0, '', '', '<p>For the payment of CPA (1st Installment) </p>', '1', '230.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '230.00', '2022-05-20', '', '', NULL, NULL, NULL),
(79, 58, 53, '', 0, '', '', '<p>For the payment of PGDPM (1st Installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-22', '', '', NULL, NULL, NULL),
(80, 59, 54, '', 0, '', '', '<p>For the payment of cHRBP 2.0 (Full Payment) </p>', '1', '395.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '395.00', '2022-05-22', '', '', NULL, NULL, NULL),
(82, 60, 55, '', 0, '', '', '<p>For the payment of CHRG (Full Payment) </p>', '1', '395.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '395.00', '2022-05-23', '', '', NULL, NULL, NULL),
(83, 61, 42, '', 0, '', '', '<p>For the payment of PGDOSH (1st Installment Due-50 USD)</p>', '1', '50.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '50.00', '2022-05-23', '', '', NULL, NULL, NULL),
(84, 62, 56, '', 0, '', '', '<p>For the payment of PGDPM (1st Installment)</p>', '1', '150.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '150.00', '2022-05-23', '', '', NULL, NULL, NULL),
(86, 63, 58, '', 0, '', '', '<p>For the payment of PGDSCM-Fully Online (Full Payment) </p>', '1', '400.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '400.00', '2022-05-26', '', '', NULL, NULL, NULL),
(90, 64, 59, '', 0, '', '', '<p>Course Fee [1st installment] for Post Graduate Diploma in Project management</p>', '1', '100.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '100.00', '2022-05-26', '', '', NULL, NULL, NULL),
(92, 65, 60, '', 0, '', '', '<p>For the payment of PGDPM (1st Installment) </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2022-05-27', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoices`
--

CREATE TABLE `sys_invoices` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `type` varchar(100) DEFAULT 'Invoice',
  `related_to` varchar(100) DEFAULT NULL,
  `relation_id` int(11) NOT NULL DEFAULT 0,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `tax_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT 0,
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT 0,
  `quote_id` int(11) NOT NULL DEFAULT 0,
  `ticket_id` int(11) DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT 0,
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `is_credit_invoice` int(1) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text DEFAULT NULL,
  `signature_data_source` text DEFAULT NULL,
  `signature_data_base64` text DEFAULT NULL,
  `signature_data_svg` text DEFAULT NULL,
  `is_same_state` tinyint(1) DEFAULT 1,
  `code` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoices`
--

INSERT INTO `sys_invoices` (`id`, `userid`, `type`, `related_to`, `relation_id`, `account`, `title`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `tax_total`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `quote_id`, `ticket_id`, `currency`, `currency_iso_code`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`, `receipt_number`, `updated_at`, `created_at`, `workspace_id`, `parent_id`, `c1`, `c2`, `c3`, `c4`, `c5`, `signature_data_source`, `signature_data_base64`, `signature_data_svg`, `is_same_state`, `code`) VALUES
(1, 1, 'Invoice', NULL, 0, 'Shabok', NULL, '00001', 'WARD-INV-', '2022-01-04', '2022-01-04', '2022-01-04 05:35:20', '400.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '400.00', '0.00', '0.00', 'Paid', '', '', '4907528071', '1209068440', '0', '2022-01-04', 0, '', 0, 0, 0, 0, NULL, '£', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, 1, 'Invoice', NULL, 0, 'Shabok', 'Test', '00002', 'WARD-INV-', '2022-01-05', '2022-01-05', '2022-01-05 05:11:28', '1.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '1.00', '0.00', '0.00', 'Paid', '', '<p>test</p>', '5278227592', '1224705044', '0', '2022-01-05', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-01-05 10:15:38', '2022-01-05 10:11:28', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(3, 1, 'Invoice', NULL, 0, 'Shabok', 'test-2', '00003', 'WARD-INV-', '2022-01-05', '2022-01-05', '2022-01-05 06:26:50', '2.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '2.00', '0.00', '0.00', 'Unpaid', '', '<p>Test, make paymen</p>', '5171782944', '9218286553', '0', '2022-01-05', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-01-05 11:26:50', '2022-01-05 11:26:50', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(4, 3, 'Invoice', NULL, 0, 'Azizan', NULL, '00004', 'WARD-INV-', '2022-01-07', '2022-01-07', '2022-01-07 04:39:26', '800.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '800.00', '0.00', '0.00', 'Paid', '', '', '8514260964', '6702611633', '0', '2022-01-07', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(5, 1, 'Invoice', NULL, 0, 'Shabok', NULL, '00005', 'WARD-INV-', '2022-01-07', '2022-01-07', '2022-01-07 05:00:39', '200.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Unpaid', '', '', '3280009819', '1119740502', '0', '2022-01-07', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(6, 1, 'Invoice', NULL, 0, 'Shabok', NULL, '00006', 'WARD-INV-', '2022-01-07', '2022-01-07', '2022-01-07 05:10:32', '800.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '800.00', '0.00', '0.00', 'Unpaid', '', '', '0611780364', '0850713404', '0', '2022-01-07', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(7, 4, 'Invoice', NULL, 0, 'test', 'test', '00007', 'WARD-INV-', '2022-01-08', '2022-01-08', '2022-01-08 12:22:37', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<p>test</p>', '6631100969', '9778837264', '0', '2022-01-08', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 4, NULL, '', '2022-01-08 17:22:37', '2022-01-08 17:22:37', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(8, 5, 'Invoice', NULL, 0, 'Rakib', 'Invoice fpr PcHRO', '00008', 'WARD-INV-', '2022-01-08', '2022-01-08', '2022-01-08 12:42:45', '150.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '150.00', '0.00', '0.00', 'Paid', '', '', '1552920669', '9381727876', '0', '2022-01-08', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 4, NULL, '', '2022-01-08 17:42:45', '2022-01-08 17:42:45', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(9, 6, 'Invoice', NULL, 0, 'Rosette Esmeralda', 'Invoice for Certification', '00009', 'WARD-INV-', '2022-01-12', '2022-01-12', '2022-01-12 07:27:42', '1650.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '1650.00', '0.00', '0.00', 'Paid', '', '<ul><li>This is system generated Invoice, No need any signature.</li><li>Payment Information for Bank Payment to Our Bank Account [Euro Account] for Outside UK countries</li></ul><p style=\"margin-left:40px;\">Account Name: Cambridge Academy Of Professionals Ltd<br />Account Number: 1708979<br />SWIFT/BIC: TRWIBEB1XXX,<br />IBAN: BE65 9671 7089 7996<br />Bank Name: Wise<br />Bank Address: Avenue Louise 54, Room S52, Brussels, 1050, Belgium </p>', '5962390197', '7862216101', '0', '2022-01-12', 0, '', 0, 0, 0, 2, 'GBP', '', NULL, NULL, '1.3600', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-01-12 12:27:42', '2022-01-12 12:22:06', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(10, 8, 'Invoice', NULL, 0, 'Daniel T. Johnson', '', '00010', 'WARD-INV-', '2022-01-16', '2022-01-16', '2022-01-16 11:17:20', '175.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '175.00', '0.00', '0.00', 'Unpaid', '', '<p>Information for Bank Transfer/ Bank Deposit<br /></p><p>Currency: Euro Account for Outside UK countries<br /><br />Account Name: Cambridge Academy Of Professionals Ltd<br /><br />Account Number: 1708979<br /><br />SWIFT/BIC: TRWIBEB1XXX,<br /><br />IBAN: BE65 9671 7089 7996<br /><br />Bank Name: Wise<br /><br />Bank Address: Avenue Louise 54, Room S52, Brussels, 1050, Belgium<br /></p><p><br /></p><p>This is a system-generated invoice. No need signature.<br /></p>', '2196962617', '3061092256', '0', '2022-01-16', 0, '', 0, 0, 0, 3, 'EUR', '', NULL, NULL, '1.1400', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-01-16 16:17:20', '2022-01-16 16:09:00', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(11, 5, 'Invoice', NULL, 0, 'Rakib', 'Invoice Test', '00011', 'WARD-INV-', '2022-01-16', '2022-01-16', '2022-01-16 12:52:07', '50.00', 'p', '0.00', '5.00', '0.00', '', '0.00', '0.00', '0.0000', '45.00', '0.00', '0.00', 'Unpaid', '', '<p><br /></p><p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7874121005', '5990578639', '0', '2022-01-16', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-01-16 17:52:07', '2022-01-16 17:52:07', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(12, 4, 'Invoice', NULL, 0, 'test', '', '00012', 'WARD-INV-', '2022-01-16', '2022-01-16', '2022-01-16 13:15:56', '1.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '1.00', '0.00', '0.00', 'Paid', '', '<h4>Information for Bank Transfer/ Bank deposit: </h4><ul><li><u>Account Currency</u>: Euro Account [for Outside UK countries]</li><li><u>Account Name</u>: Cambridge Academy Of Professionals Ltd</li><li><u>Account Number</u>: 1708979</li><li><u>SWIFT/BIC</u>: TRWIBEB1XXX,</li><li><u>IBAN</u>: BE65 9671 7089 7996</li><li><u>Bank Name</u>: Wise</li><li><u>Bank Address</u>: Avenue Louise 54, Room S52, Brussels, 1050, Belgium</li></ul><p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7138790712', '0436073891', '0', '2022-01-16', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-01-16 18:18:29', '2022-01-16 18:15:53', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(13, 3, 'Invoice', NULL, 0, 'Azizan', NULL, '00013', 'WARD-INV-', '2022-01-28', '2022-01-28', '2022-01-28 16:58:49', '10.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '10.00', '0.00', '0.00', 'Unpaid', '', '', '5321226099', '8401162271', '0', '2022-01-28', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(14, 6, 'Invoice', NULL, 0, 'Rosette Esmeralda', 'Invoice for CCBP &amp; CRSP Cohort-2', '00014', 'WARD-INV-', '2022-02-11', '2022-02-11', '2022-02-18 11:57:43', '1595.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '1595.00', '0.00', '0.00', 'Paid', '', '<h4>Information for Bank Transfer/ Bank deposit: </h4><ul><li><u>Account Currency</u>: Euro Account [for Outside UK countries]</li><li><u>Account Name</u>: Cambridge Academy Of Professionals Ltd</li><li><u>Account Number</u>: 1708979</li><li><u>SWIFT/BIC</u>: TRWIBEB1XXX,</li><li><u>IBAN</u>: BE65 9671 7089 7996</li><li><u>Bank Name</u>: Wise</li><li><u>Bank Address</u>: Avenue Louise 54, Room S52, Brussels, 1050, Belgium</li></ul><p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '1566309551', '2616912331', '0', '2022-02-11', 0, '', 0, 0, 0, 2, 'GBP', '', NULL, NULL, '1.3600', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-02-18 16:57:43', '2022-02-18 16:57:43', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(15, 9, 'Invoice', NULL, 0, 'Test', '', '00015', 'WARD-INV-', '2022-03-23', '2022-03-23', '2022-03-23 16:13:28', '12.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '12.00', '0.00', '0.00', 'Unpaid', '', '<h4>Information for Bank Transfer/ Bank deposit: </h4><ul><li><u>Account Currency</u>: Euro Account [for Outside UK countries]</li><li><u>Account Name</u>: Cambridge Academy Of Professionals Ltd</li><li><u>Account Number</u>: 1708979</li><li><u>SWIFT/BIC</u>: TRWIBEB1XXX,</li><li><u>IBAN</u>: BE65 9671 7089 7996</li><li><u>Bank Name</u>: Wise</li><li><u>Bank Address</u>: Avenue Louise 54, Room S52, Brussels, 1050, Belgium</li></ul><p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '0257666683', '5067789983', '0', '2022-03-23', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-03-23 20:13:28', '2022-03-23 20:13:28', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(16, 5, 'Invoice', NULL, 0, 'Rakib', 'invoice for CRES', '00016', 'WARD-INV-', '2022-04-02', '2022-04-02', '2022-04-02 06:52:43', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Unpaid', '', '<h4>Information for Bank Transfer/ Bank deposit: </h4><ul><li><u>Account Currency</u>: Euro Account [for Outside UK countries]</li><li><u>Account Name</u>: Cambridge Academy Of Professionals Ltd</li><li><u>Account Number</u>: 1708979</li><li><u>SWIFT/BIC</u>: TRWIBEB1XXX,</li><li><u>IBAN</u>: BE65 9671 7089 7996</li><li><u>Bank Name</u>: Wise</li><li><u>Bank Address</u>: Avenue Louise 54, Room S52, Brussels, 1050, Belgium</li></ul><p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '4065305331', '5643467299', '0', '2022-04-02', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 4, NULL, '', '2022-04-02 10:52:43', '2022-04-02 10:52:43', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(17, 14, 'Invoice', NULL, 0, 'Soni Nakarmi', 'Invoice for PcHRO', '00017', 'WARD-INV-', '2022-04-07', '2022-04-07', '2022-04-07 12:17:24', '170.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '170.00', '0.00', '0.00', 'Unpaid', '', '<p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '6766014127', '1474873924', '0', '2022-04-07', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-07 16:17:25', '2022-04-07 16:17:25', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(18, 15, 'Invoice', NULL, 0, 'AUSTINE JOSEPH ODHIAMBO', 'invoice for PGDHRM-Final payment', '00018', 'WARD-INV-', '2022-04-07', '2022-04-07', '2022-04-07 17:58:54', '100.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '100.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '1750036463', '9214929550', '0', '2022-04-07', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-07 23:54:59', '2022-04-07 21:58:54', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(19, 9, 'Invoice', NULL, 0, 'Test', 'test', '00019', 'WARD-INV-', '2022-04-09', '2022-04-09', '2022-04-09 07:50:51', '100.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '100.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '6148273742', '9878167979', '0', '2022-04-09', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-09 11:50:51', '2022-04-09 11:50:51', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(20, 16, 'Invoice', NULL, 0, 'Blessing Ahmadu', 'Professional Ceritificate in HR Operations (1st Instalment)', '00020', 'WARD-INV-', '2022-04-09', '2022-04-09', '2022-04-09 11:16:35', '100.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '100.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '4167536812', '6994894133', '0', '2022-04-09', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-09 15:16:35', '2022-04-09 15:16:35', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(21, 17, 'Invoice', NULL, 0, 'Fernandez, Brian Gilbert Paneda', 'Post Graduate Diploma in Occupational Safety &amp; Health', '00021', 'WARD-INV-', '2022-04-09', '2022-04-09', '2022-04-09 11:44:22', '650.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '650.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '2421422586', '7085900893', '0', '2022-04-09', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-09 15:44:22', '2022-04-09 15:43:02', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(22, 18, 'Invoice', NULL, 0, 'Maria Nina B. Almueda', 'Professional Certificate in HR Operations (PcHRO)', '00022', 'WARD-INV-', '2022-04-10', '2022-04-10', '2022-04-10 08:15:53', '170.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '170.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '2603146086', '8338790456', '0', '2022-04-10', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-10 16:42:33', '2022-04-10 12:15:53', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(23, 19, 'Invoice', NULL, 0, 'SEMIU OLANREWAJU EMMANUEL', 'Certified Result Based Monitoring and Evaluation Specialist (CRMES)', '00023', 'WARD-INV-', '2022-04-10', '2022-04-10', '2022-04-10 09:27:07', '395.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '395.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7338552031', '7958888082', '0', '2022-04-10', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-10 13:27:07', '2022-04-10 13:27:07', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(24, 20, 'Invoice', NULL, 0, 'Ahmed Kofi Dzramedo', 'Professional Certificate in HR Operations (PcHRO)', '00024', 'WARD-INV-', '2022-04-10', '2022-04-10', '2022-04-10 11:29:23', '170.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '170.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '3112205848', '6218459514', '0', '2022-04-10', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-10 15:29:23', '2022-04-10 15:29:23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(25, 21, 'Invoice', NULL, 0, 'Adekunle Onafusi', 'Professional Ceritifcate in HR Operations (PcHRO)', '00025', 'WARD-INV-', '2022-04-11', '2022-04-14', '2022-04-11 06:55:34', '170.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '170.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '8937305811', '8209358483', '0', '2022-04-11', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-11 10:55:34', '2022-04-11 10:55:34', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(26, 22, 'Invoice', NULL, 0, 'Alphonso Siebonue Kofi, Sr', 'Post Graduate Diploma in Business Communication and Managerial Competency (PGDBCMC)', '00026', 'WARD-INV-', '2022-04-12', '2022-04-17', '2022-04-12 11:27:17', '202.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '202.00', '0.00', '0.00', 'Unpaid', '', '<h4>Information for Bank Transfer/ Bank deposit:</h4><h4></h4><ul><li><u>Account Currency</u>: Euro Account [for Outside UK countries]</li><li><u>Account Name</u>: Cambridge Academy Of Professionals Ltd</li><li><u>Account Number</u>: 1708979</li><li><u>SWIFT/BIC</u>: TRWIBEB1XXX,</li><li><u>IBAN</u>: BE65 9671 7089 7996</li><li><u>Bank Name</u>: Wise</li><li><u>Bank Address</u>: Avenue Louise 54, Room S52, Brussels, 1050, Belgium</li></ul><p><br /></p><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '0469256711', '2664980908', '0', '2022-04-12', 0, '', 0, 0, 0, 3, 'EUR', '', NULL, NULL, '1.1400', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-12 15:27:17', '2022-04-12 15:21:00', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(27, 23, 'Invoice', NULL, 0, 'Kiotte Aaron Ilisan', 'Professional Certificate in HR Operations (PcHRO)', '00027', 'WARD-INV-', '2022-04-13', '2022-04-16', '2022-04-13 07:03:52', '170.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '170.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '3273225920', '9749544976', '0', '2022-04-13', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-13 11:26:06', '2022-04-13 11:03:52', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(28, 24, 'Invoice', NULL, 0, 'Elias Getahun', 'Certified Result Based Monitoring and Evaluation Specialist (CRMES)', '00028', 'WARD-INV-', '2022-05-06', '2022-05-14', '2022-05-06 17:05:15', '135.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '135.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '9156347772', '2847434579', '0', '2022-05-06', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-06 21:05:15', '2022-04-13 19:17:41', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(29, 25, 'Invoice', NULL, 0, 'Joseph Gbao', 'Certified Supply Cahin Management Professional (CSCMP)', '00029', 'WARD-INV-', '2022-04-15', '2022-04-15', '2022-04-15 07:12:10', '195.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '195.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '5164013368', '8325406304', '0', '2022-04-15', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-15 11:12:10', '2022-04-15 11:12:10', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(30, 26, 'Invoice', NULL, 0, 'MICHAEL OLUDARE AJAYI', 'Post Graduate Diploma in Human Resource Management (PGDHRM)', '00030', 'WARD-INV-', '2022-04-16', '2022-04-16', '2022-04-16 09:40:38', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '8572890567', '7296280913', '0', '2022-04-16', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-16 13:40:38', '2022-04-16 13:40:38', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(31, 27, 'Invoice', NULL, 0, 'Jonathan Anderson', 'Certified Supply Chain Management Professional (CSCMP)', '00031', 'WARD-INV-', '2022-04-17', '2022-04-17', '2022-04-17 14:32:06', '195.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '195.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '4957269111', '4502079355', '0', '2022-04-17', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-28 00:53:57', '2022-04-17 18:32:06', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(32, 28, 'Invoice', NULL, 0, 'WENDWESSEN ALEMAYEHU BEYENE', 'Post Graduate Diploma in Project Management (PGDPM)', '00032', 'WARD-INV-', '2022-04-19', '2022-04-22', '2022-04-19 07:45:05', '650.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '650.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '4285807494', '0487433132', '0', '2022-04-19', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-19 11:45:05', '2022-04-19 11:45:05', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(33, 29, 'Invoice', NULL, 0, 'Matthew Mensah', 'Post Gradute Diploma in Occupational Safety and Health (PGDOSH)', '00033', 'WARD-INV-', '2022-04-19', '2022-04-22', '2022-04-19 10:51:57', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '9030545181', '2594671944', '0', '2022-04-19', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-19 14:51:57', '2022-04-19 14:51:57', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(34, 9, 'Invoice', NULL, 0, 'Test', NULL, '00034', 'WARD-INV-', '2022-04-26', '2022-04-26', '2022-04-26 20:01:52', '2000.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '2000.00', '0.00', '0.00', 'Unpaid', '', '', '8707319676', '7433106308', '0', '2022-04-26', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(35, 30, 'Invoice', NULL, 0, 'JIMMY AKENA  DE LOTTO', 'Post Graduate Diploma in Supply Chain Management (PGDSCM)', '00035', 'WARD-INV-', '2022-04-28', '2022-05-01', '2022-04-28 06:15:55', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7881599126', '8236689122', '0', '2022-04-28', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-04-30 22:01:59', '2022-04-28 10:15:55', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(36, 31, 'Invoice', NULL, 0, 'Obert Elijah', 'Certified HR Professional (CHRP)', '00036', 'WARD-INV-', '2022-05-06', '2022-05-06', '2022-05-06 15:33:51', '100.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '100.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '6809411245', '7489255212', '0', '2022-05-06', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-06 19:57:29', '2022-05-06 19:33:51', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(37, 32, 'Invoice', NULL, 0, 'Toomay M. Robinson', 'Certified HR Analytics Professional (CHRAP)', '00037', 'WARD-INV-', '2022-05-07', '2022-05-07', '2022-05-07 16:24:44', '150.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '150.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7904020458', '7355432798', '0', '2022-05-07', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-08 21:37:11', '2022-05-07 20:24:44', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(38, 33, 'Invoice', NULL, 0, 'FARID FADEL MUSTAFA ALGRIGNI', 'Post Graduate Diploma in Business Communication and Managerial Competency (PGDBCMC)', '00038', 'WARD-INV-', '2022-05-08', '2022-05-08', '2022-05-10 08:04:21', '420.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '420.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '5474378582', '3814873676', '0', '2022-05-08', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-12 03:10:00', '2022-05-08 16:09:56', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(39, 34, 'Invoice', NULL, 0, 'Asad Ali', 'Post Graduate Diploma in Supply Chain Management (PGDSCM)', '00039', 'WARD-INV-', '2022-05-08', '2022-05-08', '2022-05-08 12:13:27', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '3865147950', '7829311901', '0', '2022-05-08', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-08 22:40:43', '2022-05-08 16:13:27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(40, 35, 'Invoice', NULL, 0, 'Lesley Yasmine Sosi', 'Certified HR Generalist (CHRG)', '00040', 'WARD-INV-', '2022-05-10', '2022-05-10', '2022-05-10 12:52:06', '395.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '395.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '6179027325', '6170872932', '0', '2022-05-10', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-18 18:54:19', '2022-05-10 16:52:06', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(41, 36, 'Invoice', NULL, 0, 'Thomas Aquinas Kunde', 'Post Graduate Diploma in Occupational Safety and Health (PGDOSH)', '00041', 'WARD-INV-', '2022-05-12', '2022-05-12', '2022-05-20 06:31:42', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '4581231902', '9385001763', '0', '2022-05-12', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-20 19:14:54', '2022-05-12 14:48:57', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(42, 37, 'Invoice', NULL, 0, 'Lual Gabriel', 'Post Graduate Diploma in Project Management (PGDPM)', '00042', 'WARD-INV-', '2022-05-12', '2022-05-12', '2022-05-12 11:12:54', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '1205510331', '4757314266', '0', '2022-05-12', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-12 15:12:54', '2022-05-12 15:12:54', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(43, 38, 'Invoice', NULL, 0, 'Ashiru Mohammed Mustapha', 'Post Graduate Diploma in Project Management (PGDPM)', '00043', 'WARD-INV-', '2022-05-12', '2022-05-31', '2022-05-22 14:44:47', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '3769426413', '3156393611', '0', '2022-05-12', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-22 18:44:47', '2022-05-12 15:26:40', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(44, 39, 'Invoice', NULL, 0, 'Alpha Kanu', 'Post Graduate Diploma in Project Management (PGDPM)', '00044', 'WARD-INV-', '2022-05-12', '2022-05-12', '2022-05-12 12:22:04', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '8964497119', '8817096361', '0', '2022-05-12', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-12 16:22:04', '2022-05-12 16:22:04', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(45, 40, 'Invoice', NULL, 0, 'JOSEPH EDSON', 'Post Graduate Diploma in Human Resource Management (PGDHRM)', '00045', 'WARD-INV-', '2022-05-12', '2022-05-12', '2022-05-12 14:09:58', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '1895080080', '7034519368', '0', '2022-05-12', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-12 18:09:58', '2022-05-12 18:09:58', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(46, 41, 'Invoice', NULL, 0, 'G. Plason Z. Plakar', 'Post Graduate Diploma in Occupational Safety and Health (PGDOSH)', '00046', 'WARD-INV-', '2022-05-12', '2022-05-12', '2022-05-12 14:12:35', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '0422337955', '8501112379', '0', '2022-05-12', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-12 18:12:35', '2022-05-12 18:12:35', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(47, 42, 'Invoice', NULL, 0, 'Santos Paulo Bunga', 'Post Graduate Diploma in Occupational Safety and Helath (PGDOSH)', '00047', 'WARD-INV-', '2022-05-14', '2022-06-08', '2022-05-20 06:52:53', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '2622845561', '7838563055', '0', '2022-05-14', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-21 01:21:27', '2022-05-14 15:23:35', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(48, 43, 'Invoice', NULL, 0, 'Chrispin George', 'Post Graduate Diploma in Business Communication and Managerial Competency (PGDBCMC)', '00048', 'WARD-INV-', '2022-05-15', '2022-05-15', '2022-05-15 10:26:25', '220.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '220.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '0452666831', '8917216940', '0', '2022-05-15', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-15 14:26:25', '2022-05-15 14:26:25', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(49, 44, 'Invoice', NULL, 0, 'Abdiaziz Hussein Mohamed Ali', 'Post Graduate Diploma in Project Management (PGDPM)', '00049', 'WARD-INV-', '2022-05-18', '2022-05-18', '2022-05-18 13:50:03', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '5694190576', '2132569422', '0', '2022-05-18', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-20 11:54:56', '2022-05-18 14:15:45', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(50, 45, 'Invoice', NULL, 0, 'Bina Mtawali', 'Post Graduate Diploma in Occupational Safety &amp; Health (PGDOSH)', '00050', 'WARD-INV-', '2022-05-18', '2022-05-18', '2022-05-18 15:25:15', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '3212340948', '5466076139', '0', '2022-05-18', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-18 19:25:15', '2022-05-18 19:25:15', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(51, 46, 'Invoice', NULL, 0, 'Edem Loveland Asempah', 'Post Graduate Diploma in Occupational Safety and Health (PGDOSH)', '00051', 'WARD-INV-', '2022-05-18', '2022-05-18', '2022-05-18 16:50:48', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '1037738813', '3986253766', '0', '2022-05-18', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-18 20:50:48', '2022-05-18 20:50:48', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(52, 47, 'Invoice', NULL, 0, 'Byamanywoha Edgar', 'Post Graduate Diploma in Occupatinal Safety and Health (PGDOSH)', '00052', 'WARD-INV-', '2022-05-27', '2022-06-03', '2022-05-27 15:45:28', '150.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '150.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7341523301', '2209373442', '0', '2022-05-27', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-27 19:45:28', '2022-05-19 17:36:02', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(53, 48, 'Invoice', NULL, 0, 'MOGAJI Oluwatimilehin Babatope', 'Certified HR Generalist (CHRG)', '00053', 'WARD-INV-', '2022-05-25', '2022-05-31', '2022-05-25 12:56:10', '200.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '200.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '3852125024', '6844750299', '0', '2022-05-25', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-25 16:56:10', '2022-05-19 21:19:54', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(54, 49, 'Invoice', NULL, 0, 'Teshome Sisay', 'Post Graduate Diploma in Project Management (PGDPM)', '00054', 'WARD-INV-', '2022-05-19', '2022-05-19', '2022-05-19 19:32:31', '150.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '150.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '1469235397', '6485066771', '0', '2022-05-19', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-19 23:32:31', '2022-05-19 23:32:31', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(55, 50, 'Invoice', NULL, 0, 'Abraham Maker Gol', 'Post Graduate Diploma in Project Management (PGDPM)', '00055', 'WARD-INV-', '2022-05-20', '2022-05-25', '2022-05-20 05:59:34', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '3105188225', '2585816965', '0', '2022-05-20', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-20 09:59:34', '2022-05-20 09:59:34', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(56, 51, 'Invoice', NULL, 0, 'Adelagun Abisola Oluwakemi', 'Post Graduate Diploma in Occupational Safety &amp; Health', '00056', 'WARD-INV-', '2022-05-20', '2022-05-20', '2022-05-20 06:30:10', '350.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '350.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7333098532', '6349352893', '0', '2022-05-20', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-20 10:30:10', '2022-05-20 10:30:10', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(57, 52, 'Invoice', NULL, 0, 'Adebayo Kazeem Sanni', 'Certified Professional Accountant (CPA)', '00057', 'WARD-INV-', '2022-05-20', '2022-05-20', '2022-05-20 14:30:42', '230.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '230.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '9602487883', '4924840399', '0', '2022-05-20', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-20 18:30:42', '2022-05-20 18:30:42', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(58, 53, 'Invoice', NULL, 0, 'Junisa Kandeh Jambawai', 'Post Graduate Diploma in Project Management (PGDPM)', '00058', 'WARD-INV-', '2022-05-22', '2022-05-22', '2022-05-22 09:45:35', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7502365440', '2891618958', '0', '2022-05-22', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-22 13:45:35', '2022-05-22 13:45:35', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(59, 54, 'Invoice', NULL, 0, 'Nelson Doe Avorkliyah', 'Certified HR Business Pariner 2.0 (cHRBP 2.0)', '00059', 'WARD-INV-', '2022-05-22', '2022-05-22', '2022-05-22 11:40:25', '395.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '395.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '1768454408', '9748052056', '0', '2022-05-22', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-22 15:40:25', '2022-05-22 15:40:25', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(60, 55, 'Invoice', NULL, 0, 'Hoodh Mohamed', 'Certified HR Generalist (CHRG)', '00060', 'WARD-INV-', '2022-05-23', '2022-05-23', '2022-05-23 07:35:39', '395.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '395.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '6179902512', '4124659854', '0', '2022-05-23', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-26 12:46:19', '2022-05-23 11:35:39', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(61, 42, 'Invoice', NULL, 0, 'Santos Paulo Bunga', 'Post Graduate Diploma in Occupational Safety and Helath (PGDOSH)', '00061', 'WARD-INV-', '2022-05-23', '2022-05-23', '2022-05-23 07:44:08', '50.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '50.00', '0.00', '0.00', 'Paid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '0353176219', '1821883545', '0', '2022-05-23', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-23 15:29:54', '2022-05-23 11:44:08', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(62, 56, 'Invoice', NULL, 0, 'George N. Popel', 'Post Graduate Diploma in Project Management (PGDPM)', '00062', 'WARD-INV-', '2022-05-23', '2022-06-02', '2022-05-23 20:03:23', '150.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '150.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '6027472290', '4002819934', '0', '2022-05-23', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-24 00:03:23', '2022-05-24 00:03:23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(63, 58, 'Invoice', NULL, 0, 'Donaldson Siegesmond Pontis', 'Post Graduate Diploma in Supply Chain Management (PGDSCM)-Fully Online', '00063', 'WARD-INV-', '2022-05-26', '2022-05-26', '2022-05-26 07:39:15', '400.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '400.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '7714136772', '1180991889', '0', '2022-05-26', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-26 11:39:15', '2022-05-26 11:39:15', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `sys_invoices` (`id`, `userid`, `type`, `related_to`, `relation_id`, `account`, `title`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `tax_total`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `quote_id`, `ticket_id`, `currency`, `currency_iso_code`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`, `receipt_number`, `updated_at`, `created_at`, `workspace_id`, `parent_id`, `c1`, `c2`, `c3`, `c4`, `c5`, `signature_data_source`, `signature_data_base64`, `signature_data_svg`, `is_same_state`, `code`) VALUES
(64, 59, 'Invoice', NULL, 0, 'John George Lujani', 'Invoice for 1st Installment of PGDPM program by World Academy', '00064', 'WARD-INV-', '2022-05-26', '2022-05-26', '2022-05-26 08:27:21', '100.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '100.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p><p>Bank Details as below:</p><p>A/C Name: Profqual ltd.</p><p>Bank Name: Wise</p><p>SWIFT: TRWIBEB1XXX</p><p>IBAN: BE24 9671 7515 0438</p><p>Address: Avenue Louise 54, Room S52, Brussels<span class=\"redactor-invisible-space\" style=\"letter-spacing:0.1px;\">, 1050,\nBelgium</span></p>', '8326154681', '6273845125', '0', '2022-05-26', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-26 12:27:21', '2022-05-26 12:08:30', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(65, 60, 'Invoice', NULL, 0, 'Otto Alex', 'Post Graduate Diploma in Project Management (PGDPM)', '00065', 'WARD-INV-', '2022-05-27', '2022-05-27', '2022-05-27 15:57:33', '250.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '250.00', '0.00', '0.00', 'Unpaid', '', '<h4><br /></h4><p>This is a system-generated invoice. No need signature. For any query please contact: info@worldacademy.uk</p>', '6050708771', '7874023951', '0', '2022-05-27', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2022-05-27 19:57:33', '2022-05-27 19:57:33', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_items`
--

CREATE TABLE `sys_items` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `inventory` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `weight` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `width` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `length` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `height` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sku` varchar(50) DEFAULT NULL,
  `upc` varchar(50) DEFAULT NULL,
  `ean` varchar(50) DEFAULT NULL,
  `mpn` varchar(50) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT 0,
  `supplier` varchar(200) DEFAULT NULL,
  `bid` int(11) NOT NULL DEFAULT 0,
  `brand` varchar(200) DEFAULT NULL,
  `sell_account` int(11) NOT NULL DEFAULT 0,
  `purchase_account` int(11) NOT NULL DEFAULT 0,
  `inventory_account` int(11) NOT NULL DEFAULT 0,
  `taxable` int(1) NOT NULL DEFAULT 0,
  `location` varchar(200) DEFAULT NULL,
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date DEFAULT NULL,
  `last_sold` date DEFAULT NULL,
  `e` mediumtext NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `gname` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `expire_days` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `is_service` int(1) NOT NULL DEFAULT 0,
  `commission_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `commission_percent_type` varchar(100) DEFAULT NULL,
  `commission_fixed` decimal(16,2) NOT NULL DEFAULT 0.00,
  `trash` int(1) NOT NULL DEFAULT 0,
  `payterm` varchar(200) DEFAULT NULL,
  `cost_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `promo_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `setup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `onetime` decimal(16,2) NOT NULL DEFAULT 0.00,
  `monthly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `monthlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `quarterly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `quarterlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `halfyearly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `halfyearlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `annually` decimal(16,2) NOT NULL DEFAULT 0.00,
  `annuallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `biennially` decimal(16,2) NOT NULL DEFAULT 0.00,
  `bienniallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `triennially` decimal(16,2) NOT NULL DEFAULT 0.00,
  `trienniallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `has_domain` varchar(100) DEFAULT NULL,
  `free_domain` varchar(100) DEFAULT NULL,
  `email_rel` int(11) NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `sold_count` decimal(16,4) DEFAULT 0.0000,
  `total_amount` decimal(16,4) DEFAULT 0.0000,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_items`
--

INSERT INTO `sys_items` (`id`, `name`, `unit`, `sales_price`, `inventory`, `weight`, `width`, `length`, `height`, `sku`, `upc`, `ean`, `mpn`, `isbn`, `sid`, `supplier`, `bid`, `brand`, `sell_account`, `purchase_account`, `inventory_account`, `taxable`, `location`, `item_number`, `description`, `type`, `track_inventroy`, `negative_stock`, `available`, `status`, `added`, `last_sold`, `e`, `sorder`, `gid`, `category_id`, `supplier_id`, `gname`, `product_id`, `size`, `start_date`, `end_date`, `expire_date`, `expire_days`, `image`, `flag`, `is_service`, `commission_percent`, `commission_percent_type`, `commission_fixed`, `trash`, `payterm`, `cost_price`, `unit_price`, `promo_price`, `setup`, `onetime`, `monthly`, `monthlysetup`, `quarterly`, `quarterlysetup`, `halfyearly`, `halfyearlysetup`, `annually`, `annuallysetup`, `biennially`, `bienniallysetup`, `triennially`, `trienniallysetup`, `has_domain`, `free_domain`, `email_rel`, `tags`, `sold_count`, `total_amount`, `created_at`, `updated_at`, `tax_code`) VALUES
(1, 'CHRG', '', '400.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0001', '<p>test</p>', 'Service', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_item_cats`
--

CREATE TABLE `sys_item_cats` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_leads`
--

CREATE TABLE `sys_leads` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `lost` int(1) NOT NULL DEFAULT 0,
  `junk` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_logs`
--

CREATE TABLE `sys_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL,
  `related_to` varchar(100) DEFAULT NULL,
  `related_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`, `related_to`, `related_id`) VALUES
(1, '2021-12-31 00:04:24', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(2, '2021-12-31 05:34:34', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(3, '2021-12-31 11:21:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(4, '2021-12-31 11:25:48', 'Admin', 'Failed Login rmnzaidi@gmail.com', 0, '27.147.205.239', NULL, NULL),
(5, '2021-12-31 11:25:52', 'Admin', 'Failed Login rmnzaidi@gmail.com', 0, '27.147.205.239', NULL, NULL),
(6, '2021-12-31 11:26:29', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(7, '2021-12-31 11:29:43', 'Admin', 'Login Successful rmnzaidi@gmail.com', 2, '27.147.205.239', NULL, NULL),
(8, '2021-12-31 11:31:01', 'Admin', 'New Contact Added Shabok [CID: 1]', 2, '27.147.205.239', NULL, NULL),
(9, '2021-12-31 15:20:36', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(10, '2021-12-31 15:20:44', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(11, '2021-12-31 15:25:26', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.212.71', NULL, NULL),
(12, '2022-01-02 06:04:54', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(13, '2022-01-02 06:07:45', 'Admin', 'Login Successful rmnzaidi@gmail.com', 2, '123.49.59.98', NULL, NULL),
(14, '2022-01-02 09:15:34', 'Admin', 'Login Successful rmnzaidi@gmail.com', 2, '123.49.59.98', NULL, NULL),
(15, '2022-01-02 09:17:24', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(16, '2022-01-02 11:47:35', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.212.71', NULL, NULL),
(17, '2022-01-02 11:52:59', 'Admin', 'Login Successful rmnzaidi@gmail.com', 2, '103.87.212.71', NULL, NULL),
(18, '2022-01-02 14:46:50', 'Admin', 'Login Successful rmnzaidi@gmail.com', 2, '103.87.212.70', NULL, NULL),
(19, '2022-01-02 14:50:05', 'Admin', 'Failed Login albrators@gmail.com', 0, '103.87.212.70', NULL, NULL),
(20, '2022-01-02 14:50:33', 'Admin', 'Failed Login albrators@gmail.com', 0, '103.87.212.70', NULL, NULL),
(21, '2022-01-02 14:51:44', 'Admin', 'Login Successful albrators@gmail.com', 2, '103.87.212.70', NULL, NULL),
(22, '2022-01-02 14:53:01', 'Admin', 'Login Successful rmnzaidi@gmail.com', 2, '103.87.212.70', NULL, NULL),
(23, '2022-01-02 15:02:05', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(24, '2022-01-02 16:10:09', 'Admin', 'Failed Login rmnzaidi@gmail.com', 0, '27.147.205.239', NULL, NULL),
(25, '2022-01-02 16:10:27', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(26, '2022-01-02 16:10:39', 'Admin', 'Failed Login rmnzaidi@gmail.com', 0, '27.147.205.239', NULL, NULL),
(27, '2022-01-02 16:10:44', 'Admin', 'Failed Login rmnzaidi@gmail.com', 0, '27.147.205.239', NULL, NULL),
(28, '2022-01-02 16:11:18', 'Admin', 'Login Successful rmnzaidi@gmail.com', 2, '27.147.205.239', NULL, NULL),
(29, '2022-01-02 16:17:13', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '103.87.212.70', NULL, NULL),
(30, '2022-01-02 17:05:17', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.212.70', NULL, NULL),
(31, '2022-01-03 14:57:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.212.70', NULL, NULL),
(32, '2022-01-03 15:07:15', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(33, '2022-01-03 15:07:16', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(34, '2022-01-03 17:48:08', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(35, '2022-01-03 17:49:27', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '103.232.102.21', NULL, NULL),
(36, '2022-01-04 03:57:18', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(37, '2022-01-04 04:06:25', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '123.49.59.98', NULL, NULL),
(38, '2022-01-04 05:09:03', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(39, '2022-01-04 07:02:38', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.151.34', NULL, NULL),
(40, '2022-01-04 15:15:40', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(41, '2022-01-04 16:11:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '59.152.60.146', NULL, NULL),
(42, '2022-01-04 17:22:50', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '59.152.60.146', NULL, NULL),
(43, '2022-01-04 18:00:37', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '103.232.102.21', NULL, NULL),
(44, '2022-01-05 04:54:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.151.34', NULL, NULL),
(45, '2022-01-05 04:54:58', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.151.34', NULL, NULL),
(46, '2022-01-05 04:56:12', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.151.34', NULL, NULL),
(47, '2022-01-05 04:57:59', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '123.49.59.98', NULL, NULL),
(48, '2022-01-05 05:05:15', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(49, '2022-01-05 15:59:36', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(50, '2022-01-05 18:39:39', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(51, '2022-01-05 19:40:29', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(52, '2022-01-06 12:37:06', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(53, '2022-01-06 12:45:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.151.34', NULL, NULL),
(54, '2022-01-06 15:15:20', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(55, '2022-01-06 16:20:07', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(56, '2022-01-06 19:18:03', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(57, '2022-01-06 19:20:22', 'Admin', 'New Contact Added Kazi Arif Papul [CID: 2]', 1, '27.147.205.239', NULL, NULL),
(58, '2022-01-07 03:34:31', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.152.107.247', NULL, NULL),
(59, '2022-01-07 03:49:32', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(60, '2022-01-07 03:49:44', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(61, '2022-01-07 03:59:08', 'Admin', 'New Contact Added Azizan [CID: 3]', 1, '103.232.102.21', NULL, NULL),
(62, '2022-01-07 04:14:59', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '103.232.102.21', NULL, NULL),
(63, '2022-01-07 04:41:05', 'Client', 'Client: Azizan [ rupakzaidi@gmail.com ] Uploaded a File-', 3, '103.232.102.21', NULL, NULL),
(64, '2022-01-07 04:41:56', 'Client', 'Client: Azizan [ rupakzaidi@gmail.com ] Uploaded a File-', 3, '103.232.102.21', NULL, NULL),
(65, '2022-01-07 04:43:14', 'Client', 'Client: Azizan [ rupakzaidi@gmail.com ] Uploaded a File-_57c0531e026261164153059410721158.jpg', 3, '103.232.102.21', NULL, NULL),
(66, '2022-01-07 04:45:56', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.152.107.247', NULL, NULL),
(67, '2022-01-07 16:08:19', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.152.107.247', NULL, NULL),
(68, '2022-01-07 17:04:14', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.152.107.247', NULL, NULL),
(69, '2022-01-07 17:57:52', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(70, '2022-01-07 17:58:05', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(71, '2022-01-08 12:13:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(72, '2022-01-08 12:20:24', 'Admin', 'Login Successful tanvir@worldacademy.org.uk', 4, '27.147.205.239', NULL, NULL),
(73, '2022-01-08 12:21:50', 'Admin', 'New Contact Added test [CID: 4]', 4, '27.147.205.239', NULL, NULL),
(74, '2022-01-08 12:32:18', 'Admin', 'Login Successful tanvir@worldacademy.org.uk', 4, '27.147.205.239', NULL, NULL),
(75, '2022-01-08 12:41:19', 'Admin', 'New Contact Added Rakib [CID: 5]', 4, '27.147.205.239', NULL, NULL),
(76, '2022-01-08 15:11:57', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(77, '2022-01-08 16:53:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.152.107.242', NULL, NULL),
(78, '2022-01-09 03:37:02', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.152.107.242', NULL, NULL),
(79, '2022-01-09 03:41:04', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(80, '2022-01-09 03:41:13', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(81, '2022-01-09 03:41:25', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(82, '2022-01-09 03:41:38', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(83, '2022-01-09 03:43:54', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.152.107.242', NULL, NULL),
(84, '2022-01-09 05:57:41', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(85, '2022-01-09 05:57:47', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(86, '2022-01-09 05:57:52', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(87, '2022-01-09 08:14:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(88, '2022-01-11 07:03:05', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(89, '2022-01-11 07:21:16', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(90, '2022-01-11 07:22:05', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(91, '2022-01-11 07:22:10', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(92, '2022-01-11 07:22:31', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(93, '2022-01-11 07:22:41', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(94, '2022-01-11 07:22:46', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(95, '2022-01-11 07:22:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(96, '2022-01-12 05:06:39', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(97, '2022-01-12 07:09:30', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(98, '2022-01-12 07:19:10', 'Admin', 'New Contact Added Rosette Esmeralda [CID: 6]', 1, '123.49.59.98', NULL, NULL),
(99, '2022-01-12 07:41:25', 'Admin', 'New Contact Added Rashed Salonga [CID: 7]', 1, '123.49.59.98', NULL, NULL),
(100, '2022-01-12 17:15:29', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(101, '2022-01-14 03:07:53', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(102, '2022-01-14 16:51:13', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(103, '2022-01-15 11:05:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(104, '2022-01-15 11:06:10', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(105, '2022-01-16 10:59:43', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(106, '2022-01-16 11:06:36', 'Admin', 'New Contact Added Daniel T. Johnson [CID: 8]', 1, '27.147.205.239', NULL, NULL),
(107, '2022-01-16 11:37:03', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(108, '2022-01-16 11:37:06', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(109, '2022-01-16 12:37:35', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(110, '2022-01-16 12:37:53', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(111, '2022-01-16 12:38:12', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(112, '2022-01-16 12:38:37', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(113, '2022-01-16 12:38:58', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(114, '2022-01-16 12:39:35', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(115, '2022-01-16 12:39:40', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(116, '2022-01-16 12:39:56', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(117, '2022-01-16 12:40:27', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(118, '2022-01-16 12:42:21', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(119, '2022-01-16 12:43:56', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(120, '2022-01-16 12:45:31', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(121, '2022-01-16 14:14:11', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(122, '2022-01-16 14:15:10', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(123, '2022-01-17 04:21:09', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(124, '2022-01-18 18:45:25', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(125, '2022-01-18 18:45:27', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(126, '2022-01-19 17:04:06', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(127, '2022-01-19 17:46:08', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(128, '2022-01-20 09:20:36', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(129, '2022-01-20 09:20:57', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(130, '2022-01-20 09:21:05', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(131, '2022-01-20 09:22:34', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(132, '2022-01-20 18:13:01', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(133, '2022-01-21 05:33:39', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(134, '2022-01-21 08:07:43', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(135, '2022-01-21 08:59:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(136, '2022-01-21 13:39:55', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(137, '2022-01-21 14:41:39', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(138, '2022-01-21 14:44:30', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(139, '2022-01-22 09:44:19', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(140, '2022-01-22 16:30:40', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(141, '2022-01-22 17:07:49', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(142, '2022-01-22 17:08:01', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(143, '2022-01-22 17:08:19', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(144, '2022-01-22 17:08:32', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(145, '2022-01-22 17:14:11', 'Admin', 'New Contact Added Test [CID: 9]', 1, '103.232.102.21', NULL, NULL),
(146, '2022-01-22 17:37:50', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(147, '2022-01-23 09:45:36', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(148, '2022-01-23 09:45:39', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(149, '2022-01-23 10:45:19', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '123.49.59.98', NULL, NULL),
(150, '2022-01-23 10:46:14', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '123.49.59.98', NULL, NULL),
(151, '2022-01-25 10:49:49', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '37.111.235.17', NULL, NULL),
(152, '2022-01-25 15:56:22', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(153, '2022-01-25 16:33:42', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(154, '2022-01-25 16:43:24', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(155, '2022-01-25 16:44:26', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '103.87.214.160', NULL, NULL),
(156, '2022-01-25 16:48:59', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(157, '2022-01-25 16:56:09', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '103.87.214.160', NULL, NULL),
(158, '2022-01-25 17:02:25', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(159, '2022-01-25 17:43:04', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(160, '2022-01-25 17:43:28', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(161, '2022-01-25 17:43:33', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(162, '2022-01-25 17:43:45', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.232.102.21', NULL, NULL),
(163, '2022-01-26 10:03:35', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(164, '2022-01-26 10:03:42', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(165, '2022-01-26 10:03:46', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(166, '2022-01-26 10:04:43', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(167, '2022-01-26 10:04:51', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '123.49.59.98', NULL, NULL),
(168, '2022-01-26 10:05:37', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '202.191.124.234', NULL, NULL),
(169, '2022-01-26 10:06:32', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(170, '2022-01-26 10:10:22', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '123.49.59.98', NULL, NULL),
(171, '2022-01-26 16:22:40', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(172, '2022-01-26 17:44:02', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(173, '2022-01-28 01:24:36', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '119.30.38.24', NULL, NULL),
(174, '2022-01-28 16:44:13', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(175, '2022-01-28 16:56:19', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.160', NULL, NULL),
(176, '2022-01-29 06:29:23', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '37.111.198.214', NULL, NULL),
(177, '2022-01-30 07:26:40', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(178, '2022-01-30 07:29:41', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '45.115.112.3', NULL, NULL),
(179, '2022-01-30 07:29:48', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '45.115.112.3', NULL, NULL),
(180, '2022-01-30 12:15:36', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(181, '2022-01-30 20:04:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(182, '2022-01-31 04:09:39', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(183, '2022-01-31 05:12:24', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '45.115.112.3', NULL, NULL),
(184, '2022-01-31 05:14:23', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(185, '2022-01-31 07:01:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(186, '2022-02-01 16:10:42', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(187, '2022-02-01 16:11:39', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '103.232.102.21', NULL, NULL),
(188, '2022-02-01 16:13:45', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '103.232.102.21', NULL, NULL),
(189, '2022-02-01 16:15:21', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '103.232.102.21', NULL, NULL),
(190, '2022-02-01 17:33:54', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(191, '2022-02-03 16:27:36', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.166', NULL, NULL),
(192, '2022-02-03 16:57:56', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.166', NULL, NULL),
(193, '2022-02-04 06:58:11', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(194, '2022-02-05 05:23:52', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(195, '2022-02-05 05:24:07', 'Admin', 'Login Successful test1@worldacademy.org.uk', 2, '103.232.102.21', NULL, NULL),
(196, '2022-02-05 05:50:12', 'Ticket', 'Ticket - <a href=\"https://worldacademy.org.uk/?ng=tickets/admin/view/6\">E8Q-47994306</a> updated By- World Academy Value: Closed', 1, '103.232.102.21', NULL, NULL),
(197, '2022-02-05 06:50:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(198, '2022-02-05 07:01:27', 'Portal Registration', 'New Contact Added Ashie [CID: 10]', 0, '39.45.150.150', NULL, NULL),
(199, '2022-02-06 13:03:59', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(200, '2022-02-06 19:27:34', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(201, '2022-02-06 19:28:44', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(202, '2022-02-06 19:32:18', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '103.232.102.21', NULL, NULL),
(203, '2022-02-06 19:32:51', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '103.232.102.21', NULL, NULL),
(204, '2022-02-06 19:34:45', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(205, '2022-02-06 19:50:48', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '223.177.88.174', NULL, NULL),
(206, '2022-02-06 19:51:01', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '223.177.88.174', NULL, NULL),
(207, '2022-02-06 20:22:46', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '223.177.88.174', NULL, NULL),
(208, '2022-02-06 20:35:16', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '223.177.88.174', NULL, NULL),
(209, '2022-02-07 03:55:27', 'Admin', 'Login Successful rupakzaidi@gmail.com', 3, '223.177.88.174', NULL, NULL),
(210, '2022-02-08 18:54:32', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(211, '2022-02-09 15:44:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(212, '2022-02-09 15:57:52', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.87.214.163', NULL, NULL),
(213, '2022-02-09 20:31:51', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(214, '2022-02-13 04:30:15', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(215, '2022-02-13 06:27:48', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(216, '2022-02-13 07:08:20', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(217, '2022-02-13 08:15:43', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(218, '2022-02-13 10:14:24', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(219, '2022-02-13 10:16:20', 'Admin', 'New Contact Added DAIMA AFRICA BUSINESS CONSULTANTS - Uganda [CID: 11]', 1, '123.49.59.98', NULL, NULL),
(220, '2022-02-18 11:36:31', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(221, '2022-02-18 17:20:56', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(222, '2022-02-21 06:39:00', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(223, '2022-02-23 09:26:10', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(224, '2022-02-26 09:42:07', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(225, '2022-02-26 09:55:10', 'Admin', 'New Contact Added Mr. Jazeentha Mohamed Riyas [CID: 12]', 1, '27.147.205.239', NULL, NULL),
(226, '2022-02-26 12:37:16', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(227, '2022-02-26 18:32:26', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(228, '2022-02-26 18:38:48', 'Admin', 'New Contact Added Mr. Roshan [CID: 13]', 1, '103.232.102.21', NULL, NULL),
(229, '2022-02-27 18:29:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(230, '2022-03-05 04:34:31', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(231, '2022-03-05 04:34:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(232, '2022-03-05 10:05:12', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(233, '2022-03-05 17:27:17', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(234, '2022-03-10 13:27:04', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(235, '2022-03-10 16:55:42', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(236, '2022-03-11 04:20:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(237, '2022-03-11 19:49:41', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(238, '2022-03-11 19:49:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(239, '2022-03-20 09:23:22', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(240, '2022-03-23 15:57:12', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(241, '2022-03-24 03:23:48', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(242, '2022-03-29 14:48:15', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(243, '2022-03-29 15:55:52', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(244, '2022-04-01 18:22:58', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(245, '2022-04-02 06:37:53', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(246, '2022-04-02 06:41:38', 'Admin', 'Login Successful tanvir@worldacademy.org.uk', 4, '27.147.205.239', NULL, NULL),
(247, '2022-04-02 06:42:17', 'Admin', 'Login Successful tanvir@worldacademy.org.uk', 4, '27.147.205.239', NULL, NULL),
(248, '2022-04-02 06:42:34', 'Admin', 'Login Successful tanvir@worldacademy.org.uk', 4, '27.147.205.239', NULL, NULL),
(249, '2022-04-02 18:27:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(250, '2022-04-04 20:02:42', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(251, '2022-04-05 14:22:08', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(252, '2022-04-07 12:14:11', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(253, '2022-04-07 12:15:47', 'Admin', 'New Contact Added Soni Nakarmi [CID: 14]', 1, '103.232.102.21', NULL, NULL),
(254, '2022-04-07 13:49:39', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(255, '2022-04-07 17:56:53', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(256, '2022-04-07 17:58:07', 'Admin', 'New Contact Added AUSTINE JOSEPH ODHIAMBO [CID: 15]', 1, '103.232.102.21', NULL, NULL),
(257, '2022-04-09 07:45:50', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(258, '2022-04-09 07:46:48', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(259, '2022-04-09 07:52:03', 'Admin', 'Login Successful tanvir@worldacademy.org.uk', 4, '27.147.205.239', NULL, NULL),
(260, '2022-04-09 08:00:24', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(261, '2022-04-09 08:00:31', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(262, '2022-04-09 09:35:00', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(263, '2022-04-09 11:11:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(264, '2022-04-09 11:14:19', 'Admin', 'New Contact Added Blessing Ahmadu [CID: 16]', 1, '27.147.205.239', NULL, NULL),
(265, '2022-04-09 11:40:58', 'Admin', 'New Contact Added Fernandez, Brian Gilbert Paneda [CID: 17]', 1, '27.147.205.239', NULL, NULL),
(266, '2022-04-10 08:12:43', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(267, '2022-04-10 08:14:31', 'Admin', 'New Contact Added Maria Nina B. Almueda [CID: 18]', 1, '27.147.205.239', NULL, NULL),
(268, '2022-04-10 09:24:41', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(269, '2022-04-10 09:26:06', 'Admin', 'New Contact Added SEMIU OLANREWAJU EMMANUEL [CID: 19]', 1, '27.147.205.239', NULL, NULL),
(270, '2022-04-10 11:27:35', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(271, '2022-04-10 11:28:24', 'Admin', 'New Contact Added Ahmed Kofi Dzramedo [CID: 20]', 1, '27.147.205.239', NULL, NULL),
(272, '2022-04-10 12:59:00', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(273, '2022-04-10 14:01:19', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(274, '2022-04-11 06:53:06', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(275, '2022-04-11 06:54:34', 'Admin', 'New Contact Added Adekunle Onafusi [CID: 21]', 1, '27.147.205.239', NULL, NULL),
(276, '2022-04-12 07:34:32', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(277, '2022-04-12 11:16:25', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(278, '2022-04-12 11:17:30', 'Admin', 'New Contact Added Alphonso Siebonue Kofi, Sr [CID: 22]', 1, '27.147.205.239', NULL, NULL),
(279, '2022-04-12 18:19:39', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(280, '2022-04-13 06:59:09', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(281, '2022-04-13 07:02:12', 'Admin', 'New Contact Added Kiotte Aaron Ilisan [CID: 23]', 1, '27.147.205.239', NULL, NULL),
(282, '2022-04-13 07:53:20', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(283, '2022-04-13 09:13:11', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(284, '2022-04-13 09:18:50', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(285, '2022-04-13 09:18:57', 'Admin', 'Login Successful tanvir@worldacademy.org.uk', 4, '123.49.59.98', NULL, NULL),
(286, '2022-04-13 10:49:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(287, '2022-04-13 10:51:15', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(288, '2022-04-13 12:01:30', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(289, '2022-04-13 12:01:30', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(290, '2022-04-13 14:04:17', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(291, '2022-04-13 15:01:35', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(292, '2022-04-13 15:16:52', 'Admin', 'New Contact Added Elias Getahun [CID: 24]', 1, '27.147.205.239', NULL, NULL),
(293, '2022-04-15 05:32:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(294, '2022-04-15 05:44:13', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(295, '2022-04-15 06:43:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(296, '2022-04-15 07:10:47', 'Admin', 'New Contact Added Joseph Gbao [CID: 25]', 1, '27.147.205.239', NULL, NULL),
(297, '2022-04-16 09:15:04', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(298, '2022-04-16 09:28:11', 'Admin', 'New Contact Added MICHAEL OLUDARE AJAYI [CID: 26]', 1, '27.147.205.239', NULL, NULL),
(299, '2022-04-16 12:36:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(300, '2022-04-17 07:21:36', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(301, '2022-04-17 07:22:04', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(302, '2022-04-17 07:23:12', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(303, '2022-04-17 07:23:22', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(304, '2022-04-17 07:31:20', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.120.165.31', NULL, NULL),
(305, '2022-04-17 09:52:18', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.120.165.31', NULL, NULL),
(306, '2022-04-17 14:30:03', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(307, '2022-04-17 14:30:04', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(308, '2022-04-17 14:31:07', 'Admin', 'New Contact Added Jonathan Anderson [CID: 27]', 1, '27.147.205.239', NULL, NULL),
(309, '2022-04-19 07:24:06', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(310, '2022-04-19 07:27:52', 'Admin', 'New Contact Added WENDWESSEN ALEMAYEHU BEYENE [CID: 28]', 1, '27.147.205.239', NULL, NULL),
(311, '2022-04-19 07:44:27', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(312, '2022-04-19 10:49:45', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(313, '2022-04-19 10:50:44', 'Admin', 'New Contact Added Matthew Mensah [CID: 29]', 1, '27.147.205.239', NULL, NULL),
(314, '2022-04-21 05:05:43', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(315, '2022-04-21 09:33:53', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.120.165.31', NULL, NULL),
(316, '2022-04-22 07:21:04', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(317, '2022-04-23 09:58:02', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(318, '2022-04-23 12:10:20', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(319, '2022-04-23 12:41:02', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(320, '2022-04-23 13:01:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.251.51.44', NULL, NULL),
(321, '2022-04-23 13:12:35', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.251.51.44', NULL, NULL),
(322, '2022-04-23 13:12:44', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.251.51.44', NULL, NULL),
(323, '2022-04-23 14:14:59', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.251.51.44', NULL, NULL),
(324, '2022-04-24 04:10:25', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(325, '2022-04-24 08:27:45', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.251.51.167', NULL, NULL),
(326, '2022-04-24 10:52:47', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(327, '2022-04-24 10:53:02', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(328, '2022-04-24 10:53:11', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(329, '2022-04-24 10:53:17', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(330, '2022-04-24 10:54:00', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(331, '2022-04-24 11:14:57', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(332, '2022-04-25 06:00:36', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.251.51.167', NULL, NULL),
(333, '2022-04-25 06:32:11', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.251.51.167', NULL, NULL),
(334, '2022-04-25 08:46:42', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(335, '2022-04-25 08:47:24', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.98', NULL, NULL),
(336, '2022-04-26 10:56:17', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(337, '2022-04-26 10:56:23', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(338, '2022-04-26 17:29:10', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(339, '2022-04-26 17:30:17', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(340, '2022-04-26 18:26:46', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(341, '2022-04-26 20:22:22', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(342, '2022-04-27 06:12:53', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '45.115.112.3', NULL, NULL),
(343, '2022-04-27 19:44:48', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(344, '2022-04-27 20:09:27', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(345, '2022-04-28 06:11:13', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '27.147.205.239', NULL, NULL),
(346, '2022-04-28 06:11:18', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(347, '2022-04-28 06:14:35', 'Admin', 'New Contact Added JIMMY AKENA  DE LOTTO [CID: 30]', 1, '27.147.205.239', NULL, NULL),
(348, '2022-04-30 16:36:26', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(349, '2022-05-01 11:53:53', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(350, '2022-05-02 18:16:20', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(351, '2022-05-02 18:16:26', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(352, '2022-05-06 15:30:34', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(353, '2022-05-06 15:32:57', 'Admin', 'New Contact Added Obert Elijah [CID: 31]', 1, '27.147.205.239', NULL, NULL),
(354, '2022-05-06 16:59:07', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(355, '2022-05-06 21:48:31', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(356, '2022-05-07 14:34:07', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(357, '2022-05-07 16:22:19', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(358, '2022-05-07 16:23:08', 'Admin', 'New Contact Added Toomay M. Robinson [CID: 32]', 1, '27.147.205.239', NULL, NULL),
(359, '2022-05-08 11:57:35', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(360, '2022-05-08 12:08:44', 'Admin', 'New Contact Added FARID FADEL MUSTAFA ALGRIGNI [CID: 33]', 1, '27.147.205.239', NULL, NULL),
(361, '2022-05-08 12:11:47', 'Admin', 'New Contact Added Asad Ali [CID: 34]', 1, '27.147.205.239', NULL, NULL),
(362, '2022-05-10 08:03:44', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(363, '2022-05-10 12:46:12', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(364, '2022-05-10 12:48:29', 'Admin', 'New Contact Added Lesley Yasmine Sosi [CID: 35]', 1, '27.147.205.239', NULL, NULL),
(365, '2022-05-12 10:46:41', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(366, '2022-05-12 10:47:35', 'Admin', 'New Contact Added Thomas Aquinas Kunde [CID: 36]', 1, '27.147.205.239', NULL, NULL),
(367, '2022-05-12 11:12:16', 'Admin', 'New Contact Added Lual Gabriel [CID: 37]', 1, '27.147.205.239', NULL, NULL),
(368, '2022-05-12 11:25:38', 'Admin', 'New Contact Added Ashiru Mohammed Mustapha [CID: 38]', 1, '27.147.205.239', NULL, NULL),
(369, '2022-05-12 12:20:42', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(370, '2022-05-12 12:21:21', 'Admin', 'New Contact Added Alpha Kanu [CID: 39]', 1, '27.147.205.239', NULL, NULL),
(371, '2022-05-12 14:08:27', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(372, '2022-05-12 14:09:17', 'Admin', 'New Contact Added JOSEPH EDSON [CID: 40]', 1, '27.147.205.239', NULL, NULL),
(373, '2022-05-12 14:11:44', 'Admin', 'New Contact Added G. Plason Z. Plakar [CID: 41]', 1, '27.147.205.239', NULL, NULL),
(374, '2022-05-14 11:18:37', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(375, '2022-05-14 11:21:38', 'Admin', 'New Contact Added Santos Paulo Bunga [CID: 42]', 1, '27.147.205.239', NULL, NULL),
(376, '2022-05-14 12:36:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(377, '2022-05-15 10:05:19', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(378, '2022-05-15 10:25:03', 'Admin', 'New Contact Added Chrispin George [CID: 43]', 1, '27.147.205.239', NULL, NULL),
(379, '2022-05-15 14:39:41', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(380, '2022-05-15 16:07:42', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(381, '2022-05-16 18:17:32', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.232.102.21', NULL, NULL),
(382, '2022-05-18 10:12:30', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(383, '2022-05-18 10:14:47', 'Admin', 'New Contact Added Abdiaziz Hussein Mohamed Ali [CID: 44]', 1, '27.147.205.239', NULL, NULL),
(384, '2022-05-18 13:49:27', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(385, '2022-05-18 15:03:58', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(386, '2022-05-18 15:23:08', 'Admin', 'New Contact Added Bina Mtawali [CID: 45]', 1, '27.147.205.239', NULL, NULL),
(387, '2022-05-18 16:49:17', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(388, '2022-05-18 16:49:59', 'Admin', 'New Contact Added Edem Loveland Asempah [CID: 46]', 1, '27.147.205.239', NULL, NULL),
(389, '2022-05-19 09:02:40', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(390, '2022-05-19 11:09:27', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(391, '2022-05-19 13:35:09', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(392, '2022-05-19 13:35:55', 'Admin', 'New Contact Added Byamanywoha Edgar [CID: 47]', 1, '27.147.205.239', NULL, NULL),
(393, '2022-05-19 17:18:34', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(394, '2022-05-19 17:19:21', 'Admin', 'New Contact Added MOGAJI Oluwatimilehin Babatope [CID: 48]', 1, '27.147.205.239', NULL, NULL),
(395, '2022-05-19 19:31:08', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(396, '2022-05-19 19:31:47', 'Admin', 'New Contact Added Teshome Sisay [CID: 49]', 1, '27.147.205.239', NULL, NULL),
(397, '2022-05-19 20:00:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(398, '2022-05-19 20:37:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(399, '2022-05-20 05:57:26', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(400, '2022-05-20 05:58:46', 'Admin', 'New Contact Added Abraham Maker Gol [CID: 50]', 1, '27.147.205.239', NULL, NULL),
(401, '2022-05-20 06:28:18', 'Admin', 'New Contact Added Adelagun Abisola Oluwakemi [CID: 51]', 1, '27.147.205.239', NULL, NULL),
(402, '2022-05-20 14:27:01', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(403, '2022-05-20 14:28:27', 'Admin', 'New Contact Added Adebayo Kazeem Sanni [CID: 52]', 1, '27.147.205.239', NULL, NULL),
(404, '2022-05-20 17:47:03', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.151.168.20', NULL, NULL),
(405, '2022-05-21 04:49:35', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.151.168.20', NULL, NULL),
(406, '2022-05-21 07:05:54', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.151.168.20', NULL, NULL),
(407, '2022-05-21 07:57:24', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(408, '2022-05-21 08:57:10', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(409, '2022-05-21 09:33:14', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(410, '2022-05-21 13:55:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.151.168.20', NULL, NULL),
(411, '2022-05-22 08:16:18', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.103', NULL, NULL),
(412, '2022-05-22 09:24:44', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.103', NULL, NULL),
(413, '2022-05-22 09:44:16', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(414, '2022-05-22 09:44:57', 'Admin', 'New Contact Added Junisa Kandeh Jambawai [CID: 53]', 1, '27.147.205.239', NULL, NULL),
(415, '2022-05-22 11:34:07', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(416, '2022-05-22 11:38:49', 'Admin', 'New Contact Added Nelson Doe Avorkliyah [CID: 54]', 1, '27.147.205.239', NULL, NULL),
(417, '2022-05-22 14:44:03', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(418, '2022-05-23 07:32:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(419, '2022-05-23 07:34:04', 'Admin', 'New Contact Added Hoodh Mohamed [CID: 55]', 1, '27.147.205.239', NULL, NULL),
(420, '2022-05-23 19:59:36', 'Admin', 'Failed Login info@worldacademy.org.uk', 0, '103.110.125.27', NULL, NULL),
(421, '2022-05-23 19:59:44', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '103.110.125.27', NULL, NULL),
(422, '2022-05-23 20:01:39', 'Admin', 'New Contact Added George N. Popel [CID: 56]', 1, '103.110.125.27', NULL, NULL),
(423, '2022-05-24 09:24:58', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.103', NULL, NULL),
(424, '2022-05-24 14:20:33', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(425, '2022-05-25 06:33:47', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(426, '2022-05-25 12:54:58', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(427, '2022-05-25 15:26:57', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(428, '2022-05-25 15:27:33', 'Admin', 'New Contact Added Joseph Biandoma Musa [CID: 57]', 1, '27.147.205.239', NULL, NULL),
(429, '2022-05-26 06:12:29', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(430, '2022-05-26 07:31:49', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(431, '2022-05-26 07:38:19', 'Admin', 'New Contact Added Donaldson Siegesmond Pontis [CID: 58]', 1, '27.147.205.239', NULL, NULL),
(432, '2022-05-26 07:44:34', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '123.49.59.103', NULL, NULL),
(433, '2022-05-26 07:59:53', 'Admin', 'New Contact Added John George Lujani [CID: 59]', 1, '123.49.59.103', NULL, NULL),
(434, '2022-05-27 15:43:55', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(435, '2022-05-27 15:56:35', 'Admin', 'New Contact Added Otto Alex [CID: 60]', 1, '27.147.205.239', NULL, NULL);
INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`, `related_to`, `related_id`) VALUES
(436, '2022-05-27 19:19:04', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL),
(437, '2022-05-28 14:11:25', 'Admin', 'Login Successful info@worldacademy.org.uk', 1, '27.147.205.239', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_orders`
--

CREATE TABLE `sys_orders` (
  `id` int(11) NOT NULL,
  `ordernum` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sales_person` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_expiry` date DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `stitle` varchar(200) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `recurring` decimal(16,2) NOT NULL DEFAULT 0.00,
  `setup_fee` decimal(16,2) NOT NULL DEFAULT 0.00,
  `billing_cycle` text DEFAULT NULL,
  `addon_ids` text DEFAULT NULL,
  `related_orders` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `upgrade_ids` text DEFAULT NULL,
  `xdata` text DEFAULT NULL,
  `xsecret` varchar(100) DEFAULT NULL,
  `promo_code` text DEFAULT NULL,
  `promo_type` text DEFAULT NULL,
  `promo_value` text DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `ipaddress` text DEFAULT NULL,
  `fraud_module` text DEFAULT NULL,
  `fraud_output` text DEFAULT NULL,
  `activation_subject` text DEFAULT NULL,
  `activation_message` text DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_permissions`
--

CREATE TABLE `sys_permissions` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `shortname` varchar(200) DEFAULT NULL,
  `available` int(1) NOT NULL DEFAULT 0,
  `core` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_permissions`
--

INSERT INTO `sys_permissions` (`id`, `pname`, `shortname`, `available`, `core`) VALUES
(1, 'Customers', 'customers', 0, 1),
(2, 'Companies', 'companies', 0, 1),
(3, 'Transactions', 'transactions', 0, 1),
(4, 'Sales', 'sales', 0, 1),
(5, 'Bank & Cash', 'bank_n_cash', 0, 1),
(6, 'Products & Services', 'products_n_services', 0, 1),
(7, 'Reports', 'reports', 0, 1),
(8, 'Utilities', 'utilities', 0, 1),
(9, 'Appearance', 'appearance', 0, 1),
(10, 'Plugins', 'plugins', 0, 1),
(11, 'Calendar', 'calendar', 0, 1),
(12, 'Leads', 'leads', 0, 1),
(13, 'Tasks', 'tasks', 0, 1),
(14, 'Contracts', 'contracts', 0, 1),
(15, 'Orders', 'orders', 0, 1),
(16, 'Settings', 'settings', 0, 1),
(17, 'Documents', 'documents', 0, 1),
(18, 'Purchase', 'purchase', 0, 1),
(19, 'Suppliers', 'suppliers', 0, 1),
(20, 'SMS', 'sms', 0, 1),
(21, 'Support', 'support', 0, 1),
(22, 'Knowledgebase', 'kb', 0, 1),
(23, 'Password Manager', 'password_manager', 0, 1),
(24, 'HRM', 'hr', 0, 1),
(25, 'Projects', 'projects', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pg`
--

CREATE TABLE `sys_pg` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL,
  `account_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pg`
--

INSERT INTO `sys_pg` (`id`, `name`, `settings`, `value`, `processor`, `ins`, `c1`, `c2`, `c3`, `c4`, `c5`, `status`, `sorder`, `logo`, `mode`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'Paypal Email', 'demo@example.com', 'paypal', 'Invoices', 'USD', '1', '', '', '', 'Inactive', 3, NULL, '', NULL, NULL, NULL),
(2, 'Credit Card Payment via Stripe [Click Pay Now]', 'API Key', 'pk_live_51IDSE8KIUfqauFYPzfWU5QwjkZPTWm36YG8Mv7sySgU5ZH2eFWUiMBChvvXtyyJpd4AfYEJmpRhLMBCS8PpXNUlT00c6ybYEZ3', 'stripe', '', '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', 'USD', '', '', '', 'Active', 1, NULL, '', NULL, NULL, NULL),
(3, 'Bank transfer (click Pay now and upload proof in JPG format]', 'Instructions', 'Make a Payment to Our Bank Account [Euro Account] for Outside UK countries <br /> <br /> Account Name: Cambridge Academy Of Professionals Ltd <br /> <br />Account Number: 1708979 <br /> <br />SWIFT/BIC: TRWIBEB1XXX, <br /> <br /> IBAN: BE65 9671 7089 7996  <br /> <br />Bank Name: Wise <br /> <br />Bank Address: Avenue Louise 54, Room S52, Brussels, 1050, Belgium <br />', 'manualpayment', '', '', '', '', '', '', 'Active', 2, NULL, '', NULL, NULL, NULL),
(4, 'Authorize.net', 'API_LOGIN_ID', 'Insert API Login ID here', 'authorize_net', '', 'Insert Transaction Key Here', '', '', '', '', 'Inactive', 4, NULL, '', NULL, NULL, NULL),
(5, 'Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Inactive', 5, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pl`
--

CREATE TABLE `sys_pl` (
  `id` int(11) NOT NULL,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `build` int(10) DEFAULT 1,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_pmethods`
--

CREATE TABLE `sys_pmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pmethods`
--

INSERT INTO `sys_pmethods` (`id`, `name`, `sorder`) VALUES
(1, 'Cash', 1),
(2, 'Check', 4),
(3, 'Credit Card', 5),
(4, 'Debit', 6),
(5, 'Electronic Transfer', 7),
(9, 'Paypal', 2),
(10, 'ATM Withdrawals', 3),
(11, 'Pagseguro', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_purchaseitems`
--

CREATE TABLE `sys_purchaseitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT 0,
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `taxed` int(1) NOT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax1` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax2` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax3` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(14,2) NOT NULL DEFAULT 0.00,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_purchaseitems`
--

INSERT INTO `sys_purchaseitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `tax_code`, `description`, `qty`, `amount`, `taxed`, `tax_rate`, `tax_name`, `taxamount`, `tax1`, `tax2`, `tax3`, `discount_type`, `discount_amount`, `total`, `duedate`, `paymentmethod`, `notes`, `created_at`, `updated_at`) VALUES
(4, 2, 3, '', 0, '', NULL, 'class', '2', '40.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '80.00', '2022-01-21', '', '', NULL, NULL),
(5, 3, 3, '', 0, '', NULL, 'test', '1', '1.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '1.00', '2022-01-26', '', '', NULL, NULL),
(6, 4, 3, '', 0, '', NULL, 'sessionHRBP', '1', '70.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '70.00', '2022-01-30', '', '', NULL, NULL),
(7, 4, 3, '', 0, '', NULL, 'session-pgd', '1', '80.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '80.00', '2022-01-30', '', '', NULL, NULL),
(10, 1, 3, '', 0, '', NULL, 'CHRG-Class 2 jan', '1', '50.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '50.00', '2022-01-31', '', '', NULL, NULL),
(11, 1, 3, '', 0, '', NULL, 'CHRG Class 7 jan', '2', '60.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '120.00', '2022-01-31', '', '', NULL, NULL),
(12, 5, 3, '', 0, '', NULL, '', '1', '20.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '20.00', '2022-02-08', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_purchases`
--

CREATE TABLE `sys_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(10) NOT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxname` varchar(100) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax2` decimal(10,2) DEFAULT NULL,
  `tax1_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax2_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax3_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `taxrate` decimal(10,2) DEFAULT NULL,
  `taxrate2` decimal(10,2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT 0,
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT 0,
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `is_credit_invoice` int(1) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `stage` varchar(200) DEFAULT 'Pending',
  `subject` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_purchases`
--

INSERT INTO `sys_purchases` (`id`, `userid`, `supplier_id`, `supplier_name`, `account`, `title`, `code`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `tax1_total`, `tax2_total`, `tax3_total`, `tax_total`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `currency`, `currency_iso_code`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`, `receipt_number`, `stage`, `subject`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL, 'Azizan', NULL, NULL, '00001', 'WARD-PO-', '2022-01-07', '2022-01-07', '2022-01-31 05:38:05', '170.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '170.00', '0.00', '0.00', 'Paid', '', '<p><a href=\"https://wise.com/en/track/7adcc8b3563c4d6cb352e1f857e046ea?utm_source=web&amp;utm_medium=copy&amp;utm_content=moneyTracker\">https://wise.com/en/track/7adcc8b3563c4d6cb352e1f8...</a></p>', '7438379271', '0554293205', '0', '2022-01-07', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Declined', 'test PO', '2022-01-07 09:07:53', '2022-01-31 10:38:05'),
(2, 3, NULL, NULL, 'Azizan', NULL, NULL, '00002', 'WARD-PO-', '2022-01-21', '2022-01-21', '2022-01-21 09:29:07', '80.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '80.00', '0.00', '0.00', 'Unpaid', '', '', '4792341596', '5387220868', '0', '2022-01-21', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', 'test', '2022-01-21 14:21:20', '2022-01-21 14:29:07'),
(3, 3, NULL, NULL, 'Azizan', NULL, NULL, '00003', 'WARD-PO-', '2022-01-26', '2022-01-26', '2022-01-26 10:15:45', '1.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '1.00', '0.00', '0.00', 'Unpaid', '', '', '3875940255', '1003093376', '0', '2022-01-26', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', 'test', '2022-01-26 15:15:45', '2022-01-26 15:15:45'),
(4, 3, NULL, NULL, 'Azizan', NULL, NULL, '00004', 'WARD-PO-', '2022-01-30', '2022-01-30', '2022-01-30 07:32:35', '150.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '150.00', '0.00', '0.00', 'Paid', '', '', '8491693341', '6199964304', '0', '2022-01-30', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', 'session during this week 1-7 febrary', '2022-01-30 12:32:35', '2022-01-30 12:32:35'),
(5, 3, NULL, NULL, 'Azizan', NULL, NULL, '00002', 'WARD-PO-', '2022-02-08', '2022-02-08', '2022-02-08 18:58:49', '20.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '20.00', '0.00', '0.00', 'Unpaid', '', '', '0120556139', '8690320852', '0', '2022-02-08', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', '2022-02-08 23:58:49', '2022-02-08 23:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `sys_quoteitems`
--

CREATE TABLE `sys_quoteitems` (
  `id` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `taxable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_quoteitems`
--

INSERT INTO `sys_quoteitems` (`id`, `qid`, `itemcode`, `description`, `qty`, `amount`, `discount`, `total`, `taxable`) VALUES
(2, 1, '', 'test', '5', '55.00', '0.00', '275.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_quotes`
--

CREATE TABLE `sys_quotes` (
  `id` int(10) NOT NULL,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL,
  `code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_quotes`
--

INSERT INTO `sys_quotes` (`id`, `subject`, `stage`, `validuntil`, `userid`, `invoicenum`, `cn`, `account`, `firstname`, `lastname`, `companyname`, `email`, `address1`, `address2`, `city`, `state`, `postcode`, `country`, `phonenumber`, `currency`, `subtotal`, `discount_type`, `discount_value`, `discount`, `taxname`, `taxrate`, `tax1`, `tax2`, `total`, `proposal`, `customernotes`, `adminnotes`, `datecreated`, `lastmodified`, `datesent`, `dateaccepted`, `vtoken`, `code`) VALUES
(1, 'test', 'Accepted', '2022-02-07', 1, 'WARD-QUOTE-', '00001', 'Shabok', '', '', '', '', '', '', '', '', '', '', '', 1, '275.00', 'p', '10.00', '27.50', '', '0.00', '0.00', '0.00', '247.50', '<p>test</p>', '', '', '2022-01-07', '2022-01-07', '2022-01-07', '2022-01-07', '9893234767', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_roles`
--

CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_roles`
--

INSERT INTO `sys_roles` (`id`, `rname`) VALUES
(3, 'Employee'),
(4, 'Trainer');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sales`
--

CREATE TABLE `sys_sales` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedule`
--

CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedule`
--

INSERT INTO `sys_schedule` (`id`, `cname`, `val`) VALUES
(1, 'accounting_snapshot', 'Active'),
(2, 'recurring_invoice', 'Active'),
(3, 'notify', 'Active'),
(4, 'notifyemail', 'demo@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedulelogs`
--

CREATE TABLE `sys_schedulelogs` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_staffpermissions`
--

CREATE TABLE `sys_staffpermissions` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `can_view` int(1) NOT NULL DEFAULT 0,
  `can_edit` int(1) NOT NULL DEFAULT 0,
  `can_create` int(1) NOT NULL DEFAULT 0,
  `can_delete` int(1) NOT NULL DEFAULT 0,
  `all_data` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_staffpermissions`
--

INSERT INTO `sys_staffpermissions` (`id`, `rid`, `pid`, `shortname`, `can_view`, `can_edit`, `can_create`, `can_delete`, `all_data`) VALUES
(135, 3, 1, 'customers', 1, 1, 1, 1, 0),
(136, 3, 2, 'companies', 0, 0, 0, 0, 0),
(137, 3, 3, 'transactions', 0, 0, 0, 0, 0),
(138, 3, 4, 'sales', 0, 0, 0, 0, 0),
(139, 3, 5, 'bank_n_cash', 0, 0, 0, 0, 0),
(140, 3, 6, 'products_n_services', 0, 0, 0, 0, 0),
(141, 3, 7, 'reports', 0, 0, 0, 0, 0),
(142, 3, 8, 'utilities', 0, 0, 0, 0, 0),
(143, 3, 9, 'appearance', 0, 0, 0, 0, 0),
(144, 3, 10, 'plugins', 0, 0, 0, 0, 0),
(145, 3, 11, 'calendar', 0, 0, 0, 0, 0),
(146, 3, 12, 'leads', 1, 1, 1, 1, 1),
(147, 3, 13, 'tasks', 0, 0, 0, 0, 0),
(148, 3, 14, 'contracts', 0, 0, 0, 0, 0),
(149, 3, 15, 'orders', 0, 0, 0, 0, 0),
(150, 3, 16, 'settings', 0, 0, 0, 0, 0),
(151, 3, 17, 'documents', 0, 0, 0, 0, 0),
(152, 3, 18, 'purchase', 0, 0, 0, 0, 0),
(153, 3, 19, 'suppliers', 0, 0, 0, 0, 0),
(154, 3, 20, 'sms', 0, 0, 0, 0, 0),
(155, 3, 21, 'support', 0, 0, 0, 0, 0),
(156, 3, 22, 'kb', 0, 0, 0, 0, 0),
(157, 3, 23, 'password_manager', 0, 0, 0, 0, 0),
(158, 3, 24, 'hr', 0, 0, 0, 0, 0),
(159, 3, 25, 'projects', 0, 0, 0, 0, 0),
(260, 4, 1, 'customers', 0, 0, 0, 0, 0),
(261, 4, 2, 'companies', 0, 0, 0, 0, 0),
(262, 4, 3, 'transactions', 1, 1, 1, 1, 0),
(263, 4, 4, 'sales', 1, 1, 1, 1, 0),
(264, 4, 5, 'bank_n_cash', 0, 0, 0, 0, 0),
(265, 4, 6, 'products_n_services', 0, 0, 0, 0, 0),
(266, 4, 7, 'reports', 0, 0, 0, 0, 0),
(267, 4, 8, 'utilities', 0, 0, 0, 0, 0),
(268, 4, 9, 'appearance', 0, 0, 0, 0, 0),
(269, 4, 10, 'plugins', 0, 0, 0, 0, 0),
(270, 4, 11, 'calendar', 0, 0, 0, 0, 0),
(271, 4, 12, 'leads', 0, 0, 0, 0, 0),
(272, 4, 13, 'tasks', 1, 1, 1, 1, 0),
(273, 4, 14, 'contracts', 0, 0, 0, 0, 0),
(274, 4, 15, 'orders', 0, 0, 0, 0, 0),
(275, 4, 16, 'settings', 0, 0, 0, 0, 0),
(276, 4, 17, 'documents', 0, 0, 0, 0, 0),
(277, 4, 18, 'purchase', 1, 1, 1, 1, 0),
(278, 4, 19, 'suppliers', 0, 0, 0, 0, 0),
(279, 4, 20, 'sms', 0, 0, 0, 0, 0),
(280, 4, 21, 'support', 0, 0, 0, 0, 0),
(281, 4, 22, 'kb', 0, 0, 0, 0, 0),
(282, 4, 23, 'password_manager', 0, 0, 0, 0, 0),
(283, 4, 24, 'hr', 0, 0, 0, 0, 0),
(284, 4, 25, 'projects', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_status`
--

CREATE TABLE `sys_status` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_status`
--

INSERT INTO `sys_status` (`id`, `type`, `name`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Purchase Invoice', 'Pending', NULL, NULL, NULL),
(2, 'Purchase Invoice', 'Accepted', NULL, NULL, NULL),
(3, 'Purchase Invoice', 'Declined', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_tags`
--

CREATE TABLE `sys_tags` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tasks`
--

CREATE TABLE `sys_tasks` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `tid` int(11) NOT NULL DEFAULT 0,
  `eid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `subscribers` text DEFAULT NULL,
  `assigned_to` text DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `vtoken` varchar(50) DEFAULT NULL,
  `ptoken` varchar(50) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `dtime` varchar(50) DEFAULT NULL,
  `time_spent` varchar(50) DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `finished` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `rel_type` varchar(50) DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `is_public` int(1) NOT NULL DEFAULT 0,
  `billable` int(1) NOT NULL DEFAULT 0,
  `billed` int(1) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(14,2) NOT NULL DEFAULT 0.00,
  `milestone` int(11) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `visible_to_client` int(1) NOT NULL DEFAULT 0,
  `notification` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tasks`
--

INSERT INTO `sys_tasks` (`id`, `title`, `description`, `status`, `cid`, `oid`, `iid`, `aid`, `tid`, `eid`, `pid`, `did`, `company_id`, `subscribers`, `assigned_to`, `priority`, `created_at`, `created_by`, `updated_at`, `updated_by`, `vtoken`, `ptoken`, `started`, `due_date`, `stime`, `dtime`, `time_spent`, `date_finished`, `source`, `flag`, `finished`, `ratings`, `rel_type`, `rel_id`, `parent`, `is_public`, `billable`, `billed`, `hourly_rate`, `milestone`, `progress`, `visible_to_client`, `notification`, `trash`, `archived`) VALUES
(1, 'PGDHRM', '<p>M-1</p><p>M-2</p><p>M-3</p>', 'In Progress', 3, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-01-31 07:05:29', 'World Academy', NULL, NULL, NULL, NULL, '2022-01-31', '2022-01-31', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_tax`
--

CREATE TABLE `sys_tax` (
  `id` int(10) NOT NULL,
  `name` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `bal` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tax`
--

INSERT INTO `sys_tax` (`id`, `name`, `state`, `country`, `rate`, `aid`, `bal`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'None', NULL, NULL, '0.00', NULL, '0.00', '2018-11-20 21:57:47', '2018-11-20 21:57:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketdepartments`
--

CREATE TABLE `sys_ticketdepartments` (
  `id` int(11) NOT NULL,
  `dname` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `hidden` int(1) NOT NULL DEFAULT 0,
  `delete_after_import` int(1) NOT NULL DEFAULT 0,
  `host` varchar(200) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `encryption` varchar(100) DEFAULT NULL,
  `calendar_id` varchar(200) DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_ticketdepartments`
--

INSERT INTO `sys_ticketdepartments` (`id`, `dname`, `description`, `email`, `hidden`, `delete_after_import`, `host`, `port`, `username`, `password`, `encryption`, `calendar_id`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Sales', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL),
(2, 'Support', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL),
(3, 'Accounts', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL),
(4, 'Certification', NULL, 'papul.ward@gmail.com', 0, 0, '', '', 'papul.ward@gmail.com', '', 'no', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketmaillog`
--

CREATE TABLE `sys_ticketmaillog` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketpredefinedreplies`
--

CREATE TABLE `sys_ticketpredefinedreplies` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `attachments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketreplies`
--

CREATE TABLE `sys_ticketreplies` (
  `id` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `reply_type` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text DEFAULT NULL,
  `replied_by` varchar(200) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_ticketreplies`
--

INSERT INTO `sys_ticketreplies` (`id`, `tid`, `userid`, `account`, `reply_type`, `email`, `created_at`, `updated_at`, `message`, `replied_by`, `admin`, `attachments`, `client_read`, `admin_read`, `rating`) VALUES
(1, 1, 1, 'World Academy', 'public', '', '2022-01-04 10:11:51', '2022-01-04 10:11:51', '<p>testtt</p>', 'World Academy', '1', '', '', '', NULL),
(2, 2, 1, 'World Academy', 'public', '', '2022-02-03 21:29:55', '2022-02-03 21:29:55', '<p>adadada</p>', 'World Academy', '1', '_bdcc4121537185164390578910248070.jpeg', '', '', NULL),
(3, 6, 1, 'World Academy', 'public', '', '2022-02-05 10:52:54', '2022-02-05 10:52:54', '<p>received and done</p>', 'World Academy', '1', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_tickets`
--

CREATE TABLE `sys_tickets` (
  `id` int(11) NOT NULL,
  `tid` varchar(100) DEFAULT NULL,
  `did` int(10) DEFAULT NULL,
  `aid` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `lid` int(10) DEFAULT NULL,
  `oid` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `dname` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `cc` varchar(200) DEFAULT NULL,
  `bcc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `urgency` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `last_reply` varchar(100) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `escalated` int(1) DEFAULT NULL,
  `replying` int(1) DEFAULT NULL,
  `is_spam` int(1) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `ttype` varchar(100) DEFAULT NULL,
  `tstart` varchar(100) DEFAULT NULL,
  `tend` varchar(100) DEFAULT NULL,
  `ttotal` varchar(100) DEFAULT NULL,
  `todo` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text DEFAULT NULL,
  `end_user_id` int(10) UNSIGNED DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tickets`
--

INSERT INTO `sys_tickets` (`id`, `tid`, `did`, `aid`, `pid`, `sid`, `lid`, `oid`, `company_id`, `dname`, `userid`, `account`, `email`, `cc`, `bcc`, `created_at`, `updated_at`, `subject`, `message`, `status`, `urgency`, `admin`, `attachments`, `last_reply`, `flag`, `escalated`, `replying`, `is_spam`, `rating`, `client_read`, `admin_read`, `source`, `ttype`, `tstart`, `tend`, `ttotal`, `todo`, `tags`, `notes`, `c1`, `c2`, `c3`, `c4`, `c5`, `end_user_id`, `model`) VALUES
(1, 'VCR-10764369', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales', 1, 'Shabok', 'training.ward@wardbd.net', NULL, NULL, '2022-01-04 10:10:50', '2022-01-04 10:11:51', 'test', '<p>testtt</p>', 'Open', 'Medium', '0', '', 'Shabok', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(2, '0YI-70847667', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales', 1, 'Shabok', 'training.ward@wardbd.net', NULL, NULL, '2022-01-07 23:03:53', '2022-02-03 21:29:55', 'test', '<p>test</p>', 'Open', 'Medium', '1', '_0aca829c12543316415786101019353.docx', 'Shabok', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(3, 'AVI-57731172', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Sales', 1, 'Shabok', 'training.ward@wardbd.net', NULL, NULL, '2022-02-01 22:33:33', '2022-02-01 22:33:33', 'enrolment for ', '<p>test</p>', 'Open', 'Medium', '0', '_5812f92463736116437367591094689.xlsx', 'Shabok', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(4, 'ZZB-93056238', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Support', 1, 'Shabok', 'training.ward@wardbd.net', NULL, NULL, '2022-02-03 21:19:47', '2022-02-03 21:19:47', 'Test', '<p>this is test ticket</p>', 'Open', 'High', '0', '_84ddfb34351891164390517010839903.xls', 'Shabok', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(5, 'D4I-85586524', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Support', 1, 'Shabok', 'training.ward@wardbd.net', NULL, NULL, '2022-02-03 21:32:46', '2022-02-03 21:32:46', 'New Test Ticket', '<p>New Test Ticket</p>', 'Open', 'High', '0', '_fd1d83de622286164390593410994122.xlsx,_85353d3b057421164390596010929177.xlsx', 'Shabok', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(6, 'E8Q-47994306', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Certification', 1, 'Shabok', 'training.ward@wardbd.net', NULL, NULL, '2022-02-05 10:45:45', '2022-02-05 10:52:54', 'enrolment for ', '<p>pls find</p>', 'Closed', 'High', '0', '_f3f1b7fc598966164403993710485393.xlsx', 'Shabok', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '<p>test</p>', '', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_transactions`
--

CREATE TABLE `sys_transactions` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `sub_type` varchar(200) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `payer` varchar(200) DEFAULT NULL,
  `payee` varchar(200) DEFAULT NULL,
  `payerid` int(11) NOT NULL DEFAULT 0,
  `payeeid` int(11) NOT NULL DEFAULT 0,
  `method` varchar(200) DEFAULT NULL,
  `ref` varchar(200) DEFAULT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `cr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bal` decimal(18,2) NOT NULL DEFAULT 0.00,
  `iid` int(11) NOT NULL DEFAULT 0,
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `base_amount` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `vid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `attachments` text DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `flag` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_units`
--

CREATE TABLE `sys_units` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `conversion_factor` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL,
  `roleid` int(11) NOT NULL DEFAULT 0,
  `role` varchar(200) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `autologin` varchar(200) DEFAULT NULL,
  `at` varchar(200) DEFAULT NULL,
  `landing_page` varchar(200) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sms_notify` int(1) DEFAULT NULL,
  `email_notify` int(1) DEFAULT NULL,
  `slack_notify` int(1) DEFAULT NULL,
  `job_title` varchar(150) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(11) DEFAULT 0,
  `manager_id` int(11) DEFAULT 0,
  `pay_frequency` varchar(150) DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `employee_id` varchar(150) DEFAULT NULL,
  `legal_name_title` varchar(150) DEFAULT NULL,
  `legal_name_first` varchar(150) DEFAULT NULL,
  `legal_name_mi` varchar(150) DEFAULT NULL,
  `legal_name_last` varchar(150) DEFAULT NULL,
  `banking_name` varchar(150) DEFAULT NULL,
  `ssn` varchar(150) DEFAULT NULL,
  `gender` varchar(150) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(150) DEFAULT NULL,
  `ethnicity` varchar(150) DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT 1,
  `has_i9_form` varchar(150) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zip` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `work_phone` varchar(150) DEFAULT NULL,
  `work_mobile` varchar(150) DEFAULT NULL,
  `work_fax` varchar(150) DEFAULT NULL,
  `cc_email` varchar(150) DEFAULT NULL,
  `other` varchar(150) DEFAULT NULL,
  `emergency_contact_name_1` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_1` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_1` varchar(150) DEFAULT NULL,
  `emergency_contact_name_2` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_2` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_2` varchar(150) DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` varchar(150) DEFAULT NULL,
  `termination_reason` varchar(150) DEFAULT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `facebook` varchar(150) DEFAULT NULL,
  `google` varchar(150) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `skype` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `summary` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `fullname`, `phonenumber`, `password`, `user_type`, `status`, `last_login`, `email`, `creationdate`, `otp`, `pin_enabled`, `pin`, `img`, `api`, `pwresetkey`, `keyexpire`, `roleid`, `role`, `last_activity`, `autologin`, `at`, `landing_page`, `language`, `notes`, `created_at`, `updated_at`, `sms_notify`, `email_notify`, `slack_notify`, `job_title`, `date_hired`, `department_id`, `manager_id`, `pay_frequency`, `currency`, `amount`, `employee_id`, `legal_name_title`, `legal_name_first`, `legal_name_mi`, `legal_name_last`, `banking_name`, `ssn`, `gender`, `date_of_birth`, `marital_status`, `ethnicity`, `is_citizen`, `has_i9_form`, `work_authorization_expires`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `country`, `work_phone`, `work_mobile`, `work_fax`, `cc_email`, `other`, `emergency_contact_name_1`, `emergency_contact_phone_1`, `emergency_contact_relation_1`, `emergency_contact_name_2`, `emergency_contact_phone_2`, `emergency_contact_relation_2`, `last_day_worked`, `last_day_on_benefits`, `last_day_on_payroll`, `termination_type`, `termination_reason`, `is_recommended`, `is_active`, `facebook`, `google`, `linkedin`, `skype`, `twitter`, `summary`) VALUES
(1, 'info@worldacademy.org.uk', 'World Academy', '1753881177', '$2y$10$bGuAQ6NVj.hxMKUCdPSOOuuWtFLTxhG87MnfkuBLG6xSx8flVFaLK', 'Admin', 'Active', '2022-05-28 14:11:25', '', '2014-10-20 01:43:07', 'No', 'No', 'Y6AOTKNSQ5D7J4FU', 'storage/pics/croppedImg_30219156.png', 'No', '8963145407', '1642340485', 0, NULL, '2022-05-23 19:59:44', 'lsh558ftqdptpktfassy1', NULL, NULL, 'en', NULL, NULL, '2021-12-31 05:39:34', 1, 1, NULL, '', NULL, 0, 0, 'Monthly', 'GBP', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', '', '', 'United Kingdom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, ''),
(2, 'test1@worldacademy.org.uk', 'RUPAK ZAIDI', '01799985299', '$2y$10$EJfauYiXZHY.TtaajOOWguVF1bY5gnsgnj40bo3tGwfHGvGw124am', 'Employee', 'Active', '2022-02-05 05:24:07', '', '2021-12-31 11:25:26', 'No', 'No', '', '', 'No', '', '', 3, 'Employee', '2022-01-23 10:46:14', '', NULL, NULL, 'en', NULL, NULL, '2022-01-02 16:11:09', NULL, NULL, NULL, '', NULL, 0, 0, 'Monthly', 'GBP', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', '', '', 'United Kingdom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, ''),
(3, 'rupakzaidi@gmail.com', 'Azizan', '', '$2y$10$l80gzq4ts7KgE65GfDH7huYCYA41WzS9u2qoRJ9sJGuAIJc51Kb9e', 'Trainer', 'Active', '2022-02-07 03:55:27', '', '2022-01-07 04:13:59', 'No', 'No', '', '', 'No', '', '', 4, 'Trainer', '2022-02-07 03:55:27', 'liguroe35z58jojfzx203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'tanvir@worldacademy.org.uk', 'Tanvir Ahmed (WARD)', '+8801774877177', '$2y$10$kxpkA80RYQEkFSTXc.hGOOjxrXI923u9fmrWzMUf4e22fSVePh8ga', 'Employee', 'Active', '2022-04-13 09:18:57', '', '2022-01-08 12:19:21', 'No', 'No', '', '', 'No', '', '', 3, 'Employee', '2022-04-02 06:42:34', '', NULL, NULL, 'en', NULL, NULL, '2022-04-02 06:40:24', NULL, NULL, NULL, '', NULL, 0, 0, 'Monthly', 'USD', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', '', '', 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `type`, `name`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'client-auth-page-widget', 'Client auth page widget', '<h2 style=\"margin-left: 40px;\">Welcome to World Academy</h2><p><br></p><p style=\"margin-left: 40px;\">If you are an existing partner of World Academy, please log in to your dashboard. Use the user name and password as WARD communicated with you earlier</p>', 1, '2022-01-09 11:55:42', '2022-01-09 12:11:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_balances`
--
ALTER TABLE `account_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_notes`
--
ALTER TABLE `app_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_password_manager`
--
ALTER TABLE `app_password_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms`
--
ALTER TABLE `app_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms_drivers`
--
ALTER TABLE `app_sms_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms_templates`
--
ALTER TABLE `app_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automation_tasks`
--
ALTER TABLE `automation_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_integrations`
--
ALTER TABLE `clx_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_projects`
--
ALTER TABLE `clx_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_shared_preferences`
--
ALTER TABLE `clx_shared_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_groups`
--
ALTER TABLE `crm_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_industries`
--
ALTER TABLE `crm_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_leads`
--
ALTER TABLE `crm_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `end_users`
--
ALTER TABLE `end_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_assets`
--
ALTER TABLE `ib_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb`
--
ALTER TABLE `ib_kb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_groups`
--
ALTER TABLE `ib_kb_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_rel`
--
ALTER TABLE `ib_kb_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_replies`
--
ALTER TABLE `ib_kb_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads_groups`
--
ALTER TABLE `leads_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_forms`
--
ALTER TABLE `lead_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_urls`
--
ALTER TABLE `short_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_url_accesses`
--
ALTER TABLE `short_url_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_activity`
--
ALTER TABLE `sys_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_api`
--
ALTER TABLE `sys_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_canned_responses`
--
ALTER TABLE `sys_canned_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cart`
--
ALTER TABLE `sys_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cats`
--
ALTER TABLE `sys_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_companies`
--
ALTER TABLE `sys_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_documents`
--
ALTER TABLE `sys_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `tplname` (`tplname`(32));

--
-- Indexes for table `sys_events`
--
ALTER TABLE `sys_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`(3));

--
-- Indexes for table `sys_items`
--
ALTER TABLE `sys_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_leads`
--
ALTER TABLE `sys_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_orders`
--
ALTER TABLE `sys_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pg`
--
ALTER TABLE `sys_pg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_setting` (`name`(32),`processor`(32)),
  ADD KEY `setting_value` (`processor`(32),`ins`(32));

--
-- Indexes for table `sys_pl`
--
ALTER TABLE `sys_pl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_purchaseitems`
--
ALTER TABLE `sys_purchaseitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_purchases`
--
ALTER TABLE `sys_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sales`
--
ALTER TABLE `sys_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_status`
--
ALTER TABLE `sys_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tags`
--
ALTER TABLE `sys_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tax`
--
ALTER TABLE `sys_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_country` (`state`(32),`country`(2));

--
-- Indexes for table `sys_ticketdepartments`
--
ALTER TABLE `sys_ticketdepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketmaillog`
--
ALTER TABLE `sys_ticketmaillog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketpredefinedreplies`
--
ALTER TABLE `sys_ticketpredefinedreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketreplies`
--
ALTER TABLE `sys_ticketreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_units`
--
ALTER TABLE `sys_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_balances`
--
ALTER TABLE `account_balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_notes`
--
ALTER TABLE `app_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_password_manager`
--
ALTER TABLE `app_password_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_sms`
--
ALTER TABLE `app_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app_sms_drivers`
--
ALTER TABLE `app_sms_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `app_sms_templates`
--
ALTER TABLE `app_sms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `automation_tasks`
--
ALTER TABLE `automation_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clx_integrations`
--
ALTER TABLE `clx_integrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clx_projects`
--
ALTER TABLE `clx_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clx_shared_preferences`
--
ALTER TABLE `clx_shared_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_groups`
--
ALTER TABLE `crm_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `crm_industries`
--
ALTER TABLE `crm_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `crm_leads`
--
ALTER TABLE `crm_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `end_users`
--
ALTER TABLE `end_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_assets`
--
ALTER TABLE `ib_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=643;

--
-- AUTO_INCREMENT for table `ib_kb`
--
ALTER TABLE `ib_kb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_kb_groups`
--
ALTER TABLE `ib_kb_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_kb_rel`
--
ALTER TABLE `ib_kb_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb_replies`
--
ALTER TABLE `ib_kb_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads_groups`
--
ALTER TABLE `leads_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_forms`
--
ALTER TABLE `lead_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `short_urls`
--
ALTER TABLE `short_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `short_url_accesses`
--
ALTER TABLE `short_url_accesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_activity`
--
ALTER TABLE `sys_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_api`
--
ALTER TABLE `sys_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `sys_canned_responses`
--
ALTER TABLE `sys_canned_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_cart`
--
ALTER TABLE `sys_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_cats`
--
ALTER TABLE `sys_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `sys_companies`
--
ALTER TABLE `sys_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_documents`
--
ALTER TABLE `sys_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sys_events`
--
ALTER TABLE `sys_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `sys_items`
--
ALTER TABLE `sys_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_leads`
--
ALTER TABLE `sys_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_logs`
--
ALTER TABLE `sys_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `sys_orders`
--
ALTER TABLE `sys_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sys_pg`
--
ALTER TABLE `sys_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_pl`
--
ALTER TABLE `sys_pl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sys_purchaseitems`
--
ALTER TABLE `sys_purchaseitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sys_purchases`
--
ALTER TABLE `sys_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_sales`
--
ALTER TABLE `sys_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `sys_status`
--
ALTER TABLE `sys_status`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_tags`
--
ALTER TABLE `sys_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_tax`
--
ALTER TABLE `sys_tax`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_ticketdepartments`
--
ALTER TABLE `sys_ticketdepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_ticketmaillog`
--
ALTER TABLE `sys_ticketmaillog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_ticketpredefinedreplies`
--
ALTER TABLE `sys_ticketpredefinedreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_ticketreplies`
--
ALTER TABLE `sys_ticketreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_units`
--
ALTER TABLE `sys_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
