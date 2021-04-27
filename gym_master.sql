-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 04:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `cat_id`, `title`, `assigned_to`, `created_by`, `created_date`) VALUES
(1, 5, 'Hyperextension', 2, 1, '2016-08-22'),
(2, 3, 'Crunch', 2, 1, '2016-08-22'),
(3, 4, 'Leg curl', 2, 1, '2016-08-22'),
(4, 4, 'Reverse Leg Curl', 2, 1, '2016-08-22'),
(5, 6, 'Body Conditioning', 2, 1, '2016-10-19'),
(6, 6, 'Free Weights', 2, 1, '2016-10-19'),
(7, 3, 'Fixed Weights', 2, 1, '2016-10-19'),
(8, 3, 'Resisted Crunch', 2, 1, '2016-10-19'),
(9, 6, 'Plank', 2, 1, '2016-10-19'),
(10, 4, 'High Leg Pull-In', 2, 1, '2016-10-19'),
(11, 4, 'Low Leg Pull-In', 2, 1, '2016-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Regular'),
(2, 'Limited'),
(3, 'Total Gym Exercises for Abs (Abdomininals)'),
(4, 'Total Gym Exercises for Legs'),
(5, 'Total Gym Exercises for Biceps'),
(6, 'Exercise');

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule`
--

CREATE TABLE `class_schedule` (
  `id` int(11) NOT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `assign_staff_mem` int(11) DEFAULT NULL,
  `assistant_staff_member` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `days` varchar(200) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_schedule`
--

INSERT INTO `class_schedule` (`id`, `class_name`, `assign_staff_mem`, `assistant_staff_member`, `location`, `days`, `start_time`, `end_time`, `created_by`, `created_date`) VALUES
(1, 'Yoga Class', 2, 0, 'At Gym Facility', '[\'Sunday\',\'Saturday\']', '8:00:AM', '10:00:AM', 1, '2016-08-22'),
(2, 'Aerobics Class', 2, 0, 'Class 1', '[\'Sunday\',\'Friday\',\'Saturday\']', '5:15:PM', '6:15:PM', 1, '2016-08-22'),
(3, 'HIT Class', 2, 2, 'Old location', '[\'Sunday\',\'Tuesday\',\'Thursday\']', '7:30:PM', '8:45:PM', 1, '2016-08-22'),
(4, 'Cardio Class', 2, 0, 'At Gym Facility', '[\'Friday\',\'Saturday\']', '3:30:PM', '4:30:PM', 1, '2016-08-22'),
(5, 'Pilates', 2, 0, 'Old location', '[\'Sunday\']', '12:00:PM', '3:15:PM', 1, '2016-08-22'),
(6, 'Zumba Class', 2, 0, 'New Location', '[\'Saturday\']', '8:30:PM', '10:30:PM', 1, '2016-08-22'),
(7, 'Power Yoga Class', 2, 0, 'New Location', '[\'Monday\',\'Wednesday\',\'Thursday\',\'Friday\',\'Saturday\']', '9:15:AM', '11:45:AM', 1, '2016-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule_list`
--

CREATE TABLE `class_schedule_list` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `start_year` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `office_number` varchar(20) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_format` varchar(15) DEFAULT NULL,
  `calendar_lang` text DEFAULT NULL,
  `gym_logo` varchar(200) DEFAULT NULL,
  `cover_image` varchar(200) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `chest` varchar(100) DEFAULT NULL,
  `waist` varchar(100) DEFAULT NULL,
  `thing` varchar(100) DEFAULT NULL,
  `arms` varchar(100) DEFAULT NULL,
  `fat` varchar(100) DEFAULT NULL,
  `member_can_view_other` int(11) DEFAULT NULL,
  `staff_can_view_own_member` int(11) DEFAULT NULL,
  `enable_sandbox` int(11) DEFAULT NULL,
  `paypal_email` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `enable_alert` int(11) DEFAULT NULL,
  `reminder_days` varchar(100) DEFAULT NULL,
  `reminder_message` varchar(255) DEFAULT NULL,
  `enable_message` int(11) DEFAULT NULL,
  `left_header` varchar(100) DEFAULT NULL,
  `footer` varchar(100) DEFAULT NULL,
  `system_installed` int(11) DEFAULT NULL,
  `enable_rtl` int(11) DEFAULT 0,
  `datepicker_lang` text DEFAULT NULL,
  `time_zone` varchar(20) NOT NULL DEFAULT 'UTC',
  `system_version` text DEFAULT NULL,
  `sys_language` varchar(20) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `name`, `start_year`, `address`, `office_number`, `country`, `email`, `date_format`, `calendar_lang`, `gym_logo`, `cover_image`, `weight`, `height`, `chest`, `waist`, `thing`, `arms`, `fat`, `member_can_view_other`, `staff_can_view_own_member`, `enable_sandbox`, `paypal_email`, `currency`, `enable_alert`, `reminder_days`, `reminder_message`, `enable_message`, `left_header`, `footer`, `system_installed`, `enable_rtl`, `datepicker_lang`, `time_zone`, `system_version`, `sys_language`) VALUES
(1, 'Super Club - Make Your Health', '2020', 'address', '8899665544', 'pk', 'admin@gmail.com', 'F j, Y', 'en', 'logo.png', 'cover-image.png', 'KG', 'Centimeter', 'Inches', 'Inches', 'Inches', 'Inches', 'Percentage', 0, 1, 0, 'your_id@paypal.com', 'PKR', 1, '5', 'Hello GYM_MEMBERNAME,\r\n      Your Membership  GYM_MEMBERSHIP  started at GYM_STARTDATE and it will expire on GYM_ENDDATE.\r\nThank You.', 1, 'Super Club', 'Copyright © 2016-2017. All rights reserved.', 1, 0, 'en-CA', 'UTC', '12', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `gym_accessright`
--

CREATE TABLE `gym_accessright` (
  `id` int(11) NOT NULL,
  `controller` text DEFAULT NULL,
  `action` text DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `menu_icon` text DEFAULT NULL,
  `menu_title` text DEFAULT NULL,
  `member` int(11) DEFAULT NULL,
  `staff_member` int(11) DEFAULT NULL,
  `accountant` int(11) DEFAULT NULL,
  `page_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_accessright`
--

INSERT INTO `gym_accessright` (`id`, `controller`, `action`, `menu`, `menu_icon`, `menu_title`, `member`, `staff_member`, `accountant`, `page_link`) VALUES
(1, 'StaffMembers', '', 'staff_member', 'staff-member.png', 'Staff Members', 1, 1, 1, '/gym_master/staff-members/staff-list'),
(2, 'Membership', '', 'membership', 'membership-type.png', 'Membership Type', 1, 1, 0, '/gym_master/membership/membership-list'),
(3, 'GymGroup', '', 'group', 'group.png', 'Group', 1, 1, 0, '/gym_master/gym-group/group-list'),
(4, 'GymMember', '', 'member', 'member.png', 'Member', 1, 1, 1, '/gym_master/gym-member/member-list'),
(5, 'Activity', '', 'activity', 'activity.png', 'Activity', 1, 1, 0, '/gym_master/activity/activity-list'),
(6, 'ClassSchedule', '', 'class-schedule', 'class-schedule.png', 'Class Schedule', 1, 1, 0, '/gym_master/class-schedule/class-list'),
(7, 'GymAttendance', '', 'attendance', 'attendance.png', 'Attendance', 0, 1, 0, '/gym_master/gym-attendance/attendance'),
(8, 'GymAssignWorkout', '', 'assign-workout', 'assigne-workout.png', 'Assigned Workouts', 1, 1, 0, '/gym_master/gym-assign-workout/workout-log'),
(9, 'GymDailyWorkout', '', 'workouts', 'workout.png', 'Workouts', 1, 1, 0, '/gym_master/gym-daily-workout/workout-list'),
(10, 'GymAccountant', '', 'accountant', 'accountant.png', 'Accountant', 1, 1, 1, '/gym_master/gym-accountant/accountant-list'),
(11, 'MembershipPayment', '', 'membership_payment', 'fee.png', 'Fee Payment', 1, 0, 1, '/gym_master/membership-payment/payment-list'),
(12, 'MembershipPayment', '', 'income', 'payment.png', 'Income', 0, 0, 1, '/gym_master/membership-payment/income-list'),
(13, 'MembershipPayment', '', 'expense', 'payment.png', 'Expense', 0, 0, 1, '/gym_master/membership-payment/expense-list'),
(14, 'GymProduct', '', 'product', 'products.png', 'Product', 0, 1, 1, '/gym_master/gym-product/product-list'),
(15, 'GymStore', '', 'store', 'store.png', 'Store', 0, 1, 1, '/gym_master/gym-store/sell-record'),
(16, 'GymNewsletter', '', 'news_letter', 'newsletter.png', 'Newsletter', 0, 1, 0, '/gym_master/gym-newsletter/setting'),
(17, 'GymMessage', '', 'message', 'message.png', 'Message', 1, 1, 1, '/gym_master/gym-message/compose-message'),
(18, 'GymNotice', '', 'notice', 'notice.png', 'Notice', 1, 1, 1, '/gym_master/gym-notice/notice-list'),
(19, 'GymNutrition', '', 'nutrition', 'nutrition-schedule.png', 'Nutrition Schedule', 1, 1, 0, '/gym_master/gym-nutrition/nutrition-list'),
(20, 'GymReservation', '', 'reservation', 'reservation.png', 'Reservation', 1, 1, 1, '/gym_master/gym-reservation/reservation-list'),
(21, 'GymProfile', '', 'account', 'account.png', 'Account', 1, 1, 1, '/gym_master/GymProfile/view_profile'),
(22, 'GymSubscriptionHistory', '', 'subscription_history', 'subscription_history.png', 'Subscription History', 1, 0, 0, '/gym_master/GymSubscriptionHistory/'),
(23, 'Reports', '', 'report', 'report.png', 'Report', 0, 1, 1, '/gym_master/reports/membership-report');

-- --------------------------------------------------------

--
-- Table structure for table `gym_assign_workout`
--

CREATE TABLE `gym_assign_workout` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `direct_assign` tinyint(1) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_attendance`
--

CREATE TABLE `gym_attendance` (
  `attendance_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `attendance_by` int(11) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_daily_workout`
--

CREATE TABLE `gym_daily_workout` (
  `id` int(11) NOT NULL,
  `workout_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `record_date` date DEFAULT NULL,
  `result_measurment` varchar(50) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `time_of_workout` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_event_place`
--

CREATE TABLE `gym_event_place` (
  `id` int(11) NOT NULL,
  `place` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_group`
--

CREATE TABLE `gym_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_income_expense`
--

CREATE TABLE `gym_income_expense` (
  `id` int(11) NOT NULL,
  `invoice_type` varchar(100) DEFAULT NULL,
  `invoice_label` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `entry` text DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_interest_area`
--

CREATE TABLE `gym_interest_area` (
  `id` int(11) NOT NULL,
  `interest` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_levels`
--

CREATE TABLE `gym_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_measurement`
--

CREATE TABLE `gym_measurement` (
  `id` int(11) NOT NULL,
  `result_measurment` varchar(100) DEFAULT NULL,
  `result` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_member`
--

CREATE TABLE `gym_member` (
  `id` int(11) NOT NULL,
  `activated` int(11) DEFAULT NULL,
  `role_name` text DEFAULT NULL,
  `member_id` text DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `member_type` text DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `s_specialization` varchar(255) DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `assign_class` int(11) DEFAULT NULL,
  `assign_group` varchar(150) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `chest` varchar(10) DEFAULT NULL,
  `waist` varchar(10) DEFAULT NULL,
  `thing` varchar(10) DEFAULT NULL,
  `arms` varchar(10) DEFAULT NULL,
  `fat` varchar(10) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `assign_staff_mem` int(11) DEFAULT NULL,
  `intrested_area` int(11) DEFAULT NULL,
  `g_source` int(11) DEFAULT NULL,
  `referrer_by` int(11) DEFAULT NULL,
  `inquiry_date` date DEFAULT NULL,
  `trial_end_date` date DEFAULT NULL,
  `selected_membership` varchar(100) DEFAULT NULL,
  `membership_status` text DEFAULT NULL,
  `membership_valid_from` date DEFAULT NULL,
  `membership_valid_to` date DEFAULT NULL,
  `first_pay_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `alert_sent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_member`
--

INSERT INTO `gym_member` (`id`, `activated`, `role_name`, `member_id`, `first_name`, `middle_name`, `last_name`, `member_type`, `role`, `s_specialization`, `gender`, `birth_date`, `assign_class`, `assign_group`, `address`, `city`, `state`, `zipcode`, `mobile`, `phone`, `email`, `weight`, `height`, `chest`, `waist`, `thing`, `arms`, `fat`, `username`, `password`, `image`, `assign_staff_mem`, `intrested_area`, `g_source`, `referrer_by`, `inquiry_date`, `trial_end_date`, `selected_membership`, `membership_status`, `membership_valid_from`, `membership_valid_to`, `first_pay_date`, `created_by`, `created_date`, `alert_sent`) VALUES
(1, NULL, 'administrator', NULL, 'Admin', '', '', NULL, NULL, NULL, 'male', '2016-07-01', NULL, NULL, 'null', 'null', 't', '123123', '123123123', '', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '$2y$10$emcjH5.UEKEo/YkA7uyjUu0mw1Oa1IkX5nhG6QzQZUYF2d/4fNlfO', 'logo.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-09', NULL),
(2, NULL, 'staff_member', '', 'Sergio', '', 'Romero', '', 1, NULL, 'male', '2016-08-10', NULL, '', 'Address line', 'City', '', '', '2288774455', '', 'sergio@sergio.com', '', '', '', '', '', '', '', 'sergio', '', 'logo.png', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '2016-08-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gym_member_class`
--

CREATE TABLE `gym_member_class` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `assign_class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_message`
--

CREATE TABLE `gym_message` (
  `id` int(11) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message_body` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_newsletter`
--

CREATE TABLE `gym_newsletter` (
  `id` int(11) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_notice`
--

CREATE TABLE `gym_notice` (
  `id` int(11) NOT NULL,
  `notice_title` varchar(100) DEFAULT NULL,
  `notice_for` text DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_nutrition`
--

CREATE TABLE `gym_nutrition` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `breakfast` text DEFAULT NULL,
  `midmorning_snack` text DEFAULT NULL,
  `lunch` text DEFAULT NULL,
  `afternoon_snack` text DEFAULT NULL,
  `dinner` text DEFAULT NULL,
  `afterdinner_snack` text DEFAULT NULL,
  `start_date` varchar(20) DEFAULT NULL,
  `expire_date` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_nutrition_data`
--

CREATE TABLE `gym_nutrition_data` (
  `id` int(11) NOT NULL,
  `day_name` varchar(30) DEFAULT NULL,
  `nutrition_time` varchar(30) DEFAULT NULL,
  `nutrition_value` text DEFAULT NULL,
  `nutrition_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_product`
--

CREATE TABLE `gym_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_reservation`
--

CREATE TABLE `gym_reservation` (
  `id` int(11) NOT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_roles`
--

CREATE TABLE `gym_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_roles`
--

INSERT INTO `gym_roles` (`id`, `name`) VALUES
(1, 'Yoga');

-- --------------------------------------------------------

--
-- Table structure for table `gym_source`
--

CREATE TABLE `gym_source` (
  `id` int(11) NOT NULL,
  `source_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_store`
--

CREATE TABLE `gym_store` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sell_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_user_workout`
--

CREATE TABLE `gym_user_workout` (
  `id` int(11) NOT NULL,
  `user_workout_id` int(11) DEFAULT NULL,
  `workout_name` int(11) DEFAULT NULL,
  `sets` int(11) DEFAULT NULL,
  `reps` int(11) DEFAULT NULL,
  `kg` float DEFAULT NULL,
  `rest_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gym_workout_data`
--

CREATE TABLE `gym_workout_data` (
  `id` int(11) NOT NULL,
  `day_name` varchar(15) DEFAULT NULL,
  `workout_name` varchar(100) DEFAULT NULL,
  `sets` int(11) DEFAULT NULL,
  `reps` int(11) DEFAULT NULL,
  `kg` float DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `workout_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `installment_plan`
--

CREATE TABLE `installment_plan` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `installment_plan`
--

INSERT INTO `installment_plan` (`id`, `number`, `duration`) VALUES
(1, 1, 'Month'),
(2, 1, 'Week'),
(3, 1, 'Year');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `membership_label` varchar(100) DEFAULT NULL,
  `membership_cat_id` int(11) DEFAULT NULL,
  `membership_length` int(11) DEFAULT NULL,
  `membership_class_limit` varchar(20) DEFAULT NULL,
  `limit_days` int(11) DEFAULT NULL,
  `limitation` varchar(20) DEFAULT NULL,
  `install_plan_id` int(11) DEFAULT NULL,
  `membership_amount` double DEFAULT NULL,
  `membership_class` varchar(255) DEFAULT NULL,
  `installment_amount` double DEFAULT NULL,
  `signup_fee` double DEFAULT NULL,
  `gmgt_membershipimage` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `membership_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `membership_label`, `membership_cat_id`, `membership_length`, `membership_class_limit`, `limit_days`, `limitation`, `install_plan_id`, `membership_amount`, `membership_class`, `installment_amount`, `signup_fee`, `gmgt_membershipimage`, `created_date`, `created_by_id`, `membership_description`) VALUES
(1, 'Platinum Membership', 1, 360, 'Unlimited', 0, '', 1, 500, '[\'1\',\'2\',\'3\',\'4\',\'5\',\'6\',\'7\']', 42, 5, '', '2016-08-22', 1, '<p>Platinum membership description<br></p>'),
(2, 'Gold Membership', 1, 300, 'Unlimited', 0, '', 1, 450, '[\'1\',\'2\',\'3\',\'4\',\'5\']', 37, 5, '', '2016-08-22', 1, '<p>Gold membership description<br></p>'),
(3, 'Silver Membership', 2, 180, 'Limited', 0, 'per_week', 2, 200, '[\'4\',\'6\',\'7\']', 5, 5, '', '2016-08-22', 1, '<p>Silver &nbsp;membership description</p>');

-- --------------------------------------------------------

--
-- Table structure for table `membership_activity`
--

CREATE TABLE `membership_activity` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_history`
--

CREATE TABLE `membership_history` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `selected_membership` int(11) DEFAULT NULL,
  `assign_staff_mem` int(11) DEFAULT NULL,
  `intrested_area` int(11) DEFAULT NULL,
  `g_source` int(11) DEFAULT NULL,
  `referrer_by` int(11) DEFAULT NULL,
  `inquiry_date` date DEFAULT NULL,
  `trial_end_date` date DEFAULT NULL,
  `membership_valid_from` date DEFAULT NULL,
  `membership_valid_to` date DEFAULT NULL,
  `first_pay_date` date DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE `membership_payment` (
  `mp_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `membership_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `membership_status` varchar(50) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment_history`
--

CREATE TABLE `membership_payment_history` (
  `payment_history_id` bigint(20) NOT NULL,
  `mp_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `paid_by_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `trasaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_schedule`
--
ALTER TABLE `class_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_schedule_list`
--
ALTER TABLE `class_schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_accessright`
--
ALTER TABLE `gym_accessright`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_assign_workout`
--
ALTER TABLE `gym_assign_workout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_attendance`
--
ALTER TABLE `gym_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `gym_daily_workout`
--
ALTER TABLE `gym_daily_workout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gym_event_place`
--
ALTER TABLE `gym_event_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_group`
--
ALTER TABLE `gym_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_income_expense`
--
ALTER TABLE `gym_income_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_interest_area`
--
ALTER TABLE `gym_interest_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_levels`
--
ALTER TABLE `gym_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_measurement`
--
ALTER TABLE `gym_measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_member`
--
ALTER TABLE `gym_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_member_class`
--
ALTER TABLE `gym_member_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_message`
--
ALTER TABLE `gym_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_newsletter`
--
ALTER TABLE `gym_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_notice`
--
ALTER TABLE `gym_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_nutrition`
--
ALTER TABLE `gym_nutrition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_nutrition_data`
--
ALTER TABLE `gym_nutrition_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_product`
--
ALTER TABLE `gym_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_reservation`
--
ALTER TABLE `gym_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_roles`
--
ALTER TABLE `gym_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_source`
--
ALTER TABLE `gym_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_store`
--
ALTER TABLE `gym_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_user_workout`
--
ALTER TABLE `gym_user_workout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_workout_data`
--
ALTER TABLE `gym_workout_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installment_plan`
--
ALTER TABLE `installment_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_activity`
--
ALTER TABLE `membership_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_history`
--
ALTER TABLE `membership_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`mp_id`);

--
-- Indexes for table `membership_payment_history`
--
ALTER TABLE `membership_payment_history`
  ADD PRIMARY KEY (`payment_history_id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `class_schedule`
--
ALTER TABLE `class_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class_schedule_list`
--
ALTER TABLE `class_schedule_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gym_accessright`
--
ALTER TABLE `gym_accessright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gym_assign_workout`
--
ALTER TABLE `gym_assign_workout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_attendance`
--
ALTER TABLE `gym_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_daily_workout`
--
ALTER TABLE `gym_daily_workout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_event_place`
--
ALTER TABLE `gym_event_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_group`
--
ALTER TABLE `gym_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_income_expense`
--
ALTER TABLE `gym_income_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_interest_area`
--
ALTER TABLE `gym_interest_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_levels`
--
ALTER TABLE `gym_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_measurement`
--
ALTER TABLE `gym_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_member`
--
ALTER TABLE `gym_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gym_member_class`
--
ALTER TABLE `gym_member_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_message`
--
ALTER TABLE `gym_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_newsletter`
--
ALTER TABLE `gym_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_notice`
--
ALTER TABLE `gym_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_nutrition`
--
ALTER TABLE `gym_nutrition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_nutrition_data`
--
ALTER TABLE `gym_nutrition_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_product`
--
ALTER TABLE `gym_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_reservation`
--
ALTER TABLE `gym_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_roles`
--
ALTER TABLE `gym_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gym_source`
--
ALTER TABLE `gym_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_store`
--
ALTER TABLE `gym_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_user_workout`
--
ALTER TABLE `gym_user_workout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_workout_data`
--
ALTER TABLE `gym_workout_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installment_plan`
--
ALTER TABLE `installment_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership_activity`
--
ALTER TABLE `membership_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_history`
--
ALTER TABLE `membership_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
  MODIFY `mp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_payment_history`
--
ALTER TABLE `membership_payment_history`
  MODIFY `payment_history_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
