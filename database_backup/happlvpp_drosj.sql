-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2020 at 04:36 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happlvpp_drosj`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_password_resets`
--

DROP TABLE IF EXISTS `account_password_resets`;
CREATE TABLE IF NOT EXISTS `account_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `account_password_resets_email_index` (`email`),
  KEY `account_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RideShare', 'admin@admin.com', '$2y$10$M6oPdgp1/mb/iXeI8L1qDeFinLEbHxGee3hQRR/PCgkoNAOURGY9a', NULL, 'YMGjJWZMLqnJqAtnEGoSR5ygukH91CZbFQOzBmQwrkFPPKKJ3wpSckKFuOSL', NULL, '2018-11-20 18:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('up','pu') COLLATE utf8_unicode_ci NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatchers`
--

DROP TABLE IF EXISTS `dispatchers`;
CREATE TABLE IF NOT EXISTS `dispatchers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dispatchers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dispatchers`
--

INSERT INTO `dispatchers` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Zeeshan', 'shanezahid@gmail.com', '03201231236', '$2y$10$mmXRE9guW.D.HEfjQ9dbiuBeURxcXQ/MkrNXuDkCphur7gf9sIE6G', NULL, '2017-12-08 21:59:00', '2017-12-09 00:35:04'),
(3, 'Ahsan mehmood', 'ahsan.mehmood187@gmail.com', '03438899665', '$2y$10$lotxVcv0CxPwxQRwyb6shOHvPiTcTF7pKTz468FqSSxwahEiaaZVW', NULL, '2017-12-09 00:36:01', '2017-12-09 00:36:01'),
(4, 'Jamil', 'jamilurrehman1@gmail.com', '923360007017', '$2y$10$dOOI6ohpznewl6gICobN/.naYZcf.xRYKZurEUjdOYUUiZVlXofBG', NULL, '2018-02-03 12:58:20', '2018-02-03 12:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher_password_resets`
--

DROP TABLE IF EXISTS `dispatcher_password_resets`;
CREATE TABLE IF NOT EXISTS `dispatcher_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `dispatcher_password_resets_email_index` (`email`),
  KEY `dispatcher_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Driving Licence', 'DRIVER', NULL, '2018-11-13 12:54:57'),
(2, 'Bank Passbook', 'DRIVER', NULL, NULL),
(3, 'Joining Form', 'DRIVER', NULL, NULL),
(4, 'Work Permit', 'DRIVER', NULL, NULL),
(5, 'Registration Certificate', 'VEHICLE', NULL, NULL),
(6, 'Insurance Certificate', 'VEHICLE', NULL, NULL),
(7, 'Fitness Certificate', 'VEHICLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fleets`
--

DROP TABLE IF EXISTS `fleets`;
CREATE TABLE IF NOT EXISTS `fleets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fleets_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fleets`
--

INSERT INTO `fleets` (`id`, `name`, `email`, `password`, `company`, `mobile`, `logo`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'ahsan mehmood', 'ahsan.mehmood187@gmail.com', '$2y$10$4/rjVDVHXbOSb2lcha2w4uFggiMPsV.81U/q7SJ3q9auWE0af2IMa', 'taxi house', '00000000000', NULL, NULL, '2017-12-08 23:09:46', '2017-12-08 23:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_password_resets`
--

DROP TABLE IF EXISTS `fleet_password_resets`;
CREATE TABLE IF NOT EXISTS `fleet_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `fleet_password_resets_email_index` (`email`),
  KEY `fleet_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

DROP TABLE IF EXISTS `ltm_translations`;
CREATE TABLE IF NOT EXISTS `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'api', 'push.request_accepted', 'Your Ride Accepted by a Driver', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(2, 1, 'en', 'api', 'push.schedule_start', 'Your schedule ride has been started', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(3, 1, 'en', 'api', 'push.user_cancelled', 'User Cancelled the Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(4, 1, 'en', 'api', 'push.provider_cancelled', 'Driver Cancelled the Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(5, 1, 'en', 'api', 'push.arrived', 'Driver Arrived at your Location', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(6, 1, 'en', 'api', 'push.provider_not_available', 'Sorry for inconvience time, Our partner or busy. Please try after some time', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(7, 1, 'en', 'api', 'push.incoming_request', 'New Incoming Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(8, 1, 'en', 'api', 'push.document_verfied', 'Your Documents are verified, Now you are ready to Start your Business', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(9, 1, 'en', 'api', 'push.added_money_to_wallet', ' Added to your Wallet', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(10, 1, 'en', 'api', 'push.charged_from_wallet', ' Charged from your Wallet', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(11, 1, 'en', 'api', 'something_went_wrong', 'Something Went Wrong', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(12, 1, 'en', 'api', 'logout_success', 'Logged out Successfully', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(13, 1, 'en', 'api', 'user.password_updated', 'Password Updated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(14, 1, 'en', 'api', 'user.incorrect_password', 'Incorrect Password', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(15, 1, 'en', 'api', 'user.location_updated', 'Location Updated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(16, 1, 'en', 'api', 'user.user_not_found', 'User Not Found', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(17, 1, 'en', 'api', 'user.profile_updated', 'Profile Updated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(18, 1, 'en', 'api', 'services_not_found', 'Services Not Found', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(19, 1, 'en', 'api', 'ride.request_inprogress', 'Already Request in Progress', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(20, 1, 'en', 'api', 'ride.request_scheduled', 'Ride Scheduled', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(21, 1, 'en', 'api', 'ride.no_providers_found', 'No Drivers Found', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(22, 1, 'en', 'api', 'ride.already_cancelled', 'Already Ride Cancelled', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(23, 0, 'en', 'api', 'ride.ride_cancelled', NULL, '2018-11-18 15:06:39', '2018-11-18 15:06:39'),
(24, 1, 'en', 'api', 'ride.already_onride', 'Already You are Onride', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(25, 1, 'en', 'api', 'user.not_paid', 'User Not Paid', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(26, 1, 'en', 'api', 'ride.provider_rated', 'Driver Rated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(27, 1, 'en', 'api', 'promocode_expired', 'Promocode Expired', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(28, 0, 'en', 'api', 'promocode_already_in_use', NULL, '2018-11-18 15:06:39', '2018-11-18 15:06:39'),
(29, 1, 'en', 'api', 'promocode_applied', 'Promocode Applied', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(30, 1, 'en', 'api', 'ride.request_already_scheduled', 'Ride Already Scheduled', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(31, 1, 'en', 'api', 'paid', 'Paid', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(32, 1, 'en', 'api', 'added_to_your_wallet', 'Added to your Wallet', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(33, 1, 'en', 'user', 'fare_breakdown', 'FARE BREAKDOWN', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(34, 1, 'en', 'user', 'ride.finding_driver', 'Finding your Driver', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(35, 1, 'en', 'user', 'ride.accepted_ride', 'Accepted Your Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(36, 1, 'en', 'user', 'ride.arrived_ride', 'Arrived At your Location', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(37, 1, 'en', 'user', 'ride.onride', 'Enjoy your Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(38, 1, 'en', 'user', 'ride.waiting_payment', 'Waiting for Payment', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(39, 1, 'en', 'user', 'ride.rate_and_review', 'Rate and Review', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(40, 1, 'en', 'user', 'ride.cancel_reason', 'Cancel Reason', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(41, 1, 'en', 'user', 'cash', 'CASH', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(42, 1, 'en', 'user', 'card.fullname', 'Full Name', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(43, 1, 'en', 'user', 'card.card_no', 'Card Number', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(44, 1, 'en', 'user', 'card.cvv', 'CVV', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(45, 1, 'en', 'user', 'profile.old_password', 'Old Password', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(46, 1, 'en', 'user', 'profile.password', 'Password', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(47, 1, 'en', 'user', 'profile.confirm_password', 'Confirm Password', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(48, 1, 'en', 'user', 'add_promocode', 'Add Promocode', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(49, 1, 'en', 'user', 'profile.first_name', 'First Name', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(50, 1, 'en', 'user', 'profile.last_name', 'Last Name', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(51, 1, 'en', 'user', 'profile.email', 'Email', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(52, 1, 'en', 'user', 'profile.mobile', 'Mobile', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(53, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(54, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(55, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(56, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(57, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(58, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(59, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(60, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(61, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(62, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(63, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(64, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(65, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(66, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(67, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(68, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(69, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(70, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(71, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(72, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(73, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(74, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(75, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(76, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(77, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(78, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(79, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(80, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(81, 1, 'en', 'validation', 'filled', 'The :attribute field is required.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(82, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(83, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(84, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(85, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(86, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(87, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(88, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(89, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(90, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(91, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(92, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(93, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(94, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(95, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(96, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(97, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(98, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(99, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(100, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(101, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(102, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(103, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(104, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(105, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(106, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(107, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(108, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(109, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(110, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(111, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(112, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(113, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(114, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(115, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(116, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(117, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(118, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(119, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(120, 1, 'en', 'servicetypes', 'MIN', 'Per Minute Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(121, 1, 'en', 'servicetypes', 'HOUR', 'Per Hour Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(122, 1, 'en', 'servicetypes', 'DISTANCE', 'Distance Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(123, 1, 'en', 'servicetypes', 'DISTANCEMIN', 'Distance and Per Minute Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(124, 1, 'en', 'servicetypes', 'DISTANCEHOUR', 'Distance and Per Hour Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(125, 1, 'en', 'api', 'ride.request_cancelled', 'Your Ride Cancelled', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(126, 1, 'en', 'api', 'promocode_already_in_user', 'Promocode Already in Use', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(127, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(128, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(129, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(130, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(131, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(132, 0, 'en', 'pagination', 'previous', '« Previous عودة', '2018-11-18 15:06:56', '2018-11-18 15:09:14'),
(133, 0, 'en', 'pagination', 'next', 'Next » التالي', '2018-11-18 15:06:56', '2018-11-18 15:09:14'),
(134, 1, 'en', 'user', 'profile.general_information', 'General Information', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(135, 1, 'en', 'user', 'profile.profile_picture', 'Profile Picture', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(136, 1, 'en', 'user', 'profile.wallet_balance', 'Wallet Balance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(137, 1, 'en', 'user', 'profile.edit', 'Edit', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(138, 1, 'en', 'user', 'profile.save', 'Save', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(139, 1, 'en', 'user', 'profile.edit_information', 'Edit Information', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(140, 1, 'en', 'user', 'profile.change_password', 'Change Password', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(141, 1, 'en', 'user', 'profile.profile', 'Profile', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(142, 1, 'en', 'user', 'profile.logout', 'Logout', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(143, 1, 'en', 'user', 'profile.name', 'Name', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(144, 1, 'en', 'user', 'booking_id', 'Booking Id', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(145, 1, 'en', 'user', 'service_number', 'Car Number', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(146, 1, 'en', 'user', 'service_model', 'Car Model', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(147, 1, 'en', 'user', 'card.add_card', 'Add Card', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(148, 1, 'en', 'user', 'card.delete', 'Delete', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(149, 1, 'en', 'user', 'card.month', 'Month', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(150, 1, 'en', 'user', 'card.year', 'Year', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(151, 1, 'en', 'user', 'card.default', 'Default', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(152, 1, 'en', 'user', 'ride.ride_now', 'Ride Now', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(153, 1, 'en', 'user', 'ride.cancel_request', 'Cancel Request', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(154, 1, 'en', 'user', 'ride.ride_status', 'Ride Status', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(155, 1, 'en', 'user', 'ride.dropped_ride', 'Your Ride is Completed', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(156, 1, 'en', 'user', 'ride.ride_details', 'Ride Details', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(157, 1, 'en', 'user', 'ride.invoice', 'Invoice', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(158, 1, 'en', 'user', 'ride.base_price', 'Base Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(159, 1, 'en', 'user', 'ride.tax_price', 'Tax Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(160, 1, 'en', 'user', 'ride.distance_price', 'Distance Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(161, 1, 'en', 'user', 'ride.comment', 'Comment', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(162, 1, 'en', 'user', 'ride.detection_wallet', 'Wallet Detection', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(163, 1, 'en', 'user', 'ride.rating', 'Rating', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(164, 1, 'en', 'user', 'ride.km', 'Kilometer', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(165, 1, 'en', 'user', 'ride.total', 'Total', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(166, 1, 'en', 'user', 'ride.amount_paid', 'Amount to be Paid', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(167, 1, 'en', 'user', 'ride.promotion_applied', 'Promotion Applied', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(168, 1, 'en', 'user', 'ride.request_inprogress', 'Ride Already in Progress', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(169, 1, 'en', 'user', 'ride.request_scheduled', 'Ride Already Scheduled on this time', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(170, 1, 'en', 'user', 'dashboard', 'Dashboard', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(171, 1, 'en', 'user', 'payment', 'Payment', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(172, 1, 'en', 'user', 'wallet', 'Wallet', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(173, 1, 'en', 'user', 'my_wallet', 'My Wallet', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(174, 1, 'en', 'user', 'my_trips', 'My Trips', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(175, 1, 'en', 'user', 'in_your_wallet', 'in your wallet', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(176, 1, 'en', 'user', 'status', 'Status', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(177, 1, 'en', 'user', 'driver_name', 'Driver Name', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(178, 1, 'en', 'user', 'driver_rating', 'Driver Rating', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(179, 1, 'en', 'user', 'payment_mode', 'Payment Mode', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(180, 1, 'en', 'user', 'add_money', 'Add Money', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(181, 1, 'en', 'user', 'date', 'Date', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(182, 1, 'en', 'user', 'schedule_date', 'Scheduled Date', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(183, 1, 'en', 'user', 'amount', 'Total Amount', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(184, 1, 'en', 'user', 'type', 'Type', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(185, 1, 'en', 'user', 'time', 'Time', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(186, 1, 'en', 'user', 'request_id', 'Request ID', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(187, 1, 'en', 'user', 'paid_via', 'PAID VIA', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(188, 1, 'en', 'user', 'from', 'From', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(189, 1, 'en', 'user', 'total_distance', 'Total Distance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(190, 1, 'en', 'user', 'eta', 'ETA', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(191, 1, 'en', 'user', 'to', 'To', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(192, 1, 'en', 'user', 'use_wallet_balance', 'Use Wallet Balance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(193, 1, 'en', 'user', 'available_wallet_balance', 'Available Wallet Balance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(194, 1, 'en', 'user', 'estimated_fare', 'Estimated Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(195, 1, 'en', 'user', 'charged', 'CHARGED', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(196, 1, 'en', 'user', 'payment_method', 'Payment Methods', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(197, 1, 'en', 'user', 'promotion', 'Promotions', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(198, 1, 'en', 'user', 'upcoming_trips', 'Upcoming trips', '2018-11-18 15:06:56', '2018-11-18 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2015_08_25_172600_create_settings_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2017_01_11_180503_create_admins_table', 1),
(11, '2017_01_11_180511_create_providers_table', 1),
(12, '2017_01_11_181312_create_cards_table', 1),
(13, '2017_01_11_181357_create_chats_table', 1),
(14, '2017_01_11_181558_create_promocodes_table', 1),
(15, '2017_01_11_182454_create_provider_documents_table', 1),
(16, '2017_01_11_182536_create_provider_services_table', 1),
(17, '2017_01_11_182649_create_user_requests_table', 1),
(18, '2017_01_11_182717_create_request_filters_table', 1),
(19, '2017_01_11_182738_create_service_types_table', 1),
(20, '2017_01_25_172422_create_documents_table', 1),
(21, '2017_01_31_122021_create_provider_devices_table', 1),
(22, '2017_02_02_192703_create_user_request_ratings_table', 1),
(23, '2017_02_06_080124_create_user_request_payments_table', 1),
(24, '2017_02_14_135859_create_provider_profiles_table', 1),
(25, '2017_02_21_131429_create_promocode_usages_table', 1),
(26, '2017_06_07_045207_add_social_login_to_providers_tables', 1),
(27, '2017_06_17_151030_create_dispatchers_table', 1),
(28, '2017_06_17_151031_create_dispatcher_password_resets_table', 1),
(29, '2017_06_17_151145_create_fleets_table', 1),
(30, '2017_06_17_151146_create_fleet_password_resets_table', 1),
(31, '2017_06_17_151150_add_fleet_to_providers_table', 1),
(32, '2017_06_19_130022_add_booking_id_to_user_request', 1),
(33, '2017_06_19_155736_add_cancel_reason_to_user_request', 1),
(34, '2017_06_20_154148_create_accounts_table', 1),
(35, '2017_06_20_154149_create_account_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03245a2df21cd74e8a2b08b634ae00c449e8f6b75beae92c656f554d97a45cddbcb845ae8baf0b18', 123, 2, NULL, '[]', 0, '2018-11-01 09:51:07', '2018-11-01 09:51:07', '2018-11-16 02:51:07'),
('06c5eb366b5a111bd5ececef00fcbede9329db5ce60c5a4051df1f568dd4a7bd2ed5803c5fb72329', 135, 2, NULL, '[]', 0, '2018-11-16 09:50:56', '2018-11-16 09:50:56', '2018-12-01 09:50:56'),
('0bf1e907afc952625ebdb820287aa4abbf4f830dcd26d7e517aac3c0890e2097f70c78132e88e9da', 113, 2, NULL, '[]', 0, '2018-01-25 23:01:14', '2018-01-25 23:01:14', '2018-02-09 16:01:14'),
('0d440597904ff8026483537153377d4f7f382407f1703c4340da93f9a94dfe6059e047c7735fb1a6', 144, 2, NULL, '[]', 0, '2020-09-02 17:43:58', '2020-09-02 17:43:58', '2020-09-17 13:43:58'),
('0f20a39a5828755c75e94f80335db4e4b2896ffb9af4b9fea17fd243babb48f333ce74112bafe886', 122, 2, NULL, '[]', 0, '2018-11-01 06:26:42', '2018-11-01 06:26:42', '2018-11-15 23:26:42'),
('0f3ce09ad77aff912563ad7c80bbf54eab4cf073478668fe414d5fedbf1061e3f184d43880ea029c', 122, 2, NULL, '[]', 0, '2018-11-10 10:25:34', '2018-11-10 10:25:34', '2018-11-25 03:25:33'),
('10ecf42b396ef51671ef37e9f353c0ac79f30c48225803a338090c93558098adb64ef53a45775aa8', 122, 2, NULL, '[]', 0, '2018-10-31 00:21:48', '2018-10-31 00:21:48', '2018-11-14 17:21:48'),
('15c8210748b9b076bb1a8bc6b7d2cf406dde6a4d23845f5ea08ebae0b66275c620af3eee4a48d042', 113, 2, NULL, '[]', 0, '2018-01-27 08:32:21', '2018-01-27 08:32:21', '2018-02-11 01:32:21'),
('1bb008b6ac5ea8842f23ce538e8903a687135dec4044f01bc25cf7281471ff2169803f0d183233a6', 141, 2, NULL, '[]', 0, '2018-11-20 18:30:53', '2018-11-20 18:30:53', '2018-12-05 18:30:53'),
('1f6b34be713b43a0f9f80c27023be6f81661218c165c3bcf8ad09306cb81f1e82b91342681067756', 144, 2, NULL, '[]', 0, '2020-09-02 17:42:53', '2020-09-02 17:42:53', '2020-09-17 13:42:53'),
('1fa272aae54c16f9eec0dc39d713b06bac0862d7ff7445c97724e3e7d2442108e0ef1a79e9138afa', 113, 2, NULL, '[]', 1, '2018-02-13 12:32:26', '2018-02-13 12:32:26', '2018-02-28 05:32:26'),
('216615c040878fd5da2d20169edc2c73732ca8e12c4b63a83df952e1ac7caba679abdfd6c969b268', 144, 2, NULL, '[]', 0, '2020-09-02 17:14:52', '2020-09-02 17:14:52', '2020-09-17 13:14:52'),
('2b26460e30198025f52eb3e4a1e2e9cdb12bc93464d1627be3bf11a83d99a847af8c1f3c9d37dfb2', 131, 2, NULL, '[]', 0, '2018-11-12 19:04:57', '2018-11-12 19:04:57', '2018-11-27 19:04:57'),
('2bf08cb80b4364ef2c2d3961fb1bc92c42d79841ccf681bb19d7ae48530e37d4043a9f93a2b54adf', 122, 2, NULL, '[]', 0, '2018-10-29 08:35:13', '2018-10-29 08:35:13', '2018-11-13 01:35:13'),
('32c4e3e060ac502a32262291728045eb2db01487afba4a5c632e5a1283bba4cb12b852e263ed4af1', 113, 2, NULL, '[]', 0, '2018-01-27 10:07:25', '2018-01-27 10:07:25', '2018-02-11 03:07:25'),
('3a713f22f38fb1da258afe5eac36244181482c6687ee6a1ff74af2aa0f5bcde0835e6590467d0ad2', 138, 2, NULL, '[]', 0, '2018-11-18 15:59:59', '2018-11-18 15:59:59', '2018-12-03 15:59:59'),
('3dfa909642bea8bda677840e8a5b912e6e248957b7a69ed0b0a1dbf9af750fd60052108508310c00', 146, 2, NULL, '[]', 0, '2020-08-13 17:15:56', '2020-08-13 17:15:56', '2020-08-28 13:15:56'),
('4441cf21479707530ea9e3ce525d7152db1b48cbfd64c8f6692cfce2b725809f15872ed54dff2bab', 132, 2, NULL, '[]', 0, '2018-11-13 12:29:50', '2018-11-13 12:29:50', '2018-11-28 12:29:50'),
('44a28b2be19b915f2e02719cadfd271fd5606a2b2f68b9f971ebc93d616a2f799f87a77dceef5dd7', 139, 2, NULL, '[]', 0, '2018-11-18 16:15:05', '2018-11-18 16:15:05', '2018-12-03 16:15:05'),
('48efdcd463ba5c077c4fd6a75e80726a1dbada06dbc928245bad297909a39828425b9fe66572361c', 127, 2, NULL, '[]', 0, '2018-11-10 08:48:54', '2018-11-10 08:48:54', '2018-11-25 01:48:54'),
('4930c2560108210a7405ae2d84070c13d2fe37baa13e93e255d1ef00ac3de0cd9ffbb69a639d1175', 144, 2, NULL, '[]', 0, '2020-08-13 20:31:09', '2020-08-13 20:31:09', '2020-08-28 16:31:09'),
('4eb7c3e5b05c621ad8c30eee34751ca077823c36b3776eae1f6d815322d601398d69bf03525e57fa', 144, 2, NULL, '[]', 0, '2020-08-13 16:27:14', '2020-08-13 16:27:14', '2020-08-28 12:27:14'),
('4ed2dea1572ebe7acafd472d052c94ee55b26589ea18723b78f617f87055f70c33cb644c0a35fc99', 141, 2, NULL, '[]', 0, '2018-11-20 04:33:05', '2018-11-20 04:33:05', '2018-12-05 04:33:05'),
('4f212e422ba7ea257b8b78cfa5671094679ea69b13dcc9b30a0bf0be9d7f8122d442007d72e2fdcd', 144, 2, NULL, '[]', 0, '2020-08-13 19:26:49', '2020-08-13 19:26:49', '2020-08-28 15:26:49'),
('550e8d3fb17c863e10fdb9b5ae27358470176da2a8bd62d15f03cb6cd8abadd2685e5a78b592bb39', 144, 2, NULL, '[]', 0, '2020-09-08 15:29:24', '2020-09-08 15:29:24', '2020-09-23 11:29:24'),
('5613ddb1a13e43b2224ced90936169e00f6536c88667734554baddbc8d3bbd8d962e7be4e91f8a5f', 126, 2, NULL, '[]', 0, '2018-11-05 20:40:03', '2018-11-05 20:40:03', '2018-11-20 13:40:03'),
('582ecaf209dec718e399524080721e9298bd7a6a130fc6b751a37befd5d5f4161fd2b9ccef65802b', 144, 2, NULL, '[]', 0, '2020-09-02 17:45:17', '2020-09-02 17:45:17', '2020-09-17 13:45:17'),
('5f1cb6f4a56fbac66bdd6f771b935ff2d635e504eb10319274e2de76047beb2204545c1f903c633e', 122, 2, NULL, '[]', 0, '2018-10-25 21:54:18', '2018-10-25 21:54:18', '2018-11-09 14:54:18'),
('640ab897957f36041f673c74a5b697214932eb66931f71146094b352cdb63f1f35e5ed6985959829', 125, 2, NULL, '[]', 0, '2018-11-05 20:07:23', '2018-11-05 20:07:23', '2018-11-20 13:07:23'),
('6631bedeb01c0cc3f1593f4f79f2f7030b9c423ea937ca5a63cfe2b706fe8553b9db01d517e758b7', 144, 2, NULL, '[]', 0, '2020-08-13 16:28:06', '2020-08-13 16:28:06', '2020-08-28 12:28:06'),
('6fbf42172050d44f8955b85aba0bd31369416353b8d6e6467401ee2319e08a83069cbb993af2d2d8', 122, 2, NULL, '[]', 0, '2018-11-07 16:10:42', '2018-11-07 16:10:42', '2018-11-22 09:10:42'),
('787ec48730c44d070d7491aaef26296cb979ee8a4ea442956a6f38ef4ec4078016fd4acf0c6d1fb6', 144, 2, NULL, '[]', 0, '2020-08-18 16:03:47', '2020-08-18 16:03:47', '2020-09-02 12:03:47'),
('846b7cf5d654723f0b8469b80f890a819019feef24f120441cacf839d6588048080c60deaf82320b', 137, 2, NULL, '[]', 0, '2018-11-17 12:24:31', '2018-11-17 12:24:31', '2018-12-02 12:24:31'),
('8558b70e05dd8fa3b6b3e6eec00d2d23f86a1eb3093f7825d2cea36ab7af5754caa2d8e220c63bcc', 145, 2, NULL, '[]', 0, '2020-08-13 16:45:03', '2020-08-13 16:45:03', '2020-08-28 12:45:03'),
('87301473d872a2c599586c3620506c83d8532f3afcad7f5d1e3eef6f42bbc3e28d77f3168c695293', 122, 2, NULL, '[]', 0, '2018-10-25 21:53:50', '2018-10-25 21:53:50', '2018-11-09 14:53:50'),
('96e36bea06ef54a3d2836a6060874b6dd19d619da721ba1dec54e8ec841092d38740d32440e37eaa', 134, 2, NULL, '[]', 0, '2018-11-15 08:05:05', '2018-11-15 08:05:05', '2018-11-30 08:05:05'),
('9d58df8b4e53a600b7d3527db967370e5e2f5dc4d2c19ef6d58ca6108ad5e52c3050119cec580d29', 130, 2, NULL, '[]', 0, '2018-11-12 18:42:53', '2018-11-12 18:42:53', '2018-11-27 18:42:53'),
('a1758447ebf79791983e844a90ef9295103d532acc32202004e49b149a471fc2ec0f093dec4492c0', 124, 2, NULL, '[]', 0, '2018-11-03 03:32:55', '2018-11-03 03:32:55', '2018-11-17 20:32:55'),
('aac884c4c57efcfa7aaa81e40097f08fcb43ef583a6517696546db485541d38a06e0c620d56e12c0', 128, 2, NULL, '[]', 0, '2018-11-11 01:08:54', '2018-11-11 01:08:54', '2018-11-25 18:08:54'),
('abda0d35adf51053b64df6efd8782a1c8bcfe9901870618ede09a113fc4e19f3e59fc5c152f87d1a', 113, 2, NULL, '[]', 1, '2018-01-26 09:26:45', '2018-01-26 09:26:45', '2018-02-10 02:26:45'),
('ae71289e1240a945c2046e241524bda4b98ae917822e267e901af5767d70aa7181c2712d8b8d88f5', 137, 2, NULL, '[]', 0, '2018-11-19 12:30:37', '2018-11-19 12:30:37', '2018-12-04 12:30:37'),
('b08c3f5b3a8e2864d84eeb1b64926de2349ce804caf67828322a9422debf72c171033751d5b0c56a', 147, 2, NULL, '[]', 0, '2020-08-18 16:11:27', '2020-08-18 16:11:27', '2020-09-02 12:11:27'),
('b5766b16242bb68e6f77cc1bd19948cc9a2bd1838a5499c708a457afbe491b224421181270756bbc', 117, 2, NULL, '[]', 0, '2018-02-03 12:55:34', '2018-02-03 12:55:34', '2018-02-18 05:55:34'),
('b749ac4594b47b88896c9325043f567d4046657bfac0b240d8bcb1cce8d1d12ed47c0ecfe7da72e6', 144, 2, NULL, '[]', 0, '2020-08-13 16:22:01', '2020-08-13 16:22:01', '2020-08-28 12:22:01'),
('b790c9ef4833d66e1b36d01854a2c71e12293e5958fd62fbcb6114aca9e343ec54c91aea43c4d883', 122, 2, NULL, '[]', 0, '2018-11-12 14:17:39', '2018-11-12 14:17:39', '2018-11-27 07:17:39'),
('b822962e0e1f6a6d577fd6f12dcf47659a07c24d2748bc4df4a4e1862ebd5ce25f0e8902ca59be71', 113, 2, NULL, '[]', 0, '2018-01-25 22:05:06', '2018-01-25 22:05:06', '2018-02-09 15:05:06'),
('b958134228117ce5720382beacefa17d911701d98412e496b177c09bfaaace77f66e0f829f2fb2bd', 120, 2, NULL, '[]', 1, '2018-10-29 21:34:14', '2018-10-29 21:34:14', '2018-11-13 14:34:14'),
('be43cf24cf2caee6c17e28f51dcb3078ce4f13df45ef9555392d5b4faf071c003d65f4f4a4bec212', 143, 2, NULL, '[]', 0, '2018-11-20 10:12:08', '2018-11-20 10:12:08', '2018-12-05 10:12:08'),
('c1a1b6c729782ca1f07765102d1a71a2c09a3280a280e63923b800c8ef8aee9e568b788781b6f036', 144, 2, NULL, '[]', 0, '2020-09-02 17:49:51', '2020-09-02 17:49:51', '2020-09-17 13:49:51'),
('c28fd23c3da4dfe689ca80707eba34fb88ed3ba75f1413dfca2d110739f7fe65ecef104181f75a7c', 122, 2, NULL, '[]', 0, '2018-10-30 08:11:33', '2018-10-30 08:11:33', '2018-11-14 01:11:33'),
('c2eacf9f129a02e3c5f25a31c6981ee342a5af29a2fc7564c5966461ce16afeaff8fddcfa3787a80', 137, 2, NULL, '[]', 0, '2018-11-17 12:24:59', '2018-11-17 12:24:59', '2018-12-02 12:24:59'),
('c66e0cd0bb4a78058b46868f2a25d0768eab9b05f04bb494fdcf0c17fc59de38d36ffc1bdf58dcd7', 111, 2, NULL, '[]', 0, '2018-01-29 07:19:50', '2018-01-29 07:19:50', '2018-02-13 00:19:50'),
('cb7efc7e2815cb8b34144babf28de2a5da5abee1a03f3778beed0e913599de8fa8012c8863164133', 135, 2, NULL, '[]', 0, '2018-11-16 06:31:37', '2018-11-16 06:31:37', '2018-12-01 06:31:37'),
('cbb231f743018e07def91bedda704335d4360cf642cd59bb5535dc568b33a416bf6c0996d2933030', 122, 2, NULL, '[]', 0, '2018-10-26 01:39:26', '2018-10-26 01:39:26', '2018-11-09 18:39:26'),
('cd54c45e972f7245bb0eb70eb7cfacfe3c89cd010ed1dfc75c9c77ddf6d025e24824dfcac235b50b', 144, 2, NULL, '[]', 0, '2020-09-02 16:20:10', '2020-09-02 16:20:10', '2020-09-17 12:20:10'),
('cfa7176e8b9bbff35e6f79c3ffade5e07523480d68fc4776e65474db56035296bb8244f0cafd9a63', 144, 2, NULL, '[]', 0, '2020-09-08 15:28:32', '2020-09-08 15:28:32', '2020-09-23 11:28:32'),
('d173969a26f674042181a7fcfe30af35dbecd641733ff43649e31e6da9966c37756d018fbeaaa12e', 113, 2, NULL, '[]', 0, '2018-01-27 10:23:36', '2018-01-27 10:23:36', '2018-02-11 03:23:36'),
('d6373ee83dca7af169fa543b1b99b0d320584e80534c691727b43d8d5d1767ce082050a608415457', 144, 2, NULL, '[]', 0, '2020-08-18 18:24:35', '2020-08-18 18:24:35', '2020-09-02 14:24:35'),
('d9b8df764ed5b3019aa5ac5f914bc9104a081a15cdde66590aadb6f0e56fe84d461ee99839ff6c09', 117, 2, NULL, '[]', 0, '2018-02-03 12:55:36', '2018-02-03 12:55:36', '2018-02-18 05:55:36'),
('e434751e2a36266b3226bc7f0bf89e95d38010039825463936b88f0bc7b296eb83dfb02395cb1cf1', 142, 2, NULL, '[]', 0, '2018-11-20 04:47:15', '2018-11-20 04:47:15', '2018-12-05 04:47:15'),
('e4be078c66be13b338c98961c9ebfb729ceea31a896f71c9a2cfb1b3793d11cc4efbbcf48d8cb0cf', 120, 2, NULL, '[]', 1, '2018-10-10 22:22:24', '2018-10-10 22:22:24', '2018-10-25 15:22:24'),
('e9af4dd691cf19f32fda105b4c49489b669c31146728471b83767b17fa6c09f612b21722280b0c93', 129, 2, NULL, '[]', 0, '2018-11-12 20:37:18', '2018-11-12 20:37:18', '2018-11-27 13:37:17'),
('ea1804e27c053b7747f1a5b0ba544410b5e80d591206597956de7573012a4981227574a186bf7d5d', 120, 2, NULL, '[]', 0, '2018-10-29 21:34:15', '2018-10-29 21:34:15', '2018-11-13 14:34:15'),
('edfdf0cec9e8b20f47c79c88c3f035ddbe311cd8afa87f70408f2ae7e1a9af4fa12dfbc4b15b2640', 144, 2, NULL, '[]', 0, '2020-09-09 02:40:35', '2020-09-09 02:40:35', '2020-09-23 22:40:35'),
('ef4c1a0845e9837fab91c28c9591a302ad0cc1776cd5f89c12af89d4b3526f1f0c7e0d804ebe0daf', 133, 2, NULL, '[]', 0, '2018-11-13 20:35:51', '2018-11-13 20:35:51', '2018-11-28 20:35:50'),
('ef54b0b3852099026c64750e7a2e9db4c414e369cfe137d23bb6d8ec25e1d5c2b569a6de2d1dfb0b', 148, 2, NULL, '[]', 0, '2020-08-18 23:44:15', '2020-08-18 23:44:15', '2020-09-02 19:44:15'),
('f0e4b71ea10f1751cc433709cda6c863ea340338efb3865069698c9c991dd86d7b558584e64952db', 122, 2, NULL, '[]', 0, '2018-10-26 02:23:57', '2018-10-26 02:23:57', '2018-11-09 19:23:57'),
('f6bf86d98bcadfe98d6ed7c2e2fd89d392d184071015b8487b6e7577f8e6220a56a5867e266556e9', 113, 2, NULL, '[]', 0, '2018-02-13 12:32:28', '2018-02-13 12:32:28', '2018-02-28 05:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'RideShare Personal Access Client', 'NvTN1CeLtNygzZFNPixRuUkDAo4knyz8RBqaNisS', 'http://localhost', 1, 0, 0, '2017-12-08 20:52:36', '2017-12-08 20:52:36'),
(2, NULL, 'RideShare Password Grant Client', 'WifS1rMi3LvuorP1G2UdtKZairUNSH2iMqrKivPf', 'http://localhost', 0, 1, 0, '2017-12-08 20:52:36', '2017-12-08 20:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-12-08 20:52:36', '2017-12-08 20:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('04d84c05a6ef9877b993ec0605ff14916971252224cbe39d076df7fbf99cb42adc6b92a14fbcaf5c', '2bf08cb80b4364ef2c2d3961fb1bc92c42d79841ccf681bb19d7ae48530e37d4043a9f93a2b54adf', 0, '2019-01-27 01:35:13'),
('0e92ca9e0eedcd018c4d1fd2829b066d97d82e03c6e22ea135d67ec98e31677870d820bd740d40fd', '32c4e3e060ac502a32262291728045eb2db01487afba4a5c632e5a1283bba4cb12b852e263ed4af1', 0, '2018-04-27 03:07:25'),
('14ac6cc0bf109ee65c99feeca1bc85273edbf9388d7dafdeaf62c4670fbcaa611cde5f8624facfae', 'b08c3f5b3a8e2864d84eeb1b64926de2349ce804caf67828322a9422debf72c171033751d5b0c56a', 0, '2020-11-16 12:11:27'),
('1693b0b88d0d0998f1dc105300cb2efb18aaab742400857e44e62325b9709812b112fd29e0658a9e', '216615c040878fd5da2d20169edc2c73732ca8e12c4b63a83df952e1ac7caba679abdfd6c969b268', 0, '2020-12-01 13:14:52'),
('17b7b4f92b117034a56399a10f7a60cc6f20baeaa9c074c467be68b7c0ce7562dda84a2e815ba1c8', '3dfa909642bea8bda677840e8a5b912e6e248957b7a69ed0b0a1dbf9af750fd60052108508310c00', 0, '2020-11-11 13:15:56'),
('19aa639ceb7dba67e8d6d2c63c9adeb28226f419b0933fb91bf6aaa944a9df05761672d734051aed', 'ae71289e1240a945c2046e241524bda4b98ae917822e267e901af5767d70aa7181c2712d8b8d88f5', 0, '2019-02-17 12:30:37'),
('2a626c98577859965a0c28d515da2cb4f3ef2c1bd3a8b9c14fa65b5d95a88a569040a5403f878dbb', 'f6bf86d98bcadfe98d6ed7c2e2fd89d392d184071015b8487b6e7577f8e6220a56a5867e266556e9', 0, '2018-05-14 05:32:28'),
('2b25943c3f9cd28fb93b128e1799d70864fd6766687f6c5a9b132520cb3eba60ceef940e72a37592', 'ef4c1a0845e9837fab91c28c9591a302ad0cc1776cd5f89c12af89d4b3526f1f0c7e0d804ebe0daf', 0, '2019-02-11 20:35:50'),
('31b4c81577ac310d77552d5c3aeb9c207e655a0619e55455c966a48c3482f0e73ed2a4abf879e3da', 'b958134228117ce5720382beacefa17d911701d98412e496b177c09bfaaace77f66e0f829f2fb2bd', 1, '2019-01-27 14:34:14'),
('3937ee78537c57bc4440ae33f6b79e1934f047c2763792e9c574573165ef64c433d3f756a5ceec3f', '787ec48730c44d070d7491aaef26296cb979ee8a4ea442956a6f38ef4ec4078016fd4acf0c6d1fb6', 0, '2020-11-16 12:03:47'),
('398573e936bd608cdca9b98531cc2450a69c98b87e910496bdbf89614b131a335333e669e0bb7d37', 'aac884c4c57efcfa7aaa81e40097f08fcb43ef583a6517696546db485541d38a06e0c620d56e12c0', 0, '2019-02-08 18:08:54'),
('3d47b890c7ef6fd1174119d23c5efb78db9f146d8291e7c7c0122244d2411015acf0deddb97f6bbf', '0d440597904ff8026483537153377d4f7f382407f1703c4340da93f9a94dfe6059e047c7735fb1a6', 0, '2020-12-01 13:43:58'),
('3d626925aad033a7ef878d8f1c46789a83b1a54f7732a757a298105bd1f7dd5d52d86c5bc20a2318', 'abda0d35adf51053b64df6efd8782a1c8bcfe9901870618ede09a113fc4e19f3e59fc5c152f87d1a', 1, '2018-04-26 02:26:45'),
('4253939c32c30bcd15082c477f06db5302d7d8c9ca324edd0f2419f71ddfc30d6682fec5b5524dc0', '4eb7c3e5b05c621ad8c30eee34751ca077823c36b3776eae1f6d815322d601398d69bf03525e57fa', 0, '2020-11-11 12:27:14'),
('425dcefbb78b00522c1ec4140d639eb2c78675c83c86d3cb3cab56c8b1bf71ee11f7fe94ba978f6b', '44a28b2be19b915f2e02719cadfd271fd5606a2b2f68b9f971ebc93d616a2f799f87a77dceef5dd7', 0, '2019-02-16 16:15:05'),
('4c36498f289c4c858b9b2181ac0539dd856c3b934f229b1c7c55ac0e75b732364056a5a783bb7eb6', '3a713f22f38fb1da258afe5eac36244181482c6687ee6a1ff74af2aa0f5bcde0835e6590467d0ad2', 0, '2019-02-16 15:59:59'),
('50b53dfa1f196d53db67c71e879dc9b30668b22084f238cdb3062375983a88db3c922e149620b730', '4930c2560108210a7405ae2d84070c13d2fe37baa13e93e255d1ef00ac3de0cd9ffbb69a639d1175', 0, '2020-11-11 16:31:09'),
('572a5f5e935a338e470dfe214bb340c7d20bd8098a70c81dc32156be546b1e30f8d117063223115f', 'b749ac4594b47b88896c9325043f567d4046657bfac0b240d8bcb1cce8d1d12ed47c0ecfe7da72e6', 0, '2020-11-11 12:22:01'),
('5dbbfdb80300a8bcf5fa6aeba7ca5222446fdfa69b602ed4b38c288717de324236837dcb8873826c', 'c66e0cd0bb4a78058b46868f2a25d0768eab9b05f04bb494fdcf0c17fc59de38d36ffc1bdf58dcd7', 0, '2018-04-29 00:19:50'),
('5e734689e307da3cbd536336743b0c6744e7a298f226164dafefb31d6c9fc7049e45d376fed72e0c', '640ab897957f36041f673c74a5b697214932eb66931f71146094b352cdb63f1f35e5ed6985959829', 0, '2019-02-03 13:07:23'),
('642f19c8965ccc6c24cb909381d62a58098e95bf4bf70eae51059fe31b600f7cc3e5a4458478f2df', '582ecaf209dec718e399524080721e9298bd7a6a130fc6b751a37befd5d5f4161fd2b9ccef65802b', 0, '2020-12-01 13:45:17'),
('66159a9c6bdac6509523c82aa94c3a616306dc5586cd4b1f3c9ad50ce1d8488b33bee6fd79df382c', 'b5766b16242bb68e6f77cc1bd19948cc9a2bd1838a5499c708a457afbe491b224421181270756bbc', 0, '2018-05-04 05:55:34'),
('68786034f3f33ddc5f26ed903d36933b92d7a5cfffbabf655f29f534d12cb76e5f9ca4ff3e60e3e5', 'ef54b0b3852099026c64750e7a2e9db4c414e369cfe137d23bb6d8ec25e1d5c2b569a6de2d1dfb0b', 0, '2020-11-16 19:44:15'),
('744f18e75a17e6850adb7d62d7c47c54ccd736e046d883203213492dffa71f13449d3f3601c69497', 'a1758447ebf79791983e844a90ef9295103d532acc32202004e49b149a471fc2ec0f093dec4492c0', 0, '2019-01-31 20:32:55'),
('75bc153d2eb7f62c4340c07d14cf00bed1e4fa5a5a371576a8cf37636770f5ec326253202a628227', 'ea1804e27c053b7747f1a5b0ba544410b5e80d591206597956de7573012a4981227574a186bf7d5d', 0, '2019-01-27 14:34:15'),
('83b5845f40d7170b6bdbdab7e5aed3e9025ffdf5e4c3e32b6870b6535296a0bee4060691b8dbb805', '0bf1e907afc952625ebdb820287aa4abbf4f830dcd26d7e517aac3c0890e2097f70c78132e88e9da', 0, '2018-04-25 16:01:14'),
('84945b205b536c3c2962d847f33564b62f089be9a48d2f590d3dce8dfd7bba60697881f64218c2db', '96e36bea06ef54a3d2836a6060874b6dd19d619da721ba1dec54e8ec841092d38740d32440e37eaa', 0, '2019-02-13 08:05:05'),
('84bfa96348dcd390814d781dfc1e255cc4c0635fad53ffdbdfb15725e7e39117c4e730663243c0ed', 'cd54c45e972f7245bb0eb70eb7cfacfe3c89cd010ed1dfc75c9c77ddf6d025e24824dfcac235b50b', 0, '2020-12-01 12:20:10'),
('85716bcc5e51f027c26a035f75990bffe9377456d9e915cb31a706b32e4dc3fc47ba745913248a3c', '4441cf21479707530ea9e3ce525d7152db1b48cbfd64c8f6692cfce2b725809f15872ed54dff2bab', 0, '2019-02-11 12:29:50'),
('8d84221ca119d8d5041168df23651a4b781d36bc9131e185bd0ac09c80516562788f0a12d5f1aa63', '0f3ce09ad77aff912563ad7c80bbf54eab4cf073478668fe414d5fedbf1061e3f184d43880ea029c', 0, '2019-02-08 03:25:33'),
('91120b035019c78d036193d930bc8a895750e9c8041ef368e0a85b96d13c51c3ed058db9adbc3ea9', 'b822962e0e1f6a6d577fd6f12dcf47659a07c24d2748bc4df4a4e1862ebd5ce25f0e8902ca59be71', 0, '2018-04-25 15:05:06'),
('93971560ad76998e8176e6ae42fe423629c846706ca88faef33c4d70589de41c70e7a845c2210388', 'edfdf0cec9e8b20f47c79c88c3f035ddbe311cd8afa87f70408f2ae7e1a9af4fa12dfbc4b15b2640', 0, '2020-12-07 22:40:35'),
('94c460a853eb7f611cd6e09e55e49e1e685bd0505635a48ad0d2e27d3b7dcd13909b30154d83f5e8', 'e9af4dd691cf19f32fda105b4c49489b669c31146728471b83767b17fa6c09f612b21722280b0c93', 0, '2019-02-10 13:37:17'),
('9dc2f0eb45706e088147ca5635f274179a6ebabbafb37cc8dfc31d5dace2d28527ef592078491a0f', 'cbb231f743018e07def91bedda704335d4360cf642cd59bb5535dc568b33a416bf6c0996d2933030', 0, '2019-01-23 18:39:26'),
('9fc1c77e0a2cad82365e433f8457321b47bf9f0427670197fc74ee528bff3b95721866a7a4854823', 'e434751e2a36266b3226bc7f0bf89e95d38010039825463936b88f0bc7b296eb83dfb02395cb1cf1', 0, '2019-02-18 04:47:15'),
('a3505f3fdcdefc496620f46995f9087b1e43ff39b56685b32547af593901098c5d3c476cee384eee', '9d58df8b4e53a600b7d3527db967370e5e2f5dc4d2c19ef6d58ca6108ad5e52c3050119cec580d29', 0, '2019-02-10 18:42:53'),
('a400161573a5810ffd77dcfeed5abfb2b3a7b992a5afd9bb81d97a4c7088dd54e1b33efe4b73372c', 'c28fd23c3da4dfe689ca80707eba34fb88ed3ba75f1413dfca2d110739f7fe65ecef104181f75a7c', 0, '2019-01-28 01:11:33'),
('a6249ac034605e37e8fbe447b51cd5f16a4e742f685f7ae3ef0e9563c8c19ce668ecf0575399aa08', '87301473d872a2c599586c3620506c83d8532f3afcad7f5d1e3eef6f42bbc3e28d77f3168c695293', 0, '2019-01-23 14:53:50'),
('afcc4df603a3b3f6725c607e0fe10c048309a1b14ef938aec188aec63902ff32529588d17fb7f763', 'be43cf24cf2caee6c17e28f51dcb3078ce4f13df45ef9555392d5b4faf071c003d65f4f4a4bec212', 0, '2019-02-18 10:12:08'),
('b5f260ae0359bba0b9c5f02a76592d73bf07e48afd201618703a7f134b2d4192eb7bf33ab95d5f2f', '2b26460e30198025f52eb3e4a1e2e9cdb12bc93464d1627be3bf11a83d99a847af8c1f3c9d37dfb2', 0, '2019-02-10 19:04:57'),
('b67d71038ef2152f588cff1568822dadf02fc2b78f5542e08676a02939d311ed79912eb29780839e', 'd9b8df764ed5b3019aa5ac5f914bc9104a081a15cdde66590aadb6f0e56fe84d461ee99839ff6c09', 0, '2018-05-04 05:55:36'),
('b86a52543132514193f84c185a05a930f2ece25b43eb170ac81ed09e0d30312b7fd479218de20795', '550e8d3fb17c863e10fdb9b5ae27358470176da2a8bd62d15f03cb6cd8abadd2685e5a78b592bb39', 0, '2020-12-07 11:29:24'),
('b93dce640b8e2eca6d6d811ba5cb6627fd65cee4bf41483a5f5eeafdc8352521922ac1350784f5c7', 'b790c9ef4833d66e1b36d01854a2c71e12293e5958fd62fbcb6114aca9e343ec54c91aea43c4d883', 0, '2019-02-10 07:17:39'),
('c11e5e48c7b1022953f7725d42554617fc8c79e69212ac7cf131970bd326930bc95028fdd2a96161', '1f6b34be713b43a0f9f80c27023be6f81661218c165c3bcf8ad09306cb81f1e82b91342681067756', 0, '2020-12-01 13:42:53'),
('c3348e2ff8fa4c0b3e910cf4e7feaf52a89eebed9ad1f7739b881e8b25fef551aeaf0c4a686d5bdf', 'e4be078c66be13b338c98961c9ebfb729ceea31a896f71c9a2cfb1b3793d11cc4efbbcf48d8cb0cf', 1, '2019-01-08 15:22:24'),
('cbd6778e4511a04c52493e50213f4cbbc6f76e5c8d58299e0497416fb5ea71f611c0f368cc9c421d', '846b7cf5d654723f0b8469b80f890a819019feef24f120441cacf839d6588048080c60deaf82320b', 0, '2019-02-15 12:24:31'),
('cd2cb83ff4abc26531f29823dd33c0c57e96d9dcbdacbb674aa9d3cd3b0e960c6a6026c325994408', '1bb008b6ac5ea8842f23ce538e8903a687135dec4044f01bc25cf7281471ff2169803f0d183233a6', 0, '2019-02-18 18:30:53'),
('cf16697ab2dd3f3c41f8ed7f744c237cd3a6a4db828e010ad05fad5d4c43706b70543b273fb0a83f', '03245a2df21cd74e8a2b08b634ae00c449e8f6b75beae92c656f554d97a45cddbcb845ae8baf0b18', 0, '2019-01-30 02:51:07'),
('d182ccec3781dbc12a72b17dfd607f490f999c835a058029b1866dab418f2290513496b625809787', '15c8210748b9b076bb1a8bc6b7d2cf406dde6a4d23845f5ea08ebae0b66275c620af3eee4a48d042', 0, '2018-04-27 01:32:21'),
('d4f133c140a0d363c6a6aaf875bd520801031ee9854424f0559838981d1793fb2904efa95471c044', '6631bedeb01c0cc3f1593f4f79f2f7030b9c423ea937ca5a63cfe2b706fe8553b9db01d517e758b7', 0, '2020-11-11 12:28:06'),
('d56ce2126c52e86df932c60a1d9ad0ac82b10456f004575c4d12120ffcb07f8331649af9a4f99dbf', '48efdcd463ba5c077c4fd6a75e80726a1dbada06dbc928245bad297909a39828425b9fe66572361c', 0, '2019-02-08 01:48:54'),
('d6450b29a82501b9dea5c3fa0295485672ab2deba7e037d4ad5fb900e04b66093900e6e7dd6b5ca4', 'c1a1b6c729782ca1f07765102d1a71a2c09a3280a280e63923b800c8ef8aee9e568b788781b6f036', 0, '2020-12-01 13:49:51'),
('da8b89bc03e2b9f7b402e135dcb75404f71c231988f150f5699d713a0d2a6209529b50a7e9d3a7dd', 'd173969a26f674042181a7fcfe30af35dbecd641733ff43649e31e6da9966c37756d018fbeaaa12e', 0, '2018-04-27 03:23:36'),
('dd73a2a2152aa732d36da47cd9181fc33b19a9aa9b7339cc40075fa1880e70e8f8247877f400789f', '5f1cb6f4a56fbac66bdd6f771b935ff2d635e504eb10319274e2de76047beb2204545c1f903c633e', 0, '2019-01-23 14:54:18'),
('dd8dbba757dc00a0386fc4ab4fdcbda5100b9148e4380ad268c46d1d01c51578c058ff42fbd24a7c', '4f212e422ba7ea257b8b78cfa5671094679ea69b13dcc9b30a0bf0be9d7f8122d442007d72e2fdcd', 0, '2020-11-11 15:26:50'),
('e616451657b8ebecddc4b1bf7ff5fb5c84df74af6e9dbeb8af838f14c441570d7d0348605c96af0a', 'cb7efc7e2815cb8b34144babf28de2a5da5abee1a03f3778beed0e913599de8fa8012c8863164133', 0, '2019-02-14 06:31:37'),
('ea990b5de8c4f6aa4f9ba571041c54e07a30b6f6f82044885b1df2a6dd262607c21dda850ef7a7bc', '10ecf42b396ef51671ef37e9f353c0ac79f30c48225803a338090c93558098adb64ef53a45775aa8', 0, '2019-01-28 17:21:48'),
('ec466068491b661fc4c7bc8fd5c7f7db7c7a153a3cc17cfb83250cab0be226209dd0d2018a08da62', '0f20a39a5828755c75e94f80335db4e4b2896ffb9af4b9fea17fd243babb48f333ce74112bafe886', 0, '2019-01-29 23:26:42'),
('ec971f777de919a6c7ba1b0a5c60891417d0257aa8ef220b0adb634686af340c2f26046d5fe8407e', 'f0e4b71ea10f1751cc433709cda6c863ea340338efb3865069698c9c991dd86d7b558584e64952db', 0, '2019-01-23 19:23:57'),
('ed2f8bc66b943a669bf59df54d9832637580c56ca9906997b103199122e3f1977c2b386f8b6b4761', '06c5eb366b5a111bd5ececef00fcbede9329db5ce60c5a4051df1f568dd4a7bd2ed5803c5fb72329', 0, '2019-02-14 09:50:56'),
('ed59d5900e7a15b09cb1008b04062121103d6220517601aeaa97c007815c5a8d42d43fcd3d73133e', '4ed2dea1572ebe7acafd472d052c94ee55b26589ea18723b78f617f87055f70c33cb644c0a35fc99', 0, '2019-02-18 04:33:05'),
('f233ab128deff3dc6248107e4bb98d63eaf18a9e99154b67ab0f2d173bd43565dc9e2b4a4b547ff5', '8558b70e05dd8fa3b6b3e6eec00d2d23f86a1eb3093f7825d2cea36ab7af5754caa2d8e220c63bcc', 0, '2020-11-11 12:45:03'),
('f2402b5342bc43d140d1d925929f8c63f10a707e754d592de1efe6b314fb58ab1695578837fd9bf8', 'cfa7176e8b9bbff35e6f79c3ffade5e07523480d68fc4776e65474db56035296bb8244f0cafd9a63', 0, '2020-12-07 11:28:32'),
('f25f9e19d9274751673daa99ecdc7a1c4233af2c9352e4c4f1785e893524fa8bdfe494040f9d3768', 'c2eacf9f129a02e3c5f25a31c6981ee342a5af29a2fc7564c5966461ce16afeaff8fddcfa3787a80', 0, '2019-02-15 12:24:59'),
('f46dae83831ad99102c521e4929f4f829524e845eab53c79ed5d38c0b23eaf0f30054d0b6750bc2b', '6fbf42172050d44f8955b85aba0bd31369416353b8d6e6467401ee2319e08a83069cbb993af2d2d8', 0, '2019-02-05 09:10:42'),
('f4edb8cee41555c8636e79472956f2a10289f3faf062363e8fbb3305a0f70b59826e41b4e4fbafb3', 'd6373ee83dca7af169fa543b1b99b0d320584e80534c691727b43d8d5d1767ce082050a608415457', 0, '2020-11-16 14:24:35'),
('f53a4f2d00c03b29db9259238aa8497e025f84253b82ab582388ab1e3723dc4e42efbe41242c8ecf', '1fa272aae54c16f9eec0dc39d713b06bac0862d7ff7445c97724e3e7d2442108e0ef1a79e9138afa', 1, '2018-05-14 05:32:26'),
('fc99ce18fc31ee2ae285981cba6d3d86db883830bfd103591386dc8e342dd427ec16b1b78ace7b5f', '5613ddb1a13e43b2224ced90936169e00f6536c88667734554baddbc8d3bbd8d962e7be4e91f8a5f', 0, '2019-02-03 13:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

DROP TABLE IF EXISTS `promocodes`;
CREATE TABLE IF NOT EXISTS `promocodes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `promo_code`, `discount`, `expiration`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ahs123', 5.00, '2017-12-08 00:00:00', 'EXPIRED', NULL, '2017-12-08 23:25:04', '2017-12-09 00:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `promocode_usages`
--

DROP TABLE IF EXISTS `promocode_usages`;
CREATE TABLE IF NOT EXISTS `promocode_usages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
CREATE TABLE IF NOT EXISTS `providers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `status` enum('onboarding','approved','banned') COLLATE utf8_unicode_ci NOT NULL,
  `fleet` int(11) NOT NULL DEFAULT 0,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `providers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `avatar`, `rating`, `status`, `fleet`, `latitude`, `longitude`, `otp`, `remember_token`, `created_at`, `updated_at`, `login_by`, `social_unique_id`) VALUES
(136, 'mohseen', 'khan', 'admin@admin.com', '988977896', '$2y$10$hS9EHigv3ZT1gKhVAgcaYO10rQAh6wQu746Vf4sh1DIshuXgD6sDG', 'provider/profile/462cf3b0575ff9998d324627df9a1f8e.jpeg', '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2018-11-13 12:59:05', '2018-11-13 12:59:05', 'manual', NULL),
(137, 'cavsvsvdvd', 'Sgsgdbxb', 'deeepa@gmail.com', '+917983406796', '$2y$10$.x8bsyI37lI113A0zl5wQOJwom5nM0JyO/KZQfjHJKP18s8G0XVMu', NULL, '5.00', 'approved', 0, 30.31242730, 78.02436590, 0, NULL, '2018-11-13 13:19:40', '2018-11-13 13:27:01', 'manual', NULL),
(138, 'Hello', 'Hey', 'halloween@hello.com', '+918449808780', '$2y$10$qXUBQNDHete.53T1xTsJn.LAWf/D7mlPHgi10/zVVIHHOo6eKk/U6', NULL, '5.00', 'approved', 0, 28.59362930, 77.31000590, 0, NULL, '2018-11-13 22:38:27', '2018-11-13 22:42:28', 'manual', NULL),
(144, 'Yan', 'Rodriguez ', 'yanrodriguez8271@gmail.com', '+17862815968', '$2y$10$7O8jFnBmsnvsO3YSL7MQ6.Ggj3yYJYeiCxwrdXUeSX0y5YWYuoHZ6', 'provider/profile/f906889b5d20bf4551f6202a598ac2bc.jpeg', '5.00', 'approved', 0, 25.89867310, -80.25848540, 0, NULL, '2018-11-20 04:26:48', '2018-11-20 15:20:12', 'manual', NULL),
(145, 'Fred', 'Mundis', 'githumbi3fred@gmail.com', '+254715363474', '$2y$10$0YTYca8wUyb3Xo6QovEcueHbo3GymTMi21w.T2vngZYpgPeV4vwm6', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2018-11-20 10:26:17', '2018-11-20 10:26:17', 'manual', NULL),
(149, 'Karan', 'Israni', 'karan.israni2015@gmail.com', '+919426473664', '$2y$10$WQb0PqAhDwe64nPjRKS0nufQbMbu6mJaDOyLB4FCHfZQdmc8uJfmC', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, '0DlR4zHSQc8YCVQT8xjo9XTPRvDlfddXmrPjdKdfykerGnGXyVWKdDUXwLRp', '2018-11-20 10:31:44', '2018-11-20 10:38:15', 'manual', NULL),
(150, 'abdul', 'rehman', 'sairzone1@gmail.com', '03009822743', '$2y$10$fY7JIRbQw.KwdccveF4CN.9sOC9POdoOYs9Ku7rFyUrMk9nIXwg1.', NULL, '5.00', 'approved', 0, 33.61255030, 73.12846480, 0, NULL, '2020-08-12 20:48:22', '2020-08-12 21:24:55', 'manual', NULL),
(151, 'Muhammad', 'Shahid', 'shahid.afzal423@gmail.com', '03016141511', '$2y$10$4TP3SxmuQPBhkSJEnTIvteWxYKcIL1ycZusxyA26v69DT.DKYvdi.', NULL, '5.00', 'approved', 0, 33.61255590, 73.12844440, 0, NULL, '2020-08-13 19:02:21', '2020-09-02 21:30:25', 'manual', NULL),
(152, 'Google', 'Map', 'test@map.com', '03016141511', '$2y$10$np729FTPfVry.0Hb0cSILOnEx27RCg04/lAIrb35C.sfJhreWMDIi', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-13 19:07:36', '2020-08-13 19:07:36', 'manual', NULL),
(154, 'Technical', 'Rana G', 'sairzone@gmail.com', '3009822743', '$2y$10$kWmM1LQXiJStkDDzRbBZp.YIm/UEIk2Jh4w6UDp1stom67GtUL8nS', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-18 01:55:26', '2020-08-18 01:55:26', 'manual', NULL),
(155, 'Shai', 'Afzal', 'shahidafzal33@gmail.com', '03016141511', '$2y$10$IYRsiC1o8s8JvAaud4ZS.eKa0gExYEm9Tct/7i21MsUduU5X.95i2', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2020-09-03 16:54:05', '2020-09-03 16:54:05', 'manual', NULL),
(156, 'John', 'Doe', 'playstorecnx26@gmail.com', '6364908617', '$2y$10$ns.wHJ7ycy/tGbVDKbx9a.E8R.57tu4tBQzxNeJL5YOju9.JSqIVO', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2020-09-12 21:26:21', '2020-09-12 21:26:21', 'manual', NULL),
(157, 'Technical', 'Rana G', 'sairzonme@gmail.com', '3009822743', '$2y$10$bXYts98Wcz7TZR1QTvRdkON54WW4NLd9Wk1WOkFRcnTTzrN/JktWK', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2020-09-13 09:58:19', '2020-09-13 09:58:19', 'manual', NULL),
(158, 'manolly', 'metchou', 'smajobber24.7@gmail.com', '004794103405', '$2y$10$XZsIBDnGFdDuHkyXxP5vLOlHUpZ9i15bJdnvn7P8cUpI/dfrvvx96', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2020-09-25 04:04:41', '2020-09-25 04:04:41', 'manual', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provider_devices`
--

DROP TABLE IF EXISTS `provider_devices`;
CREATE TABLE IF NOT EXISTS `provider_devices` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `udid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sns_arn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_devices`
--

INSERT INTO `provider_devices` (`id`, `provider_id`, `udid`, `token`, `sns_arn`, `type`, `created_at`, `updated_at`) VALUES
(1, 114, '46C44589-528D-458E-8699-0DF3E33CF5D0', 'AABBCCDDEEFF', NULL, 'ios', '2018-01-27 08:34:05', '2018-02-15 07:11:50'),
(2, 115, '1d3a916be105e5ee', 'dzLKyyyQ19o:APA91bGYKc94-GcRI-iJG2lSA9IdkDMvTxErhi91xYabJUIPapqTVHeluWhue0LxhPwbl-ArPjhDkLpRzotnNpJ8x3nYron3oYoSg8W8ETQJ5fChx2KybdGViWZU0OHl99qnNsw4sylE', NULL, 'android', '2018-01-28 06:35:32', '2018-01-28 06:35:32'),
(3, 116, '543ad3086d985f47', 'fDQj5sc3qxM:APA91bEIt1ogr1UVpTj2pDegLIS_2qbu1vdGv6lCr9u9LqgxH0L8r3iaRvFWjjTveG1LpLbLOOkodRILPFexhTNunxEBMGmCbD_6cmJqx3ezQzLyBsCORmyjaBuUJg42hUdPphfmsCnV', NULL, 'android', '2018-02-01 07:26:57', '2018-02-13 17:28:39'),
(4, 117, '', '', NULL, 'android', '2018-10-10 22:28:19', '2018-10-11 02:46:39'),
(5, 118, '3be5f8617cc82267', 'd_ftal2-T7o:APA91bHJ0pyAMADs1msdz5cHlsNXv3cGStkgjghPSBWy0lCEqVvEJdRFj5FzrE56vyH3_J7dNxW1gyLTMjFoifQyssnUXpW08vfYCYv9L3IkTd-QbSI69-3B1RwCvQgllXMsah8ASeuL', NULL, 'android', '2018-10-11 02:50:53', '2018-10-11 02:50:54'),
(6, 119, '91e2877936282d2a', 'e1oWCTjqtG4:APA91bH32xI2oeNx4af3lczBydkw8z8zLJt2hJuVKfwtPUxjLWeB-NqSamkgFhLXnmfA-ERfSBP47fN6RVkuoqc7OJT0pK0BWWQgYOo37t5d2QaELMwwvmVoQk9HWvz02zLtNjZBwJ1u', NULL, 'android', '2018-10-19 21:59:38', '2018-10-19 21:59:39'),
(7, 120, '3be5f8617cc82267', 'd_ftal2-T7o:APA91bHJ0pyAMADs1msdz5cHlsNXv3cGStkgjghPSBWy0lCEqVvEJdRFj5FzrE56vyH3_J7dNxW1gyLTMjFoifQyssnUXpW08vfYCYv9L3IkTd-QbSI69-3B1RwCvQgllXMsah8ASeuL', NULL, 'android', '2018-10-21 04:08:51', '2018-10-21 04:08:51'),
(8, 121, '3be5f8617cc82267', 'd_ftal2-T7o:APA91bHJ0pyAMADs1msdz5cHlsNXv3cGStkgjghPSBWy0lCEqVvEJdRFj5FzrE56vyH3_J7dNxW1gyLTMjFoifQyssnUXpW08vfYCYv9L3IkTd-QbSI69-3B1RwCvQgllXMsah8ASeuL', NULL, 'android', '2018-10-21 04:30:50', '2018-10-21 04:30:50'),
(9, 122, '2762f1056424a908', 'dWoMxhSDJoA:APA91bFC3gNLxMpF9dCZ1qDLJxUDw33-_Ik-GHWAa9s4kXQl1iP3URCAbG4fgsQ2uB2iOLqp6ol2CdYVntkOawk7JNOQR3H3HeeaJ0SIt5bIfq-Wxm_fEPbgjL236wiYJA5hfkgUuNTy', NULL, 'android', '2018-10-25 21:45:35', '2018-11-10 10:23:12'),
(10, 123, '3e2d451e7d10c28c', 'd-wOCyBIXI8:APA91bHF-Tf5x81BmBTfvE9YKs84r7VYVyNnE67qvTFI4YvgmKC40fd2yHlWipmaBbym8JQiWMh1AD7Oj5aMBl-nKwBjh7ZbHezHQHQ7ANXRCbgRrj2ldRYVjzDH3S1AZOT9tU1MTqEY', NULL, 'android', '2018-10-29 02:17:45', '2018-10-29 02:17:46'),
(11, 124, '9354cabbb0521eab', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2018-11-01 23:38:40', '2018-11-01 23:47:15'),
(12, 125, '50620c667ff373ce', 'c10VwHM5T84:APA91bG9sqihDgMD6aDpc3bFy_m-3TiHbazN3ZSWzqwahfUgGa9S8EvalshHe7P4POq2MB9c-MhyPMbErm7_gWLYIIxAZT2lWuAH0djHKjJVbXwc_p38IDjo6__-x4dTWoLjj4GmTM5M', NULL, 'android', '2018-11-05 20:06:19', '2018-11-05 20:40:46'),
(13, 126, '50620c667ff373ce', 'c10VwHM5T84:APA91bG9sqihDgMD6aDpc3bFy_m-3TiHbazN3ZSWzqwahfUgGa9S8EvalshHe7P4POq2MB9c-MhyPMbErm7_gWLYIIxAZT2lWuAH0djHKjJVbXwc_p38IDjo6__-x4dTWoLjj4GmTM5M', NULL, 'android', '2018-11-05 21:13:19', '2018-11-05 21:13:20'),
(14, 127, '10e7c9030d597819', 'dTD0tKW63Ag:APA91bEw_HziP-YuTtzqeN8_KJszeqO9AvO2Wddmtw9ZlDC_FFyaRxmI1WUwxXZY9zZLWFnTIp7AppGeJWvtwexiSu2GWKID9CpfkSfchzP4rm6gJCoy4nq_XZVKKiWVnVaw5kRd6W90', NULL, 'android', '2018-11-05 21:28:50', '2018-11-05 21:29:10'),
(15, 128, '7ae188ef0a24d6c3', 'eTAVK0VkUVc:APA91bGhrs9INJaTzHzZa5GSCD-PHxB82ZqemaAB9dZcjFXg20zhGCC7epmGt_AP8wghw-9EFb6XK9C9nNRyB6-lDoLN0S8F9UXyaHIVOMgLLO5nozrVfQ30EkkRnsdX2Ua3Kd_5O19K', NULL, 'android', '2018-11-09 18:04:03', '2018-11-09 18:04:04'),
(16, 129, '8666fce808b4a957', 'eV9L0EiBHSQ:APA91bF-ZjOwydQfbL73WLIZQWtm91rDTOyWR5ya849_un5WM10lduTOw8ex3npMu5833Nesgg1S6WPgCtntfoe_qNJSNql6BaHedEnhq0k7DO7Y32ft31et9xtcgkIGdv0lhLAapckb', NULL, 'android', '2018-11-12 05:14:32', '2018-11-12 05:15:04'),
(17, 130, 'c956ce0135bb8faf', 'e-c_VWnfGt8:APA91bGlk8uZ4g0p3ns53OfHjSKgrZTIOSrf0NC6nLJ-xrUbx0im2YNdVFjf6VDteLJhBw0zebjIl7PFoNvft-2OPnpQLAEm4_MSOZRka84cFxKSaC5vHnVsI0kuEBAGxc387jzHNxkQ', NULL, 'android', '2018-11-12 20:34:59', '2018-11-12 16:26:40'),
(18, 131, '50620c667ff373ce', 'cLDXFpR2h60:APA91bE2dNhOYu0TXifJARFC-C1Q9IMO__3aQPzvDicYPEVyr9m53S5E1hzF64Y3ImUAcgLs-xbuLnMOb4Nz10r8f3YcNaUlUcbi6Cwyvr-mnl7d4jDiOYupayFMrqHvclTLtdYWe46T', NULL, 'android', '2018-11-12 18:58:46', '2018-11-12 19:20:15'),
(19, 132, '3eb118eb3d1d9b84', 'dGMqJo4wyfA:APA91bFijfph3BGe-jlCjsW-hbbBgQY1W10cWatvpoW3y31EIpLKdU053k0rDsTLLPYxNtCIr2KLV95osSaZ39GtqRCfrmG5WcQMdAVwYzJVU9-vamawsoerckJFyZYDZf6IxMezyI2b', NULL, 'android', '2018-11-12 19:18:11', '2018-11-12 19:18:11'),
(20, 133, 'c956ce0135bb8faf', 'cNiRRjvUTaE:APA91bEgCHrVYG73BdKQkJDS-uXLQveapiCv-YUEFh_iIg2FY16UzALRm0CyXG6Y-8QdLYGwXGXLsCZvUles_wDgAR4gIZ42xoN_9Hc6hh2bsExZVex8n5yKIWsWhXVb7tA5TxIInLPl', NULL, 'android', '2018-11-13 11:42:44', '2018-11-13 11:42:45'),
(21, 134, '50620c667ff373ce', 'fpLXL7CAq0A:APA91bHvg9fYs7DcFu1Lp0hL2_N0ggZPC0Qo7opYnQOq_hZ8Lrf346ip4GPTgxaunPPRnZATL4yiqC0lPtg2vrCZyNKSs5C-mEFCFAuGdZBJft2a9-KHXquL8d4YTmtUHHjE-THml9Ow', NULL, 'android', '2018-11-13 12:25:57', '2018-11-13 12:25:57'),
(22, 135, 'b7f5657e279f61ca', 'fGjrI3psGlA:APA91bHtT8tdnI5QmGJGCbJPjiNaB0amgIoPd0d5rgprcZiR9oQANj_KCDGgULFOnSxCdxHcZbhLUAaZH_InkMMqAGcPgS23qFBUR3a-S1DVrfxb7ERsPfMohqMrRHDJRaxAyZUILzAt', NULL, 'android', '2018-11-13 12:37:25', '2018-11-13 12:37:26'),
(23, 137, 'b7f5657e279f61ca', 'fGjrI3psGlA:APA91bHtT8tdnI5QmGJGCbJPjiNaB0amgIoPd0d5rgprcZiR9oQANj_KCDGgULFOnSxCdxHcZbhLUAaZH_InkMMqAGcPgS23qFBUR3a-S1DVrfxb7ERsPfMohqMrRHDJRaxAyZUILzAt', NULL, 'android', '2018-11-13 13:19:40', '2018-11-13 13:19:41'),
(24, 138, '', '', NULL, 'android', '2018-11-13 22:38:27', '2018-11-13 22:43:06'),
(25, 139, 'e110cf68a7b795d4', 'cOrW8i_Nv1w:APA91bHfnaO6VGMXR-_M5VMOfeEC19dTRVs3S3NYkVYAoGvPQBKhzESnkUD4aoWV7W0LAUy01tA8IuHImvYxACP94_Jp9axNiHLs1hYedR7eNRwFGztBCfKkrkAu7y2TCTocMvQduB31', NULL, 'android', '2018-11-15 07:53:13', '2018-11-15 07:53:14'),
(26, 140, 'c956ce0135bb8faf', 'eKNL5HxzSN4:APA91bFTuuMTI_MostuMYg4h6BeSc_psAjG4zlfmoUWPxylTygOogtJXSGhwtoL9wHbLP4gR5M9Udgrk4O6VK6DyeySBcI_Q99c38p5pBuPiyqYEdfWn5-3GwVf1tfoLUR602qrCdCge', NULL, 'android', '2018-11-17 12:28:37', '2018-11-17 12:28:38'),
(27, 141, '5116fae118c1cabc', 'cYzBe-uNDVY:APA91bED5PRAB70X9bJ1TFRqFmSbIqkrWdCokRaR6rmbHoFGZ1fvpBszGyPBivsXd63mcdDxnZInpsfaEVKTvNv3QsG9WNkPvjprqrEH7_cEj-LGpOMXr6wgfkj6OlSPQchFPS6R1vs5', NULL, 'android', '2018-11-18 16:07:56', '2018-11-18 16:07:57'),
(28, 142, '5116fae118c1cabc', 'cYzBe-uNDVY:APA91bED5PRAB70X9bJ1TFRqFmSbIqkrWdCokRaR6rmbHoFGZ1fvpBszGyPBivsXd63mcdDxnZInpsfaEVKTvNv3QsG9WNkPvjprqrEH7_cEj-LGpOMXr6wgfkj6OlSPQchFPS6R1vs5', NULL, 'android', '2018-11-18 16:10:32', '2018-11-18 16:10:32'),
(29, 143, '578fdbcc169d7a32', 'fz4ZXaj0fx0:APA91bHt03TXtbauvMUXWyKs1n2_h-eGKGsflCZzknlxS1Who9l7MmszMTF1m1FiqA1Q4WHVDIzaR966SEaHAR_NJMu8q7hQ2gfYhPGwzzL78-qxLTKTH1l0YrIAyVgP1Qn8k4mVjHUj', NULL, 'android', '2018-11-19 12:26:50', '2018-11-19 12:26:51'),
(30, 144, '2bbf075622421530', 'dGgYCnxyrUc:APA91bFmqTvBcil7zA6jfNRRDJ-d1D7d1-jFwW-nPaVZG2IcxGbAgizqjTHUWM5Wumw8SWP7MfJPFlAt2uxtGSh96ujSXxBUqNuRHOjM4Bxk2NMLvSs8Wo6F20uWtg2wE83yFnHnz2ME', NULL, 'android', '2018-11-20 04:26:48', '2018-11-20 18:32:01'),
(31, 145, '578fdbcc169d7a32', 'fz4ZXaj0fx0:APA91bHt03TXtbauvMUXWyKs1n2_h-eGKGsflCZzknlxS1Who9l7MmszMTF1m1FiqA1Q4WHVDIzaR966SEaHAR_NJMu8q7hQ2gfYhPGwzzL78-qxLTKTH1l0YrIAyVgP1Qn8k4mVjHUj', NULL, 'android', '2018-11-20 10:26:17', '2018-11-20 10:26:55'),
(32, 149, '1f183eaec094d687', 'cPZ3zBjckMU:APA91bFZgJtBjuCHQ-P7figYl4xaDU8bkXjdwPGkdRmZ5OuMBMF1Xxps7BzcoZIjvcyiMWpc87tYLWmFhobDcAUZYhpVtjYjyOMgeSj0wbncwwQB6_hkQjAW808PXpOo89vqTRIm1Akc', NULL, 'android', '2018-11-20 10:31:44', '2018-11-20 10:31:45'),
(33, 150, '72694746a91accf6', 'cC-NyLMs-YE:APA91bFtBo4y-8uK5jLWJEQ_zTnc3pIy86Ctlm7Uz6nQk3SQssApBVkWEv2sHwzwOhqodzgtq0P-IjW0vmvqrWxidXJQpFNY0scD5wGifdBePdmQXqxAKA1kq2ouBCm9jfqzKJnIMY6b', NULL, 'android', '2020-08-12 20:48:37', '2020-08-12 21:22:36'),
(34, 151, 'b14cdf21b395b0e3', 'dye85GtDaB4:APA91bE08sEpvWMNOvGJf14YlSBj_QQZd5aWo5IECe5I3MiXMFcSh9OKPqBSkFA9Wk4BcwwTMgNwf4QjJLuAEut8MdRPJPnFulVm6Ltxn5bUWBdBE8a6r6VnSweA40K8aAKHS-gSaaLV', NULL, 'android', '2020-08-13 19:02:21', '2020-09-30 21:48:46'),
(35, 152, 'b14cdf21b395b0e3', 'c2wtk6zhJuU:APA91bEQ1X2BCCUELp2fuW59RJEPfCfShho7eIfZlrUBEkoz6EtNZsHi5cAFpguS9MMjSttSK2FSL_9_WPemW2Iejqy0NppFPam9Orl3bnmRwFJfiKUT-D0gT2w-A77r-En4Qst1BGbP', NULL, 'android', '2020-08-13 19:07:36', '2020-08-13 19:07:36'),
(36, 153, '', '', NULL, 'android', '2020-08-13 20:34:04', '2020-08-13 20:38:53'),
(37, 154, '3a13ac27bacb4616', 'c3VTgVKeaIw:APA91bEthX8WqyWCcHb7SDDoxuClMkKW_g1zErb0JcISQifRYiXYa2Pe22LGgGtZ7WAQkPrzk_Mp8BaCfh8kL67qw9RHzKcMzLszTbDha84Wuoz1QdZodniKjasobBZ93N1VGLiZHu0t', NULL, 'android', '2020-08-18 01:55:26', '2020-08-18 16:10:27'),
(38, 155, 'b14cdf21b395b0e3', 'dye85GtDaB4:APA91bE08sEpvWMNOvGJf14YlSBj_QQZd5aWo5IECe5I3MiXMFcSh9OKPqBSkFA9Wk4BcwwTMgNwf4QjJLuAEut8MdRPJPnFulVm6Ltxn5bUWBdBE8a6r6VnSweA40K8aAKHS-gSaaLV', NULL, 'android', '2020-09-03 16:54:05', '2020-09-03 16:54:06'),
(39, 156, 'e6ddfbc1ed90380b', 'dnxDj62t_so:APA91bHJUi5Ew52UdJLxIm1faOBpZlR5atjndwPWygxfhC-MWSOI5M4Bzojl9v0R2axvIP-p0ALPXg7TRvVGg3iTWUvN_KWjlOJuMzhmUNj4qH16u0ztCH8WBpgKymVb5hDLY5u1yUlp', NULL, 'android', '2020-09-12 21:26:21', '2020-09-12 21:26:59'),
(40, 157, '1d3e49ed07c88995', 'fzQMmKFLXYw:APA91bFnLxB61KcebaAM4iV4zt1QPkEM47ee-61ihb1un0ybGzlYl4I1NDB7vf59_FlPTh7i_nvpb60C_C_PvmO_7djuFC3m4Aq1nb7-RtPEmPouOXO9E3AsISVRpGVwhOw7nECc5uOn', NULL, 'android', '2020-09-13 09:58:19', '2020-09-13 09:58:39'),
(41, 158, 'eee8f0f2f3963ded', 'cafBWsQ1flc:APA91bESKrNvIqaXBvgwE1VWef3QFbM0c8gJ0m2KEt-m4yf9pzbFk046OSy3CzRsdHfLOUCoY_a47OS1vGs7UwGn2UjaAzMiX556CFiU8gWAqtRegAc91dg9EhO2dwZrqfaeh8Y90RQw', NULL, 'android', '2020-09-25 04:04:41', '2020-09-30 21:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `provider_documents`
--

DROP TABLE IF EXISTS `provider_documents`;
CREATE TABLE IF NOT EXISTS `provider_documents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_profiles`
--

DROP TABLE IF EXISTS `provider_profiles`;
CREATE TABLE IF NOT EXISTS `provider_profiles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_secondary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_profiles`
--

INSERT INTO `provider_profiles` (`id`, `provider_id`, `language`, `address`, `address_secondary`, `city`, `country`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 112, 'English', '', '', '', 'US', '', '2017-12-08 23:15:23', '2017-12-08 23:15:23'),
(2, 116, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-05 15:02:54', '2018-02-05 15:02:54'),
(3, 121, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-21 05:16:24', '2018-10-21 05:16:24'),
(4, 122, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-26 02:48:44', '2018-10-26 02:48:44'),
(5, 134, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 12:34:56', '2018-11-13 12:34:56'),
(6, 144, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-20 05:35:29', '2018-11-20 05:35:29'),
(7, 150, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-12 20:54:14', '2020-08-12 20:54:14'),
(8, 151, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-13 19:09:38', '2020-08-13 19:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `provider_services`
--

DROP TABLE IF EXISTS `provider_services`;
CREATE TABLE IF NOT EXISTS `provider_services` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('active','offline','riding') COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_services`
--

INSERT INTO `provider_services` (`id`, `provider_id`, `service_type_id`, `status`, `service_number`, `service_model`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(2, 2, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(3, 3, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(4, 4, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(5, 5, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(6, 6, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(7, 7, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(8, 8, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(9, 9, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(10, 10, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(11, 11, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(12, 12, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(13, 13, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(14, 14, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(15, 15, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(16, 16, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(17, 17, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(18, 18, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(19, 19, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(20, 20, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(21, 21, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(22, 22, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(23, 23, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(24, 24, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(25, 25, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(26, 26, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(27, 27, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(28, 28, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(29, 29, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(30, 30, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(31, 31, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(32, 32, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(33, 33, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(34, 34, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(35, 35, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(36, 36, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(37, 37, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(38, 38, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(39, 39, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(40, 40, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(41, 41, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(42, 42, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(43, 43, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(44, 44, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(45, 45, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(46, 46, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(47, 47, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(48, 48, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(49, 49, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(50, 50, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(51, 51, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(52, 52, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(53, 53, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(54, 54, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(55, 55, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(56, 56, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(57, 57, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(58, 58, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(59, 59, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(60, 60, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(61, 61, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(62, 62, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(63, 63, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(64, 64, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(65, 65, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(66, 66, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(67, 67, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(68, 68, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(69, 69, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(70, 70, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(71, 71, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(72, 72, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(73, 73, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(74, 74, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(75, 75, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(76, 76, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(77, 77, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(78, 78, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(79, 79, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(80, 80, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(81, 81, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(82, 82, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(83, 83, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(84, 84, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(85, 85, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(86, 86, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(87, 87, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(88, 88, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(89, 89, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(90, 90, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(91, 91, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(92, 92, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(93, 93, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(94, 94, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(95, 95, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(96, 96, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(97, 97, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(98, 98, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(99, 99, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(100, 100, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(101, 101, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(102, 102, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(103, 103, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(104, 104, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(105, 105, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(106, 106, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(107, 107, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(108, 108, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(109, 109, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(110, 110, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(111, 111, 1, 'active', '2335', 'AUDI', '2017-12-08 22:06:29', '2017-12-08 22:09:11'),
(112, 113, 3, 'offline', 'lxz 2344', 'suzuki 2017', '2017-12-08 23:11:47', '2017-12-08 23:15:23'),
(113, 112, 3, 'active', 'lxz 2344', 'suzuki 2017', '2017-12-08 23:12:31', '2017-12-09 00:36:07'),
(114, 114, 1, 'active', '1213', '1990', '2018-01-25 23:09:44', '2018-02-15 07:13:28'),
(115, 115, 1, 'riding', '2211', 'Audi', '2018-01-28 06:34:38', '2018-02-03 13:13:03'),
(116, 116, 1, 'offline', '3939TX', 'Chrysler 200', '2018-02-01 11:07:50', '2018-02-13 17:30:21'),
(117, 117, 1, 'offline', 'CY123', 'AUDI Q7', '2018-10-10 22:52:18', '2018-10-11 02:46:39'),
(118, 118, 1, 'active', '12121212', 'audi', '2018-10-11 02:54:00', '2018-10-11 02:54:46'),
(119, 121, 2, 'offline', 'uk07ta2282', '2018', '2018-10-21 05:04:29', '2018-10-21 05:15:52'),
(120, 122, 1, 'riding', 'CY123', 'Audi', '2018-10-25 21:47:29', '2018-11-07 16:11:47'),
(122, 131, 1, 'active', 'uk07ta4901', 'audi q3', '2018-11-12 18:59:27', '2018-11-12 19:14:29'),
(123, 132, 2, 'active', 'uk082222', 'BMW', '2018-11-12 19:18:50', '2018-11-12 19:19:16'),
(124, 133, 2, 'active', 'PB 11 BC 9911', '2008', '2018-11-13 11:43:19', '2018-11-13 11:45:43'),
(125, 134, 1, 'active', 'UK07TA 9857', 'INDIGO', '2018-11-13 12:27:18', '2018-11-13 12:31:56'),
(126, 135, 1, 'active', '	UK07TB2281', 'audi q3', '2018-11-13 12:38:30', '2018-11-13 13:16:01'),
(127, 137, 2, 'riding', '	UK07TB2281', 'BMW', '2018-11-13 13:20:55', '2018-11-13 13:35:22'),
(128, 138, 2, 'offline', 'abcd', 'efgh', '2018-11-13 22:40:49', '2018-11-13 22:43:06'),
(129, 140, 1, 'active', 'PB 11 BC 9911', '2008', '2018-11-17 12:29:13', '2018-11-17 12:42:08'),
(130, 142, 2, 'active', 'uk07ta0023', 'Matiz', '2018-11-18 16:12:33', '2018-11-18 16:22:08'),
(131, 144, 1, 'offline', 'dhl89', 'bmw', '2018-11-20 04:29:14', '2018-11-20 18:32:25'),
(132, 150, 1, 'active', 'vbf 56765b', '2007', '2020-08-12 20:50:23', '2020-08-12 21:23:20'),
(133, 151, 2, 'offline', '12345', 'qw', '2020-08-13 19:03:34', '2020-09-04 20:10:59'),
(134, 153, 1, 'offline', '12345', '35', '2020-08-13 20:35:39', '2020-08-13 20:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `request_filters`
--

DROP TABLE IF EXISTS `request_filters`;
CREATE TABLE IF NOT EXISTS `request_filters` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_filters`
--

INSERT INTO `request_filters` (`id`, `request_id`, `provider_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 16, 114, 2, '2018-02-03 13:11:02', '2018-02-03 13:11:23'),
(10, 16, 115, 0, '2018-02-03 13:11:02', '2018-02-03 13:11:02'),
(11, 17, 115, 0, '2018-02-03 13:13:03', '2018-02-03 13:13:03'),
(32, 51, 122, 0, '2018-11-07 16:11:27', '2018-11-07 16:11:27'),
(38, 55, 132, 2, '2018-11-12 19:21:19', '2018-11-12 19:21:30'),
(47, 62, 137, 0, '2018-11-13 13:35:10', '2018-11-13 13:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

DROP TABLE IF EXISTS `service_types`;
CREATE TABLE IF NOT EXISTS `service_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `fixed` int(11) NOT NULL,
  `price` float NOT NULL,
  `minute` float NOT NULL,
  `distance` float NOT NULL,
  `calculator` enum('MIN','HOUR','DISTANCE','DISTANCEMIN','DISTANCEHOUR') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `provider_name`, `image`, `capacity`, `fixed`, `price`, `minute`, `distance`, `calculator`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sedan', 'Rosemont', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/424b1f7ec3b843f8e6f51126344a17feb8b9ec42.png', 4, 4, 1.38, 0.4, 1, 'DISTANCEMIN', NULL, 1, '2017-12-08 20:12:27', '2018-11-20 12:08:36'),
(2, 'Van', 'Rosemont', 'http://8476991100.com/uploads/4a94808f4b637857e94e99bd4f479e27c80b99f5.png', 6, 5, 1.5, 0.4, 1, 'DISTANCEMIN', NULL, 1, '2017-12-08 20:12:27', '2018-02-05 11:48:21'),
(5, 'dsf', 'Rosemont', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/a02d3e1b335274f9ac865037ea6cd36d36716e4f.png', 4, 5, 1, 2.4, 1, 'DISTANCEMIN', 'fghfghfh', 0, '2018-11-20 12:59:11', '2018-11-20 12:59:11'),
(7, 'Tempo', 'Tempo', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/d746cd5328b11ae43f9b71d47cb133f9e2d2ef8b.png', 5, 20, 0, 20, 0, 'MIN', 'Tempoo', 0, '2018-11-20 17:11:43', '2018-11-20 17:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'DROSJ'),
(2, 'site_logo', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/2d6e894b8eee2e59d66eb9759c06fb48e26bd28b.png'),
(3, 'site_email_logo', 'http://localhost/logo-white.png'),
(4, 'site_icon', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/6f9a91e0c5307fe68eab2697d2927ef596684cd1.png'),
(5, 'site_copyright', '© 2020 DROSJTAXI'),
(6, 'provider_select_timeout', '20'),
(7, 'provider_search_radius', '10'),
(8, 'base_price', '50'),
(9, 'price_per_minute', '50'),
(10, 'tax_percentage', '0'),
(11, 'stripe_secret_key', ''),
(12, 'stripe_publishable_key', ''),
(13, 'CASH', '1'),
(14, 'CARD', '1'),
(15, 'manual_request', '0'),
(16, 'default_lang', 'en'),
(17, 'currency', 'र'),
(18, 'distance', 'Km'),
(19, 'scheduled_cancel_time_exceed', '10'),
(20, 'price_per_kilometer', '10'),
(21, 'commission_percentage', '0'),
(22, 'store_link_android', ''),
(23, 'store_link_ios', ''),
(24, 'daily_target', '0'),
(25, 'surge_percentage', '0'),
(26, 'surge_trigger', '0'),
(27, 'demo_mode', '0'),
(28, 'booking_prefix', 'TRNX'),
(29, 'sos_number', '911'),
(30, 'contact_number', '435243523'),
(31, 'contact_email', 'info@DROSJ.com'),
(32, 'social_login', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `payment_mode`, `email`, `mobile`, `password`, `picture`, `device_token`, `device_id`, `device_type`, `login_by`, `social_unique_id`, `latitude`, `longitude`, `stripe_cust_id`, `wallet_balance`, `rating`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(111, 'Shani', 'Za', 'CASH', 'shan_fusions@hotmail.com', '03203213211', '$2y$10$iSdzjxqEnsLs2nmCe6RpkeVu9KzLkQS6jp7/olAXhmtXEjf1GOrPy', NULL, 'frH1fQlTTaU:APA91bGauJbrF7ZpAk5CPdFVOCleZoTVd8R2dm017J7xOh2NuQ5RUy5RKXh9icTRs9W4vglMVaTcoxh7WNoeqtj8-zW70EnMjchwT-V5pslmkxJXzffQmyioQwTja8AGfQx23ziTRu8O', '1d3a916be105e5ee', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, '91TuUXj1kCyxaleQ1EULmMm2Eo3j8EKv2hBpROhS6r1SrHmPsSKItulRiLuj', '2017-12-08 22:07:12', '2018-01-29 07:19:50'),
(112, 'test', 'user', 'CASH', 'testuser@gmail.com', '03431231235', '$2y$10$X7WZnexKnsONsp7PHOyxfua.FCXmyjigA30RmSNuD/Ff4nwbjtWGS', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, '0wTfeqmoczcuEiyhkTRwQtb5k1zAzikrH3B4ZGcrE8JQ4IsII2AyK6o3BNJm', '2017-12-08 22:45:33', '2017-12-09 00:56:23'),
(113, 'Jamil', 'Rehman', 'CASH', 'jamilurrehman1@gmail.com', '+923360007017', '$2y$10$GdviX991ekCQzT4uVLdE4ubPHNSbo.OSovYL8bl7krj7oOakzb2JW', '', 'cHnHGvCKpFQ:APA91bE16GNgKLFG_Lg14cwHqiBzxVEtF3ygTIAh8lZDgqo_a1OFt8vRmxtkVMFHCt4GxEmJYdq0pJpDnUz9WOlz3DyRW66k4CkWGOhQW0EsVE6z-ldAVZMdnk_wRf5wsr0BxueKZtwO', 'f646e58186f51f5e', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-01-25 22:05:06', '2018-02-01 18:58:34'),
(114, 'Anindya', 'Mitra', 'CASH', 'anindya@zoomwebmedia.ca', '9876543210', '$2y$10$IDhMRXGyoOEefPeOwLse3udUc3D0i6dolJteC0eDHLzGnRbZp/gem', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, '8G77bbViUNzxVJPfqykqYGnpKH8svm7RampageZsMBgy2obkySDKaFB8mY7X', '2018-01-30 02:39:30', '2018-01-30 02:39:43'),
(115, 'Adham', 'Sindy', 'CASH', 'adhamsindy@gmail.com', '7739468351', '$2y$10$t7kF05yS3/hh0ejgz/QlU.GwY9VVtJqoBAqzXZfoPF6lYjl3EumrS', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-02-01 11:10:59', '2018-02-01 11:10:59'),
(116, 'Halmat', 'N', 'CASH', 'hkurdee@gmail.com', '8473122011', '$2y$10$i/ZSYaXnzgNIrkbBr5G95e8Xehy4Mj5EC0ng4mN2FEL3b6YNUWJrW', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 864915, NULL, '2018-02-01 11:25:11', '2018-02-10 11:50:35'),
(117, 'Halmat', 'Nanakaliy ', 'CASH', 'taxirosemont@gmail.com', '+18479222888', '$2y$10$Ywk.nXPOam1q7rOuRsESNO/L0GIdp1aluqGLT7mRQ22g6fc3zxX9G', 'user/profile/e4fc38a2ec1b98376ab36f9eb29f2df8.jpeg', 'dse9aICVMsw:APA91bE1kI42rYihZg8Df1xfaXAB0UTgzLDpoBfosg870Mybg547-mjk89GlxzdVB3lXE2PrMiZ8O7ukGhmlGu-mbxFnxvxV0ZtIDOk0wzjYOLjvGifYDKZMH1dyKktrSlckTgx1xU9c', '543ad3086d985f47', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-02-03 12:55:33', '2018-02-05 15:06:27'),
(118, 'Shan', 'Za', 'CASH', 'edaysoftwaretrading@gmail.com', '123445', '$2y$10$2E7g9eqTYPh96/p1VN6L/OJJGFKgBUPZ4R/9Evg.WmSyUzuWH9uKy', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-02-03 13:11:01', '2018-02-03 13:11:01'),
(119, 'DarrylTahWQ', 'DarrylTahWQ', 'CASH', 'monicalee923@yahoo.com', 'Senegal89182821696', '$2y$10$45IKGAxDhd8x1PNP9VnTpOWNpBH5MUwmKs8DCQRDPqgOWU02rWi9G', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-02-09 18:14:37', '2018-02-09 18:14:37'),
(120, 'Simran', 'Parjapat', 'CASH', 'simran.infosif@gmail.com', '+919779502901', '$2y$10$sBP5KvbXs5tDWvDn1P5ADuzhq0OWlGP/mPQMyh6IJgDdbfKBu5ZHu', '', 'ceZlY5OKL-8:APA91bFNrnkptvhcggkNlm2fFb_T2tyK-T7QhWHhsnzzG3HpWFuy0B_6AXED2dSTRNtnH-DZZ7QULOaeV-yOWI799HVj6EwGt55TjjJ4Aty2-x42oDdhLBtQtT-EvnhiwtQlpEiILA0-', '3be5f8617cc82267', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-10-10 22:22:24', '2018-11-13 11:44:59'),
(121, 'munish', 'munish@gmail.com', 'CASH', 'munish@gmail.com', '7696591560', '$2y$10$W9h7BHV/XEDc3y/ic8YFRetnMiBwlMFuyR9rjirZ8rry3fWZOAZW2', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-10-11 03:00:46', '2018-10-11 03:00:46'),
(122, 'Rahul', 'infosif', 'CASH', 'testusertwo@gmail.com', '+919815939543', '$2y$10$tcBgkeAjrMTTqnBflnJp1u6FmbOeOrWRljJXB2UL3igSCul8Ut3OW', '', 'fId9eb779Pk:APA91bFEzBhxhj5H1deoRQ7kpQofb3CyBx_LKeT37p7X6c01zXIvSQHIgA3D341g9tCEpxK-i19OjisUXU8O9CTgo4iOSlLUFHsTnXLu8ApKgMgmOrbP65VF5LUjJ5vG17QWy37crYT1', 'c9582f821755fd61', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-10-25 21:53:50', '2018-11-07 16:13:20'),
(123, 'Eyj', 'Fuok', 'CASH', 'isse098@gmail.com', '+9607745999', '$2y$10$cWnIstnm6g9Tm8y4n9ycG.gUuMc4/TZOwdBiYEg3gWFjF1e/PiMMi', 'user/profile/e6f2c9df1c535c219c1ccaa96ad75dcf.jpeg', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-01 09:51:06', '2018-11-10 23:04:10'),
(124, 'Fauad', 'Shaikh', 'CASH', 'fauad@msn.com', '+447366408929', '$2y$10$6q9wSAY1ESH9FizwsepQt.zoo8qJawN5c31vE1z433cetNm0d6UYK', '', 'diyHrLTB04Y:APA91bF_z7lg7e0eSxd7iVrZwDpZojosf-HqDcQuucaGQUSazpjOc0y20Fm1YhiTQaC2295NjGNhX93nx23zqZeFL_z_bnQMweMU1gz1xfVSk-h1BMLkfnrwpgRlmDqIYjlS6f_abIet', '3e2d451e7d10c28c', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-03 03:32:53', '2018-11-03 03:32:53'),
(125, 'Adil', 'Home', 'CASH', 'rahis.ansari789@gmail.com', '+919889667004', '$2y$10$m2z3XwdIYNvY0Y.H9BKoIermRwdJZWNQ0Vi5itU0DSfVn/htJj2M6', '', 'flbdeO_W-jo:APA91bFRZshCJtB08R9VlH03AB8KEWYdVv8d1APE47nUjX1lOxYqir56T7cZw9JvI8v9HbE6yxvwF8zwyqNTMGYnjCLKQ0w8pwTaVHmknmlFiq4PB2zLytnVN3WY6whgSCNnfvBqxYJx', '50620c667ff373ce', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-05 20:07:22', '2018-11-05 20:07:22'),
(126, 'Sajal', 'Kumar', 'CASH', 'sajalkumar25272@gmail.com', '+919997922814', '$2y$10$cvDgn5C5Zz6P.IhhMoPwSe7N.nhoYxQw.N6Minbk/bVjjHybn0kpe', 'user/profile/300817acb066364d7a273791da30acc0.jpeg', 'ctNZu7pomSA:APA91bE7waRbx5V3vxGlKAJopXCLvmiV9ax_4X6oJzcT2gs4TKL3HUPBpkQrD6cVPNuJIc8WyftkUd-DYovijEm1GEuGoMoroJRihlSyY8u0EsRaCZaVxULW4IRvJ8iiT-Ioqewm-dvq', '87cf58b8cf6ca193', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-05 20:40:02', '2018-11-05 20:42:34'),
(127, 'Jonathan', 'Schonherr', 'CASH', 'j.a.schonherr@gmail.com', '+50762314080', '$2y$10$PoGxuP3DHPDHfQaTn16du.46V1.MxVr9uUp3qlwEgcTl1aePS6wSa', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-10 08:48:53', '2018-11-10 08:51:03'),
(128, 'Sagar', 'Maha', 'CASH', 'sagar.mahamuni23@gmail.com', '+919028919683', '$2y$10$z7T/C672PNGbXAiIeLqXbO5tNU5t81/Z50g5LtQaCm1BckcOl.8tu', '', 'dwbbID7I2IA:APA91bEuJHC0UpgpiZp_qOVZ7I9mxQDLQ-xQ5raGTr84WxH6MqYEs0aEerGXrfRCGwiQDBr2m7VPvNTT9iOLZM3vXMeXa_-p8FuDWLm3r_lNRdPLmLIWrDWQMtk4fSVR5R8W3bVStVFR', '048ce89c64e91760', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-11 01:08:53', '2018-11-11 01:08:53'),
(129, 'Shubham', 'Monga', 'CASH', 'Shubham.infosif@gmail.com', '+919877814824', '$2y$10$6albrLnfDPzY.VWBUaPLfu589jsM9wa4vjHL.HcOlBXvHcMOowp1a', '', 'dpuekMZDOq4:APA91bERE5actTChz-XA5iuEj9527kVeos9OIqhdnYqDqQtIEY_UuzmXTkj3_IvkMeCLkV6uyvjENeFpfKqALYoMhf3y3UktKHtZys5EAc3ptNB9tx7YLvcfuXfNM5d3_Abl5R0QuDLq', 'c956ce0135bb8faf', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-12 20:37:17', '2018-11-12 20:39:20'),
(130, 'Sanjeev', 'Kumar', 'CASH', '24x7cabs@gmail.com', '+919889667004', '$2y$10$FoPjcPmPjPBTPBLk.ASU4eabA0PoMfvwtaQGMg0AgbzavS8ScifXG', '', 'dbR1reIOnMQ:APA91bHIB4MaGKkjHzGyp2Fk1KMNYXf_xViLEltdaS-BLkAb_ET4x2ab_AeL6KJNpuUj4UxxW9_WeDMXvV8pVRhkKTPlvZuAk1tw7RoqoVgYKqgiNN1v7eSdF59Bzqqytssq-qrVNFQe', '50620c667ff373ce', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-12 18:42:53', '2018-11-12 19:21:19'),
(131, 'Mani', 'Kumar', 'CASH', 'manishnitradehradun@gmail.com', '+917017132634', '$2y$10$b3CjLz5vAQEq4LXuwHkFMuIDXDkOrdnIhawGCwDyQ54u26HKIjv8.', '', 'cVIqSWTy87k:APA91bFvtsjoRC-FNi65kIy8R3MjshQwVomATCs3Nu6D98qM98BKbISXu6VpmwRDhtnzNG0GmvLNBWRWS1wMjSCeE7QuVixYPpDD9u6d8-i42xFVF4xFY6jxiFeLKrIad94OL9vqZ7DX', '3eb118eb3d1d9b84', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-12 19:04:56', '2018-11-12 19:07:46'),
(132, 'Rohit', 'Bansal', 'CASH', 'rohitbansal@gmail.com', '+918410130697', '$2y$10$E1Buvi9AzmGJJPX.zdHX0u6ptMhNJxAv8BFzTB4djYxMo1UCPxCcy', '', 'fwbqi-pDo4o:APA91bGNp2PTv7nz25XbOTrSXsZ0xuK111JkpyYaaMH3WFCpadB_VbkYueowKPrAzBhetHcYUewrR9mblp5FjxYgyjHnHBZrNVGbWskRbjwdzAP6c4V6gUHv4U52Tc0432XbQfEQQdHY', '50620c667ff373ce', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-13 12:29:49', '2018-11-13 13:35:10'),
(133, 'Hello', 'Hello', 'CASH', 'hello@helloween.com', '+918449808780', '$2y$10$4a7RbYY2XXjKkOJD69UUP.StL1uRpfBT5rMMVzXFRCEAYDclr/xka', '', 'eIsZ5pVrv7Q:APA91bFyUVaKJlV-iIS0zUaWGUwBKXHLYK5_ylV_TvAnEqaSwHchAPJRj6387p-2YVsNKuyuqFbiqviyr5MAjzOdnODLwgsF-39vFA7YkZ6jb70EMfLfWIqkKhsfhIFp-9jZxiDxV0VY', 'eaf0c628e5832773', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-13 20:35:50', '2018-11-13 20:35:50'),
(134, 'Luis', 'Mareze', 'CASH', 'luismareze@gmail.com', '+5516981512567', '$2y$10$ffYhnfNTSYXxISJsQCmqe.YTkfwfCxrSrtCOdX7nbfOWst8cX86Xi', '', 'cN7Tnl3T4iA:APA91bGyVd7m2eYefqR-JlppdtnnwJ6kEr6StjpNnvRnI69eTHH9L5sCv59arpO0ApC9Jks05UxRJ1Qz67_J3VAWuyswj51uOGY1OZ8qiEkBVrZBIsQo8oVW_4zK5D3jzuabytX6fQU1', 'e110cf68a7b795d4', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-15 08:05:05', '2018-11-15 08:05:05'),
(135, 'Paulo', 'Paulo', 'CASH', 'paulinhovca.mobile@gmail.com', '+5521980878461', '$2y$10$ZyhR1sZtjUqFshjIYaeWk.406ogQ1snBr13FUxuYb9QO5pBDTpqYu', 'user/profile/0e53c7e59937c37a165a6199c7119169.jpeg', 'cuXVaSQzqxE:APA91bHyMkM0_mQ_tK-R-6BOkZ4VfKJJMLaTGXsjROzii8c_nZGyCwH2iQu-O3NgY3liXJIT4U8yJK-ay0W8MfrNmA8xpUb_oGpABZat82oVr2rSfORHDR-gDEVWBNwrQOdlKMYhrtam', '75c582af575cfe9', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-16 06:31:19', '2018-11-16 09:52:05'),
(137, 'Omninos', 'Solutions', 'CASH', 'Tester@gmail.com', '+919877814824', '$2y$10$TXYno6wXKYNMMqxrseCCueQ88i6ygeLWySkogC6h5SLJl.Kc6CGTq', '', 'cyhI8DbnCU8:APA91bFJ5r-jytdAxgTRhKYseTexkrPEzQMAsgz1GDiJNq26bGfH5r6qL-0vxXFSsPfvHSpGjOq8PXd7qTCPtN3o0yqrUoDECkPa9LHOpdlg_dA0FGC2JD-wwjPRX32oB1ZEeaRTbT9g', '578fdbcc169d7a32', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-17 12:24:30', '2018-11-19 12:31:15'),
(139, 'Test', 'Test', 'CASH', 'test@test.com', '+918449808780', '$2y$10$ZULjQUxPaMOJwwmIFTEzve/Xhg96xE4IUSV0SYzkpFZVFc1Yo.y16', '', 'edT0ecnB92w:APA91bGLtAeJh9BHs460Lnsfn6riMnV2tJxMtABIEmTbT6aTR4rRhbLMtHZ7dBTJSEbQfyDgQ2d7csAMmw5LawWD_YCmr0lz1GmDnuL8YNcR445PCfflYTXFo3nLmKk6l41JWKOgdGvx', 'eaf0c628e5832773', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-18 16:15:05', '2018-11-18 16:21:21'),
(140, 'Swapnil', 'Kharat', 'CASH', 'swapnilkharat0@gmail.com', '+919833806710', '$2y$10$KqQhDfqbMlxQ60jcwUV1V.r9RueGekRIqOviBrsyKMJC08wiJoOWe', '', 'd2ezhCPuGcM:APA91bGx2xGBu4-lVVSY79YoIABgZmvfWtYBcma8hiYSqTB47ft9BN9uAwDoHrlCcW_n9xgX9rdO8iKMu7rmAEfAEUuiHp5DyWjqf1NsdoE9eDBkHkNSmtjIi_84zeHnGR9kCuruv_FQ', '08b0212201dc8b73', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-20 02:16:23', '2018-11-20 02:16:23'),
(141, 'Yan', 'Rodriguez ', 'CASH', 'yanrodriguez8271@gmail.com', '+17862815968', '$2y$10$9h1IQmxGICJXH3J4QnLrbezVprcOV8y/Y/fVuS9MBs.dQjpETQbeu', 'user/profile/f906889b5d20bf4551f6202a598ac2bc.jpeg', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-20 04:33:04', '2018-11-20 18:30:42'),
(142, 'Ama', 'Lionre', 'CASH', 'amarilis.garces8990@yahoo.com', '+17862816965', '$2y$10$3PGrNSwgAWLON0OuNZleB.vVMIvzpoJpFS9OpMdvskuPOrlMoB6Hq', '', 'cZgh5XTQRMg:APA91bFPiX52Z0VL62QEPKU3fLLMoAWnBdNsUolz2j2fOog-yicd1fIHxBJ36PGbEvq2iaWDcrZpqqBEixton0f-laVRxS39XEFWyCaN-VqvXMlB0C7liIbMS_gBHkO7NH106SKZMPku', '4ecd1a26d029da5f', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2018-11-20 04:47:14', '2018-11-20 04:49:18'),
(143, 'Karan', 'Brahmaxatriya', 'CASH', 'kbrahmaxatriya94@gmail.com', '+919426473664', '$2y$10$353Y6bkS5HmrfFh0EYxFpeThrb.KECaS.IOX1Wz8UJOPwfT42f0ZG', '', 'dgMjLwXfCK4:APA91bEQBkcCPqnbeaFMCK9ZXrYYqsZ5Y1Pb5yjf4dtzgmP0PMIwh9ZAWVL-XRQQcAabVBlaatiCabpD6TA4H2gnN3fZI1wXP4TCtfMYpqsZ_2GH7YhUOydLecNQ9WPpmollp0zmey9M', '1f183eaec094d687', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, 'VFPLLlhC4yKZd1PyRuCzT4L824x5kHQnNeYJ9LBRwhDITPk49uTtKC0bqWMX', '2018-11-20 10:12:08', '2018-11-20 10:29:04'),
(144, 'Muhammad', 'Shahid', 'CASH', 'shahid.afzal423@gmail.com', '03016141511', '$2y$10$/d07koZ5Na2IwC/N2bWT.ehAP7Ydmh7s//kNdhR6nsj5oIl6t5rBW', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2020-08-13 16:22:00', '2020-09-08 15:34:18'),
(145, 'Waseem', 'Bhatti', 'CASH', 'user@waseem.com', '03016141511', '$2y$10$s7uIzOQZBd/tUhBzttEgAO3n/zwdNDaVsh3TnTucizpSbAgqNzic.', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2020-08-13 16:45:02', '2020-08-13 17:14:45'),
(146, 'Andriod', 'Test', 'CASH', 'mobile@test.com', '03455119056', '$2y$10$TqiI6rvC8RikTF0upksatOq2tX0dfZBHH2EW8pfpZvwZYKrEaAJli', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2020-08-13 17:15:55', '2020-08-13 17:23:16'),
(147, 'Technical Rana G', 'Rana G', 'CASH', 'technicalranag11819@gmail.com', '3009822743', '$2y$10$CF.u0dYwO3cbNBJ.7JoS4.cy7/69KtqZQEWdUgC7Y0k1G62mHkcL6', '', 'c31lfS4kmvQ:APA91bGPT1YFy_h9bVMKVp7rVt2VZRM4Qh6w1Ni9vmSpNnX7GhAnEOq7VtniY9s62fRnaOvbXeYGRzOhr3K8ZT-w1Zi88rSbmVLbMZksGF4dTlGEqxvTxwmKpn9IOqr6OJ3U3--mDX01', '675ee1b3c045d0b0', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2020-08-18 16:11:26', '2020-08-18 16:11:26'),
(148, 'Technical Rana G', 'Rana G', 'CASH', 'sairzone1@gmail.com', '3009822743', '$2y$10$C0V.1Rd51l51pfN0E2thkuFaCGjn.4ttysm9ul/LZn2V05SAHt.vK', '', 'f9ujq4FOmgY:APA91bGBrgpZgsXVjz7FfUsgOuPtfMQdTxmiQLRaHP19CnIdMtB6VOHvQTnuUIiC1pUyFlXdEbRgg0bGAWWg8NF8DaSvxJMT_3LLQQiNzC3Pc6Ii4g_sfckbcy4GN4Et5mibIVaQzAxy', '675ee1b3c045d0b0', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2020-08-18 23:44:14', '2020-08-18 23:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

DROP TABLE IF EXISTS `user_requests`;
CREATE TABLE IF NOT EXISTS `user_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL DEFAULT 0,
  `current_provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED','SCHEDULED') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL,
  `cancel_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `distance` double(15,8) DEFAULT NULL,
  `s_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_latitude` double(15,8) NOT NULL,
  `s_longitude` double(15,8) NOT NULL,
  `d_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_latitude` double(15,8) NOT NULL,
  `d_longitude` double(15,8) NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `user_rated` tinyint(1) NOT NULL DEFAULT 0,
  `provider_rated` tinyint(1) NOT NULL DEFAULT 0,
  `use_wallet` tinyint(1) NOT NULL DEFAULT 0,
  `surge` tinyint(1) NOT NULL DEFAULT 0,
  `route_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRNX335187', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, '9 Burnhays Rd, Stoke-on-Trent ST6 4HH, UK', 53.05202820, -2.20193690, '537 / 539 Leek Road, Hanley, Stoke-on-Trent ST1 3ER, UK', 53.01746200, -2.16706600, '2018-01-27 08:38:45', NULL, '2018-01-27 08:39:51', '2018-01-27 08:40:53', 1, 1, 0, 0, 'mwxbIfbmLu@gDlBm@C_AKyA|B_ATKf@W|E{DxA_A`B_AdCwAj@c@PG\\CpBCb@MvBc@hBcAbAm@hBqAt@s@|@w@vIcInD{CnBgBjE}DzEqEbDmC`BqA~AgAdAi@f@UbE_B|@g@r@s@j@s@j@{@nAmBbAeBdBaDxBeD~CmFzHuMpAoBv@cATmA?IDSBEZsAPmADu@D}BAuD?iCToFR}APeATaAd@oAXu@n@_AdA}@fCoAl@Yx@Yl@WhEsAbBe@j@M~Da@xAAz@Bp@F@CBCFCD?p@eAPe@Pk@x@{CTsAF{@DkB@cBFu@Nu@`@y@b@aAvD_If@cAbFgIhBhEjE~JlApCTd@QL', NULL, '2018-01-27 08:38:45', '2018-01-27 08:46:31'),
(2, 'TRNX598170', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '17 Burnhays Rd, Stoke-on-Trent ST6 4HH, UK', 53.05207900, -2.20216990, '537 / 539 Leek Road, Hanley, Stoke-on-Trent ST1 3ER, UK', 53.01746200, -2.16706600, '2018-01-27 08:47:25', NULL, NULL, NULL, 0, 0, 0, 0, 'cwxbIbcmL_AcElBm@C_AKyA|B_ATKf@W|E{DxA_A`B_AdCwAj@c@PG\\CpBCb@MvBc@hBcAbAm@hBqAt@s@|@w@vIcInD{CnBgBjE}DzEqEbDmC`BqA~AgAdAi@f@UbE_B|@g@r@s@j@s@j@{@nAmBbAeBdBaDxBeD~CmFzHuMpAoBv@cATmA?IDSBEZsAPmADu@D}BAuD?iCToFR}APeATaAd@oAXu@n@_AdA}@fCoAl@Yx@Yl@WhEsAbBe@j@M~Da@xAAz@Bp@F@CBCFCD?p@eAPe@Pk@x@{CTsAF{@DkB@cBFu@Nu@`@y@b@aAvD_If@cAbFgIhBhEjE~JlApCTd@QL', NULL, '2018-01-27 08:47:25', '2018-01-27 08:48:26'),
(3, 'TRNX346245', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, '23 Burnhays Rd, Stoke-on-Trent ST6 4HH, UK', 53.05192100, -2.20246440, '537 / 539 Leek Road, Hanley, Stoke-on-Trent ST1 3ER, UK', 53.01746200, -2.16706600, '2018-01-27 08:48:55', NULL, '2018-01-27 08:49:18', '2018-01-27 08:49:29', 1, 1, 0, 0, 'mvxbIfemLuAgGlBm@C_AKyA|B_ATKf@W|E{DxA_A`B_AdCwAj@c@PG\\CpBCb@MvBc@hBcAbAm@hBqAt@s@|@w@vIcInD{CnBgBjE}DzEqEbDmC`BqA~AgAdAi@f@UbE_B|@g@r@s@j@s@j@{@nAmBbAeBdBaDxBeD~CmFzHuMpAoBv@cATmA?IDSBEZsAPmADu@D}BAuD?iCToFR}APeATaAd@oAXu@n@_AdA}@fCoAl@Yx@Yl@WhEsAbBe@j@M~Da@xAAz@Bp@F@CBCFCD?p@eAPe@Pk@x@{CTsAF{@DkB@cBFu@Nu@`@y@b@aAvD_If@cAbFgIhBhEjE~JlApCTd@QL', NULL, '2018-01-27 08:48:55', '2018-01-27 08:49:58'),
(4, 'TRNX273076', 111, 115, 115, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 21.00000000, 'Korang Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, 'Islamabad, Islamabad Capital Territory, Pakistan', 33.66003650, 73.22935420, '2018-01-28 06:39:50', NULL, '2018-01-28 06:40:35', '2018-01-28 06:40:43', 1, 1, 0, 0, '{f}kEk`l}LdBqAaAgC_D}HkAwCc@iAMW}@m@q@g@w@aAW]]u@Ia@U{AOcC?g@Hc@t@yAXs@NMRq@d@cBd@eAjAwAdBcBbB_B~BiBrAsA`@aBFaBGo@Uw@[m@uCnB}MdJaIxFuGnEsOlKsa@nXoClBqDdCmAx@_HzEgJnG{HhFwNxJiVrPkE`DmCjBuMnIiTfOgAl@wO~KmGfEqVnPsWjQkNdJu@d@wMbJDx@FnCAbAXON}GBkADiDBaBY_AO{@UgC[oDUmCs@eHQyBEk@Su@Q[mAyAkBoBsB{Ba@w@]oA[iDuAwReB{PgAgKAq@GmC]qBsEoPmDyMwCgKgB{EoDsL{Hy]UaBIu@GwCJqB|@mIN_B@{@C{AG{@Kw@Ks@a@{A[mA_AsAw@o@mEgDiA_A_@c@a@m@e@gAcB_HgDmOoBcI_@oAOmAeB{HIe@KaAGuF_@e^BeBCcDCgEKyKMkNGeH@}BPqJv@{[RqKN_GXcHn@}Cr@uCb@iBRa@x@u@t@s@Ta@Ny@Bk@EqAI_FI}BGsBCcC@o@L{C^iKp@eOl@sLBkAG]]}@_C}FyJuUi@oA]kAcG{\\a@wAeBeEeD}Ho@DcAIc@GSMMWk@cB]_A[w@eAcAeBuA{GkFy@gAYi@_AyA[u@WQc@McDgAkB[o@]c@m@i@wAu@mCg@kBKs@OgAYq@q@qAE{@UmAKQOEsB_@}Bq@_EeAUCQEEI[TKDI@IESWO?u@D_ARcA^QEGJMF', NULL, '2018-01-28 06:39:50', '2018-01-28 06:42:46'),
(5, 'TRNX382821', 113, 0, 115, 1, 'CANCELLED', 'USER', 'ho', 'CASH', 0, 7.00000000, 'Street 26, Rawalpindi 46000, Pakistan', 33.57992830, 73.09806520, 'Pakistan Town, Rawalpindi, Pakistan', 33.57531840, 73.14307400, '2018-01-28 07:03:10', NULL, NULL, NULL, 0, 0, 0, 0, 'aq}kEk~c}LcAmBaAr@Ym@j@c@pB}A~BaA^Kf@WVGfAk@fAo@|@e@n@c@bAm@b@_@`@Qh@IpAe@|A_Af@e@~CmEh@s@Rc@ViANeAD_@\\iAjAiBT]?E@GBE`@{BJ_@l@u@aBy@KKUu@wBoHSgBGS~C}AlA_@vBe@hDeAbAw@n@gBFYdCiOxAHlAY`@[v@eAnCcDhAsAx@i@pBsAA?GEGM?SFOJIN@JFFN?FpCPt@Td@ZxBjB|AjArAz@pAx@r@Pb@Hb@L\\ZTTXN^B^Et@e@n@i@cAkHcAmFi@}Cs@gCgAiEKwACsBQyBWiDWeCw@mE{@kF_AiFiFeZmAiHEWiB{JeBaKs@cECIEWEUKi@Mm@A?gDdAORSRSLWJUB[?QSsCn@kCv@KCUy@{CjCq@gAeBqC}BsDgCsE{AgCkBaD{AaCkCkEg@o@AS^o@\\m@f@i@RNd@XbAb@', NULL, '2018-01-28 07:03:10', '2018-01-28 07:03:44'),
(6, 'TRNX679082', 113, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, 'Korang Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, 'Pakistan Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57531840, 73.14307400, '2018-01-28 17:18:07', NULL, NULL, NULL, 0, 0, 0, 0, '{f}kEk`l}LdBqAaAgC_D}HkAwCc@iAMW}@m@q@g@w@aAW]]u@Ia@U{AOcC?g@Hc@t@yAXs@NMRq@|ElEvAoCpBa@tB`F\\j@xEnGtAjBLTc@l@EDRNd@XbAb@', NULL, '2018-01-28 17:18:07', '2018-01-28 17:19:09'),
(7, 'TRNX815432', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, 'Korang Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, 'Pakistan Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57531840, 73.14307400, '2018-01-28 17:21:24', NULL, NULL, NULL, 0, 0, 0, 0, '{f}kEk`l}LdBqAaAgC_D}HkAwCc@iAMW}@m@q@g@w@aAW]]u@Ia@U{AOcC?g@Hc@t@yAXs@NMRq@|ElEvAoCpBa@tB`F\\j@xEnGtAjBLTc@l@EDRNd@XbAb@', NULL, '2018-01-28 17:20:23', '2018-01-28 17:21:42'),
(8, 'TRNX909567', 113, 114, 114, 1, 'CANCELLED', 'PROVIDER', 'far away', 'CASH', 0, 19.00000000, 'City-Sadar Road, Rawalpindi 46000, Pakistan', 33.60640190, 73.05421500, 'Korang Town, Rawalpindi, Pakistan', 33.57820140, 73.13938610, '2018-01-30 22:20:50', NULL, NULL, NULL, 0, 0, 0, 0, 'cwblE{k{|LLaBAGz@@fBEdAE?Tr@ARnAJ?f@IxCe@pAY^Dj@Ch@AJCJ[z@cGTkCn@Nr@NB@J}@jBiLh@aDVgAXs@b@_Ab@g@NQM_@Qe@Im@Bk@bAoFT[TQ\\GnIsCvC}@fEmAzA[nBS|L}@hG[rX{AxCSxAErADfARZAREPQR_@@Wg@eDm@wDw@iGi@mF[cFY_Dc@kBk@{A_AuAsF}G}BmCe@i@k@_AcEuHkBkDWMa@Ua@O]Im@Cw@Jc@NYN}@d@oA^gALwA?aP{@_AMy@S_AYmAo@mA{@m@k@oAcBaAqBY}@i@yBSgBKeBy@aQSeHQcFe@cJ_AkNMo@kA_CeLsQoAcBu@gA}KiQ}Uy_@MYSy@Eu@@m@Hc@vGmVnGyUl@kBvMm_@bI}QvDoIRu@TiAJ}@FyACqB]}Ba@gBQm@a@_AgA}A]a@_As@{EgCy@e@wHaEm@]iAq@i@A{@Bs@XqAt@w@n@Yn@?`@F`@P\\b@RZ@|AWbAYp@e@fE}CjFqDjMkIvLcIlA{@zOqKzPgL`IuFvMsI`FwDpGeEnD{B~CyBpF{D|GsE`EsCr@a@jF_EbBcAxBwAhIaGpD}BlGaE|HqFzDiClLkIRj@sLzHqGlEsFzDcDxB_DjBJLVx@PhA?t@EVYdAc@`A[^m@h@eAx@_BvAaD~C}@lAWd@Wp@WjASp@E^iAjCCT?z@PbDHj@Tt@X`@f@p@l@h@t@f@n@j@\\t@|A|DrBbFlB|EMPeBpA', NULL, '2018-01-30 22:20:50', '2018-01-30 22:21:16'),
(9, 'TRNX235481', 115, 116, 116, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 12.39100000, '1472 Willow Avenue, Des Plaines, IL, United States', 42.04774900, -87.88731400, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-01 11:10:59', '2018-02-01 00:00:00', NULL, NULL, 0, 0, 0, 0, 'kks_GrplwOuDvIuB?OG[EMIMOzCaHtB_FnAqCnAyBh@mAfBoGzCeLzDkOn@_C\\cA\\s@bA}Ah@m@hAy@t@a@HCFOlBw@f@Wv@q@|@oAXm@v@}BZ_AJGRm@xAgETo@f@iA|@oAv@u@bA}@|A_A|@w@POd@s@b@}@Vo@L[NIDGL]Zk@n@}@h@i@jA}@v@c@`Ac@r@WdHiBfG_BtBm@LIFIDI`Ck@jAYdB[lBWrAKrCIlG@dRH`TFxABlBN|B\\bCn@nDvA`PpGjBj@~Bd@pBTnAF~@@|C?`F@jG?vL@bJAtAEfCWvBc@tBm@jGsBlOcFnAa@pA[lASfBS|BIbA?`BFvBRrB^vG`BrPbEtA\\z@TJTNLbA`@nAp@v@r@xA|A\\Xd@Tj@Nn@HTDLJpCPlAN`ARdAd@lA`Al@v@vArCzC|Jp@lBV`@vAnBz@rCpAhElEpN|@pCvD|LbAtDrEtNfAjDnC~I^jBNpB@pBKrB[lBi@dBu@xA]f@QRoItJiKbM]d@Yp@Qx@Gx@?nBA`[D~@Hv@|BfMVl@`@b@PJTFpBV\\FXKj@?l@DhDf@`@Jn@Jf@P`@FFDTLRFTITOT[P[^}@r@sA', NULL, '2018-02-01 11:10:59', '2018-02-01 11:15:38'),
(10, 'TRNX598790', 116, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 7.65000000, '7051 Barry Street, Rosemont, IL, United States', 42.00692540, -87.89179620, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-01 11:25:11', '2018-02-01 00:00:00', NULL, NULL, 0, 0, 0, 0, 'ink_G|jmwObF?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-02-01 11:25:11', '2018-02-01 11:29:00'),
(11, 'TRNX740351', 116, 116, 116, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 30.66000000, '7051 Barry Street, Rosemont, IL, United States', 42.00692540, -87.89179620, 'Loop, Chicago, IL, United States', 41.87863510, -87.62505490, '2018-02-01 11:28:51', '2018-02-01 00:00:00', NULL, NULL, 0, 0, 0, 0, 'ink_G|jmwObF?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XiAx@eB~AMLa@p@TvUB|DX?OoTCcAD[D}@PiAVu@NU^e@~@q@n@a@`@OrAUx@Ct@@tCEnFEjADjA@@Y@M@AAuENcC\\yBZmAz@aCf@kBDKD[B]|CcJvOgc@vCiIrGsQdA_CdBuCjA_Bv@aAnBsBhBkBx@q@Vi@lAqAdDgD|B}B`AoAn@u@Xe@r@qAvHeQf@kAzKqVvDsI`B_Eb@kA~@uChAaEbC}J|AkH~@qF`@{Cd@sE^aGD]BmAFyGAcFOmJDq@EaCI}GE{@OmIUaN_@sSSuMUaNDyI@oEV{KZaI`@cHjBgXh@qFp@aFHi@|@oF`@uCRsBZ}FDkCCqYIkj@GaRAkPMiw@D}CFsAT}BLy@d@cCn@oBb@cAh@iAbMcXdSub@zHkP`JqRt@iBf@wAb@yAnAsFRcAz@_GfAqE^oAnAiDpBmEpH{OXm@jG}MzAyCrDoGfCqEvAwCp@sB`A}DlAwFTs@`@}@`AsB~@cBv@iA~BsDdByCh@_ATSxDiHfGkM|A_D~EgKxFwMtCqGLYdB{DhAcCvE{JfCiFl@sA`AwBpBeEnIoQnBkEh@aBbAaDh@sA\\q@~@sAf@g@jA_Aj@a@t@g@xBcAfIsDzBoAb@[j@i@|AeBpA{Bt@eBr@}Bd@}Br@yEj@oDh@sCb@{Al@{AzAeDjDiHXm@`BmDzCiGbGyLl@oA`JsQzDcIn@oApDcHhGcMdByDl@_Bp@oB`BwEnBcFr@yAZo@tBkE|AaDvNyZvGgNjDsHnBeEjGuM|McYbAiBl@}@vAoBf@m@rAyAhAgAbA_AxB{Az@e@`DeB`PeIvCeBfAm@j@[xAaAhAaArAwAlFoGdAaAdAs@`Ag@z@]~@Yt@MpAOhAC|ADpERtBBpBGvAOtDi@rA_@hBs@zBw@fHeCnBy@bB}@bBkArAoA`AeAz@eAj@_A|BgEFKfAmBtCyEtBgDn@iAz@eBr@uArC}EbAeBn@iA`B{ChAmBd@s@jAsAnCqCj@i@nDyBfBw@v@UhB]nAOfBGtFIvCA~BMxCEzAVdD`@NM|@CfDErCHvA@A_@?y@A{@K{_@GkS?g@GmJ@_FCeHCuNIuKGmIGqE', NULL, '2018-02-01 11:28:51', '2018-02-01 13:18:22'),
(12, 'TRNX155810', 115, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 33.83600000, '1472 Willow Avenue, Des Plaines, IL, United States', 42.04774900, -87.88731400, 'Loop, Chicago, IL, United States', 41.87863510, -87.62505490, '2018-02-01 13:17:00', '2018-02-01 01:00:00', NULL, NULL, 0, 0, 0, 0, 'kks_GrplwOuDvIuB?OG[EMIMOzCaHtB_FnAqCnAyBh@mAfBoGzCeLzDkOn@_C\\cA\\s@bA}Ah@m@hAy@t@a@PStCoAv@q@|@oAXm@v@}BZ_AJGRm@xAgE|@yB|@oAv@u@bA}@|A_A|@w@v@cAb@}@Vo@L[NIDGL]Zk@n@}@h@i@jA}@xBgAr@WdHiBfG_BtBm@LIFIDI`Ck@jAYdB[lBWrAKrCIlG@dRHzVJlBN|B\\bCn@pUhJjBj@~Bd@pBTnCH~J@bU@bJAtAEfCWvBc@tBm@jGsBlOcF`D}@lASfBS|BIdDFvBRrB^NZLH|DpAn@Tr@Zt@VzAz@dBv@t@NlABt@KdAYDAf@ORIhEuAvDmAn@W|@q@x@gAVk@Pe@VqALgA@q@CiFHiBJ{@Nm@`@wAHm@vAoDn@gBv@}BlE_O|@wEd@kDt@qIf@gGLqC@oADwBDsIOaO@}@M_K_@mQ_@eUOgGe@{[FiPd@mQVcF\\uFxB_[ZyC|A_Kv@kFf@iGJuD@sDCc\\AqBQcw@Gef@Es_@D{BLkBj@aEb@kBv@yBlAkC|P{^t\\ms@|FaMlAkDp@iCr@aDTiAx@yFjA}EfAeDnBmEt@aBfQm_@tDeHxAeCvCiFxAcD|@yCpAgG`@gBf@qAN_@x@cBdAmBdBiC|CgFXg@l@cAPMnBoD`C{EvDaIb@w@lDqHbCeF`FiLvB_Fx@eBHSlD{HpFiLxBoEz@oBfFwKrJuSbCsH^w@l@cA|@gAx@u@dBmA|Ay@hGsCtB}@zBoAfA}@bBiBrA_Ct@eBr@}Bd@}Bh@qD`@kCl@mD^{A`@qA|AkDzBuEpAoCTg@`EqIdFaKlDoHnGgM`BkDjGaMbCyErGuMvAiDl@eBnByFbCgGrAoCbCcFnNiZ`BiDhMiXdE{I|GwNjHkOpAaClBwC~@mAnAuAzByB`@_@dAu@tBqAb@UbL}F|FyCnBkAh@[pBgAjCkBp@o@dGkHjAkAz@q@jAs@tB{@z@SlAQbAGrA@dGVv@BtBCdBKdBUdBYdAUlCaAbEuAlHkCpC{A|AiAlBoBxAcBdDaGPYvAeCfAeBbC_ErBqDlBuDzEgIvB_E|AgCd@q@fAiApCqC@ATUjC_BDCxAw@n@YbAWpCc@vFOhFGzAClEMZAdARb@FvC\\HKFC~CExAAfDLl@AA]?S?g@Ai@EqQKeZAcH?KEcH?aECeNEwNEqIQcO', NULL, '2018-02-01 13:17:00', '2018-02-01 13:18:00'),
(13, 'TRNX588370', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, 'Chaudhry Sarfraz Rd, Rawalpindi 46000, Pakistan', 33.57933450, 73.10010600, 'Korang Town, Rawalpindi, Pakistan', 33.57820140, 73.13938610, '2018-02-01 18:58:34', NULL, '2018-02-01 18:59:06', '2018-02-01 18:59:45', 1, 1, 0, 0, 'ql}kEukd}L^x@R^LGZOVO`DkBjCeBZOTCnAWj@W|A_Af@e@lAcBpAiBh@s@Rc@ViANeAD_@\\iAjAiBT]?E@GBEH@BD?FADbATn@NjDp@N@N?tAYzAYhCu@`AYp@IPBpAd@rD~Ar@e@fB}@hBiAnEiC`Ae@\\I^CBGDAH@BBvBHjBLjBFd@LjBBfBEJCPGcBeKq@eDQuAKw@@_ABgAHc@`@cAJU`GsId@u@Li@AI}AgAyAeBQSu@}GIq@}@mDa@{Bc@}B{AqFQcAIgDq@yIOsA[gB_@qByA}I]iBq@oDi@iDUaB{AwHoB}KyTfGiMlDuIdC_FtAY@iEpAG?GQc@sBm@qAy@yCFk@F[F_@f@u@tAsBlAmBD_@?cG?kGBcD?aCCCCG@M?C}AiDcAaCcAwBiAuBy@kBeBpA', NULL, '2018-02-01 18:58:34', '2018-02-01 19:00:09'),
(14, 'TRNX395450', 115, 116, 116, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 6.95800000, '7151 Barry St, Rosemont, IL, United States', 42.00849100, -87.89149700, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-03 09:57:41', '2018-02-02 22:00:00', NULL, NULL, 0, 0, 0, 0, '}wk_GzhmwO?`AsB?cAACyBC{BG}FMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-02-03 09:57:41', '2018-02-03 09:59:01'),
(15, 'TRNX437095', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00686310, -87.89160120, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-03 12:58:28', NULL, '2018-02-03 12:59:49', '2018-02-03 13:00:24', 1, 1, 0, 0, '{mk_G|jmwOtE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-02-03 12:58:28', '2018-02-03 13:00:59'),
(16, 'TRNX939054', 118, 114, 114, 1, 'SCHEDULED', 'NONE', NULL, 'CASH', 0, 10.35000000, 'Chaklala Scheme 3, Rawalpindi, Punjab, Pakistan', 33.58247060, 73.09217550, 'Airport Housing Society, Rawalpindi, Punjab, Pakistan', 33.59483840, 73.13201010, '2018-02-03 13:11:01', '2018-02-03 12:40:00', NULL, NULL, 0, 0, 0, 0, 'wa~kEwwb}LfBb@}@`Ga@lDrA^}AjBaBrB}DrEwG~HiDdEwAhBgGpHwGbI]^EBI?c@EmAG_@Aa@\\u@n@c@v@ARANCDQ\\QJQBQ?KAUAk@NwAlAo@^e@RkA^eAHuABoCQ{CIoDUeBMaASwAe@q@]y@g@qAiAw@_AgAgBs@iBo@aCUaB_AiSy@oSiA}RUaC[}@u@wAeLsQoAcBu@gAcGoJoA}BoCqEmMgSsAsBwAaCe@w@K[Mq@Ce@?_@Ds@VmAlB{GpCgK~@aDvAkFpA_F~@_DzBoGvEeMnCiIv@uBlGmNpAaDvAwCVo@Ry@ZiCFcCCaAa@_DWiAg@sAq@mA]m@OQCDI@qAo@gAUuAIyCH}@G}B[i@EiAA]LYPSVOf@Ap@Np@P^n@e@bBeAjEaDvAaAnHaFlKkHjIwFjJkGdH}EzArDnCpGBFKVkAzCm@lAm@bB|@n@JFDAv@qBDAn@ZNHo@bB', NULL, '2018-02-03 13:11:01', '2018-02-03 13:11:23'),
(17, 'TRNX302235', 118, 0, 115, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 10.35000000, 'Chaklala Scheme 3, Rawalpindi, Punjab, Pakistan', 33.58247060, 73.09217550, 'Airport Housing Society, Rawalpindi, Punjab, Pakistan', 33.59483840, 73.13201010, '2018-02-03 13:13:03', '2018-02-03 13:00:00', NULL, NULL, 0, 0, 0, 0, 'wa~kEwwb}LfBb@}@`Ga@lDrA^}AjBaBrB}DrEwG~HiDdEwAhBgGpHwGbI]^EBI?c@EmAG_@Aa@\\u@n@c@v@ARANCDQ\\QJQBQ?KAUAk@NwAlAo@^e@RkA^eAHuABoCQ{CIoDUeBMaASwAe@q@]y@g@qAiAw@_AgAgBs@iBo@aCUaB_AiSy@oSiA}RUaC[}@u@wAeLsQoAcBu@gAcGoJoA}BoCqEmMgSsAsBwAaCe@w@K[Mq@Ce@?_@Ds@VmAlB{GpCgK~@aDvAkFpA_F~@_DzBoGvEeMnCiIv@uBlGmNpAaDvAwCVo@Ry@ZiCFcCCaAa@_DWiAg@sAq@mA]m@OQCDI@qAo@gAUuAIyCH}@G}B[i@EiAA]LYPSVOf@Ap@Np@P^n@e@bBeAjEaDvAaAnHaFlKkHjIwFjJkGdH}EzArDnCpGBFKVkAzCm@lAm@bB|@n@JFDAv@qBDAn@ZNHo@bB', NULL, '2018-02-03 13:13:03', '2018-02-03 13:13:03'),
(18, 'TRNX410902', 118, 0, 0, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 3.31000000, 'Chaklala Scheme 3, Rawalpindi, Punjab, Pakistan', 33.58247060, 73.09217550, 'Airport Road, Rawalpindi, Punjab, Pakistan', 33.58769930, 73.07479970, '2018-02-03 13:16:22', '2018-02-03 12:48:00', NULL, NULL, 0, 0, 0, 0, 'wa~kEwwb}LfBb@}@`Ga@lDrA^}AjBaBrB}DrEwG~HiDdEwAhBgGpHwGbI]^EBI?c@EmAG_@Aa@\\u@n@c@v@ARANCDDRdApBlBlDnB`Ff@jAh@bAh@t@hC~CtBdCrBjC`AxA`@x@Xz@Pz@RrAj@bG^fEBTQHM}A]aDMi@QcC_@mCSw@Wy@[o@i@}@iCgD', NULL, '2018-02-03 13:16:22', '2018-02-03 13:16:22'),
(19, 'TRNX171552', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00690240, -87.89157530, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-03 13:16:58', NULL, '2018-02-03 13:18:04', '2018-02-03 13:18:29', 1, 1, 0, 0, 'cnk_G|jmwO|E?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-02-03 13:16:58', '2018-02-03 13:19:12'),
(20, 'TRNX731924', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '2812 S Scott St, Des Plaines, IL 60018, USA', 42.00249320, -87.87501350, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-03 16:20:17', NULL, '2018-02-03 16:21:24', '2018-02-03 16:22:43', 1, 1, 0, 0, 'ssj_G|ajwOZv[HfKD~GB~G?V`D?tB?vC?xBHxC?lD?bD@tBEdIEjB?r@EzASzA]`Bq@`BcAh@e@`AeA^e@t@mAvCkGxAkCn@}@`@a@x@u@h@a@r@a@^Ox@Wf@Mr@KtCYz@IzCOxAEN?BD@@@@HBhATdAb@|DzBjHrEfBdAd@LX@z@G`BM\\?\\D^LLJbAvAbAtDl@bBhEfNlDfL`@jBPpBBrBIpBYlBg@fBs@zA_@f@oHvIw@z@gCxCwF~Ga@d@Yl@Ux@Iz@?z@At\\Bz@Fv@|BhMRn@^f@f@Xf@HnBVVKd@Aj@DtDh@pAVf@PZDHBVPNDTCTMVYP[b@eAr@sA', NULL, '2018-02-03 16:20:17', '2018-02-03 16:23:10'),
(21, 'TRNX618945', 115, 0, 0, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 4418.41600000, '1472 Willow Avenue, Hoboken, NJ, United States', 40.75504310, -74.02963570, '1472 North Willow Avenue, Rialto, CA, United States', 34.12636800, -117.37512710, '2018-02-04 08:45:48', '2018-02-03 21:00:00', NULL, NULL, 0, 0, 0, 0, 'k~vwFb|ybMo{AbqEdsC|rLkwJn|\\_aMhpb@auDp~XnKz~VoyBtim@iXlnTscGftJ_t@bzLmnNt~Vg{C|oy@|zCh||@l`Hh}_Ads@d~w@}y@lxi@unKvz[ffD`y_@igAfrs@ttE`{a@vwNts]iiL`va@tmHxfg@chDty^msJxza@swLlgX{eCx|j@cqCh{r@s|@~qo@ovBf}~@_VhzaAp~BzrfB|eJb{q@cl@tmRwpPtdRmtEtbbBseL|f}@ayIvds@loGfk}@kuCbxfBopSrukAm`X`rhA\\hp|BuzF~vaBaqUtrk@sCz~wB|xD~doBqbFlyg@rhM~nh@ljRlru@g{@l`w@npAt~gA~uGtugAxnSvygAzhIfki@pCp}g@xY`s{@slDtzr@xs@zd^xUvkk@quGljqAw{Dt{l@zjAdp]{cL`{VadNnHwcCh|SgbDj}u@qx@r}UafGbl}AsGpyhErnE~q|C|~@lpn@j}IjsDr{DrpO~iHtku@dyCjpi@wZhucBeHbuvB`xCrgSdfRjrOrzXpn[beBb{YzlApuXtqOhfQtkR~iTzvRdy\\|gHnbn@hxJd_`@zDrenEc^|lrA`zJpam@xsLbqw@dzCx|q@qpCxfhAeoJf_u@ysTt_o@yze@ltgBypM|s}BvyBnt_AzvPtnvBpnRzhl@tsThvuAnh_@|s|@xlU`yNpxa@duf@rmPjwq@xqEzxkA|eUjzpAhpGngZpcQnvQhtS`d]hvLfuUrrCz`RhuOpbRc|B~ee@glCxhTy`Cd}KlwDrnUbjFv~NjfA`gUltNpue@dlOzyJfbAlyIwgJjcFuvN~zMtmCfv`@m|Lpib@zaGllb@v_Bndn@lfJj~Tl{@dhk@`iD|ch@lvGf~u@|vQjvc@jk_@~c^j{Pn{Gr{FhfXqq@zae@{hVlts@pjHhwg@zpo@vpx@sy@|vm@lrCxy{@wyKz~m@pzHdcr@jtLncn@~_Clq_AjxN`bsAa}QvlOkkFhyTaxCxxg@|bYhjg@``VfqO|yOffTpuEn~PidEjtVc~@xhOfnUx|Grx_@fnFjs_@ynFhhl@hc^dmT`m`@d_`@dz]lrMx~OncTtmFls[vsLxi_@hfh@pp]x{Y~jDh}[hh[bqw@b`Ebr`@t~Rpdq@r}Wlzc@`xd@dbf@toO~c]|xQt{Q|hYrbDj_^`{HrbZ`gW`rs@ngQ~Ol|JdpPtueAxol@xz~@jcd@f~xA`zO~ipAbx}@nni@bsf@jm]jvCthEjnE{{D|uQs_PtkJqkC~t@dmE', '2018-02-04 08:48:27', '2018-02-04 08:45:48', '2018-02-04 08:48:27'),
(22, 'TRNX528405', 115, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 12.39100000, '1472 Willow Avenue, Des Plaines, IL, United States', 42.04774900, -87.88731400, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-04 08:46:53', '2018-02-03 21:20:00', NULL, NULL, 0, 0, 0, 0, 'kks_GrplwOuDvIuB?OG[EMIMOzCaHtB_FnAqCnAyBh@mAfBoGzCeLzDkOn@_C\\cA\\s@bA}Ah@m@hAy@t@a@HCFOlBw@f@Wv@q@|@oAXm@v@}BZ_AJGRm@xAgETo@f@iA|@oAv@u@bA}@|A_A|@w@POd@s@b@}@Vo@L[NIDGL]Zk@n@}@h@i@jA}@v@c@`Ac@r@WdHiBfG_BtBm@LIFIDI`Ck@jAYdB[lBWrAKrCIlG@dRH`TFxABlBN|B\\bCn@nDvA`PpGjBj@~Bd@pBTnAF~@@|C?`F@jG?vL@bJAtAEfCWvBc@tBm@jGsBlOcFnAa@pA[lASfBS|BIbA?`BFvBRrB^vG`BrPbEtA\\z@TJTNLbA`@nAp@v@r@xA|A\\Xd@Tj@Nn@HTDLJpCPlAN`ARdAd@lA`Al@v@vArCzC|Jp@lBV`@vAnBz@rCpAhElEpN|@pCvD|LbAtDrEtNfAjDnC~I^jBNpB@pBKrB[lBi@dBu@xA]f@QRoItJiKbM]d@Yp@Qx@Gx@?nBA`[D~@Hv@|BfMVl@`@b@PJTFpBV\\FXKj@?l@DhDf@`@Jn@Jf@P`@FFDTLRFTITOT[P[^}@r@sA', NULL, '2018-02-04 08:46:53', '2018-02-04 08:47:09'),
(23, 'TRNX280329', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00686290, -87.89158850, 'O\'Hare Transfer Metra Platform 1, Chicago, IL 60666, USA,Chicago,Illinois', 41.99618302, -87.88134925, '2018-02-04 11:08:36', NULL, '2018-02-04 11:09:40', '2018-02-04 11:09:47', 1, 1, 0, 0, '{mk_G|jmwOtE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?Ne@PkAp@{Ff@EFc@f@eDNs@FILExAa@h@CLH@J', NULL, '2018-02-04 11:08:36', '2018-02-04 11:10:07'),
(24, 'TRNX863565', 117, 116, 116, 1, 'CANCELLED', 'USER', 'I do not need the service any more. thanks ', 'CASH', 0, 5.00000000, '5801 N River Rd, Rosemont, IL 60018, USA', 41.98413380, -87.86029090, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-04 11:32:32', NULL, NULL, NULL, 0, 0, 0, 0, 'y_g_GxegwO?a@CG_Ak@UE_@FMLC\\J|@c@@FuAAIEOy@{@OSSb@bAv@DPOjCEpAUtDGx@?h@Jx@Xj@t@|@DJr@v@X^Xj@Pt@Hd@JlAOnFQjGOzF?z@@~A@z@FhBB^XbC`@`CR|@h@lB~CfKzGvTtHfVbAtDl@bBhEfNlDfL`@jBPpBBrBIpBYlBg@fBs@zA_@f@oHvIw@z@gCxCwF~Ga@d@Yl@Ux@Iz@?z@At\\Bz@Fv@|BhMRn@^f@f@Xf@HnBVVKd@Aj@DtDh@pAVf@PZDHBVPNDTCTMVYP[b@eAr@sA', NULL, '2018-02-04 11:32:32', '2018-02-04 11:35:38'),
(25, 'TRNX174554', 117, 116, 116, 1, 'CANCELLED', 'USER', 'test', 'CASH', 0, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00687080, -87.89152100, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-05 11:50:09', '2018-02-09 02:33:00', NULL, NULL, 0, 0, 0, 0, '}mk_G|jmwOvE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-02-05 11:50:09', '2018-02-05 14:58:51'),
(26, 'TRNX379931', 117, 116, 116, 1, 'CANCELLED', 'USER', 'This was just a text ', 'CASH', 0, 50.00000000, '2011 Scott St, Des Plaines, IL 60018, USA', 42.01347270, -87.87463920, '5700 S Cicero Ave, Chicago, IL 60638, USA', 41.78677590, -87.75218840, '2018-02-05 15:04:11', NULL, NULL, NULL, 0, 0, 0, 0, 'ewl_Gr_jwOfT@\\FIsFEwEFW?eBCiFCgElAu@tBg@`C[jJU|GSrAK|Ba@HEBCDMDOv@QhEuAbEuAbPkFtBi@vAUlBOlCGvCJ~APv@LvG|AhAXtPdEdM~CvL~CvJzBhCf@zBT|CJlEKd[iCrFYlE@`Ej@xBh@xAj@zBdAdOrIrPjJtC~A~ZdQtOvI`C|AzDzBh@ZbFlCxExB~TlGzIlCbJ`DnD`BnBbAhBfAn@`@dAt@jBhBhBtBdAvAdC`ErAzC|BdHp@nCb@`Ct@jGdAxJjFbh@vBrUvElg@|@hFp@nCr@~BpAhDnAbCnB|C`BrBzAxApCtB`DdBxBz@pEbAd@FxDRnUBx^FzvANrD@pN@rV?rEIpBKrEg@vBa@vViFlB[lDUdCG|EHtALnCZzJfBxJbBrGh@nEJdEIhSiA|AKfCO|CWnG}@fP_CvPiCdAO`AOzAKrFJnD^jLfC|JxB`SbEbAPdCNjHKzIg@|JQtM?xFGrHK~@A~CDbJ\\jJd@bBLpFX`FB~BKlJcAbQyBnBQbCKz\\k@fJStBQ`Ca@rDiA`EqB`DeBrMwG|B}@bFsAxASlBOdBS`LQn@BzHOdEKrEe@lFqA|UcHfFsAbGaBp^yJfJkBrD]|FUda@YrPOvCGrQQtNCnVUtKQR?fAI~Eo@fCe@rBa@TLv@Ot@M|AMjACzAHlB^xB|@dC`BbDjBzANzAKv@YpAy@d@e@fCmDlDyEtIkL~@qAvAcBl@k@nBqAj@Wd@Qp@Q`@Ez@JZNZX^p@Lb@Fz@IbA]v@g@d@_@Jg@?WGc@Y[e@Oa@M}@MaBI}CIc@GkIKqMUcVEkI@uQN_MJuGBuKa@eo@GmFu@_QuBgZgBcVk@{IsAiQWmDyBa[i@qFq@cD_A{CsAwCeBkCgCiC{UqPcM{IwFsEqEsEuNqOyP{QiCaDaEgG_FyIkE_HcHaJoAmAiAqAq[qZwLeLmIeIaBmBqAoB}@eBgAgC{@sCq@aDe@uDO}BK{CD{FVyKBqFWcEk@sDa@aBy@{BaB}D}BgGsAmE}AoGcAiFeAeHwByRgAkHoCgNkK_f@o`@giB]wAGkAAQ{A{HyAoHeBoIDo@BGHK`@Gf@?hEI~HIjGGdBAn@OdFG|BC`EE|BCjMQ~RUhD@bCGdCA~DI`BABk@IyLOq]GmNx@APDRPVf@JNNDhBACyHEqIIcAUs@sCqD_@y@G_AKs[BgCDUVW`A[|AIr@BxAF`BALFtWf^JD', NULL, '2018-02-05 15:04:11', '2018-02-05 15:05:35'),
(27, 'TRNX575583', 120, 0, 117, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 4.00000000, 'C-176,, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71016340, 76.69442470, 'Sahibzada Ajit Singh Nagar, Punjab, India', 30.70464860, 76.71787260, '2018-10-11 02:43:55', NULL, NULL, NULL, 0, 0, 0, 0, 'ccmzDumbsM{RtOmB`BOU{BhBQNQ[u@yAaBcDqHyMmD_HqJsQuIyOyAcCI]Sg@n@i@|PgNlPqMr@i@bNsKlJwHdGwEfDkCdDkCbFaEfDkC~LwJJKFH', NULL, '2018-10-11 02:43:55', '2018-10-11 02:44:18'),
(28, 'TRNX246219', 120, 0, 117, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 19.00000000, 'C-176,, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71057340, 76.69442660, 'Chandigarh Airport Area, Chandigarh, 160003, India', 30.67525600, 76.79795200, '2018-10-11 02:45:54', NULL, NULL, NULL, 0, 0, 0, 0, 'wdmzDilbsMkG|E_GxEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SAc@ESeAoB_EoHiAyB{DsH{AoCeIsOiHoM}@sAy@eBe@cAW@WGSWEOAW@KBIPYZKN?NF|@[t@c@jHaFzBwAj@_@PsAF{@@k@AEm@iA}CyFsAqCk@{Ag@eBs@uC]kBAAEAGGEM?ODMBAMoBqA{VIaBSsAMo@y@gCsCuFQDM?WIOSEY?SL_@LKTEVBT@PCZOfFwD`KmH~JgHf@_@JSFU?KFSJMJIRCRBN?TIf@[`CiB|FqE~E{DxGcF`EeDd@[HEV[LU?I?WHUPQTET@HDl@Ul@a@hKsI`Au@|LaKxAyA?EAMD[LSPKRCTDXC~@s@jC}BzFuEjEsDfB_B|FcFLQN_@?E?MFYPSVIXDJFrBaBpGwFtEiEtEcEtEgERYAEAOD_@JSJGRGTBZ@FCjAeAdJwIbLoKhBeBHs@LaBDq@K[Wk@mF_KeJcQe@q@aAiBkGoL_DeGyAkCyAcC[c@c@[QEKAWGUOQYGg@Dk@T[VO\\G^DDBXI^UpDaDjEcErGgG|PyOlDuD~@gAhAuA^YZ]\\i@NY@MAI?UH]VS\\C@?n@a@bAcAxGeIhEeFzAeA~HuBlJkCjLaDlNuDhH{BpJqD~N}Fb@hBzHj`@tB`KTtBFfABz@CjAIx@e@hCSx@', NULL, '2018-10-11 02:45:54', '2018-10-11 02:46:16'),
(29, 'TRNX945912', 120, 0, 118, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '2nd Floor, C-175, City Business Center, Industrial Area, Phase 8B, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71054180, 76.69440840, 'SCO-41, Near Rose Garden, Phase-3B2, Sector 60, Phase 3B-2, Sector 60, Sahibzada Ajit Singh Nagar, Punjab 160059, India', 30.71161160, 76.71972540, '2018-10-11 02:56:24', NULL, NULL, NULL, 0, 0, 0, 0, 'udmzDklbsMmG~E_GxEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@GKFGzLyJrJyHzJyHrAkApN_LtJwHbBoA\\cAFm@?a@_@u@iFeJsEiIaD{FVQjA{@fB{Ax@m@jAeA|@o@d@e@j@y@n@oAPJb@|@mBrB', NULL, '2018-10-11 02:56:24', '2018-10-11 02:56:46'),
(30, 'TRNX345432', 120, 0, 118, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '2nd Floor, C-175, City Business Center, Industrial Area, Phase 8B, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.70996520, 76.69429440, 'Sahibzada Ajit Singh Nagar, Punjab, India', 30.70464860, 76.71787260, '2018-10-11 02:57:26', NULL, NULL, NULL, 0, 0, 0, 0, 'c_mzDsgbsMiBnAuBlBqB_EEIgBrA_GxEiDrCOU{AlAq@j@g@aAaCwEqHyMmD_HwSa`@yByDWi@Me@GKFGzLyJ~CgCjPqMvBeBpN_L~CcCxHcGfFcEfJoHvAmAjA{@fLcJ|AoAFH', NULL, '2018-10-11 02:57:26', '2018-10-11 02:57:47'),
(31, 'TRNX798176', 122, 0, 122, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 10.00000000, 'Croix Blanche, 92290 Châtenay-Malabry, France', 48.77044040, 2.28585120, '94390 Orly, France', 48.72624330, 2.36524720, '2018-10-26 02:25:00', '2018-10-26 22:54:00', NULL, NULL, 0, 0, 0, 0, 'uqthHkm}LCo@BK?SAIAIHQV[l@c@nAaAxAmAzAeA|@u@hDkCpEsDVYVQXK@@@BB@DBLEHS?Kf@m@`BqArCqBnAa@z@S|@CdAHrIpAn@BdAL@@?B@@BDDBL?FADIBOA[ES@iAb@mFV{AJg@t@kCJo@?m@CWc@_C[uBq@wG]sBgAmHuAeKW{BGy@YuBGQ_@iBOy@_AcF[iCcAcMAg@@i@Hg@f@sBX}CvAeIXeBFuAF{@Ca@pA{FlBiK\\oBh@mChIa^xBqJhIk^lA{GdA_Gn@{D^iE`@eFLaC@gABwNLgD~AsS|Cma@fBoU^oGXcHNs@^mLHyLAqMMoPEiGFa@?q@Bm@Fc@Le@Pa@rCuFd@iATYPY^AjBG|AEjA@n@DzAR|AZtCv@|Al@^Pr@b@t@h@|@x@pFrF~D~DnAfAvAbAvAt@dC`AnAZbAR~BVn@BbA@zBGvAMbAQ^K^?hHmBh@GnEwA`HwB|C{@pBk@j@OTFPDJDTJXRVVFHt@nCJXb@hB@hAA@?@AB?H?FDLJBB?BAn@`GC@C@EDELAR@NHLJBHAHIDQpDkAh@Mv@STEB@BBJ@NENW@ERQDChCq@bAg@j@m@b@}@`A}CLY@DDJDDH@FCFGBK?M', NULL, '2018-10-26 02:25:00', '2018-10-26 02:25:14'),
(32, 'TRNX749590', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 10.00000000, 'Croix Blanche, 92290 Châtenay-Malabry, France', 48.77045880, 2.28578820, '94390 Orly, France', 48.72624330, 2.36524720, '2018-10-26 02:25:34', NULL, NULL, NULL, 0, 0, 0, 0, 'qqthHwl}LGcABUC]Tc@TQlEkDtB{A|@s@hFeExCiC^OHA@B@@DBNCHS?M?C~AyAxBaBbAq@nAa@z@S|@CdAHrIpApAJb@D@B@BBBDDL?FADIBMA[EM@y@?WNyBPaBT{Ab@oBj@wBBc@Ce@w@mEu@iHKm@M}@e@qCwCmTEo@]wCISg@oCo@}CSoAY{BeAaMCmAH{@d@sBVeC^gCrAkHH}AHgA?EC_@j@iCh@_CtAsHf@sCh@qCnIy^zBoJvHs\\pA}G~B}M^sD`@kFLsBDsAB}NFmCz@{Kb@iGj@kHpB{WdCy\\PkDPuEJ_@XyHHgCDuGD}IGeNOkRFa@?iADg@VaApCqFn@_Bl@y@zDMxAAt@B`AJbBXfCl@|Af@hAb@n@^lBvAdLhLx@v@jBxAtAz@nB|@dBh@fAXdBVvAJhABvACfBI^EbAQRGRE^?hHmBh@GhBk@`EqAjFcBtGeBn@PTHVPVVLN`AhDb@hB@fA?@ABAB?F?FDLHDD?@A@Al@dGE@CBGLAP@PFLJDJAHGDOd@UfCy@VGdAU^IDBJBLENS@EPSFEfCo@bAg@h@i@d@{@x@iCXw@@FBHFFF@FCFGDI?O', NULL, '2018-10-26 02:25:34', '2018-10-26 02:25:55'),
(33, 'TRNX172664', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 11.00000000, 'Croix Blanche, 92290 Châtenay-Malabry, France', 48.77045740, 2.28572170, 'Square Auguste Chabrières, 75015 Paris, France', 48.83471620, 2.28902730, '2018-10-26 02:51:42', NULL, NULL, NULL, 0, 0, 0, 0, 'qqthHwl}LGcABUC]OKI?GBCFCDw@@wERq@AaASi@]KM_@w@g@yAMg@Yi@[]kA}BY_@g@MgA?gD?c@M[MYSm@m@a@c@s@aA_AwAW[[i@c@i@i@c@gB}AMS?A@C?E?IGQECS_DI}B?uAD}AXwBDADM?QGMICC@UYsBgG[g@i@_@}DiBk@e@Wg@[aDmAcOAm@QaBYeA[o@sAuDeAiD?A?A?C?CAEIEo@yByAaG_AoDAYIGwA{FcAkEKm@g@gAW_@k@u@kBgCKQ?CCIEEECC?GEo@{@w@eAaAw@y@m@qBwAoFiDOUWSUM@I?IEQQQK?KLCFm@OmDwAeC}@gEcB_A_@_C}@ACACEEEAE@A@a@SsAg@kHcCoAk@WJMAoE_@sCWEgBMoBO_BOiASaAk@sCMy@MqB@oHgF}AiFyAaCw@i@UeAWkCq@iCu@wDgA{@YqEqAcCu@}A_@qCa@aG}@oBa@QE{@i@e@YG?MBIFCHCN?Fs@PkE`AoE|@mAXW@aLd@cJ\\WAsABq@FwCEuCEsBMwA?Y~@Kv@U~AANB`@?VKjAs@vFO`BC`A@PGfASpBs@dF_BnLs@lEk@vC}A`LeKdv@_@~BwDnYSrASrAUn@Ul@Qd@Sr@QlAuBlOY`CIjAW`CKp@IZYf@GFKVERAX{Af@kGCc@?QIA?mDBE?YMMIIX[pAuAbEmDpKo@rBiEsHi@_AOZSPeBPwEd@HLPVzBrC', NULL, '2018-10-26 02:51:42', '2018-10-26 02:52:03'),
(34, 'TRNX317079', 122, 0, 122, 1, 'CANCELLED', 'USER', 'eee', 'CASH', 0, 5.00000000, '1 Rue Jean Monnet, 92290 Châtenay-Malabry, France', 48.77042790, 2.28562600, '60 Avenue de Paris, 92320 Châtillon, France', 48.80596360, 2.29218790, '2018-10-26 02:54:14', NULL, NULL, NULL, 0, 0, 0, 0, 'mqthHyk}LGq@Co@BK?SAIEMGEIAG@KNkHTi@Em@Oi@]U[o@{AYkA[m@q@}@aAoBMMQGYE{@A_CBaAEm@WeA_AMQ{@aAk@}@m@w@S]]k@}@y@_BsA]a@@A@E?C?KEQMEMHAB?@sA{@}H_Fo@y@GCe@CmA_@k@AkKBu@Im@@oCDm@?gB?qBAiAB_B?sABSBm@A{@?[Mc@O[GI@OLGLq@rAy@nAy@xAMPODWHQ@W@?rEMnBO`BE~@OhBM?EEiAo@_Ag@MSa@WSKg@S]KAAAAE?YSq@[y@c@e@_@OOIGSKSEe@Ie@WWEYQeCoAeD}AeCyAeDeB_Au@}@_AwCaE@CAIIKG@EDAH?@c@DyLlC]PmCrE}BbEa@t@Ur@cAnCiBiDoAcCiEvHgBcDuBkE', NULL, '2018-10-26 02:54:14', '2018-10-26 02:54:26'),
(35, 'TRNX300784', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 32.00000000, '2 Corby St, Huddersfield HD2 2SE, UK', 53.66153210, -1.78625310, 'Leeds, UK', 53.80075540, -1.54907740, '2018-10-29 08:47:50', NULL, NULL, NULL, 0, 0, 0, 0, 'qwofIb{{IXGBN?^\\lE}BtAw@t@IV_B~Bs@~@i@`BY~Ak@nFkBxLe@hC_@lE[~Fe@xE}AnKs@vDWn@Qx@]lCmBfISd@_EpEe@t@a@dBYtAWj@]ZmADeCM}@Ou@IYHMr@Al@VdAl@pBx@pBn@dAv@pBb@|AD`C?`CcAtLs@fHeAxFcB|KqBxOwAzJi@l@^~Bp@jCv@tBnAtCl@l@d@TlAMh@?\\NZ\\Rj@Ht@PhHEvCQvBcAlF{@vCa@|@w@lAaCpBkBxAqCpCYp@QnAE|@Sz@c@n@WN]?m@W]o@Q}@AcAH{@Xu@`@y@ZsADiBGiC[qFq@_I@{AuBcS{BsSmAiIuAcGwBaHmCiGqCmGwCmIgAmEu@}DuAqKmE_h@cNi_BaN{~AiBaTk@_Gw@yFuAyGgA}DwByFeBkDgC{DwCgDyCiCsF{EiFoEaGeFqBiBkB}ByAwBcCuEqDiJkDoJoCgH{ByEaCsDqBcCaB{A_BkAeAo@gCiAiBi@kB[eBQyAC_CF{Ep@_QbDsZvFaBPyCLkCA_DUyDo@qCw@sD_BmBcA{DuCaC{BqB_C_DmEkGsK_FuHyCeE_FaGaCiC{GsGqB_BwLmIeIiGoC{B{JwIqKcKsGaHyGqHuKaNqAmBwDeHmB_FkByGaAuEu@kEiAkKe@kJKaF?uFR}IXgEl@yGf@uDbAyFrBwIlHaXtAsGhA{Gp@oFdAsLf@uLJyJCaIMeFYcHyA}QgBaSoE_g@yIyaAkEeg@e@cFk@gCaCkQeDcUiBkNWiEGqFJkFLaCv@uGn@eDbAqDJk@zAmDh@_B`AoDl@}D`@gG@yFIiC[oD{@uF}AsGuAqEeB}DeBcDqBuCsEcFiXgXyCmD}B}CuBeD}BeEkB}DcCaG{BmGcDmKgEsMwCiJeBaEwBmE}EmI}A}ByBmC{MqNyHgIaMqM_D{D_BkC}BuEaHePsEqKkCaG_FuJmCiFcCoFiAkDkA}Ey@oEk@eEWw@Ea@m@sE}@iJOq@Wa@{@s@QA}BRkDN{COqDYu@UaAk@_A_A}AoBm@m@{@g@k@Q{@EaCH_DZoC^qCh@wANmBC_CYeAOSHy@t@]JcAPYTGTSh@a@r@k@l@iAr@}@Vs@G[IUMa@o@WcB@cAJq@d@qBVs@Ho@Cy@EUWq@_@_@c@a@W[eBgDkEmJaEeI}@cBw@mB_AgDc@kCWiAc@yCY_Be@uAaA{Au@}@eAwAYeAIy@H}AVcCb@eDDqEBcD}Bu@uAKGmF?G', NULL, '2018-10-29 08:47:50', '2018-10-29 08:48:13'),
(36, 'TRNX803815', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 32.00000000, '2 Corby St, Huddersfield HD2 2SE, UK', 53.66153210, -1.78625310, 'Leeds, UK', 53.80075540, -1.54907740, '2018-10-29 08:48:50', NULL, NULL, NULL, 0, 0, 0, 0, 'qwofIb{{IXGBN?^\\lE}BtAw@t@IV_B~Bs@~@i@`BY~Ak@nFkBxLe@hC_@lE[~Fe@xE}AnKs@vDWn@Qx@]lCmBfISd@_EpEe@t@a@dBYtAWj@]ZmADeCM}@Ou@IYHMr@Al@VdAl@pBx@pBn@dAv@pBb@|AD`C?`CcAtLs@fHeAxFcB|KqBxOwAzJi@l@^~Bp@jCv@tBnAtCl@l@d@TlAMh@?\\NZ\\Rj@Ht@PhHEvCQvBcAlF{@vCa@|@w@lAaCpBkBxAqCpCYp@QnAE|@Sz@c@n@WN]?m@W]o@Q}@AcAH{@Xu@`@y@ZsADiBGiC[qFq@_I@{AuBcS{BsSmAiIuAcGwBaHmCiGqCmGwCmIgAmEu@}DuAqKmE_h@cNi_BaN{~AiBaTk@_Gw@yFuAyGgA}DwByFeBkDgC{DwCgDyCiCsF{EiFoEaGeFqBiBkB}ByAwBcCuEqDiJkDoJoCgH{ByEaCsDqBcCaB{A_BkAeAo@gCiAiBi@kB[eBQyAC_CF{Ep@_QbDsZvFaBPyCLkCA_DUyDo@qCw@sD_BmBcA{DuCaC{BqB_C_DmEkGsK_FuHyCeE_FaGaCiC{GsGqB_BwLmIeIiGoC{B{JwIqKcKsGaHyGqHuKaNqAmBwDeHmB_FkByGaAuEu@kEiAkKe@kJKaF?uFR}IXgEl@yGf@uDbAyFrBwIlHaXtAsGhA{Gp@oFdAsLf@uLJyJCaIMeFYcHyA}QgBaSoE_g@yIyaAkEeg@e@cFk@gCaCkQeDcUiBkNWiEGqFJkFLaCv@uGn@eDbAqDJk@zAmDh@_B`AoDl@}D`@gG@yFIiC[oD{@uF}AsGuAqEeB}DeBcDqBuCsEcFiXgXyCmD}B}CuBeD}BeEkB}DcCaG{BmGcDmKgEsMwCiJeBaEwBmE}EmI}A}ByBmC{MqNyHgIaMqM_D{D_BkC}BuEaHePsEqKkCaG_FuJmCiFcCoFiAkDkA}Ey@oEk@eEWw@Ea@m@sE}@iJOq@Wa@{@s@QA}BRkDN{COqDYu@UaAk@_A_A}AoBm@m@{@g@k@Q{@EaCH_DZoC^qCh@wANmBC_CYeAOSHy@t@]JcAPYTGTSh@a@r@k@l@iAr@}@Vs@G[IUMa@o@WcB@cAJq@d@qBVs@Ho@Cy@EUWq@_@_@c@a@W[eBgDkEmJaEeI}@cBw@mB_AgDc@kCWiAc@yCY_Be@uAaA{Au@}@eAwAYeAIy@H}AVcCb@eDDqEBcD}Bu@uAKGmF?G', NULL, '2018-10-29 08:48:50', '2018-10-29 08:49:13'),
(37, 'TRNX898294', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, '2 Corby St, Huddersfield HD2 2SE, UK', 53.66153210, -1.78625310, '21 Beacon St, Huddersfield HD2 2RS, UK,Huddersfield,England', 53.65835006, -1.78659059, '2018-10-29 08:52:30', NULL, '2018-10-29 08:53:33', '2018-10-29 08:55:28', 1, 1, 0, 0, 'qwofIb{{ILIJ@D@AL?^\\lEdDqB~CyBhCcBE^G~AEz@v@^NBHCXSXg@', NULL, '2018-10-29 08:52:30', '2018-10-29 08:56:24'),
(38, 'TRNX102223', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89477810, 170.49650970, 'Dunedin Town Hall, Dunedin, 9016, New Zealand,Dunedin,Otago', -45.87284408, 170.50284203, '2018-10-30 08:12:22', NULL, '2018-10-30 08:13:11', '2018-10-30 08:13:28', 1, 1, 0, 0, 'fybwGobso_@kBzAIFQk@a@oAe@}A_AuC_@qAm@l@eA`AqCzBcAn@K@[\\QNqAfAgBrAc@T_@F[Ca@MkA_@_AUmAEmEUm@EYIK?YGo@UiBw@cBy@}E{BgDaBgEmB_EkBsEqBmDgBoB_AgD}AeEiB[OEMkB{@mEuBcAe@M`AOpAGJ_@VkAl@cBx@KBUE}Ay@cBu@]]k@cBGS', NULL, '2018-10-30 08:12:22', '2018-10-30 08:13:54'),
(39, 'TRNX621471', 122, 122, 122, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 4.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89479200, 170.49649770, '115 Preston Cres, Belleknowes, Dunedin 9011, New Zealand,Dunedin,Otago', -45.87441533, 170.48066318, '2018-10-30 08:19:42', '2018-10-31 18:49:00', NULL, NULL, 0, 0, 0, 0, 'hybwGobso_@mBzAt@dC|BnH|AdFbAhDb@rAe@^{BfB{BfByFlE{@p@Y^KXQ~@mAI[GUMc@c@]aAMw@EqBDeDFeDPuAN_AJmAAgAScBKo@AESR]\\[^{@x@c@ZoAt@gAj@_EtBoDlBaAf@iBz@kDrBwEbC_An@}@t@wAxAgAjAm@|@aBvCw@bBMZITIAY@c@AcAMIEW]Um@Wa@SKE?SDOHq@dAaAvAm@l@i@Rs@TYB_@CQEBl@y@n@QRE\\Bp@VlALn@Dp@CTGNEDQBOEYS{@{@OSIWKo@KgBGq@Sc@EEQGKAc@HQ^Wb@sA`BMLIVMp@QjCcAdKUhCk@zAGLIJ{ADe@@g@W}BeA_CgA', NULL, '2018-10-30 08:19:42', '2018-11-01 06:39:16'),
(40, 'TRNX549837', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89478160, 170.49650840, 'Timaru St, South Dunedin, Dunedin, New Zealand', -45.89410990, 170.50695950, '2018-10-30 12:19:06', NULL, '2018-10-30 12:19:33', '2018-10-30 12:19:43', 1, 1, 0, 0, 'fybwGobso_@vEuDbBsA|@w@xBoBFGe@wAkAmDw@iCgBaGeBcGaBqF[}@Us@_@w@s@}A}@qBUi@X[Z]', NULL, '2018-10-30 12:19:06', '2018-10-30 12:20:09'),
(41, 'TRNX131309', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89401340, 170.49723210, 'Timaru St, South Dunedin, Dunedin, New Zealand', -45.89410990, 170.50695950, '2018-10-31 16:59:27', NULL, '2018-10-31 17:00:07', '2018-10-31 17:00:57', 1, 1, 0, 0, 'jsbwGueso_@rBzGv@bCPl@Lb@^Y|@q@|@s@tBaBrFuEfByAu@eCcCoHeAaDy@oCyA}EsEoOSk@c@mAMUeA}BaA{Bt@y@', NULL, '2018-10-31 16:59:27', '2018-11-01 06:27:09'),
(42, 'TRNX565429', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Asseyri Hingun, Malé, Maldives', 4.17797020, 73.50311980, 'Maafannu, Maldives,null,null', 4.17490473, 73.50627501, '2018-11-01 06:27:37', NULL, '2018-11-01 06:29:29', '2018-11-01 06:29:55', 1, 1, 0, 0, '__oXmas_MPp@FHdABrDNrBNZwFToETaDPiDnAFSp@t@N@?', NULL, '2018-11-01 06:27:37', '2018-11-01 06:30:19'),
(43, 'TRNX916840', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17789320, 73.50309450, 'Maafannu, Maldives', 4.17710500, 73.50644100, '2018-11-01 06:31:30', NULL, '2018-11-01 06:35:30', '2018-11-01 06:38:29', 1, 1, 0, 0, '}~nXias_MNl@FHdABv@@HwBXwFFw@OCa@Ek@u@W]MSd@aAv@gBHU', NULL, '2018-11-01 06:31:30', '2018-11-01 06:40:04'),
(44, 'TRNX509048', 123, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17788070, 73.50299600, 'Buruzu Magu, Malé, Maldives', 4.17220690, 73.50842710, '2018-11-02 10:55:32', NULL, '2018-11-02 10:56:25', '2018-11-02 10:56:44', 1, 1, 0, 0, 'w~nXw`s_MHZFHdABrDNfJj@pH^rABfBFLyBJyBXuFf@cJV{DNqDwBS', NULL, '2018-11-02 10:55:32', '2018-11-02 10:57:32'),
(45, 'TRNX396743', 123, 122, 122, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 1.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17789100, 73.50308810, 'Shaheedh Kudanevi Thuththu Maniku Hingun, Malé, Maldives', 4.17598050, 73.50836080, '2018-11-04 04:39:49', NULL, NULL, NULL, 0, 0, 0, 0, '}~nXgas_MNj@FHdABrDNrBNZwFToETaD^kIRiE_CA', NULL, '2018-11-04 04:39:49', '2018-11-04 06:26:24'),
(46, 'TRNX683540', 123, 0, 122, 1, 'CANCELLED', 'PROVIDER', '', 'CASH', 0, 1.00000000, 'Fareedhee Magu, Malé, Maldives', 4.17819690, 73.50980240, '371 Ameenee Magu, Malé 20371, Maldives', 4.17150740, 73.50896280, '2018-11-04 06:27:13', NULL, NULL, NULL, 0, 0, 0, 0, 'm_oXkkt_MH|AN~@BLvA_@Mq@UgBLBzCr@bH`BfNpDp@PF{@`A@vBRJyB?E', NULL, '2018-11-04 06:27:13', '2018-11-04 06:27:34'),
(47, 'TRNX786481', 123, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 1.00000000, 'Fareedhee Magu, Malé, Maldives', 4.17819600, 73.50976790, 'Ameer Ahmed Magu, Malé, Maldives', 4.17790080, 73.51451840, '2018-11-04 06:27:44', NULL, NULL, NULL, 0, 0, 0, 0, 'k_oXekt_MJpBmD]gC\\_CXCMAq@HoAJYzAkBJOHe@TyAbAqFzA^VyB\\cBb@eBf@aC', NULL, '2018-11-04 06:27:44', '2018-11-04 06:28:05'),
(48, 'TRNX360315', 123, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Fareedhee Magu, Malé, Maldives', 4.17819370, 73.50979040, 'Ameer Ahmed Magu, Malé, Maldives', 4.17790080, 73.51451840, '2018-11-04 06:29:03', NULL, '2018-11-04 06:29:35', '2018-11-04 06:30:06', 1, 1, 0, 0, 'm_oXikt_MLtBmD]gC\\_CXCMAq@HoAJYzAkBJOHe@TyAbAqFzA^VyB\\cBb@eBf@aC', NULL, '2018-11-04 06:29:03', '2018-11-07 07:23:57'),
(49, 'TRNX359668', 123, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 1.00000000, 'Asseyri Hingun, Malé, Maldives', 4.17789880, 73.50310820, 'Le Cute Building, Majeedhee Magu Rd, Malé, Maldives,null,null', 4.17545580, 73.50947957, '2018-11-07 07:25:17', NULL, NULL, NULL, 0, 0, 0, 0, '__oXmas_MPp@FHdABrDNrBNZwFToETaD^kIRiELqCH_BNuCuDe@VpC^HhAR', NULL, '2018-11-07 07:25:17', '2018-11-07 07:25:40'),
(50, 'TRNX724386', 123, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17790580, 73.50310760, 'Hulhumalé, Maldives', 4.21064880, 73.53879910, '2018-11-07 07:48:15', NULL, NULL, NULL, 0, 0, 0, 0, '__oXmas_M}Jk_@y@gDCY@e@Dy@F[DKr@{@r@_ATyAlBcKdAyFzAmIj@sCZkAh@_Ap@w@PMp@]l@S~@Qn@Cr@@nDRjXpA\\D|@TwAiKe@eCo@sCk@}BcAiDqBqFiCwFwCsFgG_LqCyE{AeCyDeEoCcC{BoBsB{AgDkCaDwBmEoCgFqCcEkByCiAsEcBsBYyAWmBi@eEoAqIkC{D{Ak@]}J_CyNcDmNuCoA[u@KoBIiAPeCbAgEjDkOzKiBrAuHyAwASyFiAwOwC', NULL, '2018-11-07 07:48:15', '2018-11-07 07:48:38'),
(51, 'TRNX565466', 122, 122, 122, 1, 'PICKEDUP', 'NONE', NULL, 'CASH', 0, 10.00000000, '1711 West Virginia Ave NE, Washington, DC 20002, USA', 38.90988020, -76.98622400, '1500 University Blvd E, Hyattsville, MD 20783, USA', 38.98576110, -76.98059760, '2018-11-07 16:11:27', NULL, '2018-11-07 16:12:17', NULL, 0, 0, 0, 0, 'irnlFtk{tM_D{DcF{FwIcKmOoQ}@aAs@mAGOMY@C@YC[G]KIOGa@AYJSRQRSTSJOH}CXiBT]Lk@Ze@^YZ[AyF@gHAiI?mQAY@UJw@Vy@DiDNcIZiKZmOh@uYdA}DlEgAdAyIbJ{@lAoGjJuArBaD`Fc@j@[f@iBtC}A`Ck@J{@NmARyB`@aANe@@aH?iC?uBDi@?[Ai@Ma@QYUiDwDw@s@a@S_B]{Jk@}ACy@@aAHu@@e@?OAqA[a@Sa@[eA}@mCoB}A_AwAm@_O_GaIeCmEmAgAYo@GgABoDn@uCh@eDp@WDWGSEQGQKYmAOcAQ}BU{Ai@mBc@}@s@gAyB{BgAgAs@k@aAi@cBc@SAoDCkAAg@C_ASy@_@}AgAaB}@wASs@CuABsNf@eBH_BXkDt@_AP{Gh@qCHa@AEXwAzCmAfCUd@YYYY_@_@EEIL[\\CF', NULL, '2018-11-07 16:11:27', '2018-11-07 16:12:17'),
(52, 'TRNX482684', 129, 0, 130, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, 'F 256, Phase 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 140308, India', 30.71207390, 76.69342420, 'Sector 51, Chandigarh, India', 30.70587970, 76.74086660, '2018-11-12 20:38:22', NULL, NULL, NULL, 0, 0, 0, 0, 'ommzD_ebsMsFlEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SL]ZQVARDBBrB}@pIaHfBsAjH}F~BiBv@u@^i@Lm@@KHUVSZCF@B@j@Ip@UhF_ExIgHpKqIp@m@LUJInAcAxEwDlJoHrJyHbBoAbA{@Tc@H[BQ@I@CeB{DiCoGgCoHiA}Bk@{@y@_Au@}@}AwBRUbG{ElDoCtAnCrBxD', NULL, '2018-11-12 20:38:00', '2018-11-12 20:38:43'),
(53, 'TRNX769450', 129, 130, 130, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, 'F 256, Phase 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 140308, India', 30.71207390, 76.69342420, 'Sector 51, Chandigarh, India', 30.70587970, 76.74086660, '2018-11-12 20:39:45', NULL, '2018-11-12 20:40:10', '2018-11-12 20:40:20', 1, 1, 0, 0, 'ommzD_ebsMsFlEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SL]ZQVARDBBrB}@pIaHfBsAjH}F~BiBv@u@^i@Lm@@KHUVSZCF@B@j@Ip@UhF_ExIgHpKqIp@m@LUJInAcAxEwDlJoHrJyHbBoAbA{@Tc@H[BQ@I@CeB{DiCoGgCoHiA}Bk@{@y@_Au@}@}AwBRUbG{ElDoCtAnCrBxD', NULL, '2018-11-12 20:39:20', '2018-11-12 20:40:35'),
(54, 'TRNX188977', 131, 131, 131, 1, 'CANCELLED', 'USER', 'chutiyapa', 'CASH', 0, 243.00000000, '19/5, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31332370, 78.02542490, 'Delhi, India', 28.68627380, 77.22178310, '2018-11-12 19:07:46', '2018-11-14 19:05:00', NULL, NULL, 0, 0, 0, 0, 'sp_xDakf{MxAsBnAsFm@E{GhJ{@rCfGfDdLrK`FbF`QvY|@hKfStUpOxLdSdWbPpNhPpRhU|Old@tVn[jQ|e@rLp`@tSxXlOxOrPtV~IxZzCn]jH~CJ`EfHdFzEdM`QxMdLpBtFGxOlCjAd@jRqGnJoAhEFsGsAZM~C{@~DgB|HhGv@vC~ALzDxGjH?lDrE`EdEbMfK|C`M~@jIvGvDdFHjIdHlGxIlFjBzClGiBdEBxExEtEnHtFlKxNlB|EtAtArHvIlOk@bPZzQlGrHG~PrI|@vXz@jDyCfInJlJ|MjLdF|HjG|Je@xGjDxMiJtGjIlFBtO~KjMhAlIi@lJtF~K|RnGzS~~@|jA~XtN`YzV`qDrfDl|BbxB`s@nv@xNnZjDdXgBrZzoAvsA`bBjcBzzAv{Axn@nh@|XhUpg@xm@j}@jmAjcA`|Azi@`l@nlAhmBb\\bn@paAreCpc@jiAzRaFtr@fIhwD|e@lmHncAtlEny@j`AbRvVdNxGFfNeLdHcEtHSdXFh]BjiBa[bcAeSriC{p@lnDov@fgAkUh`Ay[h`Bum@bV{LnN}UvKsd@hOcFvHWpf@nMxWpAh}B{@trBq@vyBiGnsEyWvcEsRhcBqHzn@kFfO{Il[m]vRiPjPy^nOy[?GmDkJdIfAbNcE`jAww@zi@qf@v[}`@z]ko@vqAwo@ji@}@dMfGf[he@t]~Vpc@bVrw@vAds@DrPzLl]zm@nC|PCda@yApu@e@z\\hCjRrLhIbKlBz^aAfvCsHldAgDfuAm^n~DseA|fBwc@|s@xDvjAxPnl@jKz_@hUzl@lYlTtGxRoAbw@g\\n`A{f@zb@mRnd@iGb|@|GbcCvT~_ArDzFChLaHdOMdH`CrH~EjVpC||@~EzwAtGd{BnJh`InSni@aAhp@|GvvBpGpy@xCnR|GjLpXe@zWsAfVdCnMl[po@dWlg@xT`\\rsBlcBttAl`AdyAjL|}@lH`_@nHnpB`NndA}C`iCyHhi@LrSjPxrA`zA|~@dy@vaBbiArZbVzg@be@fj@~UdYpP`d@bZ`n@th@xw@l|@ti@nn@zt@x}@lj@he@~fBx~Afq@xs@fMvI~hBfbBv|@`z@b_@bf@ra@pWvu@hh@liEz|D~vAz`Bbd@`l@dVt`@fFzA|GVA~McXf}AqNfx@wCnj@`Cl`B`F``DvE`{FQzk@jMdx@`RjrBXrNsFfH_CrO}K`mAHrO|DzO~Pdm@~DfC~Ey@rIyJpBxAc@dCgSdImi@dKcRzBwJvJwE|HbD~Ro]pD', NULL, '2018-11-12 19:07:46', '2018-11-12 19:10:51'),
(55, 'TRNX349936', 130, 132, 132, 2, 'SCHEDULED', 'NONE', NULL, 'CASH', 0, 55.00000000, 'Harnam Complex, Saharanpur Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.31271710, 78.02402700, 'Haridwar, Uttarakhand, India', 29.94569060, 78.16424780, '2018-11-12 19:21:19', '2018-11-15 12:21:00', NULL, NULL, 0, 0, 0, 0, 'an_xDk`f{MnN`NbBdBLPMJeAsA}MaMwAoAqGsDkEyCaBuAoC{CcAqBkBwGGq@R_@~AqBz@}BTkBHcGVyFHi@XiCpAqMJ{BISC[FOTEt@mEp@cIToDcA{IPo@dIsQjFsJxGyAxGkAPGBWlFf@|KbAlFf@dDPRHpAAjD?tBq@hJeH|BcBfAgBzFcKxDmHhEsFxF{GlCiDpEsEnKuI`KmIhM}PvIaJdEwFdLyLpDeEv@w@zD}CbFmDnFeDlDsBtRkNdEsCpFgE~FaFtAu@dPgCfAe@dFkE~BsCj@oAnAqDrC_FjAeBlAoA|JoIjU}RrLgKfA{@zBu@rASjACrAPtBt@nEvAr@@r@g@vBkDrBwBhJmGjC_CdBuBd@y@dCwCnEqDhEqC~CuB~@YzByAnHsBtBo@pEoDfFeEpF}EhRuOrNmKbFmE|AcB~QcUbX}ZxIwI`RyNlBaAhS}EhSqClFKnKa@fJI`GNvGVzGdB|Dr@fCMpDwAlIyD~@BhAp@tBnAhG\\|Rh@d^`AxEBlJb@`Q`@xOb@~ABpGDKe@oCaKs@uCqBqIg@kDsGgVkEmNkDaMoL{VoFwMjFsBpDoA`Ec@`EOzO`AdL~@~C?`Eq@tJsDxFsBrDk@tBDfGv@jF`BrFhApC^fi@nDdDL~AEdCc@fAq@fL_HdVcPjD}BpEoBn^oMp_@kNdD{A|B_BvA}Ar@yAhAcEdE}b@bAqE`AiB`D{CpB_AtBc@bQg@vt@}BnVk@~Ga@tA[tB{@rf@}[hOuJ\\CtBoAfGwDdD{AhU{NnGeFrWwPX_@lOsJl\\_SjXaPrD}BpDcDfC}C~IyMhMeTlBkBfVi_@hE_HpBeBlB{ArYoPbQmLdCiBhCeB`KeGlAaBrJyQlD{GnBwCxAz@nAf@lAz@lK`Jz@~@p@jA|@bAxO|MjAj@~Bp@lAn@nHfGfDhCxAF~Bc@~CoBpCaBh@Oh@HVT~@~ApBj@vCZrEGfC^jK`FjCrAlLnF`b@nS~KhF~FfDjJjGfUnKrCpBlDjDdDbDpAvBVbAzAtBvEfFlDbE|@~AxCvDnB`CvBP~B?v@`@|JnI|Bf@z@@vKEzZk@lAOrECrFEpOzB`Dj@`DjAzH~EfJtGdHpDrB~@bBdA~CpAjFtBrFnBpFpAxDjAt@\\zAO`E@`LLfJL|DF`Gd@xDr@bDr@zErA~GzAx@PRIVApDbAtSdFhCpAnGfElH`F~Av@bEhAtH`BpGxB|V`OxFpDjC~BtDzDl@t@~LxOdN~P', NULL, '2018-11-12 19:21:19', '2018-11-12 19:21:30'),
(56, 'TRNX328445', 120, 133, 133, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '2nd Floor, C-175, City Business Center, Industrial Area, Phase 8B, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71055340, 76.69444590, 'Sector 51, Chandigarh, India', 30.70587970, 76.74086660, '2018-11-13 11:44:59', NULL, '2018-11-13 11:45:24', '2018-11-13 11:45:29', 1, 1, 0, 0, 'sdmzDmlbsMoG`F_GxEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SL]ZQVARDBBrB}@pIaHfBsAjH}F~BiBv@u@^i@Lm@@KHUVSZCF@B@j@Ip@UhF_ExIgHpKqIp@m@LUJInAcAxEwDlJoHrJyHbBoAbA{@Tc@H[BQ@I@CeB{DiCoGgCoHiA}Bk@{@y@_Au@}@}AwBRUbG{ElDoCtAnCrBxD', NULL, '2018-11-13 11:44:59', '2018-11-13 11:45:43'),
(57, 'TRNX686095', 132, 0, 131, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 226.00000000, '13/9, Street-2, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31269780, 78.02407160, 'Shimla, Himachal Pradesh, India', 31.10481450, 77.17340330, '2018-11-13 12:31:44', NULL, NULL, NULL, 0, 0, 0, 0, 'an_xDk`f{Mt{@ppA|_ArgAm]xOk_@h_@cVxWqo@x`Bl}ApbCzF~`BsVbpBwFbh@{TxXcm@|WsWv]_w@z`Aol@j`B~DzeAkk@f}@sQnk@}b@fhBkr@lbAco@|gBmr@~aBuaBpkBknBncCyh@`nApJnYpIre@kV`mA_\\tv@{C~kAgf@v}E}OfoCuApO_u@}BeGmAuFfLg\\brBl_@pfAxPfy@aG`{@khB|q@wj@zUod@t_@qq@`|AcfAnnCss@j}AcShkAyUptAdDnrAjSbv@cF~pCgkAtfEgIv\\uDlj@xVtt@f@h~@nA|XkMnwAsVhmBo~@|pBgUdrAaLxo@_[fBoYrEbBzQ}MaHuSfZ}MoEbBzJySdUNtQa[qKqOoQfAs_@@}Xa\\wEgd@dF}C~\\aZ_KsVeWcTnHiPcJoQtI}TyK_Y}CaF|K_LeJwJj@fDfGlDv\\RnWpBxI{Fx@af@wAmRiKePzQmGjFqEyQsb@kY_MoCaG`R`EvUyOoDaWde@sCve@w\\bOmV`b@bFpSrNxBhHxJsKnB}l@|BgW|b@oWxc@aLzXs@`^wOd[ee@bfAcx@j}Agq@hx@ea@}I{Gg^mS~Ja@sOLoSkHuNaKiGbE{]gT`ZcqAjzAs[|V_L}GefAdfAmTfOmJhUkl@vl@ap@`Qc[oMsZtUw\\lLgBba@wHfb@aQpAxCfLiWfNaXxHwYtFs]j_@oWwFuRrHaFlSiGxTp@fQoOtHkWjZeVjK}g@ja@ca@tUw@f]cNzFaWxWmZbi@zE|{@ea@f|@cT}@aYrXyUwF{SjN{GeFW_VdG_NoH{GdEgWyHqJuJ}D{HbI{PmHm`@da@of@lp@wl@jEwVjVwNKqMzPkKsCoKbb@mj@v\\o]_N_InAjNmPlKsQ_KeJnP{a@_GyMgNxJeYrYkKlCxLg[vL_e@jJix@cP{Uqb@pXeUbFuAsJsGa]kLoDyNa@fBqVaLjMkQhk@iLe^yUaM_LkLdCw_@sK_g@dGgS_Ty@gJwe@lL{XqMwGzBmRcQkAkTw\\a]L}UdViY`KvBpNmQ~JiLfC{PtFgLnY}Bj_@aUmLmPta@sb@tMuQgZ}JkAcFjKyPsPkJnDuDzPySpK}K~MwVbJfFx_@qMpOaPlHkNsEuIxSgMcLmIhMsSCuTwFg@gZtEwOaI_L}VeNwYbMmZcRiX_]qXjWySqk@|Ew\\m]ab@gOeBqIi[wc@me@iUwJoWyAwd@zSi[eCuK}GmOrPqOoZyLkWap@dCqa@yL}KhTmWm@ip@og@`Gyl@}Luq@{@kfAe@qM', NULL, '2018-11-13 12:31:44', '2018-11-13 12:32:06'),
(58, 'TRNX278904', 132, 0, 131, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 246.00000000, '3/3, Saharanpur Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.31268360, 78.02419060, 'Delhi High Court, India Gate, New Delhi, Delhi, India', 28.60860360, 77.23548590, '2018-11-13 12:40:46', '2018-11-16 18:45:00', NULL, NULL, 0, 0, 0, 0, 'in_xDq`f{Mrd@bn@nAlKxSdUrc@`e@bRnOhNfRj{@fg@nZfPte@rLz`@~ShXfOpPlQrWfIx[pDh[hGfJ`JhTrWbMtKnBdGKfPnC^RlUqGbHuAbDN}GoBpFiAbE{@fHhH`@rCbHhFxJlH|InD`LpMpC|KjApHvHlCdPfKbFfGpHtLm@fKhGtDlJhHlIbN|AhHbLdI`PcBhQrAfQfGhGK`QzXdAfJGhAgCrCfBrEnDTpC~LlOhKzC`KvG~Hk@|FpCrMkJnHpIbJhAxKvJ`QO~FzAnHnFxOjV~DfQhS~Vt]jd@nUzPlRfLd]~Zn`EzuDjvBprBpe@bl@vOn_@cBvh@nrExvEbkA~kAle@d\\l`A`gA`_A~pAphAx_Bpj@do@`cApaBv_@lw@daA|dCrVrn@zDpK`G}AzF_BfFq@`NvArf@nH`jBfUpnAdP|uCl_@dxCzc@lnE~y@nv@xO`VzMfImAtO_NfW_Bhp@O|pDsp@fkCuq@pnD_v@|fAqUn{@yZheBmp@hVyTrFiLrFc\\hFiG|[_Cne@|LxS~@~dCeAloBm@pzB{GzyKok@|dB{Hpi@cHhj@gh@xPmOdRab@xLwV@GgD}JpK|A`|AsbA|bAmeAz^gp@`uAgo@~d@FdL|Gr]dh@j^nUnd@lU`t@`@tr@LhY|YxUle@lAvv@oBvkAbDbSjOrIdjE{Ibz@wCdxA}_@|vEmnAvnAqYjr@|EzqAbRtd@pJle@fZ~f@dTzVjGdQmCru@y[piAel@bd@kPp[cCj~@vHldAtKd`AhGjz@~DfTmI`Pd@dL`Hh^fEfyC~NzbG`StqDbJpm@Ixn@jFdvBvGtz@xCnSdN~FhTqA~\\g@nStEhNp]hr@~Vtg@hVnYnqB|`BtsA`~@fbB`Mbw@jGz[jHxqBjMzqEcNhe@jAbTbStrAvxAf~@tx@`aB|gAvgAz_AbhA`i@lsAzeAhgBluBzp@nv@jc@d^nfBp~Af~@f}@~hBdbBd`Ab_Af\\pa@|c@pXzr@|f@lmAbgAfo@bl@hv@|t@_KjZsS~YaNlOd@xD{AjKyFrJbH`HbKnJdRvQ~OlOgM~UGLOBwFrHfGrRzb@riAjUv@dFvDbMbKjIf@hJeU`BaHkBxUbNsRfOqG|NjCfN|I|Kr@v^fEnTnMj[|{@dfBnsFvcAt}@vK~PhAzVtFfZd_@nfBh[hsAfUf~@hJrOhm@zk@lq@~hBjG`WRxGuUdFwj@`M}StF|@hQtB~KiFdSEXb@rMnENpGDzC~BQ`GaAnGw@zBrCbFdAaBXY', NULL, '2018-11-13 12:40:23', '2018-11-13 12:41:07');
INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(59, 'TRNX512078', 132, 0, 134, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 225.00000000, '3/3, Saharanpur Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.31271390, 78.02418010, 'Cart Rd, Nabha, Shimla, Himachal Pradesh 171004, India', 31.10248600, 77.15979600, '2018-11-13 12:41:55', NULL, NULL, NULL, 0, 0, 0, 0, 'kn_xDs`f{M~{@xpA|_ArgAm]xOk_@h_@cVxWqo@x`Bl}ApbCzF~`BsVbpBwFbh@{TxXcm@|WsWv]_w@z`Aol@j`B~DzeAkk@f}@sQnk@}b@fhBkr@lbAco@|gBmr@~aBuaBpkBknBncCyh@`nApJnYpIre@kV`mA_\\tv@{C~kAgf@v}E}OfoCuApO_u@}BeGmAuFfLg\\brBl_@pfAxPfy@aG`{@khB|q@wj@zUod@t_@qq@`|AcfAnnCss@j}AcShkAyUptAdDnrAjSbv@cF~pCgkAtfEgIv\\uDlj@xVtt@f@h~@nA|XkMnwAsVhmBo~@|pBgUdrAaLxo@_[fBoYrEbBzQ}MaHuSfZ}MoEbBzJySdUNtQa[qKqOoQfAs_@@}Xa\\wEgd@dF}C~\\aZ_KsVeWcTnHiPcJoQtI}TyKqHaFmObAaF|K_LeJwJj@fDfGlDv\\RnWpBxI{Fx@af@wAmRiKyJJkDnQmGjFqEyQsb@kY_MoCaG`R`EvUyOoDaWde@sCve@w\\bOmV`b@bFpSrNxBhHxJsKnB}l@|BgW|b@oWxc@aLzXs@`^wOd[ee@bfAcx@j}Agq@hx@ea@}I{Gg^mS~Ja@sOLoSkHuNaKiGbE{]gT`ZcqAjzAs[|V_L}GefAdfAmTfOmJhUkl@vl@ap@`Qc[oMsZtUw\\lLgBba@wHfb@aQpAxCfLiWfNaXxHwYtFs]j_@oWwFuRrHaFlSiGxTp@fQoOtHkWjZeVjK}g@ja@ca@tUw@f]cNzFaWxWmZbi@zE|{@ea@f|@cT}@aYrXyUwF{SjN{GeFW_VdG_NoH{GdEgWyHqJuJ}D{HbI{PmHm`@da@of@lp@wl@jEwVjVwNKqMzPkKsCoKbb@mj@v\\o]_N_InAjNmPlKsQ_KeJnP{a@_GyMgNxJeYrYkKlCxLg[vL_e@jJix@cP{Uqb@pXeUbFuAsJsGa]kLoDyNa@fBqVaLjMkQhk@iLe^yUaM_LkLdCw_@sK_g@dGgS_Ty@gJwe@lL{XqMwGzBmRcQkAkTw\\a]L}UdViY`KvBpNmQ~JiLfC{PtFgLnY}Bj_@aUmLmPta@sb@tMuQgZ}JkAcFjKyPsPkJnDuDzPySpK}K~MwVbJfFx_@qMpOaPlHkNsEuIxSgMcLmIhMsSCuTwFg@gZtEwOaI_L}VeNwYbMmZcRiX_]qXjWySqk@|Ew\\m]ab@gOeBqIi[wc@me@iUwJoWyAwd@zSi[eCuK}GmOrPqOoZyLkWap@dCqa@yL}KhTmWm@ip@og@`Gyl@}Luq@n@}B', NULL, '2018-11-13 12:41:32', '2018-11-13 12:42:16'),
(60, 'TRNX140887', 132, 0, 131, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 21.00000000, '13/9, Street-2, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31300160, 78.02578170, 'Selakui, Uttarakhand, India', 30.36815850, 77.86531260, '2018-11-13 13:13:13', '2018-11-13 17:11:00', NULL, NULL, 0, 0, 0, 0, 'so_xDolf{MbByBbBkBk@q@We@OA_@?sE|F{@bBS~@o@vAKPaBcAeBqAaBuAmAkAa@`@O@KCMCO@MFMHU^mAxB_BlC_ExGyF`K_BlCq@lA[n@o@dA{@dAgA[C`@Er@Iv@WxAc@lBYj@Ot@yAtG{@fDA^@x@GpF?t@C`@GdAU~BM~@YjDQnBC|@NjGAVOr@s@dDs@bCgA|CoAbEW`Bo@`Ei@xEw@~F_BrMqA`K[nBKZcBlCoDnFq@fA}AzCy@dBaDrFqDhGwBhC{@jAOb@Kt@EfACXILEB?l@AlDGtI@`HEtCI~@YrAuChMcCtJmArFk@~B[x@q@xAm@lAoA`CyAnCaAfCSr@Kv@C~@PjH\\xMDpDP~EFpB?dGA~@WbHK|DKzC?z@AbBAhEE^GTw@rAKXA^Dt@J^bApC@l@i@Po@Dy@D]@qBOa@D[LwCxAgEzBe@PyAToALaDt@yDXw@LYLKJIRKd@Ib@YvDS~AUxAcAzI}@lGMfAw@dGgCdRi@fDWxBEj@?|@\\rEL`ANfBJdBJvCBtC?`BNrFNdId@vLJbEJnJZbJ^|PVxJFpC@fCCdP?bZEhFEdAa@~FUlEs@tLmAtV}@jSo@zKU`GG|@Kn@qCnMsBzLgA~EWr@c@f@_@ZQXkAdDYpAKv@]|HU|@Sh@c@jBy@fE]zBAz@D`@BLlA|Ax@~@bA~@pAxAb@p@Rh@z@`DhAnFb@|BXtBLzBFxBHvEJ`BZ~D@jAA|@KfAU|AOfAWpFQnBW`DGj@]lB_@tASf@sAfC}@|AsGnLkCrEcBlDMb@G~DQjCId@K`@_@hAyBpFi@pAuFtLiCpGcCxEaBrDGL{Aw@]O_AQeC_A}BcAiL}EkMaF_C_AeCkAyCoAkBy@wBuAuE{B_DiBo@_@k@g@}@c@z@_CE[{AwD{@{@', NULL, '2018-11-13 13:13:13', '2018-11-13 13:13:34'),
(61, 'TRNX964070', 132, 0, 137, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, '47/1, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31261360, 78.02542490, 'Guru Rd, Laxman Chowk, Dehradun, Uttarakhand 248001, India', 30.31315200, 78.02114450, '2018-11-13 13:31:20', NULL, NULL, NULL, 0, 0, 0, 0, 'qk_xDojf{M~CmEWWaA_Ak@q@Qa@ICQCQ@G?aAlAoBdCaAxA_@z@Ov@Wp@Wd@BBbDdB|BtAhBdB`HxGbA`AzBxB`@f@MJy@rA_CrDU`@aDgDaBwA{C}Cg@t@', NULL, '2018-11-13 13:31:20', '2018-11-13 13:31:41'),
(62, 'TRNX854971', 132, 137, 137, 2, 'PICKEDUP', 'NONE', NULL, 'CASH', 0, 1.00000000, '47/1, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31263600, 78.02426780, 'Guru Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.30881250, 78.01791410, '2018-11-13 13:35:10', NULL, '2018-11-13 13:36:08', NULL, 0, 0, 0, 0, 'in_xDq`f{MdB`B`HxGbA`AzBxB`@f@zAbCb@p@OJeA`ApA|BFF@DABa@`@oAfA_@XBDLPTRHIt@b@r@r@n@}@', NULL, '2018-11-13 13:35:10', '2018-11-13 13:36:08'),
(63, 'TRNX189201', 139, 142, 142, 2, 'CANCELLED', 'PROVIDER', 'xyz', 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:16:31', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', NULL, '2018-11-18 16:16:31', '2018-11-18 16:17:38'),
(64, 'TRNX472945', 139, 0, 142, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:18:20', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', NULL, '2018-11-18 16:18:20', '2018-11-18 16:18:41'),
(65, 'TRNX979865', 139, 0, 142, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:19:12', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', NULL, '2018-11-18 16:19:12', '2018-11-18 16:19:32'),
(66, 'TRNX980019', 139, 0, 142, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:19:54', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', NULL, '2018-11-18 16:19:54', '2018-11-18 16:20:16'),
(67, 'TRNX854721', 139, 142, 142, 2, 'CANCELLED', 'USER', 'xyz', 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:21:21', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', NULL, '2018-11-18 16:21:21', '2018-11-18 16:22:08'),
(68, 'TRNX641174', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 6.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82840820, -80.27815170, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 04:34:20', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cji~hNJ~GHfKrDEhJOhFCpDIfCqE~BkD~AiB`AiAnCeEhGeJjGeJpLgQ`ImL|CsEfDuEhDeF~B}CFWBGvBErDMtDClCCh@Il@Op@Sj@Kn@Gh@?p@BnD`@rALpAHpBH`B?`IE|@HlA@hABhAB\\@hEEt@FbGIv@ArG?v@@h@Nb@\\Vb@HV@VFNHL@zBBdID|GFjG@bCMpAQhA[pAMZi@jAg@v@s@`AYVSDMF}@|@U\\Yn@CX?d@PxFHfDD|CFZFNdArBLJl@\\^LR@pBC', NULL, '2018-11-20 04:34:20', '2018-11-20 04:34:41'),
(69, 'TRNX344424', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 6.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82838410, -80.27815240, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 04:35:01', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cji~hNJ~GHfKrDEhJOhFCpDIfCqE~BkD~AiB`AiAnCeEhGeJjGeJpLgQ`ImL|CsEfDuEhDeF~B}CFWBGvBErDMtDClCCh@Il@Op@Sj@Kn@Gh@?p@BnD`@rALpAHpBH`B?`IE|@HlA@hABhAB\\@hEEt@FbGIv@ArG?v@@h@Nb@\\Vb@HV@VFNHL@zBBdID|GFjG@bCMpAQhA[pAMZi@jAg@v@s@`AYVSDMF}@|@U\\Yn@CX?d@PxFHfDD|CFZFNdArBLJl@\\^LR@pBC', NULL, '2018-11-20 04:35:01', '2018-11-20 04:35:23'),
(70, 'TRNX578099', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 6.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82838670, -80.27815890, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 04:35:53', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cli~hNJ|GHfKrDEhJOhFCpDIfCqE~BkD~AiB`AiAnCeEhGeJjGeJpLgQ`ImL|CsEfDuEhDeF~B}CFWBGvBErDMtDClCCh@Il@Op@Sj@Kn@Gh@?p@BnD`@rALpAHpBH`B?`IE|@HlA@hABhAB\\@hEEt@FbGIv@ArG?v@@h@Nb@\\Vb@HV@VFNHL@zBBdID|GFjG@bCMpAQhA[pAMZi@jAg@v@s@`AYVSDMF}@|@U\\Yn@CX?d@PxFHfDD|CFZFNdArBLJl@\\^LR@pBC', NULL, '2018-11-20 04:35:53', '2018-11-20 04:36:14'),
(71, 'TRNX733798', 141, 144, 144, 1, 'CANCELLED', 'PROVIDER', 'iiii', 'CASH', 0, 10.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82839040, -80.27815270, '2100 NW 42nd Ave, Miami, FL 33126, EE. UU.', 25.79586500, -80.28704570, '2018-11-20 04:38:11', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cji~hNJ~GzBEjFGfNSdBCJGzBEDtCFn@|AtAJZl@f@`@`@Nn@AJ@RFXLTTNNDV?FANCXZlHtGrCdC`OpMvG~FvDbDt@r@p@b@~@\\`CZbB@lGGvJGfEE?rQ@nQ?dL@zDDtBTlC`@tEBzB@zD?dGM|CGh@W`BgAxEwCrLuAtF]rA[lBOfBItE@pDAtApA@vDGtSQrFGvIE`QSvEGrD??oH@{LHmHD_FvHCfHCZA@YAmFGcHEcSMaOBYDOJO`@G|@AFEBEnDE?gAIgAAo@Dc@hEiKbIuRHQeBaA', NULL, '2018-11-20 04:38:11', '2018-11-20 04:48:49'),
(72, 'TRNX655682', 142, 144, 144, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82839980, -80.27816670, '2100 NW 42nd Ave, Miami, FL 33126, EE. UU.', 25.79586500, -80.28704570, '2018-11-20 04:49:18', NULL, '2018-11-20 04:51:21', '2018-11-20 04:51:37', 1, 1, 0, 0, 'iqs|Cni~hNJzGzBEjFGfNSdBCJGzBEDtCFn@|AtAJZl@f@`@`@Nn@AJ@RFXLTTNNDV?FANCXZlHtGrCdC`OpMvG~FvDbDt@r@p@b@~@\\`CZbB@lGGvJGfEE?rQ@nQ?dL@zDDtBTlC`@tEBzB@zD?dGM|CGh@W`BgAxEwCrLuAtF]rA[lBOfBItE@pDAtApA@vDGtSQrFGvIE`QSvEGrD??oH@{LHmHD_FvHCfHCZA@YAmFGcHEcSMaOBYDOJO`@G|@AFEBEnDE?gAIgAAo@Dc@hEiKbIuRHQeBaA', NULL, '2018-11-20 04:49:18', '2018-11-20 04:53:47'),
(73, 'TRNX353358', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '651 E 25th St, Hialeah, FL 33013, EE. UU.', 25.84582690, -80.26802880, 'Miami Springs, Florida, EE. UU.', 25.82231980, -80.28949500, '2018-11-20 06:54:01', NULL, NULL, NULL, 0, 0, 0, 0, 'm_w|Cxi|hNQ?]mEO}BhBG~ACdDIZKdBElFIbBIbBAxB?dBCxFIrFMtc@u@hBEtACjBEBxA@xBBzAFrGB~AJ`CPbCPbTFvHHjIRjP?LfAAjBEbCCdFIjNSjFIl@?HGj@AnACDdB@p@?FDd@b@^j@h@LJJZhA`AFLLn@AH@TJZNRJH\\lEp@dOf@fJ?dC@~GmDB{B@', NULL, '2018-11-20 06:54:01', '2018-11-20 06:54:22'),
(74, 'TRNX643794', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 7.00000000, '651 E 25th St, Hialeah, FL 33013, EE. UU.', 25.84582570, -80.26801760, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 06:54:38', NULL, NULL, NULL, 0, 0, 0, 0, 'm_w|Cxi|hNQ?]mEO}BhBG~ACdDIZKdBElFIbBIbBAxB?dBCxFIrFMtc@u@bJQdGKpGMtDG|CGrDIdEGpFM|GGtCEzEKnQUhOShCCt@CHFfBAbBCzCMfDGrDMvGEj@Ah@I~Ac@j@Kn@Gh@?p@BvEh@rAJtAFdADn@?rHE~@?|@HvB@fCHhEEt@FbGIfBAdG?j@Fh@VZ^Rj@@VFNHL@zBBdILhP@bCMpAQhAi@lBi@jAg@v@s@`AYVSDMF}@|@c@r@KXCXH`ERfH@lBHh@pAhCZPl@XVFh@ApAA', NULL, '2018-11-20 06:54:38', '2018-11-20 06:55:01'),
(75, 'TRNX479354', 141, 144, 144, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '651 E 25th St, Hialeah, FL 33013, EE. UU.', 25.84577800, -80.26801540, '1653 W 49th St, Hialeah, FL 33012, EE. UU.', 25.86674550, -80.31504800, '2018-11-20 06:55:22', NULL, '2018-11-20 06:57:44', '2018-11-20 06:58:01', 1, 1, 0, 0, 'a_w|Cxi|hNE?W?]mEO}BA]sBBsDDgEHuINwJNiPJqULeKBgJHoJDkJBuFDW?CZL|JFfKHzP@rEThUXxV^t_@HhHLxGAbE@lRA|N?pK@|E@nF?jI@vODrN?|F?tJ@~T?xJ_B??u@r@@BA@a@@qCAo@', NULL, '2018-11-20 06:55:22', '2018-11-20 06:58:40'),
(76, 'TRNX795426', 141, 144, 144, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, 'Douglas Rdet, Hialeah, FL 33013, EE. UU.', 25.88166160, -80.26443570, 'Miami Lakes, Florida, EE. UU.', 25.90870560, -80.30866190, '2018-11-20 15:17:09', NULL, '2018-11-20 15:17:36', '2018-11-20 15:19:29', 1, 1, 0, 0, 'i_~|Cts{hNy@s@_@Qm@]_Bs@}Bq@oAS{AOoBGJTElC?vEE~AUtCGpAa@dB[rA{AlFq@xBiB~EcCpFqAhCiB~CcCvDwBnC_FtF}FlG{LxM{BdCqAtAu@`AmArBk@nAi@|Ag@lBW|AUzBIpB@dDJ~GDzCEFCLCzAWzEMxBEpB?zBAFGPKLc@TqCRyCB_DEcN`@sBFQCaJTq\\h@qCFA\\?rC@|B?fH@dEAxGEt@Kz@}@`Dg@|A]|AIrA@~DC~CG`@Qz@wAfFe@bBO`A?dA`@l@t@d@|@XNHbCl@t@\\p@d@r@|@JN\\x@DVR`AFj@D|@EBA\\F~A?D', NULL, '2018-11-20 15:17:09', '2018-11-20 15:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_payments`
--

DROP TABLE IF EXISTS `user_request_payments`;
CREATE TABLE IF NOT EXISTS `user_request_payments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` double(10,2) NOT NULL DEFAULT 0.00,
  `distance` double(10,2) NOT NULL DEFAULT 0.00,
  `commision` double(10,2) NOT NULL DEFAULT 0.00,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `tax` double(10,2) NOT NULL DEFAULT 0.00,
  `wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `surge` double(10,2) NOT NULL DEFAULT 0.00,
  `total` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_payments`
--

INSERT INTO `user_request_payments` (`id`, `request_id`, `promocode_id`, `payment_id`, `payment_mode`, `fixed`, `distance`, `commision`, `discount`, `tax`, `wallet`, `surge`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 20.00, 7.50, 0.00, 0.00, 0.00, 0.00, 0.00, 27.50, '2018-01-27 08:40:53', '2018-01-27 08:40:53'),
(2, 3, NULL, NULL, NULL, 20.00, 7.50, 0.00, 0.00, 0.00, 0.00, 0.00, 27.50, '2018-01-27 08:49:29', '2018-01-27 08:49:29'),
(3, 4, NULL, NULL, NULL, 20.00, 31.50, 0.00, 0.00, 0.00, 0.00, 0.00, 51.50, '2018-01-28 06:40:43', '2018-01-28 06:40:43'),
(4, 13, NULL, NULL, NULL, 20.00, 10.50, 0.00, 0.00, 0.00, 0.00, 0.00, 30.50, '2018-02-01 18:59:45', '2018-02-01 18:59:45'),
(5, 15, NULL, NULL, NULL, 20.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 32.00, '2018-02-03 13:00:24', '2018-02-03 13:00:24'),
(6, 19, NULL, NULL, NULL, 20.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 32.00, '2018-02-03 13:18:29', '2018-02-03 13:18:29'),
(7, 20, NULL, NULL, NULL, 20.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 29.00, '2018-02-03 16:22:43', '2018-02-03 16:22:43'),
(8, 23, NULL, NULL, NULL, 20.00, 4.50, 0.00, 0.00, 0.00, 0.00, 0.00, 24.50, '2018-02-04 11:09:47', '2018-02-04 11:09:47'),
(9, 37, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 5.38, '2018-10-29 08:55:28', '2018-10-29 08:55:28'),
(10, 38, NULL, NULL, NULL, 4.00, 4.14, 0.00, 0.00, 0.00, 0.00, 0.00, 8.14, '2018-10-30 08:13:28', '2018-10-30 08:13:28'),
(11, 40, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 5.38, '2018-10-30 12:19:43', '2018-10-30 12:19:43'),
(12, 41, NULL, NULL, NULL, 4.00, 2.76, 0.00, 0.00, 0.00, 0.00, 0.00, 6.76, '2018-10-31 17:00:57', '2018-10-31 17:00:57'),
(13, 42, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 5.38, '2018-11-01 06:29:55', '2018-11-01 06:29:55'),
(14, 43, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 5.38, '2018-11-01 06:38:29', '2018-11-01 06:38:29'),
(15, 44, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 5.38, '2018-11-02 10:56:44', '2018-11-02 10:56:44'),
(16, 48, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 5.38, '2018-11-04 06:30:06', '2018-11-04 06:30:06'),
(17, 53, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-11-12 20:40:21', '2018-11-12 20:40:21'),
(18, 56, NULL, NULL, NULL, 5.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17.00, '2018-11-13 11:45:29', '2018-11-13 11:45:29'),
(19, 72, NULL, NULL, NULL, 4.00, 13.80, 0.00, 0.00, 0.00, 0.00, 0.00, 17.80, '2018-11-20 04:51:37', '2018-11-20 04:51:37'),
(20, 75, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-11-20 06:58:01', '2018-11-20 06:58:01'),
(21, 76, NULL, NULL, NULL, 4.00, 9.66, 0.00, 0.00, 0.00, 0.00, 0.00, 13.66, '2018-11-20 15:19:29', '2018-11-20 15:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_ratings`
--

DROP TABLE IF EXISTS `user_request_ratings`;
CREATE TABLE IF NOT EXISTS `user_request_ratings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL DEFAULT 0,
  `provider_rating` int(11) NOT NULL DEFAULT 0,
  `user_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_ratings`
--

INSERT INTO `user_request_ratings` (`id`, `request_id`, `user_id`, `provider_id`, `user_rating`, `provider_rating`, `user_comment`, `provider_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 113, 114, 1, 1, '', '', '2018-01-27 08:41:02', '2018-01-27 08:46:31'),
(2, 3, 113, 114, 5, 1, '', '', '2018-01-27 08:49:40', '2018-01-27 08:49:58'),
(3, 4, 111, 115, 5, 5, '', '', '2018-01-28 06:41:07', '2018-01-28 06:42:46'),
(4, 13, 113, 114, 5, 5, 'good', 'k', '2018-02-01 18:59:59', '2018-02-01 19:00:09'),
(5, 15, 117, 116, 5, 5, 'lovely ride', '', '2018-02-03 13:00:39', '2018-02-03 13:00:59'),
(6, 19, 117, 116, 5, 5, 'lovely ', 'lovely ride', '2018-02-03 13:18:56', '2018-02-03 13:19:12'),
(7, 20, 117, 116, 5, 5, '', '', '2018-02-03 16:23:04', '2018-02-03 16:23:10'),
(8, 23, 117, 116, 5, 5, '', '', '2018-02-04 11:10:00', '2018-02-04 11:10:07'),
(9, 37, 122, 122, 5, 5, 'k', 'k', '2018-10-29 08:55:55', '2018-10-29 08:56:24'),
(10, 38, 122, 122, 5, 5, '', '', '2018-10-30 08:13:45', '2018-10-30 08:13:54'),
(11, 40, 122, 122, 5, 5, 'working ', '', '2018-10-30 12:19:54', '2018-10-30 12:20:09'),
(12, 41, 122, 122, 5, 5, '', '', '2018-10-31 17:01:07', '2018-11-01 06:27:09'),
(13, 42, 122, 122, 5, 5, '', '', '2018-11-01 06:30:11', '2018-11-01 06:30:19'),
(14, 43, 122, 122, 5, 5, '', '', '2018-11-01 06:38:49', '2018-11-01 06:40:04'),
(15, 44, 123, 122, 5, 5, '', '', '2018-11-02 10:57:25', '2018-11-02 10:57:32'),
(16, 48, 123, 122, 1, 5, '', '', '2018-11-04 06:30:19', '2018-11-07 07:23:57'),
(17, 53, 129, 130, 4, 1, '', '', '2018-11-12 20:40:31', '2018-11-12 20:40:35'),
(18, 56, 120, 133, 1, 1, '', '', '2018-11-13 11:45:43', '2018-11-13 11:45:43'),
(19, 72, 142, 144, 5, 5, 'great ride', 'great ride', '2018-11-20 04:53:31', '2018-11-20 04:53:47'),
(20, 75, 141, 144, 5, 5, 'great ', 'great', '2018-11-20 06:58:20', '2018-11-20 06:58:40'),
(21, 76, 141, 144, 5, 5, 'great ', 'great ', '2018-11-20 15:19:42', '2018-11-20 15:20:12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
