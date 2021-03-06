-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2016 at 12:53 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smug`
--
CREATE DATABASE IF NOT EXISTS `smug` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `smug`;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `dislike` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `review`, `dislike`, `rate`) VALUES
(1, 4, 'Then came a little worried. ''Just about as curious as it can be,'' said the King, with an air of great dismay, and began to feel which way I ought to speak, but for a moment to be a LITTLE larger,.', 'Eius quo debitis sed. Sint aliquid ducimus dignissimos qui. Autem eos veritatis adipisci aliquid ex excepturi pariatur facilis. Consectetur et labore soluta aut corporis qui.', 4),
(2, 4, 'When the pie was all about, and crept a little hot tea upon its forehead (the position in dancing.'' Alice said; but was dreadfully puzzled by the little golden key in the act of crawling away:.', 'Dolores quas eveniet rerum quos. Omnis enim est architecto eveniet deleniti inventore. Laboriosam nostrum repellendus iure et dolore hic. Nesciunt corrupti qui repudiandae qui error omnis.', 4),
(3, 4, 'She''ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered''; and she set to work very diligently to write out a race-course, in a great hurry; ''this paper has just been reading.', 'Quia ut aut facere dolore ut tempora. Dolorem molestias quibusdam quia aliquid aliquam occaecati.', 0),
(4, 4, 'Alice, ''Have you guessed the riddle yet?'' the Hatter asked triumphantly. Alice did not like to drop the jar for fear of their wits!'' So she began again. ''I should like to have it explained,'' said.', 'Sunt sapiente quidem vel eum et velit nesciunt. Impedit sunt sed vel cum. Placeat ea sit aut omnis deserunt.', 2),
(5, 4, 'Hatter, ''or you''ll be telling me next that you couldn''t cut off a head unless there was hardly room to grow to my right size: the next moment a shower of saucepans, plates, and dishes. The Duchess.', 'Quae et autem voluptatum neque velit voluptatem. Eaque doloremque sit et non. Non et delectus pariatur sint aut tenetur. Molestiae voluptas et minima dolore quis.', 2),
(6, 4, 'Dormouse,'' the Queen in a coaxing tone, and added with a table in the grass, merely remarking as it left no mark on the top of its mouth, and addressed her in an undertone to the Knave. The Knave of.', 'Omnis nesciunt quod error excepturi esse quas aut. Eius provident commodi repellat sequi. Cum expedita accusamus ad aut quasi et. Natus quo voluptas vero ut consequuntur. A officiis suscipit ea illo et iusto similique.', 0),
(7, 4, 'Alice, rather doubtfully, as she said to herself, and shouted out, ''You''d better not talk!'' said Five. ''I heard the Queen was silent. The King looked anxiously over his shoulder with some.', 'Molestiae est dolorem consequatur sint amet. Asperiores aut dolores aut sed. Quo ipsa nihil eum optio sint. Officiis enim eaque sed eum impedit laudantium.', 2),
(8, 4, 'Gryphon interrupted in a very deep well. Either the well was very likely it can be,'' said the Duchess, ''chop off her head!'' the Queen to play croquet with the lobsters, out to sea as you can--''.', 'Sunt in eius dicta recusandae. Sint nobis veniam dicta. Illo maiores vero similique nemo est eveniet molestiae.', 2),
(9, 4, 'Gryphon. ''Then, you know,'' said Alice, always ready to sink into the open air. ''IF I don''t like it, yer honour, at all, at all!'' ''Do as I get it home?'' when it had no idea what Latitude was, or.', 'Accusamus ipsum deleniti rerum molestiae aut voluptatem. Tempore nisi sed illum iste in.', 2),
(10, 4, 'Dinah my dear! Let this be a footman in livery, with a sigh: ''he taught Laughing and Grief, they used to say it out to sea as you say it.'' ''That''s nothing to do: once or twice, half hoping she might.', 'Velit molestiae nihil voluptas est. Inventore et sunt eos asperiores est dolorem rerum voluptatem. Quae laboriosam quo omnis voluptates autem velit debitis. Laborum sit omnis laudantium et.', 2),
(11, 4, 'I did: there''s no use in knocking,'' said the Hatter. ''I told you butter wouldn''t suit the works!'' he added looking angrily at the March Hare, who had been jumping about like that!'' ''I couldn''t.', 'Quisquam provident molestiae est provident et sunt. Quisquam aut similique exercitationem laboriosam maxime iusto eius. Consequatur illum qui ab ipsa. Numquam libero et illum quisquam culpa qui.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL,
  `type_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT '0',
  `users_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `price`, `type_id`, `rate`, `users_count`) VALUES
(21, 'Big Mac', 'Bread with hot spicy peace of burger with Col', 25, 1, 3, 1),
(22, 'Pizza', 'Sea food with cheese and vegetables ', 50, 2, 4, 2),
(23, 'Chicken Macdo', 'Chicken with fries and bread', 20, 1, 5, 1),
(24, 'Pepsi', 'Drink and Shrink', 100, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_catagories`
--

DROP TABLE IF EXISTS `food_catagories`;
CREATE TABLE `food_catagories` (
  `id` int(11) NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food_catagories`
--

INSERT INTO `food_catagories` (`id`, `type`) VALUES
(1, 'Burgers'),
(3, 'Cold Drinks'),
(2, 'Pizza');

-- --------------------------------------------------------

--
-- Table structure for table `member_details`
--

DROP TABLE IF EXISTS `member_details`;
CREATE TABLE `member_details` (
  `user_id` int(11) NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member_details`
--

INSERT INTO `member_details` (`user_id`, `password`, `address`) VALUES
(4, '6ebe76c9fb411be97b3b0d48b791a7c9', 'Othman Basha Ghaleb'),
(10, '25f9e794323b453885f5181f1b624d0b', 'mksdmkadsnk na'),
(11, '25f9e794323b453885f5181f1b624d0b', 'Othman Basha');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_money` float DEFAULT NULL,
  `method_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `date`, `time`, `address`, `total_money`, `method_id`) VALUES
(1, 4, '2016-05-11', '00:00:00', 'there', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_food`
--

DROP TABLE IF EXISTS `order_food`;
CREATE TABLE `order_food` (
  `food_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_food`
--

INSERT INTO `order_food` (`food_id`, `order_id`, `amount`) VALUES
(22, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `random_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `method_id`, `option_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`) VALUES
(2, 'cash'),
(1, 'visa');

-- --------------------------------------------------------

--
-- Table structure for table `payment_options`
--

DROP TABLE IF EXISTS `payment_options`;
CREATE TABLE `payment_options` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_options`
--

INSERT INTO `payment_options` (`id`, `name`, `type`) VALUES
(1, 'credit_card_number', 'number'),
(2, 'cvc', 'number'),
(3, 'expiration_date', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `payment_values`
--

DROP TABLE IF EXISTS `payment_values`;
CREATE TABLE `payment_values` (
  `id` int(11) NOT NULL,
  `details_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `food_id`, `picture`) VALUES
(11, 21, 'photo/2016_05_11_09_23_29_Big-Mac.jpg.jpg'),
(12, 22, 'photo/2016_05_11_09_25_28_Pizza.jpg.jpg'),
(13, 23, 'photo/2016_05_11_09_26_28_Chicken-macdo.jpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_tables`
--

DROP TABLE IF EXISTS `reservation_tables`;
CREATE TABLE `reservation_tables` (
  `reservation_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservation_tables`
--

INSERT INTO `reservation_tables` (`reservation_id`, `table_id`) VALUES
(3, 3),
(3, 1),
(3, 2),
(3, 5),
(30, 4),
(48, 1),
(48, 2),
(48, 5),
(49, 2),
(49, 7),
(50, 2),
(50, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tab`
--

DROP TABLE IF EXISTS `tab`;
CREATE TABLE `tab` (
  `id` int(11) NOT NULL,
  `file_name` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tab`
--

INSERT INTO `tab` (`id`, `file_name`) VALUES
(1, 'reservations.php'),
(2, 'food-orders.php'),
(3, 'generate-report.php'),
(4, 'tables-control.php'),
(5, 'user-role.php'),
(6, 'user-type.php'),
(7, 'feedback.php');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
CREATE TABLE `table` (
  `id` int(11) NOT NULL,
  `table_number` int(11) NOT NULL,
  `chairs_number` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `table_number`, `chairs_number`, `x`, `y`) VALUES
(1, 1, 2, 15, 15),
(2, 2, 2, 15, 30),
(3, 3, 8, 30, 15),
(4, 4, 4, 30, 30),
(5, 12, 4, 47.75, 34.7967),
(6, 0, 2, 50, 65),
(7, 9, 6, 15, 70),
(23, 17, 4, 50, 55),
(25, 25, 6, 26.25, 42.1951);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

DROP TABLE IF EXISTS `user_access`;
CREATE TABLE `user_access` (
  `id` int(11) NOT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`id`, `tab_id`, `type_id`) VALUES
(1, 7, 2),
(2, 2, 2),
(3, 3, 2),
(4, 1, 2),
(5, 4, 2),
(6, 5, 2),
(7, 6, 2),
(8, 1, 3),
(9, 1, 1),
(10, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type`) VALUES
(0, 'guest'),
(1, 'user'),
(2, 'admin'),
(3, 'theif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_user_idx` (`user_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_food__idx` (`type_id`);

--
-- Indexes for table `food_catagories`
--
ALTER TABLE `food_catagories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_UNIQUE` (`type`);

--
-- Indexes for table `member_details`
--
ALTER TABLE `member_details`
  ADD UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  ADD KEY `userID_idx` (`user_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk__idx` (`user_id`),
  ADD KEY `fk_2_idx` (`method_id`);

--
-- Indexes for table `order_food`
--
ALTER TABLE `order_food`
  ADD KEY `fk_food_order_food_idx` (`food_id`),
  ADD KEY `fk_food_order_idx` (`order_id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID_idx` (`user_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_details_payment_method_idx` (`method_id`),
  ADD KEY `fk_payment_details_payment_options_idx` (`option_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `payment_options`
--
ALTER TABLE `payment_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `payment_values`
--
ALTER TABLE `payment_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_values__idx` (`details_id`),
  ADD KEY `fk_payment_values_order_idx` (`order_id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pictures_food_idx` (`food_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_time_date` (`time`,`date`),
  ADD KEY `fk_reservations_user_idx` (`user_id`);

--
-- Indexes for table `reservation_tables`
--
ALTER TABLE `reservation_tables`
  ADD KEY `fk_reservation_tables_reservation_idx` (`reservation_id`),
  ADD KEY `fk_reservation_tables_table_idx` (`table_id`);

--
-- Indexes for table `tab`
--
ALTER TABLE `tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_number_UNIQUE` (`table_number`),
  ADD UNIQUE KEY `POINT_UNIQUE` (`x`,`y`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userType_idx` (`user_type_id`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeID_idx` (`type_id`),
  ADD KEY `fk_user_access_tab_idx` (`tab_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `food_catagories`
--
ALTER TABLE `food_catagories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_options`
--
ALTER TABLE `payment_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payment_values`
--
ALTER TABLE `payment_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tab`
--
ALTER TABLE `tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `fk_food_food_catagories` FOREIGN KEY (`type_id`) REFERENCES `food_catagories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_details`
--
ALTER TABLE `member_details`
  ADD CONSTRAINT `fk_member_details_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_payment_method` FOREIGN KEY (`method_id`) REFERENCES `payment_method` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_food`
--
ALTER TABLE `order_food`
  ADD CONSTRAINT `fk_food_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_food_order_food` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD CONSTRAINT `fk_password_reset_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `fk_payment_details_payment_method` FOREIGN KEY (`method_id`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payment_details_payment_options` FOREIGN KEY (`option_id`) REFERENCES `payment_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_values`
--
ALTER TABLE `payment_values`
  ADD CONSTRAINT `fk_payment_values_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payment_values_payment_details` FOREIGN KEY (`details_id`) REFERENCES `payment_details` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `fk_pictures_food` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk_reservations_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reservation_tables`
--
ALTER TABLE `reservation_tables`
  ADD CONSTRAINT `fk_reservation_tables_reservation` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservation_tables_table` FOREIGN KEY (`table_id`) REFERENCES `table` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_user_type` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_access`
--
ALTER TABLE `user_access`
  ADD CONSTRAINT `fk_user_access_tab` FOREIGN KEY (`tab_id`) REFERENCES `tab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_access_user_types` FOREIGN KEY (`type_id`) REFERENCES `user_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
