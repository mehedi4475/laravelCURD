-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- হোষ্ট: 127.0.0.1
-- তৈরী করতে ব্যবহৃত সময়: সেপ 07, 2015 at 11:03 ?????????
-- সার্ভার সংস্করন: 5.6.20
-- পিএইছপির সংস্করন: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- ডাটাবেইজ: `crud`
--

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_09_05_081508_students', 2);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `students`
--

CREATE TABLE IF NOT EXISTS `students` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roll` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `students`
--

INSERT INTO `students` (`id`, `name`, `roll`, `email`, `class`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'Mehedi Hasan', '12132203065', 'mehedi4475@gmail.com', 'BSc in Computer Science and Engineering', NULL, '2015-09-05 02:57:15', '2015-09-05 02:57:15'),
(20, 'Md. Nahid Hossain', '123654', 'nahid4475@gmail.com', 'Civil Engineeringdd', NULL, '2015-09-05 03:18:34', '2015-09-07 00:29:55');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- স্তুপকৃত টেবলের ইনডেক্স
--

--
-- টেবিলের ইনডেক্সসমুহ `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- টেবিলের ইনডেক্সসমুহ `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- টেবিলের ইনডেক্সসমুহ `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- স্তুপকৃত টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT)
--

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
