-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2018 at 04:15 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muvidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `studio_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `outsource_plan_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `studio_payment_gateway_id` int(11) DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '153',
  `amount` double DEFAULT NULL,
  `discount_amount` double(6,2) NOT NULL,
  `payment_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `payment_status` tinyint(3) NOT NULL DEFAULT '0',
  `partial_failed_date` datetime DEFAULT NULL,
  `partial_failed_due` double(6,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active, 0:Inactive',
  `is_success` tinyint(4) NOT NULL DEFAULT '0',
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_discount` tinyint(4) NOT NULL COMMENT '0: No, 1: Yes',
  `is_renewal` tinyint(4) NOT NULL DEFAULT '1',
  `payment_number` int(11) NOT NULL DEFAULT '1',
  `count_discount` tinyint(4) NOT NULL,
  `is_3rd_party_coupon` tinyint(4) NOT NULL DEFAULT '0',
  `cancel_date` datetime DEFAULT NULL,
  `profile_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancel_reason_id` int(11) DEFAULT NULL,
  `cancel_note` text COLLATE utf8_unicode_ci,
  `canceled_by` int(11) NOT NULL,
  `ip` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_date` datetime DEFAULT NULL,
  `is_subscription_bundle` int(2) NOT NULL DEFAULT '0',
  `device_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Web, 2: Android, 3: iOS, 4: Roku',
  `is_carrier_billing` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `studio_id`, `plan_id`, `outsource_plan_id`, `card_id`, `studio_payment_gateway_id`, `currency_id`, `amount`, `discount_amount`, `payment_key`, `start_date`, `end_date`, `payment_status`, `partial_failed_date`, `partial_failed_due`, `status`, `is_success`, `coupon_code`, `use_discount`, `is_renewal`, `payment_number`, `count_discount`, `is_3rd_party_coupon`, `cancel_date`, `profile_id`, `cancel_reason_id`, `cancel_note`, `canceled_by`, `ip`, `created_by`, `created_date`, `last_updated_by`, `last_updated_date`, `is_subscription_bundle`, `device_type`, `is_carrier_billing`) VALUES
(2437, 29243, 2782, 293, NULL, 113, 137, 47, 4.99, 0.00, '', '2017-07-21 12:30:03', '2017-08-20 12:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstDnrxjf8TN7R', NULL, NULL, 0, NULL, 29243, '2017-06-21 11:55:39', NULL, NULL, 0, 0, 0),
(2438, 29244, 2782, 293, NULL, 114, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:07', '2017-08-20 13:00:07', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstOCcbs7wk83g', NULL, NULL, 0, NULL, 29244, '2017-06-21 12:07:03', NULL, NULL, 0, 0, 0),
(2439, 29245, 2782, 293, NULL, 115, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:08', '2017-08-20 13:00:08', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstRwlaFGSd7HG', NULL, NULL, 0, NULL, 29245, '2017-06-21 12:09:25', NULL, NULL, 0, 0, 0),
(2440, 29247, 2782, 293, NULL, 116, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:10', '2017-08-20 13:00:10', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstabBnOU9FF9u', NULL, NULL, 0, NULL, 29247, '2017-06-21 12:19:06', NULL, NULL, 0, 0, 0),
(2441, 29248, 2782, 294, NULL, 117, 137, 47, 14, 0.00, '', '2017-09-28 00:30:06', '2017-12-27 00:30:06', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstcgAXw1sWMOg', NULL, NULL, 0, NULL, 29248, '2017-06-21 12:20:32', NULL, NULL, 0, 0, 0),
(2442, 29249, 2782, 293, NULL, 118, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:11', '2017-08-20 13:00:11', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AsthaUGWQ93qH8', NULL, NULL, 0, NULL, 29249, '2017-06-21 12:25:39', NULL, NULL, 0, 0, 0),
(2444, 29166, 2782, 293, NULL, 120, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:05', '2017-08-20 13:00:05', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstmF4T3T4t2ce', NULL, NULL, 0, NULL, 29166, '2017-06-21 12:31:09', NULL, NULL, 0, 0, 0),
(2445, 29251, 2782, 295, NULL, 121, 137, 47, 45, 0.00, NULL, '2017-07-05 18:31:34', '2018-07-05 18:31:34', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstnUteF3BDcz3', NULL, NULL, 0, NULL, 29251, '2017-06-21 12:31:34', NULL, NULL, 0, 0, 0),
(2446, 29252, 2782, 293, NULL, 123, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:13', '2017-08-20 13:00:13', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AstzJlEg7a6Usq', NULL, NULL, 0, NULL, 29252, '2017-06-21 12:43:53', NULL, NULL, 0, 0, 0),
(2447, 29253, 2782, 293, NULL, 124, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:14', '2017-08-20 13:00:14', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Asu4EbV0XEmCT2', NULL, NULL, 0, NULL, 29253, '2017-06-21 12:48:25', NULL, NULL, 0, 0, 0),
(2448, 29187, 2782, 293, NULL, 125, 137, 47, 4.99, 0.00, '', '2017-07-21 13:00:06', '2017-08-20 13:00:06', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Asu802t5MjLbCy', NULL, NULL, 0, NULL, 29187, '2017-06-21 12:52:49', NULL, NULL, 0, 0, 0),
(2449, 29258, 2782, 293, NULL, 126, 137, 47, 4.99, 0.00, '', '2017-07-21 14:30:03', '2017-08-20 14:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AsuWyBoF1fOdwb', NULL, NULL, 0, NULL, 29258, '2017-06-21 13:16:49', NULL, NULL, 0, 0, 0),
(2450, 29261, 2782, 293, NULL, 127, 137, 47, 4.99, 0.00, '', '2017-07-21 14:30:04', '2017-08-20 14:30:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AsuabtTsJFRA1D', NULL, NULL, 0, NULL, 29261, '2017-06-21 13:20:29', NULL, NULL, 0, 0, 0),
(2451, 29263, 2782, 293, NULL, 128, 137, 47, 4.99, 0.00, '', '2017-07-21 14:30:06', '2017-08-20 14:30:06', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Asuw8NzIyvL7or', NULL, NULL, 0, NULL, 29263, '2017-06-21 13:43:20', NULL, NULL, 0, 0, 0),
(2452, 29266, 2782, 293, NULL, 129, 137, 47, 4.99, 0.00, '', '2017-07-21 14:30:07', '2017-08-20 14:30:07', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AsvDzex6esjoiU', NULL, NULL, 0, NULL, 29266, '2017-06-21 13:59:36', NULL, NULL, 0, 0, 0),
(2453, 29268, 2782, 293, NULL, 130, 137, 47, 4.99, 0.00, '', '2017-07-21 15:30:03', '2017-08-20 15:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AsvIW17GSNMEKQ', NULL, NULL, 0, NULL, 29268, '2017-06-21 14:04:31', NULL, NULL, 0, 0, 0),
(2455, 29275, 2782, 293, NULL, 132, 137, 47, 4.99, 0.00, '', '2017-07-22 06:30:03', '2017-08-21 06:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtADNCyqir3xbz', NULL, NULL, 0, NULL, 29275, '2017-06-22 05:30:06', NULL, NULL, 0, 0, 0),
(2456, 29276, 2782, 293, NULL, 133, 137, 47, 4.99, 0.00, '', '2017-07-22 07:00:02', '2017-08-21 07:00:02', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtB4s32jx9oWl6', NULL, NULL, 0, NULL, 29276, '2017-06-22 06:23:19', NULL, NULL, 0, 0, 0),
(2457, 29277, 2782, 293, NULL, 134, 137, 47, 4.99, 0.00, '', '2017-07-22 07:00:04', '2017-08-21 07:00:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtBLj7LzvCmFKw', NULL, NULL, 0, NULL, 29277, '2017-06-22 06:40:12', NULL, NULL, 0, 0, 0),
(2458, 29281, 2782, 293, NULL, 135, 137, 47, 4.99, 0.00, '', '2017-07-22 08:30:03', '2017-08-21 08:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtCFPQL5AOIBqL', NULL, NULL, 0, NULL, 29281, '2017-06-22 07:36:05', NULL, NULL, 0, 0, 0),
(2459, 29282, 2782, 293, NULL, 136, 137, 47, 4.99, 0.00, NULL, '2017-07-22 07:37:30', '2017-08-21 07:37:30', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtCGVV1t7G5UBx', NULL, NULL, 0, '81.36.132.45', 29282, '2017-06-22 07:37:30', NULL, NULL, 0, 0, 0),
(2460, 29283, 2782, 293, NULL, 137, 137, 47, 4.99, 0.00, '', '2017-07-22 08:30:04', '2017-08-21 08:30:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtCa7ca0sfslnG', NULL, NULL, 0, NULL, 29283, '2017-06-22 07:56:58', NULL, NULL, 0, 0, 0),
(2461, 29283, 2782, 293, NULL, 138, 137, 47, 4.99, 0.00, '', '2017-07-22 09:00:03', '2017-08-21 09:00:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtCrkuAvX42lfb', NULL, NULL, 0, NULL, 29283, '2017-06-22 08:13:59', NULL, NULL, 0, 0, 0),
(2462, 29308, 2782, 293, NULL, 142, 137, 47, 4.99, 0.00, '', '2017-07-23 10:30:03', '2017-08-22 10:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtbW6crtLzl00i', NULL, NULL, 0, NULL, 29308, '2017-06-23 09:43:15', NULL, NULL, 0, 0, 0),
(2463, 29307, 2782, 293, NULL, 143, 137, 47, 4.99, 0.00, '', '2017-07-23 11:00:07', '2017-08-22 11:00:07', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Atbw3IyqCyiitr', NULL, NULL, 0, NULL, 29307, '2017-06-23 10:08:35', NULL, NULL, 0, 0, 0),
(2464, 29309, 2782, 293, NULL, 144, 137, 47, 4.99, 0.00, '', '2017-07-23 11:00:09', '2017-08-22 11:00:09', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Atc5B388WSWdgh', NULL, NULL, 0, NULL, 29309, '2017-06-23 10:17:24', NULL, NULL, 0, 0, 0),
(2465, 29311, 2782, 293, NULL, 145, 137, 47, 4.99, 0.00, '', '2017-07-23 11:00:16', '2017-08-22 11:00:16', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtcPcyvPz8waQL', NULL, NULL, 0, NULL, 29311, '2017-06-23 10:37:47', NULL, NULL, 0, 0, 0),
(2466, 29313, 2782, 293, NULL, 146, 137, 47, 4.99, 0.00, '', '2017-07-23 12:30:03', '2017-08-22 12:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtdHNboNfPMgoP', NULL, NULL, 0, NULL, 29313, '2017-06-23 11:32:14', NULL, NULL, 0, 0, 0),
(2467, 29317, 2782, 293, NULL, 147, 137, 47, 4.99, 0.00, '', '2017-07-23 14:00:06', '2017-08-22 14:00:06', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AtfKzJXUdjSqhg', NULL, NULL, 0, NULL, 29317, '2017-06-23 13:39:21', NULL, NULL, 0, 0, 0),
(2468, 29332, 2782, 293, NULL, 148, 137, 47, 4.99, 0.00, '', '2017-07-26 09:30:03', '2017-08-25 09:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Aui2nZwLixwMCJ', NULL, NULL, 0, NULL, 29332, '2017-06-26 08:30:45', NULL, NULL, 0, 0, 0),
(2469, 29334, 2782, 293, NULL, 149, 137, 47, 4.99, 0.00, '', '2017-07-26 12:00:17', '2017-08-25 12:00:17', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AukjCkAS3R05n5', NULL, NULL, 0, NULL, 29334, '2017-06-26 11:17:53', NULL, NULL, 0, 0, 0),
(2470, 29339, 2782, 293, NULL, 150, 137, 47, 4.99, 0.00, '', '2017-07-26 14:30:03', '2017-08-25 14:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Auma8ZJWJpo2zO', NULL, NULL, 0, NULL, 29339, '2017-06-26 13:13:14', NULL, NULL, 0, 0, 0),
(2471, 29378, 2782, 293, NULL, 153, 137, 47, 4.99, 0.00, NULL, '2017-07-27 15:39:48', '2017-08-26 15:39:48', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvCBV1eE3sJRL7', NULL, NULL, 0, '81.43.66.168', 29378, '2017-06-27 15:39:48', NULL, NULL, 0, 0, 0),
(2472, 29403, 2782, 293, NULL, 154, 137, 47, 4.99, 0.00, '', '2017-07-28 07:00:04', '2017-08-27 07:00:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvQ7vdic71xn7G', NULL, NULL, 0, NULL, 29403, '2017-06-28 06:03:40', NULL, NULL, 0, 0, 0),
(2474, 29415, 2782, 293, NULL, 157, 137, 47, 4.99, 0.00, '', '2017-07-28 12:30:03', '2017-08-27 12:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvVGeMxrsjH6cJ', NULL, NULL, 0, NULL, 29415, '2017-06-28 11:23:10', NULL, NULL, 0, 0, 0),
(2475, 29417, 2782, 293, NULL, 159, 137, 47, 4.99, 0.00, '', '2017-07-28 12:30:04', '2017-08-27 12:30:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvVUmKhlScVnxi', NULL, NULL, 0, NULL, 29417, '2017-06-28 11:37:09', NULL, NULL, 0, 0, 0),
(2476, 29417, 2782, 293, NULL, 160, 137, 47, 4.99, 0.00, '', '2017-07-28 13:30:03', '2017-08-27 13:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvVWbR23b1kT2i', NULL, NULL, 0, NULL, 29417, '2017-06-28 11:39:13', NULL, NULL, 0, 0, 0),
(2477, 29420, 2782, 293, NULL, 162, 137, 47, 4.99, 0.00, NULL, '2017-07-28 12:03:03', '2017-08-27 12:03:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvVudAVazg9P7i', NULL, NULL, 0, '103.39.240.192', 29420, '2017-06-28 12:03:03', NULL, NULL, 0, 0, 0),
(2478, 29417, 2782, 293, NULL, 163, 137, 47, 4.99, 0.00, '', '2017-07-28 14:30:03', '2017-08-27 14:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvWIfNm03VN7eb', NULL, NULL, 0, NULL, 29417, '2017-06-28 12:27:10', NULL, NULL, 0, 0, 0),
(2479, 29424, 2782, 293, NULL, 164, 137, 47, 4.99, 0.00, '', '2017-07-28 13:30:04', '2017-08-27 13:30:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvWLBpBNHdDLxj', NULL, NULL, 0, NULL, 29424, '2017-06-28 12:29:46', NULL, NULL, 0, 0, 0),
(2480, 29425, 2782, 293, NULL, 165, 137, 47, 4.99, 0.00, '', '2017-07-28 13:30:05', '2017-08-27 13:30:05', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvWN5JA1vOACZe', NULL, NULL, 0, NULL, 29425, '2017-06-28 12:32:14', NULL, NULL, 0, 0, 0),
(2481, 29427, 2782, 293, NULL, 166, 137, 47, 4.99, 0.00, '', '2017-07-28 14:30:04', '2017-08-27 14:30:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvWrF9kNnjr5fY', NULL, NULL, 0, NULL, 29427, '2017-06-28 13:01:22', NULL, NULL, 0, 0, 0),
(2482, 29428, 2782, 293, NULL, 167, 137, 47, 4.99, 0.00, '', '2017-07-28 14:30:06', '2017-08-27 14:30:06', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvWxw2YdDIQF32', NULL, NULL, 0, NULL, 29428, '2017-06-28 13:07:58', NULL, NULL, 0, 0, 0),
(2483, 29429, 2782, 293, NULL, 168, 137, 47, 4.99, 0.00, '', '2017-07-28 14:30:07', '2017-08-27 14:30:07', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvXMPpsXPErBr6', NULL, NULL, 0, NULL, 29429, '2017-06-28 13:32:32', NULL, NULL, 0, 0, 0),
(2484, 29429, 2782, 293, NULL, 169, 137, 47, 4.99, 0.00, '', '2017-07-28 15:30:03', '2017-08-27 15:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvXN86rzd116nl', NULL, NULL, 0, NULL, 29429, '2017-06-28 13:33:42', NULL, NULL, 0, 0, 0),
(2485, 29416, 2782, 294, NULL, 170, 137, 47, 14, 0.00, NULL, '2017-07-05 19:45:54', '2017-10-05 19:45:54', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AvXZRX05CfENgn', NULL, NULL, 0, NULL, 29416, '2017-06-28 13:45:54', NULL, NULL, 0, 0, 0),
(2488, 29594, 2782, 293, NULL, 173, 137, 47, 4.99, 0.00, '', '2017-08-03 08:00:03', '2017-09-02 08:00:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AxJzTgYkSRrKzc', NULL, NULL, 0, NULL, 29594, '2017-07-03 07:52:15', NULL, NULL, 0, 0, 0),
(2489, 29599, 2782, 293, NULL, 174, 137, 47, 4.99, 0.00, '', '2017-08-03 10:30:03', '2017-09-02 10:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AxLuRhYhIOtcyn', NULL, NULL, 0, NULL, 29599, '2017-07-03 09:50:55', NULL, NULL, 0, 0, 0),
(2490, 29620, 2782, 293, NULL, 175, 137, 47, 4.99, 0.00, '', '2017-08-04 05:30:03', '2017-09-03 05:30:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AxeALIeNaTrn7x', NULL, NULL, 0, NULL, 29620, '2017-07-04 04:42:26', NULL, NULL, 0, 0, 0),
(2491, 29621, 2782, 294, NULL, 176, 137, 47, 14, 0.00, NULL, '2017-07-11 11:21:04', '2017-10-11 11:21:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Axem6hESEK8SRY', NULL, NULL, 0, NULL, 29621, '2017-07-04 05:21:04', NULL, NULL, 0, 0, 0),
(2492, 29623, 2782, 294, NULL, 177, 137, 47, 14, 0.00, NULL, '2017-07-11 12:26:58', '2017-10-11 12:26:58', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Axfq24mNFt2ZC4', NULL, NULL, 0, NULL, 29623, '2017-07-04 06:26:58', NULL, NULL, 0, 0, 0),
(2493, 29624, 2782, 293, NULL, 178, 137, 47, 4.99, 0.00, '', '2017-08-04 07:00:03', '2017-09-03 07:00:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_AxgM93QTqllTC3', NULL, NULL, 0, NULL, 29624, '2017-07-04 06:58:53', NULL, NULL, 0, 0, 0),
(2494, 29625, 2782, 293, NULL, 179, 137, 47, 4.99, 0.00, '', '2017-08-04 08:00:03', '2017-09-03 08:00:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Axgdseo72Lx655', NULL, NULL, 0, NULL, 29625, '2017-07-04 07:15:31', NULL, NULL, 0, 0, 0),
(2495, 31736, 3067, 297, NULL, 212, 146, 47, 40, 0.00, NULL, '2017-09-04 06:02:33', '2017-10-03 06:02:33', 0, '0000-00-00 00:00:00', 0.00, 0, 1, '', 0, 1, 1, 0, 0, '2017-08-04 06:04:06', 'cus_B9HSmj1NQUmo7s', 4968, 'No Longer Required', 31736, '111.93.166.194', 31736, '2017-08-04 06:02:33', NULL, NULL, 1, 1, 0),
(2496, 31736, 3067, 297, NULL, 213, 146, 47, 40, 0.00, NULL, '2017-09-04 06:05:48', '2017-10-03 06:05:48', 0, NULL, 0.00, 1, 0, '', 0, 1, 1, 0, 0, NULL, 'cus_B9HVu0xWJMNHBf', NULL, NULL, 0, '111.93.166.194', 31736, '2017-08-04 06:05:48', NULL, NULL, 1, 1, 0),
(2497, 31737, 3067, 296, NULL, 214, 146, 47, 30, 0.00, '', '2017-09-11 00:30:04', '2017-10-10 00:30:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_B9HXW8ZErdhqU1', NULL, NULL, 0, '111.93.166.194', 31737, '2017-08-04 06:08:21', NULL, NULL, 1, 1, 0),
(2498, 31736, 3067, 296, NULL, 213, 146, 47, 30, 0.00, '', '2017-09-11 00:00:19', '2017-10-10 00:00:19', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_B9HVu0xWJMNHBf', NULL, NULL, 0, '111.93.166.194', 31736, '2017-08-04 06:11:47', NULL, NULL, 1, 1, 0),
(2499, 31736, 3067, 299, NULL, 213, 146, 47, 55, 0.00, NULL, '2017-09-04 06:13:53', '2017-10-03 06:13:53', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_B9HVu0xWJMNHBf', NULL, NULL, 0, '111.93.166.194', 31736, '2017-08-04 06:13:54', NULL, NULL, 0, 1, 0),
(2500, 31738, 3067, 297, NULL, 215, 146, 47, 40, 0.00, '', '2017-09-04 06:26:32', '2017-10-03 06:26:32', 0, '0000-00-00 00:00:00', 0.00, 0, 1, '', 0, 1, 1, 1, 0, '2017-08-04 06:38:44', 'cus_B9Hg7meuzzqKcl', 4968, 'No Longer requir-ed', 31738, '111.93.166.194', 31738, '2017-08-04 06:17:09', NULL, NULL, 1, 1, 0),
(2501, 31738, 3067, 296, NULL, 215, 146, 47, 20, 0.00, NULL, '2017-08-05 06:36:35', '2017-09-05 06:36:35', 0, NULL, 0.00, 1, 1, 'Z0O9YYC8', 0, 1, 1, 0, 0, NULL, 'cus_B9Hg7meuzzqKcl', NULL, NULL, 0, '111.93.166.194', 31738, '2017-08-04 06:36:36', NULL, NULL, 1, 1, 0),
(2502, 31738, 3067, 297, NULL, 216, 146, 47, 38, 0.00, NULL, '2017-08-05 06:43:48', '2017-09-05 06:43:48', 0, NULL, 0.00, 1, 1, 'NNFWG349', 0, 1, 1, 0, 0, NULL, 'cus_B9I7Ly2VNq0ZMn', NULL, NULL, 0, '111.93.166.194', 31738, '2017-08-04 06:43:49', NULL, NULL, 1, 1, 0),
(2503, 31739, 3067, 297, NULL, 217, 146, 47, 40, 0.00, NULL, '2017-09-04 06:48:16', '2017-10-03 06:48:16', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_B9IBFGY55SSayX', NULL, NULL, 0, '111.93.166.194', 31739, '2017-08-04 06:48:16', NULL, NULL, 1, 1, 0),
(2504, 31740, 3067, 297, NULL, 218, 146, 47, 40, 0.00, NULL, '2017-09-04 07:27:52', '2017-10-03 07:27:52', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_B9Ip5EyZurw8Am', NULL, NULL, 0, '111.93.166.194', 31740, '2017-08-04 07:27:52', NULL, NULL, 1, 1, 0),
(2505, 31741, 3067, 297, NULL, 219, 146, 47, 40, 0.00, NULL, '2017-09-04 08:59:07', '2017-10-03 08:59:07', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_B9KIZWouWbXe9S', NULL, NULL, 0, '111.93.166.194', 31741, '2017-08-04 08:59:07', NULL, NULL, 1, 1, 0),
(2506, 31884, 3067, 297, NULL, 229, 146, 47, 40, 30.00, '', '2017-09-10 11:00:04', '2017-10-09 11:00:04', 0, NULL, 0.00, 1, 1, 'TESTCOUPONNEW', 1, 1, 1, 0, 0, NULL, 'cus_BBa6yRtIXjRmSO', NULL, NULL, 0, '111.93.166.194', 31884, '2017-08-10 09:26:33', NULL, NULL, 1, 1, 0),
(2507, 31885, 3067, 297, NULL, 230, 146, 47, 40, 0.00, '', '2017-09-10 11:20:32', '2017-10-09 11:20:32', 0, NULL, 0.00, 1, 1, 'TESTCOUPONNEW', 0, 1, 1, 2, 0, NULL, 'cus_BBa9NxZJy8f146', NULL, NULL, 0, '111.93.166.194', 31885, '2017-08-10 09:30:05', NULL, NULL, 1, 1, 0),
(2510, 32309, 3067, 296, NULL, 240, 146, 47, 30, 0.00, '', '2017-10-25 00:30:03', '2017-11-24 00:30:03', 0, NULL, 0.00, 1, 1, '7I5LE2VH', 0, 1, 1, 1, 0, NULL, 'cus_BEaD0nW21Lzooh', NULL, NULL, 0, '111.93.166.194', 32309, '2017-08-18 09:45:54', NULL, NULL, 0, 1, 0),
(2511, 32310, 3067, 297, NULL, 241, 146, 47, 40, 0.00, NULL, '2017-09-01 09:50:00', '2017-12-01 09:50:00', 0, NULL, 0.00, 1, 1, '6R5WRWJ9', 1, 1, 1, 0, 0, NULL, 'cus_BEaH20ruOnXvLQ', NULL, NULL, 0, '111.93.166.194', 32310, '2017-08-18 09:50:00', NULL, NULL, 0, 1, 0),
(2512, 32313, 3067, 296, NULL, 242, 146, 47, 30, 0.00, '', '2017-09-28 00:30:03', '2017-10-27 00:30:03', 0, NULL, 0.00, 1, 1, 'KWK87RS7', 1, 1, 1, 0, 0, NULL, 'cus_BEareXBht72dCw', NULL, NULL, 0, '111.93.166.194', 32313, '2017-08-18 10:26:25', NULL, NULL, 0, 1, 0),
(2513, 32314, 3067, 298, NULL, 243, 146, 47, 60, 10.00, '', '2018-02-28 00:30:04', '2018-08-27 00:30:04', 0, NULL, 0.00, 1, 1, 'KWK87RS7', 1, 1, 1, 0, 0, NULL, 'cus_BEazbLOwruG5Sk', NULL, NULL, 0, '111.93.166.194', 32314, '2017-08-18 10:34:01', NULL, NULL, 0, 1, 0),
(2514, 32450, 3067, 296, NULL, 245, 146, 47, 30, 0.00, '', '2017-10-22 00:30:03', '2017-11-21 00:30:03', 0, NULL, 0.00, 1, 1, 'M310QMUN', 0, 1, 1, 1, 0, NULL, 'cus_BG4XQcI88wdz5g', NULL, NULL, 0, '111.93.166.194', 32450, '2017-08-22 09:09:38', NULL, NULL, 0, 1, 0),
(2515, 32451, 3067, 296, NULL, 246, 146, 47, 30, 0.00, '', '2017-10-22 00:30:05', '2017-11-21 00:30:05', 0, NULL, 0.00, 1, 1, 'W1DGH40Z', 0, 1, 1, 1, 0, NULL, 'cus_BG4edZpSXoVg6N', NULL, NULL, 0, '111.93.166.194', 32451, '2017-08-22 09:17:14', NULL, NULL, 0, 1, 0),
(2516, 32452, 3067, 296, NULL, 247, 146, 47, 30, 0.00, '', '2017-09-29 00:30:03', '2017-10-28 00:30:03', 0, NULL, 0.00, 1, 1, 'GG7UIY56', 1, 1, 1, 0, 0, NULL, 'cus_BG4mUMfgY157u2', NULL, NULL, 0, '111.93.166.194', 32452, '2017-08-22 09:25:09', NULL, NULL, 0, 1, 0),
(2517, 32455, 3067, 296, NULL, 248, 146, 47, 30, 0.00, NULL, '2017-09-01 09:37:03', '2017-10-01 09:37:03', 0, NULL, 0.00, 1, 1, 'U4M8CD3F', 1, 1, 1, 0, 0, NULL, 'cus_BG4yTQjxzCmYpi', NULL, NULL, 0, '111.93.166.194', 32455, '2017-08-22 09:37:03', NULL, NULL, 0, 1, 0),
(2518, 32456, 3067, 296, NULL, 249, 146, 47, 30, 0.00, NULL, '2017-09-01 09:43:16', '2017-10-01 09:43:16', 0, NULL, 0.00, 1, 1, 'U4M8CD3F', 1, 1, 1, 0, 0, NULL, 'cus_BG546JKDlZhTST', NULL, NULL, 0, '111.93.166.194', 32456, '2017-08-22 09:43:16', NULL, NULL, 0, 1, 0),
(2519, 32463, 3067, 297, NULL, 250, 146, 47, 40, 0.00, NULL, '2017-11-22 10:10:38', '2018-02-21 10:10:38', 0, NULL, 0.00, 1, 1, 'GG7UIY56', 0, 1, 1, 0, 0, NULL, 'cus_BG5WQ7xN5duYjd', NULL, NULL, 0, '111.93.166.194', 32463, '2017-08-22 10:10:38', NULL, NULL, 0, 1, 0),
(2520, 32465, 3067, 297, NULL, 251, 146, 47, 40, 0.00, NULL, '2017-09-01 10:14:28', '2017-12-01 10:14:28', 0, NULL, 0.00, 1, 1, 'U4M8CD3F', 1, 1, 1, 0, 0, NULL, 'cus_BG5aaUte6PkqSt', NULL, NULL, 0, '111.93.166.194', 32465, '2017-08-22 10:14:28', NULL, NULL, 0, 1, 0),
(2522, 32467, 3067, 296, NULL, 253, 146, 47, 30, 0.00, '', '2017-09-29 00:30:05', '2017-10-28 00:30:05', 0, NULL, 0.00, 1, 1, 'GG7UIY56', 1, 1, 1, 0, 0, NULL, 'cus_BG5gBb1jqcj38t', NULL, NULL, 0, '111.93.166.194', 32467, '2017-08-22 10:20:37', NULL, NULL, 0, 1, 0),
(2525, 32470, 3067, 296, NULL, 256, 146, 47, 30, 0.00, NULL, '2017-09-01 10:23:37', '2017-10-01 10:23:37', 0, NULL, 0.00, 1, 1, 'U4M8CD3F', 1, 1, 1, 0, 0, NULL, 'cus_BG5jNB9F4BF2cF', NULL, NULL, 0, '111.93.166.194', 32470, '2017-08-22 10:23:37', NULL, NULL, 0, 1, 0),
(2530, 32535, 3067, 296, NULL, 262, 146, 47, 30, 0.00, NULL, '2017-08-31 12:28:35', '2017-10-01 12:28:35', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_BGsCla4oNXVyvc', NULL, NULL, 0, '111.93.166.194', 32535, '2017-08-24 12:28:35', NULL, NULL, 0, 1, 0),
(2531, 32550, 3067, 300, NULL, 263, 146, 47, 20, 0.00, '', '2017-10-25 00:30:04', '2017-11-24 00:30:04', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 1, 0, NULL, 'cus_BH91LBwsqQi9rK', NULL, NULL, 0, '111.93.166.194', 32550, '2017-08-25 05:52:09', NULL, NULL, 1, 1, 0),
(2533, 32552, 3067, 296, NULL, 265, 146, 47, 30, 0.00, NULL, '2017-09-01 06:04:16', '2017-10-01 06:04:16', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_BH9DVupUV3lfzo', NULL, NULL, 0, '111.93.166.194', 32552, '2017-08-25 06:04:17', NULL, NULL, 0, 1, 0),
(2536, 32672, 3067, 296, NULL, 268, 146, 68, 200, 0.00, NULL, '2017-09-05 06:01:59', '2017-10-05 06:01:59', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_BIe5rNL3GfYEtG', NULL, NULL, 0, '103.92.45.177', 32672, '2017-08-29 06:01:59', NULL, NULL, 0, 1, 0),
(2537, 32674, 3067, 297, NULL, 269, 146, 68, 600, 0.00, NULL, '2017-11-29 06:17:43', '2018-02-28 06:17:43', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_BIeLVgoYGjyu6k', NULL, NULL, 0, '103.92.45.177', 32674, '2017-08-29 06:17:43', NULL, NULL, 1, 1, 0),
(2538, 32674, 3067, 299, NULL, 269, 146, 68, 750, 0.00, NULL, '2017-09-29 06:29:55', '2017-10-28 06:29:55', 0, NULL, 0.00, 1, 1, 'FI5J55DN', 0, 1, 1, 0, 0, NULL, 'cus_BIeLVgoYGjyu6k', NULL, NULL, 0, '103.92.45.177', 32674, '2017-08-29 06:29:56', NULL, NULL, 1, 1, 0),
(2539, 33423, 3067, 297, NULL, 286, 146, 68, 600, 0.00, NULL, '2017-12-19 05:13:07', '2018-03-18 05:13:07', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_BQV21EJcbpdRbz', NULL, NULL, 0, '103.92.45.36', 33423, '2017-09-19 05:13:07', NULL, NULL, 1, 1, 0),
(2540, 33423, 3067, 300, NULL, 286, 146, 47, 18, 0.00, NULL, '2017-10-19 05:19:56', '2017-11-18 05:19:56', 0, NULL, 0.00, 1, 1, 'YL5IL9Z3', 0, 1, 1, 0, 0, NULL, 'cus_BQV21EJcbpdRbz', NULL, NULL, 0, '103.92.45.36', 33423, '2017-09-19 05:19:57', NULL, NULL, 1, 1, 0),
(2541, 35079, 3067, 296, NULL, 287, 146, 68, 200, 0.00, NULL, '2017-10-03 11:34:38', '2017-11-03 11:34:38', 0, NULL, 0.00, 1, 1, '', 0, 0, 1, 0, 0, NULL, 'cus_BTDm1E7k6B9Wl6', NULL, NULL, 0, '111.93.166.194', 35079, '2017-09-26 11:34:38', NULL, NULL, 0, 1, 0),
(2542, 37784, 3067, 296, NULL, 313, 146, 68, 200, 0.00, NULL, '2017-11-07 12:49:41', '2017-12-07 12:49:41', 0, NULL, 0.00, 1, 1, '', 0, 0, 1, 0, 0, NULL, 'cus_BgLtGT2BfOz3Os', NULL, NULL, 0, '111.93.166.194', 37784, '2017-10-31 12:49:41', NULL, NULL, 0, 1, 0),
(2546, 45058, 3080, 305, NULL, 322, 154, 47, 10, 0.00, NULL, '2018-02-24 12:18:38', '2018-03-23 12:18:38', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CCBazzk1UkxlFF', NULL, NULL, 0, '193.178.208.6', 45058, '2018-01-24 12:18:38', NULL, NULL, 0, 1, 0),
(2547, 45069, 3080, 305, NULL, 323, 154, 47, 10, 0.00, NULL, '2018-02-24 14:24:07', '2018-03-23 14:24:07', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CCDbl4h5JjUhe5', NULL, NULL, 0, '193.178.208.6', 45069, '2018-01-24 14:24:07', NULL, NULL, 0, 1, 0),
(2548, 45327, 3080, 305, NULL, 328, 154, 47, NULL, 0.00, NULL, '2018-03-02 12:44:49', '2018-04-01 12:44:49', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CERMr7faRVDS0M', NULL, NULL, 0, '193.178.208.6', 45327, '2018-01-30 12:44:51', NULL, NULL, 0, 1, 0),
(2549, 45353, 3080, 305, NULL, 329, 154, 47, 10, 0.00, NULL, '2018-03-03 11:18:53', '2018-04-02 11:18:53', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CEnCvWsCc9V3CD', NULL, NULL, 0, '193.178.208.6', 45353, '2018-01-31 11:18:53', NULL, NULL, 0, 1, 0),
(2550, 45387, 3067, 297, NULL, 330, 146, 68, 600, 0.00, NULL, '2018-05-01 13:13:17', '2018-07-31 13:13:17', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CFCGxMfyYLFEXQ', NULL, NULL, 0, '45.114.49.88', 45387, '2018-02-01 13:13:17', NULL, NULL, 1, 1, 0),
(2551, 45408, 3067, 297, NULL, 331, 146, 68, 600, 0.00, NULL, '2018-05-02 06:02:16', '2018-08-01 06:02:16', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CFSXzjQBAknCnd', NULL, NULL, 0, '111.93.166.194', 45408, '2018-02-02 06:02:16', NULL, NULL, 1, 1, 0),
(2552, 45410, 3080, 305, NULL, 332, 154, 47, 10, 0.00, NULL, '2018-03-02 06:11:33', '2018-04-01 06:11:33', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CFShFUVNsD7IIf', NULL, NULL, 0, '31.18.218.97', 45410, '2018-02-02 06:11:33', NULL, NULL, 0, 1, 0),
(2553, 45532, 3080, 305, NULL, 334, 154, 47, 10, 0.00, NULL, '2018-03-05 09:28:17', '2018-04-04 09:28:17', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CGdXo4lwomO5jz', NULL, NULL, 0, '193.178.208.6', 45532, '2018-02-05 09:28:17', NULL, NULL, 0, 1, 0),
(2555, 45636, 3067, 297, NULL, 336, 146, 68, 600, 0.00, NULL, '2018-05-08 11:46:10', '2018-08-07 11:46:10', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CHnRYtFX2Ku1cL', NULL, NULL, 0, '45.114.49.104', 45636, '2018-02-08 11:46:10', NULL, NULL, 1, 1, 0),
(2556, 45666, 3067, 297, NULL, 337, 146, 68, 600, 0.00, NULL, '2018-05-09 09:01:23', '2018-08-08 09:01:23', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CI80Xy2hHsFC9F', NULL, NULL, 0, '45.114.49.190', 45666, '2018-02-09 09:01:23', NULL, NULL, 1, 1, 0),
(2557, 45790, 3094, 306, NULL, 339, 155, 153, 5, 0.00, NULL, '2018-03-13 06:47:03', '2018-04-12 06:47:03', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_CJakmHar2iCWFt', NULL, NULL, 0, '27.250.16.179', 45790, '2018-02-13 06:47:03', NULL, NULL, 1, 1, 0),
(2558, 45833, 3139, 309, NULL, 342, 157, 153, 1, 0.00, NULL, '2018-05-12 10:54:55', '2018-06-11 10:54:55', 0, NULL, 0.00, 1, 0, '', 0, 1, 1, 0, 0, NULL, 'cus_CfNqwIUJzUQmc3', NULL, NULL, 0, '127.0.0.1', 45833, '2018-04-12 10:54:56', NULL, NULL, 0, 1, 0),
(2559, 45836, 3139, 309, NULL, 343, 157, 153, 1, 0.00, NULL, '2018-05-30 14:49:11', '2018-06-29 14:49:11', 0, NULL, 0.00, 1, 1, '', 0, 1, 1, 0, 0, NULL, 'cus_Cm9k1edMOcj85R', NULL, NULL, 0, '127.0.0.1', 45836, '2018-04-30 18:19:14', NULL, NULL, 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2560;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
