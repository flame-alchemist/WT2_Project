-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 11:34 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"project\",\"table\":\"books\"},{\"db\":\"project\",\"table\":\"table 2\"},{\"db\":\"project\",\"table\":\"table 3\"},{\"db\":\"project\",\"table\":\"user\"},{\"db\":\"project\",\"table\":\"Book\"},{\"db\":\"project\",\"table\":\"User\"},{\"db\":\"mysql\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-11-09 07:19:59', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(8) DEFAULT NULL,
  `work_id` int(8) DEFAULT NULL,
  `books_count` int(4) DEFAULT NULL,
  `isbn` varchar(10) DEFAULT NULL,
  `authors` varchar(106) DEFAULT NULL,
  `original_publication_year` varchar(4) DEFAULT NULL,
  `original_title` varchar(99) DEFAULT NULL,
  `language_code` varchar(5) DEFAULT NULL,
  `average_rating` decimal(3,2) DEFAULT NULL,
  `ratings_count` int(7) DEFAULT NULL,
  `work_ratings_count` int(7) DEFAULT NULL,
  `work_text_reviews_count` int(6) DEFAULT NULL,
  `ratings_1` int(6) DEFAULT NULL,
  `ratings_2` int(6) DEFAULT NULL,
  `ratings_3` int(6) DEFAULT NULL,
  `ratings_4` int(7) DEFAULT NULL,
  `ratings_5` int(7) DEFAULT NULL,
  `image_url` varchar(88) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `work_id`, `books_count`, `isbn`, `authors`, `original_publication_year`, `original_title`, `language_code`, `average_rating`, `ratings_count`, `work_ratings_count`, `work_text_reviews_count`, `ratings_1`, `ratings_2`, `ratings_3`, `ratings_4`, `ratings_5`, `image_url`) VALUES
(2767052, 2792775, 272, '439023483', 'Suzanne Collins', '2008', 'The Hunger Games', 'eng', '4.34', 4780653, 4942365, 155254, 66715, 127936, 560092, 1481305, 2706317, 'https://images.gr-assets.com/books/1447303603m/2767052.jpg'),
(3, 4640799, 491, '439554934', 'J.K. Rowling, Mary GrandPré', '1997', 'Harry Potter and the Philosopher\'s Stone', 'eng', '4.44', 4602479, 4800065, 75867, 75504, 101676, 455024, 1156318, 3011543, 'https://images.gr-assets.com/books/1474154022m/3.jpg'),
(41865, 3212258, 226, '316015849', 'Stephenie Meyer', '2005', 'Twilight', 'en-US', '3.57', 3866839, 3916824, 95009, 456191, 436802, 793319, 875073, 1355439, 'https://images.gr-assets.com/books/1361039443m/41865.jpg'),
(2657, 3275794, 487, '61120081', 'Harper Lee', '1960', 'To Kill a Mockingbird', 'eng', '4.25', 3198671, 3340896, 72586, 60427, 117415, 446835, 1001952, 1714267, 'https://images.gr-assets.com/books/1361975680m/2657.jpg'),
(4671, 245494, 1356, '743273567', 'F. Scott Fitzgerald', '1925', 'The Great Gatsby', 'eng', '3.89', 2683664, 2773745, 51992, 86236, 197621, 606158, 936012, 947718, 'https://images.gr-assets.com/books/1490528560m/4671.jpg'),
(11870085, 16827462, 226, '525478817', 'John Green', '2012', 'The Fault in Our Stars', 'eng', '4.26', 2346404, 2478609, 140739, 47994, 92723, 327550, 698471, 1311871, 'https://images.gr-assets.com/books/1360206420m/11870085.jpg'),
(5907, 1540236, 969, '618260307', 'J.R.R. Tolkien', '1937', 'The Hobbit or There and Back Again', 'en-US', '4.25', 2071616, 2196809, 37653, 46023, 76784, 288649, 665635, 1119718, 'https://images.gr-assets.com/books/1372847500m/5907.jpg'),
(5107, 3036731, 360, '316769177', 'J.D. Salinger', '1951', 'The Catcher in the Rye', 'eng', '3.79', 2044241, 2120637, 44920, 109383, 185520, 455042, 661516, 709176, 'https://images.gr-assets.com/books/1398034300m/5107.jpg'),
(960, 3338963, 311, '1416524797', 'Dan Brown', '2000', 'Angels & Demons ', 'en-CA', '3.85', 2001311, 2078754, 25112, 77841, 145740, 458429, 716569, 680175, 'https://images.gr-assets.com/books/1303390735m/960.jpg'),
(1885, 3060926, 3455, '679783261', 'Jane Austen', '1813', 'Pride and Prejudice', 'eng', '4.24', 2035490, 2191465, 49152, 54700, 86485, 284852, 609755, 1155673, 'https://images.gr-assets.com/books/1320399351m/1885.jpg'),
(77203, 3295919, 283, '1594480001', 'Khaled Hosseini', '2003', 'The Kite Runner ', 'eng', '4.26', 1813044, 1878095, 59730, 34288, 59980, 226062, 628174, 929591, 'https://images.gr-assets.com/books/1484565687m/77203.jpg'),
(13335037, 13155899, 210, '62024035', 'Veronica Roth', '2011', 'Divergent', 'eng', '4.24', 1903563, 2216814, 101023, 36315, 82870, 310297, 673028, 1114304, 'https://images.gr-assets.com/books/1328559506m/13335037.jpg'),
(5470, 153313, 995, '451524934', 'George Orwell, Erich Fromm, Celâl Üster', '1949', 'Nineteen Eighty-Four', 'eng', '4.14', 1956832, 2053394, 45518, 41845, 86425, 324874, 692021, 908229, 'https://images.gr-assets.com/books/1348990566m/5470.jpg'),
(7613, 2207778, 896, '452284244', 'George Orwell', '1945', 'Animal Farm: A Fairy Story', 'eng', '3.87', 1881700, 1982987, 35472, 66854, 135147, 433432, 698642, 648912, 'https://images.gr-assets.com/books/1424037542m/7613.jpg'),
(48855, 3532896, 710, '553296981', 'Anne Frank, Eleanor Roosevelt, B.M. Mooyaart-Doubleday', '1947', 'Het Achterhuis: Dagboekbrieven 14 juni 1942 - 1 augustus 1944', 'eng', '4.10', 1972666, 2024493, 20825, 45225, 91270, 355756, 656870, 875372, 'https://images.gr-assets.com/books/1358276407m/48855.jpg'),
(2429135, 1708725, 274, '307269752', 'Stieg Larsson, Reg Keeland', '2005', 'Män som hatar kvinnor', 'eng', '4.11', 1808403, 1929834, 62543, 54835, 86051, 285413, 667485, 836050, 'https://images.gr-assets.com/books/1327868566m/2429135.jpg'),
(6148028, 6171458, 201, '439023491', 'Suzanne Collins', '2009', 'Catching Fire', 'eng', '4.30', 1831039, 1988079, 88538, 10492, 48030, 262010, 687238, 980309, 'https://images.gr-assets.com/books/1358273780m/6148028.jpg'),
(5, 2402163, 376, '043965548X', 'J.K. Rowling, Mary GrandPré, Rufus Beck', '1999', 'Harry Potter and the Prisoner of Azkaban', 'eng', '4.53', 1832823, 1969375, 36099, 6716, 20413, 166129, 509447, 1266670, 'https://images.gr-assets.com/books/1499277281m/5.jpg'),
(34, 3204327, 566, '618346252', 'J.R.R. Tolkien', '1954', ' The Fellowship of the Ring', 'eng', '4.34', 1766803, 1832541, 15333, 38031, 55862, 202332, 493922, 1042394, 'https://images.gr-assets.com/books/1298411339m/34.jpg'),
(7260188, 8812783, 239, '439023513', 'Suzanne Collins', '2010', 'Mockingjay', 'eng', '4.03', 1719760, 1870748, 96274, 30144, 110498, 373060, 618271, 738775, 'https://images.gr-assets.com/books/1358275419m/7260188.jpg'),
(2, 2809203, 307, '439358078', 'J.K. Rowling, Mary GrandPré', '2003', 'Harry Potter and the Order of the Phoenix', 'eng', '4.46', 1735368, 1840548, 28685, 9528, 31577, 180210, 494427, 1124806, 'https://images.gr-assets.com/books/1387141547m/2.jpg'),
(12232938, 1145090, 183, '316166685', 'Alice Sebold', '2002', 'The Lovely Bones', 'eng', '3.77', 1605173, 1661562, 36642, 62777, 131188, 404699, 583575, 479323, 'https://images.gr-assets.com/books/1457810586m/12232938.jpg'),
(15881, 6231171, 398, '439064864', 'J.K. Rowling, Mary GrandPré', '1998', 'Harry Potter and the Chamber of Secrets', 'eng', '4.37', 1779331, 1906199, 34172, 8253, 42251, 242345, 548266, 1065084, 'https://images.gr-assets.com/books/1474169725m/15881.jpg'),
(6, 3046572, 332, '439139600', 'J.K. Rowling, Mary GrandPré', '2000', 'Harry Potter and the Goblet of Fire', 'eng', '4.53', 1753043, 1868642, 31084, 6676, 20210, 151785, 494926, 1195045, 'https://images.gr-assets.com/books/1361482611m/6.jpg'),
(136251, 2963218, 263, '545010225', 'J.K. Rowling, Mary GrandPré', '2007', 'Harry Potter and the Deathly Hallows', 'eng', '4.61', 1746574, 1847395, 51942, 9363, 22245, 113646, 383914, 1318227, 'https://images.gr-assets.com/books/1474171184m/136251.jpg'),
(968, 2982101, 350, '307277674', 'Dan Brown', '2003', 'The Da Vinci Code', 'eng', '3.79', 1447148, 1557292, 41560, 71345, 126493, 340790, 539277, 479387, 'https://images.gr-assets.com/books/1303252999m/968.jpg'),
(1, 41335427, 275, '439785960', 'J.K. Rowling, Mary GrandPré', '2005', 'Harry Potter and the Half-Blood Prince', 'eng', '4.54', 1678823, 1785676, 27520, 7308, 21516, 136333, 459028, 1161491, 'https://images.gr-assets.com/books/1361039191m/1.jpg'),
(7624, 2766512, 458, '140283331', 'William Golding', '1954', 'Lord of the Flies ', 'eng', '3.64', 1605019, 1671484, 26886, 92779, 160295, 425648, 564916, 427846, 'https://images.gr-assets.com/books/1327869409m/7624.jpg'),
(18135, 3349450, 1937, '743477111', 'William Shakespeare, Robert           Jackson', '1595', 'An Excellent conceited Tragedie of Romeo and Juliet', 'eng', '3.73', 1628519, 1672889, 14778, 57980, 153179, 452673, 519822, 489235, 'https://images.gr-assets.com/books/1327872146m/18135.jpg'),
(8442457, 13306276, 196, '297859382', 'Gillian Flynn', '2012', 'Gone Girl', 'eng', '4.03', 512475, 1626519, 121614, 38874, 80807, 280331, 616031, 610476, 'https://images.gr-assets.com/books/1339602131m/8442457.jpg'),
(4667024, 4717423, 183, '399155341', 'Kathryn Stockett', '2009', 'The Help', 'eng', '4.45', 1531753, 1603545, 78204, 10235, 25117, 134887, 490754, 942552, 'https://images.gr-assets.com/books/1346100365m/4667024.jpg'),
(890, 40283, 373, '142000671', 'John Steinbeck', '1937', 'Of Mice and Men ', 'eng', '3.84', 1467496, 1518741, 24642, 46630, 110856, 355169, 532291, 473795, 'https://images.gr-assets.com/books/1437235233m/890.jpg'),
(930, 1558965, 220, '739326228', 'Arthur Golden', '1997', 'Memoirs of a Geisha', 'eng', '4.08', 1300209, 1418172, 25605, 23500, 59033, 258700, 517157, 559782, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10818853, 15732562, 169, '1612130291', 'E.L. James', '2011', 'Fifty Shades of Grey', 'eng', '3.67', 1338493, 1436818, 75437, 165455, 152293, 252185, 294976, 571909, 'https://images.gr-assets.com/books/1385207843m/10818853.jpg'),
(865, 4835472, 458, '61122416', 'Paulo Coelho, Alan R. Clarke', '1988', 'O Alquimista', 'eng', '3.82', 1299566, 1403995, 55781, 74846, 123614, 289143, 412180, 504212, 'https://images.gr-assets.com/books/1483412266m/865.jpg'),
(3636, 2543234, 192, '385732554', 'Lois Lowry', '1993', 'The Giver', 'eng', '4.12', 1296825, 1345445, 54084, 26497, 59652, 225326, 448691, 585279, 'https://images.gr-assets.com/books/1342493368m/3636.jpg'),
(100915, 4790821, 474, '60764899', 'C.S. Lewis', '1950', 'The Lion, the Witch and the Wardrobe', 'eng', '4.19', 1531800, 1584884, 15186, 19309, 55542, 262038, 513366, 734629, 'https://images.gr-assets.com/books/1353029077m/100915.jpg'),
(14050, 2153746, 167, '965818675', 'Audrey Niffenegger', '2003', 'The Time Traveler\'s Wife', 'eng', '3.95', 746287, 1308667, 43382, 44339, 85429, 257805, 427210, 493884, 'https://images.gr-assets.com/books/1437728815m/14050.jpg'),
(13496, 1466917, 101, '553588486', 'George R.R. Martin', '1996', 'A Game of Thrones', 'eng', '4.45', 1319204, 1442220, 46205, 19988, 28983, 114092, 404583, 874574, 'https://images.gr-assets.com/books/1436732693m/13496.jpg'),
(19501, 3352398, 185, '143038419', 'Elizabeth Gilbert', '2006', 'Eat, pray, love: one woman\'s search for everything across Italy, India and Indonesia', 'eng', '3.51', 1181647, 1206597, 49714, 100373, 149549, 310212, 332191, 314272, 'https://images.gr-assets.com/books/1503066414m/19501.jpg'),
(28187, 3346751, 159, '786838655', 'Rick Riordan', '2005', 'The Lightning Thief', 'eng', '4.23', 1366265, 1411114, 46006, 18303, 48294, 219638, 435514, 689365, 'https://images.gr-assets.com/books/1400602609m/28187.jpg'),
(1934, 3244642, 1707, '451529308', 'Louisa May Alcott', '1868', 'Little Women', 'en-US', '4.04', 1257121, 1314293, 17090, 31645, 70011, 250794, 426280, 535563, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10210, 2977639, 2568, '142437204', 'Charlotte Brontë, Michael Mason', '1847', 'Jane Eyre', 'eng', '4.10', 1198557, 1286135, 31212, 35132, 64274, 212294, 400214, 574221, 'https://images.gr-assets.com/books/1327867269m/10210.jpg'),
(15931, 1498135, 190, '553816713', 'Nicholas Sparks', '1996', 'The Notebook', 'eng', '4.06', 1053403, 1076749, 17279, 41395, 63432, 176469, 298259, 497194, 'https://images.gr-assets.com/books/1385738917m/15931.jpg'),
(4214, 1392700, 264, '770430074', 'Yann Martel', '2001', 'Life of Pi', '', '3.88', 1003228, 1077431, 42962, 39768, 74331, 218702, 384164, 360466, 'https://images.gr-assets.com/books/1320562005m/4214.jpg'),
(43641, 3441236, 128, '1565125606', 'Sara Gruen', '2006', 'Water for Elephants', 'eng', '4.07', 1068146, 1108839, 55732, 16705, 49832, 200154, 417328, 424820, 'https://images.gr-assets.com/books/1494428973m/43641.jpg'),
(19063, 878368, 251, '375831002', 'Markus Zusak', '2005', 'The Book Thief', 'eng', '4.36', 1159741, 1287798, 93611, 17892, 35360, 135272, 377218, 722056, 'https://images.gr-assets.com/books/1390053681m/19063.jpg'),
(4381, 1272463, 507, '307347974', 'Ray Bradbury', '1953', 'Fahrenheit 451', 'spa', '3.97', 570498, 1176240, 30694, 28366, 64289, 238242, 426292, 419051, 'https://images.gr-assets.com/books/1351643740m/4381.jpg'),
(49041, 3203964, 194, '316160199', 'Stephenie Meyer', '2006', 'New Moon (Twilight, #2)', 'eng', '3.52', 1149630, 1199000, 44020, 102837, 160660, 294207, 290612, 350684, 'https://images.gr-assets.com/books/1361039440m/49041.jpg'),
(30119, 30518, 45, '60513039', 'Shel Silverstein', '1974', 'Where the Sidewalk Ends: The Poems and Drawings of Shel Silverstein', 'eng', '4.29', 1016888, 1023781, 9234, 16590, 30792, 139024, 293222, 544153, 'https://images.gr-assets.com/books/1168052448m/30119.jpg'),
(256683, 2267189, 178, '1416914285', 'Cassandra Clare', '2007', 'City of Bones', 'eng', '4.12', 1154031, 1241799, 51589, 34122, 65349, 203466, 356048, 582814, 'https://images.gr-assets.com/books/1432730315m/256683.jpg'),
(428263, 2675454, 185, '316160202', 'Stephenie Meyer', '2007', 'Eclipse', 'en-US', '3.69', 1134511, 1176642, 35216, 83094, 124293, 260763, 309358, 399134, 'https://images.gr-assets.com/books/1361038355m/428263.jpg'),
(113436, 3178011, 217, '375826696', 'Christopher Paolini', '2002', 'Eragon', 'en-US', '3.86', 1104021, 1125231, 18280, 50563, 88536, 240157, 337943, 408032, 'https://images.gr-assets.com/books/1366212852m/113436.jpg'),
(11, 3078186, 257, '345391802', 'Douglas Adams', '1979', 'The Hitchhiker\'s Guide to the Galaxy', 'en-US', '4.20', 936782, 1006479, 20345, 21764, 41962, 145173, 299579, 498001, 'https://images.gr-assets.com/books/1327656754m/11.jpg'),
(5129, 3204877, 515, '60929871', 'Aldous Huxley', '1932', 'Brave New World', 'eng', '3.97', 1022601, 1079135, 20095, 26367, 60328, 219895, 389379, 383166, 'https://images.gr-assets.com/books/1487389574m/5129.jpg'),
(1162543, 2960529, 183, '031606792X', 'Stephenie Meyer', '2008', 'Breaking Dawn', 'en-US', '3.70', 1070245, 1107709, 44550, 100994, 114893, 213402, 267706, 410714, 'https://images.gr-assets.com/books/1361039438m/1162543.jpg'),
(37435, 3275013, 125, '142001740', 'Sue Monk Kidd', '2001', 'The Secret Life of Bees', 'en-US', '4.01', 916189, 937393, 26522, 17500, 45455, 185631, 347540, 341267, 'https://images.gr-assets.com/books/1473454532m/37435.jpg'),
(2956, 1835605, 2277, '142437174', 'Mark Twain, John Seelye, Guy Cardwell', '1884', 'The Adventures of Huckleberry Finn', 'eng', '3.80', 953758, 1001491, 12448, 28467, 76630, 255722, 344356, 296316, 'https://images.gr-assets.com/books/1405973850m/2956.jpg'),
(24178, 987048, 180, '64410935', 'E.B. White, Garth Williams, Rosemary Wells', '1952', 'Charlotte\'s Web', 'eng', '4.15', 1064521, 1084842, 13044, 18450, 41124, 191415, 346090, 487763, 'https://images.gr-assets.com/books/1439632243m/24178.jpg'),
(1618, 4259809, 183, '1400032717', 'Mark Haddon', '2003', 'The Curious Incident of the Dog in the Night-Time', 'eng', '3.85', 867553, 915790, 35796, 21049, 58117, 218218, 355925, 262481, 'https://images.gr-assets.com/books/1479863624m/1618.jpg'),
(22557272, 41107568, 14, '1594633665', 'Paula Hawkins', '2015', 'The Girl on the Train', 'eng', '3.88', 1008778, 1226485, 93600, 27773, 73897, 273817, 488447, 362551, 'https://images.gr-assets.com/books/1490903702m/22557272.jpg'),
(119322, 1536771, 287, '679879242', 'Philip Pullman', '1995', 'Northern Lights', 'eng', '3.94', 953970, 994914, 14915, 38382, 64591, 198764, 313147, 380030, 'https://images.gr-assets.com/books/1451271747m/119322.jpg'),
(6185, 1565818, 2498, '393978893', 'Emily Brontë, Richard J. Dunn', '1847', 'Wuthering Heights', 'eng', '3.82', 899195, 1001135, 26157, 46469, 84084, 215320, 309180, 346082, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10917, 1639903, 125, '743454537', 'Jodi Picoult', '2004', 'My Sister\'s Keeper', 'eng', '4.06', 863879, 887880, 30719, 17547, 42763, 162573, 314003, 350994, 'https://images.gr-assets.com/books/1369504683m/10917.jpg'),
(4981, 1683562, 241, '385333846', 'Kurt Vonnegut Jr.', '1969', 'Slaughterhouse-Five, or The Children\'s Crusade: A Duty-Dance with Death ', 'eng', '4.06', 846488, 891762, 19646, 24964, 45518, 152442, 300948, 367890, 'https://images.gr-assets.com/books/1440319389m/4981.jpg'),
(18405, 3358283, 409, '446675539', 'Margaret Mitchell', '1936', 'Gone with the Wind', 'eng', '4.28', 873981, 897303, 16050, 19996, 33136, 116160, 234290, 493721, 'https://images.gr-assets.com/books/1328025229m/18405.jpg'),
(128029, 3271379, 197, '1594489505', 'Khaled Hosseini', '2007', 'A Thousand Splendid Suns', 'eng', '4.34', 818742, 866065, 43645, 6509, 18015, 99030, 295817, 446694, 'https://images.gr-assets.com/books/1345958969m/128029.jpg'),
(22628, 2236198, 128, '671027344', 'Stephen Chbosky', '1999', 'The Perks of Being a Wallflower', 'eng', '4.21', 888806, 954905, 47116, 14286, 38658, 143440, 297501, 461020, 'https://images.gr-assets.com/books/1167352178m/22628.jpg'),
(11735983, 15524542, 164, '7442912', 'Veronica Roth', '2012', 'Insurgent', 'eng', '4.07', 836362, 947338, 55873, 10641, 44620, 182131, 339977, 369969, 'https://images.gr-assets.com/books/1325667729m/11735983.jpg'),
(375802, 2422333, 224, '812550706', 'Orson Scott Card', '1985', 'Ender\'s Game', 'eng', '4.30', 813439, 873417, 38054, 15330, 27612, 103439, 264207, 462829, 'https://images.gr-assets.com/books/1408303130m/375802.jpg'),
(18490, 4836639, 2618, '141439475', 'Mary Wollstonecraft Shelley, Percy Bysshe Shelley, Maurice Hindle', '1818', 'Frankenstein; or, The Modern Prometheus', 'eng', '3.75', 808589, 883563, 19993, 29366, 74142, 231022, 300495, 248538, 'https://images.gr-assets.com/books/1381512375m/18490.jpg'),
(11588, 849585, 289, '450040186', 'Stephen King', '1977', 'The Shining', 'eng', '4.17', 791850, 830881, 14936, 18487, 28981, 123862, 277393, 382158, 'https://images.gr-assets.com/books/1353277730m/11588.jpg'),
(1656001, 3328799, 161, '316068047', 'Stephenie Meyer', '2008', 'The Host', 'en-US', '3.84', 749780, 777560, 39778, 44215, 62501, 154906, 227180, 288758, 'https://images.gr-assets.com/books/1318009171m/1656001.jpg'),
(99561, 919292, 187, '142402516', 'John Green', '2005', 'Looking for Alaska', 'eng', '4.09', 783470, 831285, 47128, 16940, 44232, 147324, 262932, 359857, 'https://images.gr-assets.com/books/1394798630m/99561.jpg'),
(227443, 3185154, 193, '014028009X', 'Helen Fielding', '1996', '', 'eng', '3.75', 736498, 754498, 8157, 28973, 59309, 198555, 254836, 212825, 'https://images.gr-assets.com/books/1292060045m/227443.jpg'),
(14935, 2809709, 1969, '141439661', 'Jane Austen, Tony Tanner, Ros Ballaster', '1811', 'Sense and Sensibility', 'eng', '4.06', 738894, 779382, 11526, 18430, 34699, 141987, 272512, 311754, 'https://images.gr-assets.com/books/1397245675m/14935.jpg'),
(38709, 1679789, 138, '439244196', 'Louis Sachar, Louis Sachar', '1998', 'Holes', 'eng', '3.93', 747445, 764637, 15832, 15495, 43786, 176946, 269153, 259257, 'https://images.gr-assets.com/books/1327781893m/38709.jpg'),
(5139, 38765, 129, '307275558', 'Lauren Weisberger', '2003', 'The Devil Wears Prada', 'eng', '3.70', 665930, 679845, 8024, 24231, 58323, 192366, 226675, 178250, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1381, 3356006, 1703, '143039954', 'Homer, Robert Fagles, E.V. Rieu, Frédéric Mugler, Bernard Knox', '-720', 'Ὀδύσσεια', 'eng', '3.73', 670326, 710757, 8101, 29703, 65629, 183082, 224120, 208223, 'https://images.gr-assets.com/books/1390173285m/1381.jpg'),
(157993, 2180358, 1708, '156012197', 'Antoine de Saint-Exupéry, Richard Howard, Dom Marcos Barbosa, Melina Karakosta', '1946', 'Le Petit Prince', 'eng', '4.28', 738757, 859286, 24537, 15039, 32866, 114714, 228440, 468227, 'https://images.gr-assets.com/books/1367545443m/157993.jpg'),
(7445, 2944133, 92, '074324754X', 'Jeannette Walls', '2005', 'The Glass Castle', 'eng', '4.24', 621099, 637866, 40777, 7901, 18922, 85191, 227750, 298102, 'https://images.gr-assets.com/books/1400930557m/7445.jpg'),
(1845, 3284484, 108, '385486804', 'Jon Krakauer', '1996', 'Into the Wild', 'eng', '3.94', 647684, 665377, 17299, 19229, 35567, 135199, 248287, 227095, 'https://images.gr-assets.com/books/1403173986m/1845.jpg'),
(1953, 2956372, 525, '141439602', 'Charles Dickens, Richard Maxwell, Hablot Knight Browne', '1859', 'A Tale of Two Cities', 'eng', '3.81', 637412, 677713, 13093, 28904, 55555, 153305, 216378, 223571, 'https://images.gr-assets.com/books/1344922523m/1953.jpg'),
(7677, 3376836, 176, '030734813X', 'Michael Crichton', '1990', 'Jurassic Park', 'spa', '3.96', 447833, 650483, 8143, 15736, 34222, 138327, 231583, 230615, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(370493, 30530, 81, '60256656', 'Shel Silverstein', '1964', 'The Giving Tree', 'eng', '4.38', 702332, 708287, 14368, 15345, 20408, 76071, 167542, 428921, 'https://images.gr-assets.com/books/1174210942m/370493.jpg'),
(32542, 1804929, 158, '385338600', 'John Grisham', '1989', 'A Time to Kill', 'eng', '4.03', 597775, 608824, 4239, 12106, 25938, 122675, 218617, 229488, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1617, 265616, 109, '374500010', 'Elie Wiesel, Marion Wiesel', '1958', 'Un di Velt Hot Geshvign', 'eng', '4.30', 691231, 707879, 22001, 7761, 18539, 90575, 230227, 360777, 'https://images.gr-assets.com/books/1473495285m/1617.jpg'),
(6442769, 3364505, 178, '014241493X', 'John Green', '2008', 'Paper Towns', 'en-US', '3.88', 461311, 655271, 42717, 14105, 47183, 154479, 223895, 215609, 'https://images.gr-assets.com/books/1349013610m/6442769.jpg'),
(21787, 992628, 129, '345418263', 'William Goldman', '1973', 'The Princess Bride', 'en-US', '4.25', 628637, 658042, 15630, 12883, 21641, 89236, 196047, 338235, 'https://images.gr-assets.com/books/1327903636m/21787.jpg'),
(231804, 1426690, 156, '014038572X', 'S.E. Hinton', '1967', 'The Outsiders', 'en-US', '4.06', 659248, 680437, 22662, 10178, 34346, 134244, 227250, 274419, 'https://images.gr-assets.com/books/1442129426m/231804.jpg'),
(6186357, 6366642, 147, '385737947', 'James Dashner', '2009', 'The Maze Runner', 'eng', '4.02', 719925, 777956, 48942, 15291, 43370, 150488, 266698, 302109, 'https://images.gr-assets.com/books/1375596592m/6186357.jpg'),
(1202, 5397, 124, '61234001', 'Steven D. Levitt, Stephen J. Dubner', '2005', 'Freakonomics: A Rogue Economist Explores the Hidden Side of Everything', 'en-US', '3.93', 524191, 549301, 13668, 14586, 26538, 115789, 216316, 176072, 'https://images.gr-assets.com/books/1327909092m/1202.jpg'),
(2998, 3186437, 1350, '517189607', 'Frances Hodgson Burnett', '1911', 'The Secret Garden', 'eng', '4.12', 639357, 692249, 13054, 8005, 25207, 129646, 243821, 285570, 'https://images.gr-assets.com/books/1327873635m/2998.jpg'),
(320, 3295655, 555, '60531045', 'Gabriel García Márquez, Gregory Rabassa', '1967', 'Cien años de soledad', 'eng', '4.04', 490565, 575667, 21671, 27340, 37646, 87675, 155809, 267197, 'https://images.gr-assets.com/books/1327881361m/320.jpg'),
(5297, 1858012, 2303, '375751513', 'Oscar Wilde, Jeffrey Eugenides', '1891', 'The Picture of Dorian Gray', 'eng', '4.06', 590014, 674551, 19647, 9825, 30735, 129420, 246892, 257679, 'https://images.gr-assets.com/books/1424596966m/5297.jpg'),
(13536860, 18034963, 133, '345803507', 'E.L. James', '2012', 'Fifty Shades Freed', 'eng', '3.88', 387290, 610116, 25287, 39079, 55691, 109963, 140304, 265079, 'https://images.gr-assets.com/books/1336418837m/13536860.jpg'),
(17245, 3165724, 2207, '393970124', 'Bram Stoker, Nina Auerbach, David J. Skal', '1897', 'Dracula', 'eng', '3.98', 618973, 689739, 17263, 11756, 36719, 151396, 246043, 243825, 'https://images.gr-assets.com/books/1387151694m/17245.jpg'),
(5060378, 6976108, 209, '307269981', 'Stieg Larsson, Reg Keeland', '2006', 'Flickan som lekte med elden', 'eng', '4.22', 563994, 649253, 31423, 4623, 15781, 91021, 258236, 279592, 'https://images.gr-assets.com/books/1351778881m/5060378.jpg'),
(11857408, 16813814, 147, '1612130585', 'E.L. James', '2011', 'Fifty Shades Darker', 'eng', '3.87', 552059, 623340, 28052, 37245, 58935, 114203, 150906, 262051, 'https://images.gr-assets.com/books/1358266080m/11857408.jpg'),
(7244, 810663, 39, '60786507', 'Barbara Kingsolver', '1998', 'The Poisonwood Bible', 'eng', '4.02', 546502, 562787, 19941, 21699, 33702, 92590, 175725, 239071, 'https://images.gr-assets.com/books/1412242487m/7244.jpg'),
(4137, 1030767, 59, '349113912', 'David Sedaris', '2000', 'Me Talk Pretty One Day', 'eng', '3.97', 495736, 514276, 14982, 19718, 29034, 93427, 178021, 194076, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(19543, 3020535, 110, '99408392', 'Maurice Sendak', '1963', 'Where the Wild Things Are', 'eng', '4.22', 620618, 636061, 9102, 15392, 27532, 93700, 167043, 332394, 'https://images.gr-assets.com/books/1384434560m/19543.jpg'),
(7126, 391568, 1310, '140449264', 'Alexandre Dumas, Robin Buss', '1844', 'Le Comte de Monte-Cristo', 'eng', '4.21', 555822, 601220, 15925, 10381, 22482, 89980, 183142, 295235, 'https://images.gr-assets.com/books/1309203605m/7126.jpg'),
(6288, 3355573, 181, '307265439', 'Cormac McCarthy', '2006', 'The Road', 'eng', '3.95', 504793, 555787, 38980, 20086, 36561, 100989, 190823, 207328, 'https://images.gr-assets.com/books/1439197219m/6288.jpg'),
(18710190, 15524549, 153, '7524277', 'Veronica Roth', '2013', 'Allegiant', 'eng', '3.63', 463257, 663226, 62536, 31626, 78366, 176061, 192785, 184388, 'https://images.gr-assets.com/books/1395582745m/18710190.jpg'),
(9418327, 14302659, 48, '', 'Tina Fey', '2011', 'Bossypants', 'eng', '3.94', 506250, 609260, 35142, 14842, 31761, 129390, 230080, 203187, 'https://images.gr-assets.com/books/1481509554m/9418327.jpg'),
(3473, 3143497, 131, '446693804', 'Nicholas Sparks', '1999', 'A Walk to Remember', 'en-US', '4.15', 546948, 559581, 11071, 10640, 24094, 94327, 169650, 260870, 'https://images.gr-assets.com/books/1385738968m/3473.jpg'),
(9416, 3237433, 144, '440241413', 'Sophie Kinsella', '2000', 'Confessions of a Shopaholic', 'eng', '3.61', 543658, 558004, 11170, 30705, 56949, 156636, 166927, 146787, 'https://images.gr-assets.com/books/1327872404m/9416.jpg'),
(24280, 3208463, 1319, '451525264', 'Victor Hugo, Lee Fahnestock, Norman MacAfee', '1862', 'Les Misérables', 'eng', '4.14', 513407, 560132, 12505, 15225, 25914, 87461, 167385, 264147, 'https://images.gr-assets.com/books/1411852091m/24280.jpg'),
(10572, 3272005, 202, '553381695', 'George R.R. Martin', '1998', 'A Clash of Kings', 'eng', '4.40', 523303, 606765, 20325, 1788, 7104, 56167, 221706, 320000, 'https://images.gr-assets.com/books/1358254974m/10572.jpg'),
(10441, 2868431, 98, '143037145', 'Kim Edwards', '2005', 'The Memory Keeper\'s Daughter', 'eng', '3.64', 501430, 510582, 18027, 19453, 47004, 145437, 183150, 115538, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(15507958, 17763198, 168, '670026603', 'Jojo Moyes', '2012', 'Me Before You', 'eng', '4.27', 587647, 741133, 71412, 10346, 21880, 91517, 249474, 367916, 'https://images.gr-assets.com/books/1357108762m/15507958.jpg'),
(168668, 814330, 251, '684833395', 'Joseph Heller', '1961', 'Catch-22', 'en-US', '3.98', 563265, 582515, 13734, 20639, 37912, 106269, 186745, 230950, 'https://images.gr-assets.com/books/1463157317m/168668.jpg'),
(6900, 1995335, 172, '751529818', 'Mitch Albom, Saulius Dagys', '1997', 'Tuesdays with Morrie', 'eng', '4.06', 556518, 584397, 19272, 11507, 30534, 107446, 194448, 240462, 'https://images.gr-assets.com/books/1423763749m/6900.jpg'),
(2187, 1352495, 125, '312422156', 'Jeffrey Eugenides', '2002', 'Middlesex', 'en-US', '3.98', 488243, 507998, 20880, 19329, 30503, 89740, 171099, 197327, 'https://images.gr-assets.com/books/1437029776m/2187.jpg'),
(24583, 41326609, 2448, '143039563', 'Mark Twain, Guy Cardwell, John Seelye', '1876', 'The Adventures of Tom Sawyer', 'eng', '3.89', 555359, 594226, 7165, 12130, 34349, 143659, 217896, 186192, 'https://images.gr-assets.com/books/1404811979m/24583.jpg'),
(18131, 948387, 165, '440498058', 'Madeleine L\'Engle', '1962', 'A Wrinkle in Time', 'en-US', '4.04', 615907, 650094, 19413, 17313, 34988, 119115, 209745, 268933, 'https://images.gr-assets.com/books/1329061522m/18131.jpg'),
(7763, 1955658, 126, '143038095', 'Amy Tan', '1989', 'The Joy Luck Club', 'eng', '3.90', 515090, 525243, 6708, 14802, 30197, 116748, 195930, 167566, 'https://images.gr-assets.com/books/1304978653m/7763.jpg'),
(38447, 1119185, 236, '038549081X', 'Margaret Atwood', '1985', 'The Handmaid\'s Tale', 'eng', '4.06', 607889, 683564, 35925, 13998, 32561, 116975, 252942, 267088, 'https://images.gr-assets.com/books/1498057733m/38447.jpg'),
(452306, 1058370, 93, '385729332', 'Ann Brashares', '2001', 'The Sisterhood of the Traveling Pants', 'eng', '3.75', 525706, 536604, 6477, 14996, 42396, 152024, 177404, 149784, 'https://images.gr-assets.com/books/1461611233m/452306.jpg'),
(7604, 1268631, 370, '', 'Vladimir Nabokov, Craig Raine', '1955', 'Lolita', 'eng', '3.88', 469836, 517990, 18107, 21091, 37205, 108664, 165477, 185553, 'https://images.gr-assets.com/books/1377756377m/7604.jpg'),
(37442, 1479280, 80, '60987103', 'Gregory Maguire, Douglas Smith', '1995', 'Wicked: The Life and Times of the Wicked Witch of the West', 'eng', '3.52', 506900, 525498, 22926, 40802, 65835, 132061, 153583, 133217, 'https://images.gr-assets.com/books/1437733293m/37442.jpg'),
(5358, 38270, 11, '582418275', 'John Grisham', '1991', 'The Firm', 'eng', '3.99', 488269, 488355, 3139, 5075, 20119, 111543, 190966, 160652, 'https://images.gr-assets.com/books/1418465200m/5358.jpg'),
(7937843, 9585076, 151, '316098337', 'Emma Donoghue', '2010', 'Room', 'eng', '4.03', 511360, 556327, 42254, 11020, 26079, 99831, 217995, 201402, 'https://images.gr-assets.com/books/1344265419m/7937843.jpg'),
(1420, 1885548, 1929, '521618746', 'William Shakespeare, Richard Andrews, Rex Gibson', '1600', 'The Tragicall Historie of Hamlet, Prince of Denmark', 'eng', '4.00', 515820, 576894, 8889, 10413, 32697, 121040, 192937, 219807, 'https://images.gr-assets.com/books/1351051208m/1420.jpg'),
(234225, 3634639, 241, '340839937', 'Frank Herbert', '1965', 'Dune', 'eng', '4.19', 485032, 525976, 13239, 13354, 22778, 74206, 154771, 260867, 'https://images.gr-assets.com/books/1434908555m/234225.jpg'),
(2612, 2124255, 100, '316346624', 'Malcolm Gladwell', '2000', 'The Tipping Point: How Little Things Can Make a Big Difference', 'eng', '3.92', 490504, 499066, 10895, 15111, 25871, 106453, 189120, 162511, 'https://images.gr-assets.com/books/1473396980m/2612.jpg'),
(11084145, 16005831, 190, '1451648537', 'Walter Isaacson', '2011', 'Steve Jobs', 'eng', '4.09', 560715, 579256, 15198, 19680, 21986, 88456, 203975, 245159, 'https://images.gr-assets.com/books/1327861368m/11084145.jpg'),
(332613, 2100252, 275, '451163966', 'Ken Kesey', '1962', 'One Flew Over the Cuckoo\'s Nest', 'eng', '4.18', 491642, 514458, 7855, 5672, 15978, 78714, 191622, 222472, 'https://images.gr-assets.com/books/1485308778m/332613.jpg'),
(2165, 69741, 666, '684830493', 'Ernest Hemingway', '1952', 'The Old Man and the Sea', 'eng', '3.73', 520630, 574328, 16716, 28645, 52583, 136217, 186747, 170136, 'https://images.gr-assets.com/books/1329189714m/2165.jpg'),
(4395, 2931549, 381, '142000663', 'John Steinbeck', '1939', 'The Grapes of Wrath', 'eng', '3.92', 322321, 553352, 12991, 23552, 40261, 103475, 173589, 212475, 'https://images.gr-assets.com/books/1352912927m/4395.jpg'),
(3431, 2561472, 123, '1401308589', 'Mitch Albom', '2003', 'The Five People You Meet in Heaven', '', '3.90', 449501, 474699, 16682, 12360, 33669, 107800, 155830, 165040, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(8127, 3464264, 1314, '451528824', 'L.M. Montgomery', '1908', 'Anne of Green Gables', 'eng', '4.23', 502247, 533352, 14041, 8864, 19531, 80256, 158725, 265976, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(3777732, 3443248, 122, '1416914307', 'Cassandra Clare', '2009', 'City of Glass', 'en-US', '4.34', 593173, 630560, 22736, 6646, 17351, 79202, 179290, 348071, 'https://images.gr-assets.com/books/1369452339m/3777732.jpg'),
(62291, 1164465, 175, '055357342X', 'George R.R. Martin', '2000', 'A Storm of Swords', 'eng', '4.54', 469022, 527644, 19497, 1456, 4820, 36418, 149268, 335682, 'https://images.gr-assets.com/books/1497931121m/62291.jpg'),
(137791, 1010054, 75, '006075995X', 'Rebecca Wells', '1996', 'Divine Secrets of the Ya-Ya Sisterhood', 'en-US', '3.79', 465676, 470508, 3867, 15795, 35314, 120396, 158451, 140552, 'https://images.gr-assets.com/books/1408313524m/137791.jpg'),
(10964, 2489796, 189, '440242940', 'Diana Gabaldon', '1991', 'Outlander', 'eng', '4.20', 515547, 578842, 36707, 20998, 27673, 73126, 147085, 309960, 'https://images.gr-assets.com/books/1402600310m/10964.jpg'),
(12296, 4925227, 1579, '142437263', 'Nathaniel Hawthorne, Thomas E. Connolly, Nina Baym', '1850', 'The Scarlet Letter', 'eng', '3.37', 509883, 559246, 11428, 34813, 80444, 182701, 165079, 96209, 'https://images.gr-assets.com/books/1404810944m/12296.jpg'),
(9460487, 14345371, 155, '1594744769', 'Ransom Riggs', '2011', 'Miss Peregrine’s Home for Peculiar Children', 'en-US', '3.89', 613674, 672222, 53569, 14920, 45434, 159227, 234792, 217849, 'https://images.gr-assets.com/books/1472782916m/9460487.jpg'),
(6892870, 12883496, 193, '030726999X', 'Stieg Larsson, Reg Keeland', '2007', 'Luftslottet som sprängdes', 'en-US', '4.20', 443951, 526791, 26766, 3823, 14773, 78387, 203297, 226511, 'https://images.gr-assets.com/books/1327708260m/6892870.jpg'),
(18007564, 21825181, 148, '804139024', 'Andy Weir', '2012', 'The Martian', 'eng', '4.39', 423344, 529702, 61298, 4114, 10856, 49200, 173861, 291671, 'https://images.gr-assets.com/books/1413706054m/18007564.jpg'),
(5043, 3359698, 255, '451207149', 'Ken Follett', '1989', 'The Pillars of the Earth', 'eng', '4.29', 462517, 495893, 26283, 9248, 16886, 57825, 148052, 263882, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(18143977, 25491300, 139, '1476746583', 'Anthony Doerr', '2014', '', 'eng', '4.31', 470001, 547827, 53413, 6209, 14527, 61020, 185239, 280832, 'https://images.gr-assets.com/books/1451445646m/18143977.jpg'),
(8664353, 12946965, 16, '1400064163', 'Laura Hillenbrand', '2010', 'Unbroken: A World War II Story of Survival, Resilience, and Redemption', 'eng', '4.40', 487775, 528552, 41572, 10308, 12874, 47828, 144203, 313339, 'https://images.gr-assets.com/books/1327861115m/8664353.jpg'),
(976, 3135896, 180, '671027387', 'Dan Brown', '2001', 'Deception Point', 'eng', '3.67', 455610, 479733, 7798, 14380, 45006, 143182, 160819, 116346, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(17333223, 24065147, 108, '316055433', 'Donna Tartt', '2013', 'The Goldfinch', 'eng', '3.87', 396756, 463847, 44631, 19164, 35300, 93459, 153459, 162465, 'https://images.gr-assets.com/books/1451554970m/17333223.jpg'),
(1217100, 2588213, 150, '1595141715', 'Jay Asher', '2007', 'Thirteen Reasons Why', 'eng', '4.02', 463783, 571281, 43467, 15246, 35668, 105414, 179197, 235756, 'https://images.gr-assets.com/books/1333822506m/1217100.jpg'),
(2865, 3358875, 169, '452287022', 'Tracy Chevalier', '1999', 'Girl with a Pearl Earring', 'eng', '3.85', 467577, 492177, 8011, 11525, 28287, 123463, 189656, 139246, 'https://images.gr-assets.com/books/1327197580m/2865.jpg'),
(4374400, 4422413, 130, '525421033', 'Gayle Forman', '2009', 'If I Stay', 'en-US', '3.96', 503527, 567087, 34959, 12666, 34896, 122977, 190793, 205755, 'https://images.gr-assets.com/books/1347462970m/4374400.jpg'),
(4989, 1041558, 80, '312353766', 'Anita Diamant', '1997', 'The Red Tent', 'en-US', '4.16', 424981, 449217, 17234, 9470, 19616, 67878, 146178, 206075, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(28186, 43554, 121, '786856866', 'Rick Riordan', '2006', 'The Sea of Monsters', 'eng', '4.23', 514932, 550512, 20097, 2967, 13884, 91127, 188988, 253546, 'https://images.gr-assets.com/books/1400602661m/28186.jpg'),
(5526, 3222389, 111, '446528056', 'Nicholas Sparks', '2006', 'Dear John', 'en-US', '4.01', 441062, 454781, 10626, 9683, 25220, 94711, 145202, 179965, 'https://images.gr-assets.com/books/1397749854m/5526.jpg'),
(1582996, 1575860, 125, '1416914293', 'Cassandra Clare', '2008', 'City of Ashes', 'eng', '4.21', 541117, 586008, 23643, 6135, 20075, 92626, 192934, 274238, 'https://images.gr-assets.com/books/1432730356m/1582996.jpg'),
(8852, 1896522, 1732, '743477103', 'William Shakespeare', '1606', 'The Tragedy of Macbeth', 'eng', '3.88', 496018, 524826, 7609, 10551, 35408, 127354, 183871, 167642, 'https://images.gr-assets.com/books/1459795224m/8852.jpg'),
(15241, 2963845, 453, '618346260', 'J.R.R. Tolkien', '1954', 'The Two Towers', 'en-US', '4.42', 480446, 532209, 6980, 3013, 10264, 55433, 156232, 307267, 'https://images.gr-assets.com/books/1298415523m/15241.jpg'),
(42156, 1789440, 65, '031232118X', 'Emily Giffin', '2004', 'Something Borrowed', 'eng', '3.83', 403601, 435189, 11567, 16019, 29297, 104322, 148507, 137044, 'https://images.gr-assets.com/books/1305063535m/42156.jpg'),
(23772, 86934, 72, '394800168', 'Dr. Seuss, לאה נאור', '1960', 'Green Eggs and Ham', 'en-US', '4.29', 457475, 461041, 7370, 6605, 14530, 66873, 121751, 251282, 'https://images.gr-assets.com/books/1468680100m/23772.jpg'),
(6310, 2765786, 338, '142403881', 'Roald Dahl, Quentin Blake', '1964', 'Charlie and the Chocolate Factory', 'eng', '4.10', 453959, 494747, 8473, 6236, 17193, 94240, 178216, 198862, 'https://images.gr-assets.com/books/1309211401m/6310.jpg'),
(2120932, 2377629, 92, '1423101464', 'Rick Riordan', '2008', 'The Battle of the Labyrinth', 'eng', '4.39', 508214, 537708, 14098, 2435, 8093, 62108, 172289, 292783, 'https://images.gr-assets.com/books/1443142158m/2120932.jpg'),
(2623, 2612809, 1725, '192833596', 'Charles Dickens', '1860', 'Great Expectations', 'eng', '3.75', 459247, 507187, 12311, 22811, 44293, 120385, 170702, 148996, 'https://images.gr-assets.com/books/1327920219m/2623.jpg'),
(18512, 2964424, 470, '345339738', 'J.R.R. Tolkien', '1955', 'The Return of the King', 'en-US', '4.51', 463959, 510537, 6644, 2691, 8008, 42693, 132149, 324996, 'https://images.gr-assets.com/books/1389977161m/18512.jpg'),
(49552, 3324344, 675, '', 'Albert Camus, Matthew    Ward', '1942', 'L’Étranger', 'eng', '3.96', 420600, 483623, 14836, 10563, 28920, 100140, 174957, 169043, 'https://images.gr-assets.com/books/1349927872m/49552.jpg'),
(7736182, 10107891, 72, '142311339X', 'Rick Riordan', '2010', 'The Lost Hero', 'eng', '4.35', 271576, 489495, 17107, 5020, 11267, 58590, 148498, 266120, 'https://images.gr-assets.com/books/1464201003m/7736182.jpg'),
(15745753, 17225055, 103, '1250012570', 'Rainbow Rowell', '2013', 'Eleanor & Park', 'eng', '4.11', 514312, 579753, 53005, 12904, 26371, 94470, 196224, 249784, 'https://images.gr-assets.com/books/1341952742m/15745753.jpg'),
(13497, 1019062, 176, '055358202X', 'George R.R. Martin', '2005', 'A Feast for Crows', 'en-US', '4.10', 428186, 481130, 18876, 3170, 18574, 94401, 175973, 189012, 'https://images.gr-assets.com/books/1429538615m/13497.jpg'),
(7735333, 9631645, 84, '525423648', 'Ally Condie', '2010', 'Matched', 'eng', '3.68', 511815, 530680, 30226, 24343, 53804, 138030, 165412, 149091, 'https://images.gr-assets.com/books/1367706191m/7735333.jpg'),
(4407, 1970226, 196, '747263744', 'Neil Gaiman', '2001', 'American Gods', 'eng', '4.11', 378019, 518343, 27587, 9888, 24944, 83253, 178346, 221912, 'https://images.gr-assets.com/books/1258417001m/4407.jpg'),
(149267, 1742269, 195, '385199570', 'Stephen King, Bernie Wrightson', '1978', 'The Stand', 'en-US', '4.34', 438832, 469953, 13808, 5647, 13612, 56722, 134098, 259874, 'https://images.gr-assets.com/books/1213131305m/149267.jpg'),
(6400090, 6588800, 95, '446547565', 'Nicholas Sparks', '2008', 'The Last Song', 'en-GB', '4.14', 424637, 438429, 11051, 7253, 17803, 77712, 140241, 195420, 'https://images.gr-assets.com/books/1286549186m/6400090.jpg'),
(11125, 40195, 185, '552151696', 'Dan Brown', '1998', 'Digital Fortress', 'en-GB', '3.60', 423019, 447503, 7538, 16592, 47507, 136196, 144029, 103179, 'https://images.gr-assets.com/books/1360095966m/11125.jpg'),
(6969, 3360164, 1710, '141439580', 'Jane Austen, Fiona Stafford', '1815', 'Emma', 'eng', '3.99', 459826, 497949, 11724, 11386, 25777, 102144, 178238, 180404, 'https://images.gr-assets.com/books/1373627931m/6969.jpg'),
(15823480, 2507928, 1492, '345803922', 'Leo Tolstoy, Louise Maude, Leo Tolstoj, Aylmer Maude', '1877', 'Анна Каренина', 'eng', '4.02', 297472, 472796, 18064, 11738, 26945, 88365, 158179, 187569, 'https://images.gr-assets.com/books/1352422904m/15823480.jpg'),
(227463, 23596, 283, '393312836', 'Anthony Burgess', '1962', 'A Clockwork Orange', 'eng', '3.98', 431195, 454391, 9958, 14741, 24244, 84863, 163488, 167055, 'https://images.gr-assets.com/books/1348339306m/227463.jpg'),
(1812457, 2666268, 134, '964729237', 'William Paul Young', '2007', 'The Shack: Where Tragedy Confronts Eternity', 'eng', '3.74', 419539, 438292, 29377, 35734, 42977, 84751, 111923, 162907, 'https://images.gr-assets.com/books/1344270232m/1812457.jpg'),
(4502507, 4551489, 87, '739380338', 'Rick Riordan', '2009', 'The Last Olympian', 'eng', '4.50', 397500, 499510, 17693, 2098, 6501, 45208, 133168, 312535, 'https://images.gr-assets.com/books/1327924597m/4502507.jpg'),
(18342, 150259, 7, '451169514', 'Stephen King', '1986', 'It', 'en-US', '4.18', 292592, 479381, 11698, 8464, 19610, 75841, 148672, 226794, 'https://images.gr-assets.com/books/1309376909m/18342.jpg'),
(7144, 3393917, 1714, '143058142', 'Fyodor Dostoyevsky, David McDuff', '1866', 'Преступление и наказание', 'eng', '4.18', 380903, 444675, 12605, 9477, 20078, 64050, 137104, 213966, 'https://images.gr-assets.com/books/1382846449m/7144.jpg'),
(6514, 1385044, 246, '61148512', 'Sylvia Plath', '1963', 'The Bell Jar', 'en-US', '3.98', 401605, 442157, 15963, 8266, 23983, 92408, 162216, 155284, 'https://images.gr-assets.com/books/1473890514m/6514.jpg'),
(252577, 2883783, 184, '7205236', 'Frank McCourt', '1996', 'Angela\'s Ashes: A Memoir', 'eng', '4.07', 392103, 419746, 9798, 7657, 18327, 73550, 155775, 164437, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(52036, 4840290, 972, '553208845', 'Hermann Hesse, Hilda Rosner', '1922', 'Siddhartha', 'eng', '3.99', 372099, 418653, 11518, 10229, 25529, 83698, 138837, 160360, 'https://images.gr-assets.com/books/1428715580m/52036.jpg'),
(168642, 1940709, 223, '679745580', 'Truman Capote', '1965', 'In Cold Blood', 'eng', '4.05', 381652, 401839, 11754, 10639, 17836, 70857, 144616, 157891, 'https://images.gr-assets.com/books/1424931136m/168642.jpg'),
(6304335, 6488966, 119, '316042676', 'Kami Garcia, Margaret Stohl', '2009', 'Beautiful Creatures', 'eng', '3.76', 436093, 458518, 20808, 19917, 43525, 113352, 132492, 149232, 'https://images.gr-assets.com/books/1327873282m/6304335.jpg'),
(7171637, 6674837, 103, '1416975861', 'Cassandra Clare', '2010', 'Clockwork Angel', 'eng', '4.33', 490890, 515759, 24385, 8364, 15544, 61409, 140928, 289514, 'https://images.gr-assets.com/books/1454962884m/7171637.jpg'),
(39988, 1015554, 242, '141301066', 'Roald Dahl, Quentin Blake', '1988', 'Matilda', 'eng', '4.29', 440743, 463491, 11053, 4277, 10823, 64536, 152003, 231852, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(9361589, 14245059, 119, '385534639', 'Erin Morgenstern', '2011', 'The Night Circus', 'eng', '4.03', 429543, 474826, 54008, 11349, 28650, 84254, 159596, 190977, 'https://images.gr-assets.com/books/1387124618m/9361589.jpg'),
(37470, 3248536, 111, '743227441', 'Philippa Gregory', '2001', 'The Other Boleyn Girl', 'eng', '4.04', 381080, 399223, 15846, 5311, 16716, 78620, 153807, 144769, 'https://images.gr-assets.com/books/1355932638m/37470.jpg'),
(24770, 2895388, 98, '689865384', 'Scott Westerfeld', '2005', 'Uglies', 'eng', '3.86', 449073, 464589, 21234, 15531, 34808, 106086, 151540, 156624, 'https://images.gr-assets.com/books/1443904172m/24770.jpg'),
(10664113, 2936175, 115, '', 'George R.R. Martin', '2011', 'A Dance with Dragons', 'eng', '4.31', 365954, 424618, 20072, 2399, 10150, 53744, 147136, 211189, 'https://images.gr-assets.com/books/1327885335m/10664113.jpg'),
(33, 3462456, 380, '618640150', 'J.R.R. Tolkien', '1955', 'The Lord of the Rings', 'eng', '4.47', 389054, 436346, 9365, 4807, 9577, 37552, 106818, 277592, 'https://images.gr-assets.com/books/1411114164m/33.jpg'),
(12262741, 17237712, 101, '307592731', 'Cheryl Strayed', '2012', 'Wild: From Lost to Found on the Pacific Crest Trail ', 'eng', '3.96', 379872, 420903, 34444, 8344, 22137, 85489, 165482, 139451, 'https://images.gr-assets.com/books/1453189881m/12262741.jpg'),
(472331, 4358649, 90, '930289234', 'Alan Moore, Dave Gibbons, John Higgins', '1987', 'Watchmen', 'en-US', '4.35', 398018, 409323, 10851, 6349, 11732, 44847, 116877, 229518, 'https://images.gr-assets.com/books/1442239711m/472331.jpg'),
(186074, 2502879, 123, '075640407X', 'Patrick Rothfuss', '2007', 'The Name of the Wind', 'eng', '4.55', 400101, 449372, 28631, 5605, 8582, 28480, 95470, 311235, 'https://images.gr-assets.com/books/1472068073m/186074.jpg'),
(3228917, 3364437, 120, '316017922', 'Malcolm Gladwell', '2008', 'Outliers: The Story of Success', 'en-US', '4.11', 353011, 369126, 19383, 4494, 12545, 62510, 148978, 140599, 'https://images.gr-assets.com/books/1344266315m/3228917.jpg'),
(153747, 2409320, 1823, '142437247', 'Herman Melville, Andrew Delbanco, Tom Quirk', '1851', 'Moby Dick; or, The Whale', 'eng', '3.46', 358050, 397963, 11223, 35983, 52601, 103625, 102432, 103322, 'https://images.gr-assets.com/books/1327940656m/153747.jpg'),
(2728527, 2754161, 116, '385340990', 'Mary Ann Shaffer, Annie Barrows', '2008', 'The Guernsey Literary and Potato Peel Pie Society', 'eng', '4.12', 393626, 423672, 39853, 7190, 17250, 68942, 155107, 175183, 'https://images.gr-assets.com/books/1351979318m/2728527.jpg'),
(5759, 68729, 162, '393327345', 'Chuck Palahniuk', '1996', 'Fight Club', 'eng', '4.20', 365349, 388654, 11176, 4578, 12632, 58110, 139554, 173780, 'https://images.gr-assets.com/books/1357128997m/5759.jpg'),
(301082, 479517, 109, '441008534', 'Charlaine Harris', '2001', 'Dead Until Dark', 'en-US', '3.96', 420764, 444824, 16818, 11330, 25781, 96290, 148326, 163097, 'https://images.gr-assets.com/books/1468560853m/301082.jpg'),
(11486, 3300573, 155, '671727796', 'Alice Walker', '1982', 'The Color Purple', 'eng', '4.17', 376766, 400965, 9485, 6298, 14477, 62380, 140835, 176975, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12691, 14961, 119, '739461192', 'John Grogan', '2005', 'Marley & Me: Life and Love with the World\'s Worst Dog', 'eng', '4.12', 367304, 379348, 13407, 5485, 14940, 68532, 131536, 158855, 'https://images.gr-assets.com/books/1308858322m/12691.jpg'),
(16299, 3038872, 474, '312330871', 'Agatha Christie', '1939', 'Ten Little Niggers', 'eng', '4.23', 408983, 456680, 17264, 6134, 12476, 66243, 156306, 215521, 'https://images.gr-assets.com/books/1391120695m/16299.jpg'),
(6411961, 6600281, 208, '385504225', 'Dan Brown', '2009', 'The Lost Symbol', 'eng', '3.66', 369428, 404982, 24199, 11293, 40545, 120122, 136545, 96477, 'https://images.gr-assets.com/books/1358274396m/6411961.jpg'),
(6339664, 6525609, 91, '1416989412', 'Becca Fitzpatrick', '2009', 'Hush, Hush', 'en-US', '4.00', 448166, 461802, 21871, 19338, 33543, 82544, 120204, 206173, 'https://images.gr-assets.com/books/1358261334m/6339664.jpg'),
(11505797, 16441531, 85, '', 'Jamie McGuire', '2011', 'Beautiful Disaster', 'eng', '4.15', 418309, 442696, 25298, 17185, 23298, 61993, 115123, 225097, 'https://images.gr-assets.com/books/1358259032m/11505797.jpg'),
(5326, 3097440, 2380, '1561797464', 'Charles Dickens', '1843', 'A Christmas Carol', '', '4.02', 394540, 441396, 11568, 6737, 21415, 93906, 153823, 165515, 'https://images.gr-assets.com/books/1406512317m/5326.jpg'),
(43763, 873132, 189, '345476875', 'Anne Rice', '1976', 'Interview with the Vampire', 'eng', '3.97', 372566, 393941, 7951, 7519, 22377, 84804, 137659, 141582, 'https://images.gr-assets.com/books/1380631642m/43763.jpg'),
(10507293, 15413183, 93, '62059939', 'Kiera Cass', '2012', 'The Selection', 'en-US', '4.15', 505340, 539091, 35681, 13841, 25349, 83692, 158716, 257493, 'https://images.gr-assets.com/books/1322103400m/10507293.jpg'),
(6853, 1486401, 109, '312362080', 'Janet Evanovich', '1994', 'One for the Money', 'en-US', '4.03', 391007, 403315, 13050, 9176, 19657, 80319, 133454, 160709, 'https://images.gr-assets.com/books/1316730230m/6853.jpg'),
(6493208, 6684634, 66, '1400052173', 'Rebecca Skloot', '2010', 'The Immortal Life of Henrietta Lacks', 'eng', '4.04', 377249, 404440, 28624, 10782, 18237, 70339, 151226, 153856, 'https://images.gr-assets.com/books/1327878144m/6493208.jpg'),
(23807, 22533, 187, '99446782', 'Thomas Harris', '1988', 'The Silence of the Lambs', 'eng', '4.14', 351107, 366112, 3866, 10268, 12845, 55427, 123652, 163920, 'https://images.gr-assets.com/books/1390426249m/23807.jpg'),
(345627, 335933, 132, '159514174X', 'Richelle Mead', '2007', '', 'en-US', '4.14', 248283, 455151, 19720, 12535, 22043, 73357, 129382, 217834, 'https://images.gr-assets.com/books/1361098973m/345627.jpg'),
(40102, 1180927, 116, '316010669', 'Malcolm Gladwell', '2005', 'Blink: The Power of Thinking Without Thinking', 'en-US', '3.89', 348196, 360338, 12215, 6804, 20128, 85934, 139947, 107525, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6867, 2307233, 155, '038572179X', 'Ian McEwan', '2001', 'Atonement', 'eng', '3.88', 347006, 365658, 14815, 11473, 25462, 77135, 134788, 116800, 'https://images.gr-assets.com/books/1320449708m/6867.jpg'),
(485894, 2373750, 1316, '553213695', 'Franz Kafka, Stanley Corngold', '1915', 'Die Verwandlung', 'eng', '3.78', 364933, 414533, 10252, 15430, 33226, 98774, 146297, 120806, 'https://images.gr-assets.com/books/1359061917m/485894.jpg'),
(561456, 2936530, 94, '141382899', 'Rick Riordan', '2007', 'The Titan\'s Curse', 'eng', '4.33', 446668, 486262, 15418, 1863, 7934, 65220, 162371, 248874, 'https://images.gr-assets.com/books/1361038385m/561456.jpg'),
(9969571, 14863741, 112, '030788743X', 'Ernest Cline', '2011', '', 'eng', '4.31', 349423, 421819, 52120, 5150, 12928, 48285, 134107, 221349, 'https://images.gr-assets.com/books/1500930947m/9969571.jpg'),
(3153910, 3175590, 90, '1554681723', 'Garth Stein', '2006', 'The Art of Racing in the Rain', 'eng', '4.19', 327409, 354319, 32021, 4808, 13901, 53780, 118166, 163664, 'https://images.gr-assets.com/books/1377206302m/3153910.jpg'),
(21996, 3486041, 70, '739303406', 'Erik Larson, Tony Goldwyn', '2003', 'The Devil in the White City: Murder, Magic, and Madness at the Fair that Changed America', 'eng', '3.98', 309385, 350607, 25846, 6687, 18709, 69012, 135360, 120839, 'https://images.gr-assets.com/books/1312066724m/21996.jpg');
INSERT INTO `books` (`book_id`, `work_id`, `books_count`, `isbn`, `authors`, `original_publication_year`, `original_title`, `language_code`, `average_rating`, `ratings_count`, `work_ratings_count`, `work_text_reviews_count`, `ratings_1`, `ratings_2`, `ratings_3`, `ratings_4`, `ratings_5`, `image_url`) VALUES
(13572249, 18973111, 96, '425263908', 'Sylvia Day', '2012', 'Bared to You', 'eng', '4.19', 222678, 386136, 16748, 9867, 18983, 55554, 104657, 197075, 'https://images.gr-assets.com/books/1477803272m/13572249.jpg'),
(11127, 781271, 270, '66238501', 'C.S. Lewis, Pauline Baynes', '1956', 'The Chronicles of Narnia', 'eng', '4.24', 376385, 401676, 8871, 3772, 12192, 59975, 133056, 192681, 'https://images.gr-assets.com/books/1449868701m/11127.jpg'),
(3609760, 3652511, 20, '316043133', 'Mark Cotta Vaz', '', 'Twilight: The Complete Illustrated Movie Companion', 'en-US', '4.23', 291411, 291899, 532, 6862, 11019, 48008, 67939, 158071, 'https://images.gr-assets.com/books/1352539022m/3609760.jpg'),
(60748, 59104, 74, '1558743669', 'Dave Pelzer', '1995', 'A Child Called \"It\": One Child\'s Courage to Survive', 'eng', '4.08', 311543, 321298, 13729, 7819, 16453, 57341, 98786, 140899, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(7869, 859111, 143, '752864327', 'Robert Ludlum', '1980', 'The Bourne Identity', 'eng', '3.98', 327122, 336212, 3899, 10266, 17695, 65161, 118463, 124627, 'https://images.gr-assets.com/books/1335860740m/7869.jpg'),
(249747, 1334778, 163, '786817879', 'Eoin Colfer', '2001', 'Artemis Fowl', 'eng', '3.82', 386923, 399165, 8384, 14473, 30894, 94950, 129607, 129241, 'https://images.gr-assets.com/books/1327945104m/249747.jpg'),
(6487308, 6678670, 97, '385738935', 'Lauren Kate', '2009', 'Fallen', 'en-US', '3.74', 395296, 408108, 17725, 23594, 41578, 94145, 107149, 141642, 'https://images.gr-assets.com/books/1440619649m/6487308.jpg'),
(4406, 2574991, 81, '142000655', 'John Steinbeck', '1952', 'East of Eden  ', 'eng', '4.35', 320919, 336682, 14454, 4183, 9409, 39153, 96741, 187196, 'https://images.gr-assets.com/books/1441547516m/4406.jpg'),
(5886881, 6873353, 131, '307341569', 'Gillian Flynn', '2009', 'Dark Places', 'eng', '3.92', 333452, 386607, 28784, 5169, 17975, 89242, 165108, 109113, 'https://images.gr-assets.com/books/1354988288m/5886881.jpg'),
(5359, 137715, 134, '385339089', 'John Grisham', '1993', 'The Client', 'eng', '3.97', 320083, 325663, 1917, 2530, 12566, 79176, 129019, 102372, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(228333, 221139, 84, '312291639', 'Emma McLaughlin, Nicola Kraus', '2002', 'The Nanny Diaries', 'eng', '3.40', 323762, 328073, 5121, 17006, 43014, 116021, 95951, 56081, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(24213, 2375385, 845, '451527747', 'Lewis Carroll, John Tenniel, Martin Gardner', '1865', 'Alice\'s Adventures in Wonderland', 'eng', '4.06', 340920, 377190, 7736, 5294, 17482, 76985, 127906, 149523, 'https://images.gr-assets.com/books/1327872220m/24213.jpg'),
(2156, 2534720, 1451, '192802631', 'Jane Austen, James Kinsley, Deidre Shauna Lynch', '1817', 'Persuasion', 'eng', '4.13', 365425, 402359, 13117, 6688, 15653, 71218, 133222, 175578, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(556602, 2523229, 117, '312370830', 'Tatiana de Rosnay', '2007', 'Elle s\'appelait Sarah', 'eng', '4.14', 312444, 347631, 26614, 3865, 12684, 55760, 134748, 140574, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(43615, 46575, 213, '452284694', 'Stephen King', '1982', 'The Gunslinger', 'en-US', '3.99', 332494, 366377, 13014, 9958, 24111, 72736, 112895, 146677, 'https://images.gr-assets.com/books/1375776480m/43615.jpg'),
(9712, 3285349, 347, '140003468X', 'Gabriel García Márquez, Edith Grossman', '1985', 'El amor en los tiempos del cólera', 'eng', '3.89', 283806, 323461, 15246, 11450, 23825, 65668, 110544, 111974, 'https://images.gr-assets.com/books/1327124987m/9712.jpg'),
(439288, 118521, 87, '014131088X', 'Laurie Halse Anderson', '1999', 'Speak', 'eng', '4.00', 360156, 372404, 18379, 7770, 21049, 76503, 125660, 141422, 'https://images.gr-assets.com/books/1310121762m/439288.jpg'),
(17802724, 23986788, 95, '399159347', 'Liane Moriarty', '2013', 'The Husband\'s Secret ', 'eng', '3.92', 232106, 351805, 27610, 4175, 15649, 80869, 155945, 95167, 'https://images.gr-assets.com/books/1460577225m/17802724.jpg'),
(1898, 1816662, 101, '385494785', 'Jon Krakauer', '1997', 'Into Thin Air: A Personal Account of the Mt. Everest Disaster', 'en-US', '4.11', 291258, 301593, 10439, 8041, 10286, 46060, 112601, 124605, 'https://images.gr-assets.com/books/1463384482m/1898.jpg'),
(10592, 1552134, 249, '1416524304', 'Stephen King', '1974', 'Carrie', '', '3.93', 356814, 377650, 8264, 4564, 19479, 96352, 136054, 121201, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(242006, 828773, 79, '031242227X', 'Augusten Burroughs', '2002', 'Running with Scissors', 'en-US', '3.70', 293878, 306388, 11601, 13569, 27249, 78405, 105786, 81379, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(8908, 817, 137, '307346609', 'Max Brooks', '2006', 'World War Z: An Oral History of the Zombie War', 'en-US', '4.01', 312969, 345149, 22412, 7680, 19887, 65570, 121537, 130475, 'https://images.gr-assets.com/books/1386328204m/8908.jpg'),
(17212231, 23841765, 235, '385537859', 'Dan Brown', '2013', 'Inferno', 'eng', '3.80', 287533, 345560, 33700, 7261, 26077, 89237, 128374, 94611, 'https://images.gr-assets.com/books/1397093185m/17212231.jpg'),
(47281, 2677305, 81, '440227534', 'Lois Lowry', '1989', 'Number the Stars', 'eng', '4.11', 333638, 342365, 10304, 3797, 12794, 63919, 123296, 138559, 'https://images.gr-assets.com/books/1370917812m/47281.jpg'),
(13145, 3373984, 122, '446692638', 'James Patterson', '1993', 'Along Came a Spider', 'eng', '4.08', 311499, 318031, 3600, 4281, 10929, 61630, 118236, 122955, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10614, 3230869, 197, '450417395', 'Stephen King', '1987', 'Misery', 'en-GB', '4.11', 334647, 352203, 6416, 4302, 12725, 64835, 128990, 141351, 'https://images.gr-assets.com/books/1270545451m/10614.jpg'),
(66559, 3801, 136, '307341542', 'Gillian Flynn', '2006', 'Sharp Objects', 'en-US', '3.92', 207889, 354838, 28268, 4988, 17566, 81036, 147558, 103690, 'https://images.gr-assets.com/books/1423241485m/66559.jpg'),
(2839, 2237401, 125, '439366771', 'Katherine Paterson', '1977', 'Bridge to Terabithia', 'eng', '3.98', 337644, 353474, 9270, 8287, 20081, 74409, 119504, 131193, 'https://images.gr-assets.com/books/1327880087m/2839.jpg'),
(30183, 30573, 97, '312360266', 'P.C. Cast, Kristin Cast', '2007', 'Marked', 'en-US', '3.79', 360044, 371020, 12870, 21547, 34170, 81486, 97982, 135835, 'https://images.gr-assets.com/books/1317067002m/30183.jpg'),
(36072, 6277, 250, '743269519', 'Stephen R. Covey', '1989', 'The 7 Habits of Highly Effective People', 'en-US', '4.05', 314700, 333884, 6148, 9038, 17041, 61036, 109359, 137410, 'https://images.gr-assets.com/books/1421842784m/36072.jpg'),
(1622, 894834, 1379, '743477545', 'William Shakespeare, Barbara A. Mowat, Paul Werstine, Catherine Belsey', '1595', 'A Midsummer Night\'s Dream', 'eng', '3.94', 334241, 361510, 5724, 5598, 20498, 84388, 130051, 120975, 'https://images.gr-assets.com/books/1327874534m/1622.jpg'),
(4588, 1940137, 104, '618711651', 'Jonathan Safran Foer', '2005', 'Extremely Loud and Incredibly Close', 'en-US', '3.97', 294726, 319116, 21107, 8847, 20556, 61303, 109008, 119402, 'https://images.gr-assets.com/books/1327879967m/4588.jpg'),
(11387515, 16319487, 124, '375869026', 'R.J. Palacio', '2012', 'Wonder', 'eng', '4.43', 228538, 377791, 43021, 4504, 7833, 34567, 105977, 224910, 'https://images.gr-assets.com/books/1309285027m/11387515.jpg'),
(233093, 267087, 99, '039480001X', 'Dr. Seuss', '1957', 'The Cat in the Hat', 'eng', '4.15', 314016, 317182, 4299, 6179, 14497, 57850, 85944, 152712, 'https://images.gr-assets.com/books/1468890477m/233093.jpg'),
(11235712, 15545385, 92, '312641893', 'Marissa Meyer', '2012', 'Cinder', 'eng', '4.15', 427663, 454146, 41109, 12154, 18256, 66180, 150914, 206642, 'https://images.gr-assets.com/books/1470056948m/11235712.jpg'),
(16160797, 22002305, 48, '316206849', 'Robert Galbraith, J.K. Rowling', '2013', 'The Cuckoo\'s Calling', 'en-US', '3.83', 297712, 340495, 27258, 9729, 20151, 79290, 138955, 92370, 'https://images.gr-assets.com/books/1358716559m/16160797.jpg'),
(6068551, 6244926, 96, '545123267', 'Maggie Stiefvater', '2009', 'Shiver', 'eng', '3.78', 356625, 370811, 20521, 17815, 35108, 86129, 105099, 126660, 'https://images.gr-assets.com/books/1409283154m/6068551.jpg'),
(662, 817219, 147, '452011876', 'Ayn Rand, Leonard Peikoff', '1957', 'Atlas Shrugged', 'eng', '3.68', 283295, 296645, 14666, 30901, 27442, 53762, 78744, 105796, 'https://images.gr-assets.com/books/1405868167m/662.jpg'),
(49436, 251800, 67, '143038257', 'Greg Mortenson, David Oliver Relin', '2006', 'Three Cups of Tea ', 'en-US', '3.64', 283516, 288520, 21681, 14371, 27844, 77127, 97820, 71358, 'https://images.gr-assets.com/books/1395407074m/49436.jpg'),
(13023, 2933712, 4, '517223627', 'Jane Carruth, Lewis Carroll, Rene Cloke', '1865', '', 'eng', '4.03', 343252, 343271, 4876, 7467, 18101, 70170, 109730, 137803, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1232, 3209783, 279, '143034901', 'Carlos Ruiz Zafón, Lucia Graves', '2001', 'La sombra del viento', 'eng', '4.24', 263685, 317554, 24652, 4789, 11769, 42214, 101612, 157170, 'https://images.gr-assets.com/books/1344545047m/1232.jpg'),
(7631105, 6574198, 107, '385738757', 'James Dashner', '2010', 'The Scorch Trials', 'eng', '3.93', 305643, 346307, 23058, 5525, 21370, 79458, 124458, 115496, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(4865, 2370171, 353, '', 'Dale Carnegie', '1936', 'How to Win Friends and Influence People', 'eng', '4.13', 282623, 305437, 7909, 6734, 13880, 50529, 94743, 139551, 'https://images.gr-assets.com/books/1442726934m/4865.jpg'),
(480479, 940760, 59, '767900383', 'Frances Mayes', '1996', 'Under the Tuscan Sun', 'eng', '3.72', 279264, 281836, 3074, 12008, 22882, 74910, 93439, 78597, 'https://images.gr-assets.com/books/1320524083m/480479.jpg'),
(19486412, 27570886, 107, '399167064', 'Liane Moriarty', '2014', 'Big Little Lies', 'eng', '4.20', 306186, 371433, 30120, 3775, 7865, 49115, 159494, 151184, 'https://images.gr-assets.com/books/1492239430m/19486412.jpg'),
(24337, 2485462, 61, '590920685', 'Gail Carson Levine', '1997', 'Ella Enchanted', 'eng', '3.97', 339117, 345749, 8534, 6619, 20066, 80272, 110568, 128224, 'https://images.gr-assets.com/books/1410727190m/24337.jpg'),
(3876, 589497, 343, '743297334', 'Ernest Hemingway', '1926', 'The Sun Also Rises', 'en-US', '3.83', 284988, 303117, 9826, 9602, 23682, 70004, 105785, 94044, 'https://images.gr-assets.com/books/1331828228m/3876.jpg'),
(14891, 833257, 127, '61120073', 'Betty  Smith', '1943', 'A Tree Grows In Brooklyn ', 'eng', '4.24', 291909, 309000, 16088, 3693, 9667, 43734, 103879, 148027, 'https://images.gr-assets.com/books/1327883484m/14891.jpg'),
(13148, 881425, 111, '446677388', 'James Patterson', '1995', 'Kiss the Girls', 'eng', '3.93', 274639, 279116, 2798, 10518, 14558, 58296, 95980, 99764, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(21853621, 41125521, 90, '312577222', 'Kristin Hannah', '2015', 'The Nightingale', 'eng', '4.54', 253606, 327015, 37279, 2829, 4913, 20612, 82844, 215817, 'https://images.gr-assets.com/books/1451446316m/21853621.jpg'),
(6334, 1499998, 159, '1400078776', 'Kazuo Ishiguro', '2005', 'Never Let Me Go', 'eng', '3.80', 294123, 323627, 21927, 9081, 26036, 78203, 118163, 92144, 'https://images.gr-assets.com/books/1353048590m/6334.jpg'),
(366522, 2742631, 17, '786890754', 'Cecelia Ahern', '2003', 'PS, I Love You', 'en-US', '4.01', 262921, 283413, 7069, 7027, 16336, 56951, 90089, 113010, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12873, 46663, 306, '1844080382', 'Daphne du Maurier, Sally Beauman', '1938', 'Rebecca', 'en-US', '4.20', 177384, 329596, 14920, 4565, 10900, 49263, 112768, 152100, 'https://images.gr-assets.com/books/1327871977m/12873.jpg'),
(18373, 3337594, 163, '156030306', 'Daniel Keyes', '1966', 'Flowers for Algernon', 'en-US', '4.07', 313044, 336199, 11328, 4223, 14882, 65106, 122462, 129526, 'https://images.gr-assets.com/books/1367141311m/18373.jpg'),
(6952, 1172473, 177, '552995878', 'Laura Esquivel, Thomas  Christensen, Carol Christensen', '1989', 'Como agua para chocolate', 'en-US', '3.94', 263199, 285469, 6559, 8887, 15941, 60147, 100011, 100483, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1103, 1453585, 105, '812968069', 'Lisa See', '2005', 'Snow Flower and the Secret Fan', 'eng', '4.05', 280475, 290660, 15807, 3268, 11286, 56005, 116178, 103923, 'https://images.gr-assets.com/books/1327880508m/1103.jpg'),
(22034, 266624, 259, '451205766', 'Mario Puzo, Robert Thompson, Peter Bart', '1969', 'The Godfather', 'eng', '4.36', 256480, 270386, 5832, 2930, 5985, 30009, 83730, 147732, 'https://images.gr-assets.com/books/1394988109m/22034.jpg'),
(49750, 48658, 116, '525476881', 'John Green', '2006', 'An Abundance of Katherines', 'eng', '3.63', 312754, 347424, 20657, 14225, 36867, 98115, 111740, 86477, 'https://images.gr-assets.com/books/1360206426m/49750.jpg'),
(29579, 1783981, 169, '553803719', 'Isaac Asimov', '1951', 'Foundation', 'eng', '4.13', 279688, 297588, 6240, 7697, 12471, 47251, 97583, 132586, 'https://images.gr-assets.com/books/1417900846m/29579.jpg'),
(15783514, 21500681, 109, '62255657', 'Neil Gaiman', '2013', 'The Ocean at the End of the Lane', 'eng', '3.99', 293844, 336251, 37655, 7038, 18089, 64714, 127761, 118649, 'https://images.gr-assets.com/books/1497098563m/15783514.jpg'),
(30118, 142009, 32, '60513063', 'Shel Silverstein', '1981', 'A Light in the Attic', 'eng', '4.34', 297861, 304514, 2431, 3585, 7593, 38923, 85051, 169362, 'https://images.gr-assets.com/books/1427169918m/30118.jpg'),
(29056083, 48765776, 95, '751565350', 'John Tiffany, Jack Thorne, J.K. Rowling', '2016', 'Harry Potter and the Cursed Child, Parts One and Two', 'eng', '3.75', 270603, 397773, 53365, 15828, 35842, 96395, 133156, 116552, 'https://images.gr-assets.com/books/1470082995m/29056083.jpg'),
(11614718, 10342808, 108, '61726834', 'Lauren Oliver', '2011', 'Delirium', 'eng', '3.99', 256975, 352398, 24271, 8868, 21223, 68789, 117580, 135938, 'https://images.gr-assets.com/books/1327890411m/11614718.jpg'),
(32499, 490324, 145, '385339704', 'John Grisham', '1992', 'The Pelican Brief', 'eng', '3.95', 288376, 296168, 2006, 2362, 12423, 73587, 116438, 91358, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(17061, 2834844, 153, '61139378', 'Neil Gaiman', '2002', 'Coraline', 'eng', '4.03', 316379, 343630, 13905, 7078, 15010, 67188, 126167, 128187, 'https://images.gr-assets.com/books/1493497435m/17061.jpg'),
(12067, 4110990, 114, '60853980', 'Terry Pratchett, Neil Gaiman', '1990', 'Good Omens: The Nice and Accurate Prophecies of Agnes Nutter, Witch', 'en-US', '4.25', 298304, 326373, 13914, 4991, 10988, 44804, 101159, 164431, 'https://images.gr-assets.com/books/1392528568m/12067.jpg'),
(70401, 1701188, 312, '140042598', 'Jack Kerouac', '1955', 'On the Road', 'eng', '3.64', 246602, 277884, 12011, 13769, 31221, 70104, 88569, 74221, 'https://images.gr-assets.com/books/1413588576m/70401.jpg'),
(16181775, 22084678, 122, '1476729085', 'Graeme Simsion', '2013', 'The Rosie Project', 'eng', '4.01', 251703, 305509, 31155, 4544, 11558, 57792, 133951, 97664, 'https://images.gr-assets.com/books/1371651741m/16181775.jpg'),
(3063499, 3094402, 99, '446579939', 'Nicholas Sparks', '2008', 'The Lucky One', 'en-US', '4.10', 267166, 281323, 9476, 3661, 11792, 54208, 94613, 117049, 'https://images.gr-assets.com/books/1420816338m/3063499.jpg'),
(2122, 3331807, 154, '451191153', 'Ayn Rand, Leonard Peikoff', '1943', 'The Fountainhead', 'eng', '3.85', 244545, 254976, 10198, 18158, 18720, 44131, 76424, 97543, 'https://images.gr-assets.com/books/1491163636m/2122.jpg'),
(19691, 1112006, 117, '425172902', 'Tom Clancy', '1984', 'The Hunt for Red October', '', '4.01', 270318, 278255, 2117, 9470, 13707, 49906, 95296, 109876, 'https://images.gr-assets.com/books/1281995542m/19691.jpg'),
(76620, 1357456, 193, '038039586X', 'Richard Adams', '1972', 'Watership Down', 'eng', '4.05', 292426, 308373, 10399, 9158, 15767, 52906, 102093, 128449, 'https://images.gr-assets.com/books/1405136931m/76620.jpg'),
(10335308, 15237902, 18, '307886263', 'Mindy Kaling', '2011', 'Is Everyone Hanging Out Without Me? (And Other Concerns)', 'eng', '3.84', 290674, 312931, 19397, 6438, 18856, 81229, 117248, 89160, 'https://images.gr-assets.com/books/1443264638m/10335308.jpg'),
(3591262, 3633533, 74, '375414495', 'Abraham Verghese', '2009', 'Cutting for Stone', 'eng', '4.28', 258319, 281079, 23146, 4586, 9249, 32671, 91293, 143280, 'https://images.gr-assets.com/books/1327931601m/3591262.jpg'),
(140225, 3349054, 299, '006112527X', 'C.S. Lewis, Pauline Baynes', '1951', 'The Voyage of the Dawn Treader', 'eng', '4.08', 306492, 325264, 4620, 2658, 12490, 69089, 112121, 128906, 'https://images.gr-assets.com/books/1343185059m/140225.jpg'),
(295, 3077988, 2573, '753453800', 'Robert Louis Stevenson', '1882', 'Treasure Island', 'eng', '3.82', 268012, 310515, 7917, 5349, 19127, 86487, 114968, 84584, 'https://images.gr-assets.com/books/1485248909m/295.jpg'),
(9520360, 14406312, 69, '1423140591', 'Rick Riordan', '2011', 'The Son of Neptune ', 'eng', '4.44', 299980, 316800, 12270, 1773, 4666, 30788, 93611, 185962, 'https://images.gr-assets.com/books/1464201114m/9520360.jpg'),
(10644930, 15553789, 145, '1451627289', 'Stephen King', '2011', '11/22/63', 'eng', '4.29', 258464, 303057, 30656, 2927, 7649, 35500, 109392, 147589, 'https://images.gr-assets.com/books/1327876792m/10644930.jpg'),
(4948, 3144982, 162, '241003008', 'Eric Carle', '1969', 'The Very Hungry Caterpillar', 'eng', '4.29', 296952, 304528, 5760, 5801, 11214, 43549, 73389, 170575, 'https://images.gr-assets.com/books/1327878225m/4948.jpg'),
(135479, 1621115, 155, '140285601', 'Kurt Vonnegut Jr.', '1963', 'Cat\'s Cradle', 'eng', '4.18', 238940, 274153, 8050, 2701, 8491, 43680, 102441, 116840, 'https://images.gr-assets.com/books/1327867150m/135479.jpg'),
(2493, 3234863, 1248, '451528557', 'H.G. Wells, Greg Bear, Carlo Pagetti', '1895', 'The Time Machine', 'eng', '3.87', 276076, 303730, 7353, 3570, 16119, 81773, 118129, 84139, 'https://images.gr-assets.com/books/1327942880m/2493.jpg'),
(7933292, 11283577, 69, '849946158', 'Todd Burpo, Lynn Vincent', '2010', '', 'eng', '4.01', 228371, 243018, 14378, 9291, 15024, 44510, 68399, 105794, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(39999, 1148702, 178, '385751060', 'John Boyne', '2006', 'The Boy in the Striped Pyjamas', 'eng', '4.10', 285692, 325401, 19058, 5297, 13562, 54987, 121193, 130362, 'https://images.gr-assets.com/books/1366228171m/39999.jpg'),
(4900, 2877220, 1369, '1892295490', 'Joseph Conrad', '1899', 'Heart of Darkness', 'eng', '3.42', 255576, 308391, 9791, 25591, 42946, 84433, 88608, 66813, 'https://images.gr-assets.com/books/1392799983m/4900.jpg'),
(7812659, 10829530, 117, '044654759X', 'Nicholas Sparks', '2010', 'Safe Haven', 'eng', '4.19', 255531, 274974, 12769, 3010, 9496, 45461, 91240, 125767, 'https://images.gr-assets.com/books/1344268800m/7812659.jpg'),
(52529, 2001660, 113, '1582701709', 'Rhonda Byrne', '2006', 'The Secret', 'eng', '3.62', 241537, 250945, 9663, 23328, 26321, 55785, 61698, 83813, 'https://images.gr-assets.com/books/1482865039m/52529.jpg'),
(227711, 1191096, 52, '60987561', 'Wally Lamb', '1998', 'I Know This Much Is True ', 'eng', '4.17', 246917, 257608, 7775, 4430, 9972, 39899, 86909, 116398, 'https://images.gr-assets.com/books/1373532198m/227711.jpg'),
(10583, 150017, 198, '1416524347', 'Stephen King', '1983', 'Pet Sematary', 'eng', '3.91', 256383, 293753, 5430, 4584, 17315, 73475, 102744, 95635, 'https://images.gr-assets.com/books/1308894674m/10583.jpg'),
(5203, 1003370, 61, '671021001', 'Wally Lamb', '1992', 'She\'s Come Undone', 'en-US', '3.84', 259576, 268924, 9090, 10224, 20064, 59412, 91423, 87801, 'https://images.gr-assets.com/books/1408313457m/5203.jpg'),
(1215032, 2502882, 102, '756404738', 'Patrick Rothfuss', '2011', 'The Wise Man\'s Fear', 'eng', '4.57', 245686, 282349, 15503, 1486, 4018, 17932, 66415, 192498, 'https://images.gr-assets.com/books/1452624392m/1215032.jpg'),
(33724, 2888997, 94, '440241901', 'Sophie Kinsella', '2003', 'Can You Keep a Secret?', 'en-US', '3.83', 278747, 293801, 9510, 8003, 19319, 76244, 101810, 88425, 'https://images.gr-assets.com/books/1330464293m/33724.jpg'),
(6752378, 6948844, 96, '1442403543', 'Cassandra Clare', '2011', 'City of Fallen Angels', 'en-US', '4.16', 341826, 373167, 18870, 4306, 16000, 64499, 120426, 167936, 'https://images.gr-assets.com/books/1369452302m/6752378.jpg'),
(14748, 2796838, 71, '743418174', 'Jennifer Weiner', '2001', 'Good in Bed', 'en-US', '3.70', 248804, 252305, 5500, 12137, 20336, 66587, 84488, 68757, 'https://images.gr-assets.com/books/1327936464m/14748.jpg'),
(3412, 816449, 201, '380018179', 'Colleen McCullough', '1977', 'The Thorn Birds', 'eng', '4.22', 255651, 266826, 4556, 2889, 9117, 42299, 85531, 126990, 'https://images.gr-assets.com/books/1391416796m/3412.jpg'),
(2213661, 2219449, 129, '60530928', 'Neil Gaiman, Dave McKean', '2008', 'The Graveyard Book', 'en-US', '4.12', 302303, 325451, 23840, 5515, 12566, 53668, 120830, 132872, 'https://images.gr-assets.com/books/1303859949m/2213661.jpg'),
(13158800, 18337340, 113, '1451681739', 'M.L. Stedman', '2012', 'The Light Between Oceans', 'eng', '4.00', 243526, 288434, 29932, 3432, 11985, 56557, 124430, 92030, 'https://images.gr-assets.com/books/1336683021m/13158800.jpg'),
(28194, 2628323, 134, '439709105', 'Cornelia Funke, Anthea Bell', '2003', 'Tintenherz', 'en-US', '3.86', 285011, 301414, 10384, 8524, 22966, 71494, 98625, 99805, 'https://images.gr-assets.com/books/1328866790m/28194.jpg'),
(4894, 3332594, 128, '91883768', 'Spencer Johnson, Kenneth H. Blanchard', '1998', 'Who Moved My Cheese?', 'eng', '3.74', 237272, 253134, 7877, 12161, 23384, 61934, 77196, 78459, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(9791, 613469, 95, '307279464', 'Bill Bryson', '1997', 'A Walk in the Woods', 'eng', '4.05', 250192, 264449, 14422, 3553, 10293, 50487, 104690, 95426, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(13214, 1413589, 107, '553279378', 'Maya Angelou', '1969', 'I Know Why the Caged Bird Sings', 'en-US', '4.19', 270859, 284448, 6666, 4969, 9937, 42472, 95531, 131539, 'https://images.gr-assets.com/books/1327957927m/13214.jpg'),
(15818107, 21545713, 65, '61950726', 'Christina Baker Kline', '2013', 'Orphan Train', 'eng', '4.14', 226091, 263968, 24700, 1703, 6769, 42434, 116003, 97059, 'https://images.gr-assets.com/books/1362409483m/15818107.jpg'),
(8755776, 13629058, 101, '1442416866', 'Cassandra Clare', '2012', 'City of Lost Souls', 'eng', '4.30', 300553, 327869, 16639, 3341, 10329, 43333, 97947, 172919, 'https://images.gr-assets.com/books/1460477703m/8755776.jpg'),
(13526165, 17626728, 78, '316204277', 'Maria Semple', '2012', 'Where\'d You Go, Bernadette', 'eng', '3.90', 215453, 268153, 28973, 4080, 13047, 59489, 119361, 72176, 'https://images.gr-assets.com/books/1338822317m/13526165.jpg'),
(10365, 115, 69, '375806814', 'Wilson Rawls', '1961', 'Where the Red Fern Grows', '', '4.04', 268548, 280179, 8725, 6585, 15232, 53560, 89699, 115103, 'https://images.gr-assets.com/books/1166154337m/10365.jpg'),
(14497, 16534, 152, '60557818', 'Neil Gaiman', '1996', 'Neverwhere', 'eng', '4.18', 268318, 301740, 15680, 3126, 9628, 46996, 113506, 128484, 'https://images.gr-assets.com/books/1348747943m/14497.jpg'),
(9717, 4489585, 274, '571224385', 'Milan Kundera, Michael Henry Heim', '1984', 'Nesnesitelná lehkost bytí', 'eng', '4.08', 205279, 247980, 10682, 4894, 12964, 42199, 84519, 103404, 'https://images.gr-assets.com/books/1265401884m/9717.jpg'),
(16068905, 21861351, 80, '', 'Rainbow Rowell', '2013', '', 'eng', '4.12', 340379, 371730, 39353, 8626, 16973, 60097, 121431, 164603, 'https://images.gr-assets.com/books/1499565420m/16068905.jpg'),
(4473, 1734019, 138, '552135399', 'John Irving', '1989', 'A Prayer for Owen Meany', 'eng', '4.22', 226964, 246452, 11197, 4679, 9761, 33669, 76223, 122120, 'https://images.gr-assets.com/books/1260470010m/4473.jpg'),
(32234, 1223333, 96, '316182540', 'Janet Fitch', '1999', 'White Oleander', 'eng', '3.93', 245674, 254276, 5960, 3765, 13598, 60133, 94893, 81887, 'https://images.gr-assets.com/books/1501159524m/32234.jpg'),
(9275658, 14157512, 91, '039925675X', 'Marie Lu', '2011', 'Legend', 'eng', '4.19', 299998, 318472, 23487, 5069, 11608, 48677, 106122, 146996, 'https://images.gr-assets.com/books/1501368160m/9275658.jpg'),
(14866, 3375915, 84, '743496728', 'Jodi Picoult', '2007', 'Nineteen Minutes', 'eng', '4.10', 235978, 251693, 14004, 2852, 9629, 46237, 94104, 98871, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(2318271, 3364076, 111, '1401323251', 'Randy Pausch, Jeffrey Zaslow', '2008', 'The Last Lecture', 'eng', '4.25', 241869, 248143, 14988, 3004, 8851, 35547, 76621, 124120, 'https://images.gr-assets.com/books/1388075896m/2318271.jpg'),
(228665, 2008238, 94, '812511816', 'Robert Jordan', '1990', 'The Eye of the World', 'eng', '4.18', 260184, 272983, 8212, 6163, 11298, 38946, 88024, 128552, 'https://images.gr-assets.com/books/1337818095m/228665.jpg'),
(10916, 3349846, 76, '61150142', 'Jodi Picoult', '1998', 'The Pact', 'en-US', '4.00', 221225, 235359, 9257, 3586, 11789, 50494, 85430, 84060, 'https://images.gr-assets.com/books/1410754561m/10916.jpg'),
(65605, 1031537, 312, '60764902', 'C.S. Lewis', '1953', 'The magician\'s nephew', 'eng', '4.01', 268355, 303570, 8690, 3168, 14602, 69051, 105375, 111374, 'https://images.gr-assets.com/books/1308814770m/65605.jpg'),
(2153405, 2158906, 107, '595440096', 'Lisa Genova', '2007', 'Still Alice', 'eng', '4.30', 223432, 245071, 24112, 1178, 4249, 28642, 96615, 114387, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(13596809, 19186128, 81, '425263916', 'Sylvia Day', '2012', 'Reflected in You', 'eng', '4.33', 252564, 267608, 9817, 2923, 8651, 33911, 74587, 147536, 'https://images.gr-assets.com/books/1477802540m/13596809.jpg'),
(6689, 2379261, 182, '375814248', 'Roald Dahl, Quentin Blake', '1961', 'James and the Giant Peach', 'eng', '3.99', 270402, 289737, 5120, 4235, 13199, 65762, 104078, 102463, 'https://images.gr-assets.com/books/1320412586m/6689.jpg'),
(13137, 1711194, 107, '446696617', 'James Patterson', '2001', '1st To Die', 'en-US', '4.05', 233984, 242428, 5039, 4464, 10087, 48616, 83796, 95465, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(13, 135328, 32, '345453743', 'Douglas Adams', '1996', 'The Ultimate Hitchhiker\'s Guide: Five Complete Novels and One Story', 'eng', '4.37', 222842, 238420, 4254, 2657, 6328, 26431, 66655, 136349, 'https://images.gr-assets.com/books/1404613595m/13.jpg'),
(6280118, 6463667, 129, '340896965', 'David Nicholls', '2009', 'One Day', 'eng', '3.77', 222926, 247052, 15937, 8632, 21291, 59874, 86793, 70462, 'https://images.gr-assets.com/books/1327873020m/6280118.jpg'),
(32929, 1086867, 98, '60775858', 'Margaret Wise Brown, Clement Hurd', '1947', '', 'en-US', '4.27', 244842, 252678, 4604, 4998, 10298, 37146, 59629, 140607, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(7747374, 10576999, 38, '61969559', 'Pittacus Lore', '2010', 'I Am Number Four', 'en-US', '3.94', 253437, 270195, 14101, 6538, 17766, 58268, 90409, 97214, 'https://images.gr-assets.com/books/1305807140m/7747374.jpg'),
(1371, 3293141, 1726, '140275363', 'Homer, Robert Fagles, Frédéric Mugler, Bernard Knox', '-750', 'Ἰλιάς', 'eng', '3.83', 241088, 273565, 4763, 7701, 20845, 68844, 89384, 86791, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(13497818, 19926990, 139, '316228532', 'J.K. Rowling', '2012', 'The Casual Vacancy', 'eng', '3.28', 231835, 254461, 28751, 24583, 38326, 74611, 75741, 41200, 'https://images.gr-assets.com/books/1358266832m/13497818.jpg'),
(24192, 1022176, 120, '385339690', 'John Grisham', '1996', 'The Runaway Jury', 'eng', '3.96', 222712, 226861, 1700, 1613, 8950, 56426, 90284, 69588, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(4138, 2086690, 54, '316777730', 'David Sedaris', '1997', 'Naked', 'en-US', '4.08', 201337, 204766, 5096, 2631, 7051, 37023, 81934, 76127, 'https://images.gr-assets.com/books/1394178867m/4138.jpg'),
(45978, 2035753, 163, '375840400', 'Christopher Paolini', '2005', 'Eldest', 'en-US', '3.96', 250000, 274059, 8284, 5483, 16680, 58948, 95907, 97041, 'https://images.gr-assets.com/books/1387119654m/45978.jpg'),
(236093, 1993810, 1474, '140621679', 'L. Frank Baum, W.W. Denslow', '1900', 'The Wonderful Wizard of Oz', 'eng', '3.98', 247521, 279400, 8866, 4197, 13653, 65910, 95948, 99692, 'https://images.gr-assets.com/books/1398003737m/236093.jpg'),
(121749, 3348636, 348, '000720230X', 'C.S. Lewis', '1951', 'Prince Caspian: The Return to Narnia', 'eng', '3.96', 250221, 273069, 4737, 2399, 12145, 68026, 101461, 89038, 'https://images.gr-assets.com/books/1308814880m/121749.jpg'),
(16143347, 21975829, 77, '', 'E. Lockhart', '2014', 'We Were Liars', 'eng', '3.85', 273442, 298780, 36910, 9074, 22616, 68468, 102385, 96237, 'https://images.gr-assets.com/books/1402749479m/16143347.jpg'),
(11590, 3048937, 211, '450031063', 'Stephen King', '1975', 'Salem\'s Lot', 'en-GB', '3.99', 228680, 246360, 6167, 2713, 11724, 57171, 89196, 85556, 'https://images.gr-assets.com/books/1327891565m/11590.jpg'),
(7745, 1309111, 98, '679785892', 'Hunter S. Thompson, Ralph Steadman', '1971', 'Fear and Loathing in Las Vegas: A Savage Journey to the Heart of the American Dream', 'eng', '4.08', 232489, 242140, 5021, 4730, 11381, 42362, 84094, 99573, 'https://images.gr-assets.com/books/1394204569m/7745.jpg'),
(10025305, 6674845, 99, '1416975888', 'Cassandra Clare', '2011', 'Clockwork Prince', 'eng', '4.46', 307994, 328019, 17854, 3420, 6235, 29508, 85633, 203223, 'https://images.gr-assets.com/books/1460477747m/10025305.jpg'),
(20910157, 40098620, 29, '62268341', 'Amy Poehler', '2014', 'Yes Please', 'eng', '3.81', 251082, 274223, 20301, 8886, 19000, 69227, 96483, 80627, 'https://images.gr-assets.com/books/1402815435m/20910157.jpg'),
(12996, 995103, 1053, '743477553', 'William Shakespeare', '1603', 'The Tragedy of Othello, The Moor of Venice', 'eng', '3.88', 238875, 256757, 4334, 4281, 16576, 64922, 92076, 78902, 'https://images.gr-assets.com/books/1459795105m/12996.jpg'),
(6149, 736076, 153, '1400033411', 'Toni Morrison', '1987', 'Beloved', 'eng', '3.77', 233825, 245098, 7749, 12441, 21409, 53863, 79915, 77470, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(3236307, 3270810, 87, '015206396X', 'Kristin Cashore', '2008', 'Graceling', 'en-CA', '4.10', 281185, 296630, 19081, 6773, 13946, 48894, 99939, 127078, 'https://images.gr-assets.com/books/1331548394m/3236307.jpg'),
(78411, 1069597, 126, '439206472', 'Lemony Snicket, Brett Helquist', '1999', 'The Bad Beginning', 'eng', '3.89', 275670, 295024, 12794, 6701, 18612, 70767, 102585, 96359, 'https://images.gr-assets.com/books/1490085391m/78411.jpg'),
(355697, 2662852, 372, '449213943', 'Erich Maria Remarque, A.W. Wheen', '1929', 'Im Westen nichts Neues', 'en-US', '3.92', 249113, 265789, 6947, 7646, 17740, 55908, 90874, 93621, 'https://images.gr-assets.com/books/1441227765m/355697.jpg'),
(191139, 2125304, 40, '679805273', 'Dr. Seuss', '1990', 'Oh, the Places You\'ll Go!', 'en-US', '4.34', 257260, 260002, 4021, 3615, 8150, 33869, 63795, 150573, 'https://images.gr-assets.com/books/1421708635m/191139.jpg'),
(16115612, 21933087, 135, '159463176X', 'Khaled Hosseini', '2012', 'And The Mountains Echoed', 'eng', '4.03', 199326, 229116, 24084, 2049, 9146, 45985, 93953, 77983, 'https://images.gr-assets.com/books/1358190204m/16115612.jpg'),
(7082, 830939, 221, '345404475', 'Philip K. Dick, Roger Zelazny', '1968', 'Do Androids Dream of Electric Sheep?', 'eng', '4.08', 223828, 245008, 8330, 2097, 8453, 45683, 100794, 87981, 'https://images.gr-assets.com/books/1435458683m/7082.jpg'),
(18254, 3057979, 1787, '141439742', 'Charles Dickens, George Cruikshank, Philip Horne', '1838', 'Oliver Twist', 'eng', '3.85', 230181, 253163, 5342, 4766, 15425, 65342, 96135, 71495, 'https://images.gr-assets.com/books/1327868529m/18254.jpg'),
(11149, 2920952, 231, '60652896', 'C.S. Lewis', '1942', 'A Grief Observed', 'eng', '4.21', 116277, 238169, 8285, 4524, 8925, 34444, 75279, 114997, 'https://images.gr-assets.com/books/1347801873m/11149.jpg'),
(6936382, 7168450, 79, '525423273', 'Stephanie Perkins', '2010', 'Anna and the French Kiss', 'en-US', '4.08', 259479, 285344, 26153, 10602, 14781, 46011, 84323, 129627, 'https://images.gr-assets.com/books/1358271931m/6936382.jpg'),
(113946, 267076, 72, '7173040', 'Dr. Seuss', '1957', 'How the Grinch Stole Christmas!', 'eng', '4.36', 250602, 256127, 2204, 3438, 7227, 32673, 63395, 149394, 'https://images.gr-assets.com/books/1327958149m/113946.jpg'),
(5805, 392838, 72, '1401207928', 'Alan Moore, David   Lloyd', '1990', 'V for Vendetta', 'eng', '4.25', 210682, 220640, 4138, 3564, 6593, 29496, 73094, 107893, 'https://images.gr-assets.com/books/1343668985m/5805.jpg'),
(2203, 963375, 38, '743223136', 'David McCullough', '2001', 'John Adams', 'eng', '4.05', 215780, 220127, 5334, 11255, 10372, 30772, 70601, 97127, 'https://images.gr-assets.com/books/1478144278m/2203.jpg'),
(14995, 4574034, 82, '553384287', 'Dean Koontz', '2003', 'Odd Thomas', 'eng', '3.94', 205986, 213895, 6357, 10963, 12869, 39433, 65984, 84646, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(119324, 1570229, 55, '679879250', 'Philip Pullman', '1997', 'The Subtle Knife', 'eng', '4.10', 242503, 270785, 6139, 3905, 11486, 47802, 96998, 110594, 'https://images.gr-assets.com/books/1451271814m/119324.jpg'),
(22232, 963221, 85, '439488400', 'Jerry Spinelli', '2000', 'Stargirl', 'eng', '3.74', 237560, 245315, 11717, 9710, 22399, 62918, 76059, 74229, 'https://images.gr-assets.com/books/1335947642m/22232.jpg'),
(7090447, 7346572, 76, '1423113381', 'Rick Riordan', '2010', 'The Red Pyramid', 'eng', '4.06', 232791, 242889, 10914, 4565, 12571, 46486, 78216, 101051, 'https://images.gr-assets.com/books/1366227978m/7090447.jpg'),
(350, 908211, 130, '441788386', 'Robert A. Heinlein', '1961', 'Stranger in a Strange Land', 'eng', '3.91', 220301, 229222, 6293, 10416, 16204, 45343, 69937, 87322, 'https://images.gr-assets.com/books/1156897088m/350.jpg'),
(10176, 2582035, 55, '965904830', 'David Sedaris', '2004', 'Dress Your Family in Corduroy and Denim', 'eng', '4.08', 191923, 204247, 5776, 2483, 6620, 37230, 82749, 75165, 'https://images.gr-assets.com/books/1352983006m/10176.jpg'),
(6319, 1249788, 197, '141311371', 'Roald Dahl, Quentin Blake', '1982', 'The BFG', 'eng', '4.22', 245855, 264369, 7906, 2987, 7906, 42480, 86105, 124891, 'https://images.gr-assets.com/books/1327872673m/6319.jpg'),
(21, 2305997, 155, '076790818X', 'Bill Bryson', '2003', 'A Short History of Nearly Everything', 'en-US', '4.19', 191535, 206367, 9065, 3514, 7196, 29992, 71534, 94131, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1852, 3252320, 1384, '439227143', 'Jack London', '1903', 'The Call of the Wild', 'eng', '3.83', 223932, 248795, 6770, 6366, 16636, 62853, 90382, 72558, 'https://images.gr-assets.com/books/1452291694m/1852.jpg'),
(7864437, 11022464, 88, '385738773', 'James Dashner', '2011', 'The Death Cure', 'eng', '3.77', 223674, 257184, 19975, 6731, 23270, 68067, 84128, 74988, 'https://images.gr-assets.com/books/1303997647m/7864437.jpg'),
(16793, 3166179, 207, '61142026', 'Neil Gaiman', '1999', 'Stardust', 'eng', '4.07', 237602, 277184, 13731, 2959, 10183, 52599, 109208, 102235, 'https://images.gr-assets.com/books/1459127484m/16793.jpg'),
(33917, 16171, 93, '618485228', 'Jhumpa Lahiri', '2003', 'The Namesake', 'en-US', '3.96', 184211, 192903, 9824, 1926, 8889, 42552, 81043, 58493, 'https://images.gr-assets.com/books/1480106986m/33917.jpg'),
(8667848, 13190160, 99, '670022411', 'Deborah Harkness', '2011', 'A Discovery of Witches', 'eng', '3.99', 226622, 249735, 25179, 9304, 16503, 43523, 79322, 101083, 'https://images.gr-assets.com/books/1322168805m/8667848.jpg'),
(11297, 2956680, 232, '375704027', 'Haruki Murakami, Jay Rubin', '1987', 'ノルウェイの森 [Noruwei no Mori]', 'eng', '4.02', 183988, 217817, 12522, 2927, 10416, 41293, 87041, 76140, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(5168, 1649, 54, '446672211', 'Billie Letts', '1995', 'Where the Heart Is', 'en-US', '4.00', 208333, 210368, 3147, 2053, 8967, 48023, 79147, 72178, 'https://images.gr-assets.com/books/1327959469m/5168.jpg'),
(6567017, 6759965, 86, '525421580', 'John Green, David Levithan', '2010', 'Will Grayson, Will Grayson', 'eng', '3.84', 236431, 254305, 15782, 8039, 18868, 60009, 87132, 80257, 'https://images.gr-assets.com/books/1368393890m/6567017.jpg'),
(1241, 3140930, 69, '307276902', 'James Frey', '2003', 'A Million Little Pieces', 'en-CA', '3.62', 184241, 189931, 10857, 9619, 18950, 51504, 63727, 46131, 'https://images.gr-assets.com/books/1483206985m/1241.jpg'),
(2282133, 6651004, 93, '1595141758', 'Richelle Mead', '2008', 'Frostbite', 'eng', '4.30', 256745, 270065, 10056, 2851, 7224, 36392, 84199, 139399, 'https://images.gr-assets.com/books/1361098960m/2282133.jpg'),
(8520610, 13387396, 86, '307352145', 'Susan Cain', '2012', 'Quiet: The Power of Introverts in a World that Can\'t Stop Talking', 'eng', '4.04', 202135, 221729, 17573, 5116, 10093, 39869, 82757, 83894, 'https://images.gr-assets.com/books/1328562861m/8520610.jpg'),
(233818, 3215136, 127, '440439884', 'Scott O\'Dell', '1960', 'Island of the Blue Dolphins', 'en-CA', '3.80', 236015, 245968, 6699, 8175, 19308, 61975, 80520, 75990, 'https://images.gr-assets.com/books/1475166260m/233818.jpg'),
(17250, 1426723, 133, '142437336', 'Arthur Miller, Christopher Bigsby', '1953', 'The Crucible', 'eng', '3.55', 242980, 253242, 5390, 9010, 29173, 80661, 83304, 51094, 'https://images.gr-assets.com/books/1447764813m/17250.jpg'),
(50, 1158125, 93, '689840926', 'Gary Paulsen', '1986', 'Hatchet', 'en-US', '3.68', 222553, 231963, 10378, 12070, 22390, 59179, 73180, 65144, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(68428, 66322, 75, '076531178X', 'Brandon Sanderson', '2006', 'Mistborn : The Final Empire', 'eng', '4.43', 208944, 238993, 16276, 1783, 4008, 20554, 76611, 136037, 'https://images.gr-assets.com/books/1480717416m/68428.jpg'),
(51496, 3164921, 1974, '451528956', 'Robert Louis Stevenson, Vladimir Nabokov, Mervyn Peake, Dan Chaon', '1886', 'The Strange Case of Dr Jekyll and Mr Hyde', 'eng', '3.79', 223535, 259652, 7958, 2939, 16110, 76470, 100514, 63619, 'https://images.gr-assets.com/books/1318116526m/51496.jpg'),
(7784, 886002, 40, '679889108', 'Dr. Seuss', '1971', 'The Lorax', 'eng', '4.35', 226564, 230363, 3231, 3193, 6884, 29815, 57259, 133212, 'https://images.gr-assets.com/books/1327879938m/7784.jpg'),
(389627, 2617009, 115, '810993139', 'Jeff Kinney', '2004', 'Greg Heffley\'s Journal', 'en-US', '3.96', 254852, 263269, 13337, 10196, 18564, 53471, 69722, 111316, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(7896527, 11138426, 73, '1599906953', 'Sarah J. Maas', '2012', 'Throne of Glass', 'eng', '4.24', 274987, 327865, 29145, 8471, 12115, 41710, 96202, 169367, 'https://images.gr-assets.com/books/1495278054m/7896527.jpg'),
(2802316, 6651006, 88, '1595141979', 'Richelle Mead', '2008', 'Shadow Kiss', 'en-US', '4.37', 266742, 278963, 10074, 2876, 6532, 32789, 78293, 158473, 'https://images.gr-assets.com/books/1361099049m/2802316.jpg'),
(46170, 2252079, 371, '684803356', 'Ernest Hemingway', '1940', 'For Whom the Bell Tolls', 'eng', '3.95', 195063, 206219, 4658, 4578, 11772, 43122, 75680, 71067, 'https://images.gr-assets.com/books/1492591524m/46170.jpg'),
(3367956, 3407295, 69, '345505336', 'Jamie Ford', '2009', 'Hotel on the Corner of Bitter and Sweet', 'eng', '3.98', 197294, 211336, 18120, 2345, 9368, 44408, 88468, 66747, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(343, 2977727, 364, '140120831', 'Patrick Süskind, John E. Woods', '1985', 'Das Parfum. Die Geschichte eines Mörders', 'eng', '4.00', 178135, 222754, 10057, 5659, 12862, 41804, 78658, 83771, 'https://images.gr-assets.com/books/1409112276m/343.jpg'),
(1097, 2207547, 61, '60838582', 'Eric Schlosser', '2001', 'Fast Food Nation : The Dark Side of the All-American Meal ', 'eng', '3.73', 179347, 183361, 5063, 7881, 12314, 47602, 69009, 46555, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(3950967, 3007490, 131, '747599874', 'J.K. Rowling', '2007', 'The Tales of Beedle the Bard', 'en-US', '4.06', 284833, 319107, 11330, 3019, 15025, 69367, 103350, 128346, 'https://images.gr-assets.com/books/1373467575m/3950967.jpg'),
(22328, 909457, 143, '441569595', 'William Gibson', '1984', 'Neuromancer', 'eng', '3.88', 183878, 202417, 6623, 9313, 14728, 40328, 65376, 72672, 'https://images.gr-assets.com/books/1167348726m/22328.jpg'),
(10799, 4652599, 425, '99910101', 'Ernest Hemingway', '1929', 'A Farewell to Arms', 'en-US', '3.79', 186613, 207523, 7249, 6224, 16181, 50604, 77096, 57418, 'https://images.gr-assets.com/books/1313714836m/10799.jpg'),
(391729, 1383053, 12, '553212281', 'Edgar Allan Poe', '1843', 'The Tell-Tale Heart', 'en-GB', '4.15', 195689, 197636, 1050, 2456, 6438, 33803, 70786, 84153, 'https://images.gr-assets.com/books/1327936583m/391729.jpg'),
(10534, 3200649, 1865, '1590302257', 'Sun Tzu, Thomas Cleary', '-500', '孫子兵法 [Sūnzi bīngfǎ]', 'eng', '3.95', 167332, 203948, 6335, 2930, 11589, 48265, 70644, 70520, 'https://images.gr-assets.com/books/1453417993m/10534.jpg'),
(11367726, 16298550, 76, '385344228', 'William Landay', '2012', 'Defending Jacob', 'eng', '3.97', 182025, 202066, 17681, 2777, 8608, 42024, 87107, 61550, 'https://images.gr-assets.com/books/1329612158m/11367726.jpg'),
(4980, 2859378, 112, '385334206', 'Kurt Vonnegut Jr.', '1973', 'Breakfast of Champions', 'eng', '4.08', 178154, 187177, 5265, 2137, 7189, 34421, 72558, 70872, 'https://images.gr-assets.com/books/1327934446m/4980.jpg'),
(627206, 1763052, 64, '874774241', 'Betty Edwards', '1979', 'Drawing on the Right Side of the Brain', 'en-US', '3.84', 218264, 224450, 591, 16846, 16544, 44024, 56358, 90678, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(5826, 859342, 77, '60838728', 'Ann Patchett', '2001', 'Bel Canto', 'eng', '3.92', 192330, 200256, 12134, 4523, 13395, 43193, 71190, 67955, 'https://images.gr-assets.com/books/1352997328m/5826.jpg'),
(1842, 2138852, 118, '739467352', 'Jared Diamond', '1997', 'Guns, Germs, and Steel: The Fates of Human Societies', 'eng', '4.00', 171558, 185443, 7872, 4352, 9752, 35299, 68549, 67491, 'https://images.gr-assets.com/books/1453215833m/1842.jpg'),
(9375, 2129359, 94, '375508414', 'Fannie Flagg', '1987', 'Fried Green Tomatoes at the Whistle Stop Cafe', '', '4.26', 207508, 216286, 4439, 1259, 4353, 31358, 79626, 99690, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(37781, 825843, 161, '385474547', 'Chinua Achebe', '1958', 'Things Fall Apart', 'en-US', '3.61', 199346, 213360, 9884, 9494, 22041, 59144, 74584, 48097, 'https://images.gr-assets.com/books/1352082529m/37781.jpg'),
(33722, 2914, 99, '385338694', 'Sophie Kinsella', '2005', 'The Undomestic Goddess', 'eng', '3.82', 200509, 209361, 6772, 4985, 13344, 56048, 75290, 59694, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(567795, 832090, 147, '1881273156', 'Gary Chapman', '1990', 'The Five Love Languages: How to Express Heartfelt Commitment to Your Mate', 'en-US', '4.23', 165675, 195438, 7647, 2672, 6275, 29306, 63108, 94077, 'https://images.gr-assets.com/books/1369401342m/567795.jpg'),
(7190, 1263212, 1341, '', 'Alexandre Dumas', '1844', 'Les Trois Mousquetaires', '', '4.06', 195274, 221481, 4974, 2176, 8195, 46090, 83254, 81766, 'https://images.gr-assets.com/books/1320436982m/7190.jpg'),
(6948436, 4126074, 82, '1416589643', 'Chris Cleave', '2008', 'The Other Hand', 'en-US', '3.70', 116784, 197953, 19680, 5111, 16849, 54949, 77107, 43937, 'https://images.gr-assets.com/books/1344401905m/6948436.jpg'),
(3975774, 4021549, 78, '031253275X', 'Alyson Noel', '2009', 'Evermore', 'en-US', '3.59', 230031, 235704, 9228, 16941, 29301, 59174, 59075, 71213, 'https://images.gr-assets.com/books/1362336360m/3975774.jpg'),
(6327, 105046, 174, '590032496', 'Roald Dahl, Quentin Blake', '1983', 'The Witches', 'en-US', '4.17', 221431, 234145, 5190, 3156, 7583, 40191, 79598, 103617, 'https://images.gr-assets.com/books/1351707720m/6327.jpg'),
(40440, 849453, 137, '743298020', 'Diane Setterfield', '2006', 'The Thirteenth Tale', 'eng', '3.95', 213200, 228602, 19432, 4510, 12847, 49274, 85569, 76402, 'https://images.gr-assets.com/books/1346267826m/40440.jpg'),
(6479259, 6670482, 71, '1595142509', 'Richelle Mead', '2010', 'Spirit Bound', 'eng', '4.37', 224247, 235076, 8030, 2755, 5907, 26981, 66097, 133336, 'https://images.gr-assets.com/books/1291168967m/6479259.jpg'),
(5996153, 6651007, 76, '1595141987', 'Richelle Mead', '2009', 'Blood Promise', 'en-US', '4.35', 231853, 244376, 8782, 2186, 6182, 30711, 70250, 135047, 'https://images.gr-assets.com/books/1442530605m/5996153.jpg'),
(3478, 1622450, 133, '446676071', 'Nicholas Sparks', '1998', 'Message in a Bottle', 'en-US', '3.95', 185116, 192001, 3721, 4500, 11979, 44190, 59999, 71333, 'https://images.gr-assets.com/books/1163789140m/3478.jpg'),
(8683812, 13556031, 77, '345521307', 'Paula McLain', '2011', 'The Paris Wife', 'eng', '3.79', 191850, 207590, 18836, 3575, 12959, 53900, 89887, 47269, 'https://images.gr-assets.com/books/1320545874m/8683812.jpg'),
(862041, 2962492, 76, '545044251', 'J.K. Rowling', '1998', 'Complete Harry Potter Boxed Set', 'eng', '4.74', 190050, 204125, 6508, 1105, 1285, 7020, 30666, 164049, 'https://images.gr-assets.com/books/1392579059m/862041.jpg'),
(16248068, 20397129, 84, '62059963', 'Kiera Cass', '2013', 'The Elite', 'eng', '4.02', 234247, 269816, 21810, 4780, 15546, 53644, 91201, 104645, 'https://images.gr-assets.com/books/1391454595m/16248068.jpg'),
(119073, 3138328, 428, '156001314', 'Umberto Eco, William Weaver, Seán Barrett', '1980', 'Il nome della rosa', 'en-US', '4.11', 200217, 224974, 6075, 4575, 10031, 36282, 79311, 94775, 'https://images.gr-assets.com/books/1415375471m/119073.jpg'),
(46799, 2115708, 92, '1416914633', 'Beatrice Sparks, Anonymous', '1971', 'Go Ask Alice', 'eng', '3.77', 196677, 205554, 9202, 7940, 18269, 51957, 63188, 64200, 'https://images.gr-assets.com/books/1327870536m/46799.jpg'),
(310612, 968084, 131, '802130208', 'John Kennedy Toole, Walker Percy', '1980', 'A Confederacy of Dunces', 'eng', '3.89', 170776, 185391, 11881, 10993, 15078, 31369, 54306, 73645, 'https://images.gr-assets.com/books/1436747103m/310612.jpg'),
(92303, 649216, 728, '158049580X', 'Oscar Wilde', '1895', 'The Importance of Being Earnest', 'eng', '4.17', 210630, 232256, 6560, 2127, 7457, 38513, 85492, 98667, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12127750, 17115055, 65, '1423140605', 'Rick Riordan', '2012', 'The Mark of Athena', 'eng', '4.47', 277491, 293586, 13332, 2771, 4480, 26318, 77876, 182141, 'https://images.gr-assets.com/books/1464201354m/12127750.jpg'),
(34497, 194190, 153, '60855924', 'Terry Pratchett', '1983', 'The Colour of Magic', 'eng', '3.97', 190590, 225614, 6520, 3601, 11554, 50463, 81295, 78701, 'https://images.gr-assets.com/books/1407111017m/34497.jpg'),
(4929, 6191072, 157, '1400079276', 'Haruki Murakami, Philip Gabriel', '2002', '海辺のカフカ [Umibe no Kafuka]', 'en-US', '4.13', 167593, 195365, 13279, 2593, 7557, 30809, 75564, 78842, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(28877, 925503, 191, '525945563', 'Thomas Harris', '1981', 'Red Dragon', 'eng', '4.01', 194013, 205433, 3309, 3012, 7790, 43235, 80662, 70734, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(41804, 1796026, 218, '553803700', 'Isaac Asimov', '1950', 'I, Robot', 'eng', '4.17', 198368, 210219, 4335, 1221, 5332, 35107, 82535, 86024, 'https://images.gr-assets.com/books/1388321463m/41804.jpg'),
(42899, 2158128, 73, '451216954', 'J.R. Ward', '2005', 'Dark Lover', 'eng', '4.21', 227021, 238633, 10769, 6659, 10012, 33160, 64879, 123923, 'https://images.gr-assets.com/books/1429676285m/42899.jpg'),
(7791997, 6867038, 73, '1416989439', 'Becca Fitzpatrick', '2010', 'Crescendo', 'en-US', '4.07', 226237, 234040, 10041, 5296, 13835, 43129, 68217, 103563, 'https://images.gr-assets.com/books/1362408146m/7791997.jpg'),
(6482837, 6674135, 82, '61726818', 'Lauren Oliver', '2010', 'Before I Fall', 'eng', '3.92', 220160, 232559, 17705, 6283, 15320, 50933, 79050, 80973, 'https://images.gr-assets.com/books/1361044695m/6482837.jpg'),
(9777, 810135, 168, '679457313', 'Arundhati Roy', '1997', 'The God of Small Things', 'eng', '3.91', 165378, 182127, 9294, 5833, 12631, 37349, 61880, 64434, 'https://images.gr-assets.com/books/1436217001m/9777.jpg');
INSERT INTO `books` (`book_id`, `work_id`, `books_count`, `isbn`, `authors`, `original_publication_year`, `original_title`, `language_code`, `average_rating`, `ratings_count`, `work_ratings_count`, `work_text_reviews_count`, `ratings_1`, `ratings_2`, `ratings_3`, `ratings_4`, `ratings_5`, `image_url`) VALUES
(18079776, 25387072, 63, '670024783', 'Sue Monk Kidd', '2014', 'The Invention of Wings', 'en-US', '4.23', 168006, 193774, 19518, 1466, 4021, 25745, 80524, 82018, 'https://images.gr-assets.com/books/1386699861m/18079776.jpg'),
(6469165, 6659752, 68, '141043768', 'Liane Moriarty', '2009', 'What Alice Forgot', 'eng', '4.05', 165704, 205778, 17382, 1599, 6071, 38562, 93941, 65605, 'https://images.gr-assets.com/books/1377159022m/6469165.jpg'),
(3869, 2192250, 246, '553380168', 'Stephen Hawking, Cao Chi, Phạm Văn Thiều', '1987', 'A Brief History of Time: From the Big Bang to Black Holes', 'eng', '4.12', 165628, 181410, 5146, 2487, 6028, 30632, 70364, 71899, 'https://images.gr-assets.com/books/1333578746m/3869.jpg'),
(7315573, 8842841, 140, '525951652', 'Ken Follett', '2010', 'Fall of Giants', 'eng', '4.26', 168911, 190478, 11859, 2009, 5158, 24893, 68375, 90043, 'https://images.gr-assets.com/books/1470384630m/7315573.jpg'),
(6320534, 6760952, 110, '1439148503', 'Stephen King', '2009', 'Under the Dome', 'eng', '3.89', 183292, 201322, 13086, 4863, 12998, 44938, 74323, 64200, 'https://images.gr-assets.com/books/1268982908m/6320534.jpg'),
(830, 493634, 80, '553380958', 'Neal Stephenson', '1992', 'Snow Crash', 'eng', '4.02', 175883, 187292, 7075, 7982, 10158, 29605, 61336, 78211, 'https://images.gr-assets.com/books/1477624625m/830.jpg'),
(51738, 1032901, 61, '670061050', 'Sarah Dessen', '2006', 'Just Listen', 'en-US', '4.06', 202180, 207930, 7319, 3665, 10143, 40684, 68323, 85115, 'https://images.gr-assets.com/books/1358270741m/51738.jpg'),
(99107, 1225592, 244, '525467564', 'A.A. Milne, Ernest H. Shepard', '1926', 'Winnie-the-Pooh', 'eng', '4.34', 207550, 215213, 2978, 2636, 5254, 28148, 60427, 118748, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(9736930, 14625976, 150, '62060554', 'S.J. Watson', '2011', 'Before I Go to Sleep', 'en-CA', '3.87', 180896, 213136, 19206, 3703, 12436, 51695, 84940, 60362, 'https://images.gr-assets.com/books/1358353512m/9736930.jpg'),
(102868, 1997473, 1106, '1420925539', 'Arthur Conan Doyle', '1887', 'A Study in Scarlet', 'eng', '4.15', 201499, 220115, 6954, 2318, 5550, 38107, 85345, 88795, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(2248573, 3124969, 143, '375826726', 'Christopher Paolini', '2008', 'Brisingr', 'eng', '4.03', 211645, 226941, 7993, 4273, 13094, 44147, 75689, 89738, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(56495, 2265235, 149, '310276993', 'Rick Warren', '2002', 'The Purpose Driven Life: What on Earth am I Here For?', 'en-US', '3.90', 170491, 176463, 2755, 9635, 13051, 34305, 48395, 71077, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(676924, 662923, 80, '312360282', 'P.C. Cast, Kristin Cast', '2007', 'Betrayed: a House of Night Novel', 'en-US', '3.93', 205340, 213261, 4993, 6222, 15443, 47467, 62243, 81886, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(47212, 1137060, 75, '451457811', 'Jim Butcher', '2000', 'Storm Front', 'en-US', '4.02', 203053, 219442, 12005, 3325, 9842, 45940, 80371, 79964, 'https://images.gr-assets.com/books/1419456275m/47212.jpg'),
(50398, 4039699, 122, '1593082649', 'Jane Austen, Alfred MacAdam', '1817', 'Northanger Abbey', 'eng', '3.80', 205167, 232299, 8616, 4132, 15938, 65157, 84363, 62709, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(16101128, 19187812, 102, '399162410', 'Rick Yancey', '2013', 'The 5th Wave', 'eng', '4.10', 260048, 287540, 26756, 6176, 13097, 47631, 98816, 121820, 'https://images.gr-assets.com/books/1359853842m/16101128.jpg'),
(10920, 1006369, 97, '802142842', 'Charles Frazier', '1997', 'Cold Mountain', 'en-US', '3.83', 185979, 190137, 4884, 6078, 14021, 43914, 68143, 57981, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(767680, 3132746, 41, '60245867', 'Laura Joffe Numeroff, Felicia Bond', '1985', 'If You Give a Mouse a Cookie', 'en-US', '4.24', 198083, 198778, 3016, 3208, 7772, 32336, 50573, 104889, 'https://images.gr-assets.com/books/1276046901m/767680.jpg'),
(42155, 1470371, 43, '312323867', 'Emily Giffin', '2005', 'Something Blue', 'en-US', '3.92', 172417, 178529, 6646, 2164, 9144, 44161, 68226, 54834, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12220, 142449, 109, '822210894', 'Tennessee Williams', '1947', 'A Streetcar Named Desire', 'eng', '3.97', 194493, 206983, 2841, 3436, 11347, 45238, 74929, 72033, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10692, 3061272, 129, '751537284', 'Elizabeth Kostova', '2005', 'The Historian', 'eng', '3.77', 190473, 207529, 14252, 8554, 18768, 48197, 68781, 63229, 'https://images.gr-assets.com/books/1338298031m/10692.jpg'),
(20170404, 28098716, 63, '385353308', 'Emily St. John Mandel', '2014', 'Station Eleven', 'eng', '4.02', 160466, 189380, 24215, 4039, 8449, 33537, 77755, 65600, 'https://images.gr-assets.com/books/1451446835m/20170404.jpg'),
(18774964, 21619954, 132, '1476738017', 'Fredrik Backman, Henning Koch', '2012', 'En man som heter Ove', 'eng', '4.35', 183777, 243440, 34386, 2589, 5734, 25138, 81377, 128602, 'https://images.gr-assets.com/books/1405259930m/18774964.jpg'),
(18335634, 6309710, 79, '1406321346', 'Cassandra Clare', '2013', 'Clockwork Princess', 'eng', '4.59', 162099, 247984, 23261, 1935, 3804, 16964, 49313, 175968, 'https://images.gr-assets.com/books/1436788488m/18335634.jpg'),
(1078, 2346070, 210, '1416500189', 'Pearl S. Buck', '1931', 'The Good Earth', 'eng', '3.97', 182220, 193405, 8259, 5262, 11487, 38413, 67056, 71187, 'https://images.gr-assets.com/books/1312497600m/1078.jpg'),
(2784, 2507145, 34, '140135154', 'John Berger', '1972', 'Ways of Seeing', 'eng', '3.75', 155658, 156859, 790, 13276, 13342, 32193, 39251, 58797, 'https://images.gr-assets.com/books/1464018308m/2784.jpg'),
(5364, 2866304, 141, '385335970', 'Diana Gabaldon', '1992', 'Dragonfly in Amber', 'eng', '4.31', 178110, 210989, 12025, 1200, 4958, 27491, 70976, 106364, 'https://images.gr-assets.com/books/1456114344m/5364.jpg'),
(1923820, 6405906, 1449, '', 'Anonymous', '1611', '', 'eng', '4.43', 159457, 171594, 4438, 10011, 6802, 11712, 14338, 128731, 'https://images.gr-assets.com/books/1313518530m/1923820.jpg'),
(14758, 964332, 53, '743495667', 'Jennifer Weiner', '2002', 'In Her Shoes', '', '3.78', 167400, 174338, 2513, 3345, 11596, 50482, 64358, 44557, 'https://images.gr-assets.com/books/1435252471m/14758.jpg'),
(659469, 16998382, 44, '345368584', 'Chuck Dixon, J.R.R. Tolkien, David Wenzel, Sean Deming', '1989', 'The Hobbit', 'eng', '4.48', 155338, 159435, 957, 991, 2180, 14437, 43107, 98720, 'https://images.gr-assets.com/books/1374681632m/659469.jpg'),
(297673, 3281466, 9, '1594489580', 'Junot Díaz', '2007', 'The Brief Wondrous Life of Oscar Wao', 'eng', '3.89', 160330, 181124, 16640, 5212, 12924, 37298, 67080, 58610, 'https://images.gr-assets.com/books/1391409748m/297673.jpg'),
(37415, 1643555, 80, '61120065', 'Zora Neale Hurston', '1937', 'Their Eyes Were Watching God', 'eng', '3.87', 181106, 198264, 9005, 5743, 14231, 44676, 69779, 63835, 'https://images.gr-assets.com/books/1368072803m/37415.jpg'),
(41899, 4195128, 123, '439321603', 'Newt Scamander, J.K. Rowling, Albus Dumbledore', '2001', 'Fantastic Beasts and Where to Find Them', 'eng', '3.95', 185928, 209465, 6523, 2847, 13155, 52573, 64027, 76863, 'https://images.gr-assets.com/books/1303738520m/41899.jpg'),
(17851885, 24987300, 129, '316322407', 'Malala Yousafzai, Christina Lamb', '2012', 'I Am Malala: The Girl Who Stood Up for Education and Was Shot by the Taliban', 'eng', '4.06', 214412, 227850, 14667, 7433, 9470, 38518, 77944, 94485, 'https://images.gr-assets.com/books/1375414895m/17851885.jpg'),
(45032, 2722329, 1208, '141439807', 'Jane Austen, Kathryn Sutherland, Tony Tanner, Claire Lamont', '1814', 'Mansfield Park', 'eng', '3.84', 205064, 224467, 7046, 4183, 14784, 59163, 82001, 64336, 'https://images.gr-assets.com/books/1397063295m/45032.jpg'),
(4069, 3389674, 187, '080701429X', 'Viktor E. Frankl', '1946', '…trotzdem Ja zum Leben sagen: Ein Psychologe erlebt das Konzentrationslager', 'eng', '4.33', 171281, 193751, 10147, 2161, 4948, 23224, 59644, 103774, 'https://images.gr-assets.com/books/1467136625m/4069.jpg'),
(237209, 3088141, 78, '670038601', 'Tana French', '2007', 'In the Woods', 'eng', '3.74', 188024, 201721, 15392, 6553, 15636, 51430, 77182, 50920, 'https://images.gr-assets.com/books/1348442606m/237209.jpg'),
(14743, 3044365, 104, '618680004', 'Richard Dawkins', '2006', 'The God Delusion', 'eng', '3.89', 162740, 176774, 6812, 9571, 11019, 31723, 60769, 63692, 'https://images.gr-assets.com/books/1347220693m/14743.jpg'),
(8492825, 10706553, 8, '525422943', 'Gayle Forman', '2011', 'Where She Went', 'en-US', '4.06', 193141, 218362, 18556, 2856, 10629, 43007, 76839, 85031, 'https://images.gr-assets.com/books/1347810457m/8492825.jpg'),
(7069, 1028204, 165, '345915593', 'John Irving', '1978', 'The World According to Garp', 'eng', '4.07', 167106, 179078, 4569, 3098, 7716, 31528, 67942, 68794, 'https://images.gr-assets.com/books/1447234581m/7069.jpg'),
(78129, 4511038, 127, '515141429', 'Lee Child', '1997', 'Killing Floor', 'eng', '4.04', 162972, 182703, 8032, 2652, 7160, 35471, 71953, 65467, 'https://images.gr-assets.com/books/1399313258m/78129.jpg'),
(2932, 604666, 558, '375757325', 'Daniel Defoe, Gerald McCann, Virginia Woolf', '1719', 'The Life and Strange Surprising Adventures of Robinson Crusoe of York, Mariner', 'eng', '3.66', 178188, 196865, 4603, 6429, 18126, 58497, 67140, 46673, 'https://images.gr-assets.com/books/1403180114m/2932.jpg'),
(28862, 1335445, 1654, '937832383', 'Niccolò Machiavelli, Adolph Caso, Rufus Goodwin, Benjamin Martinez', '1513', 'Il Principe', 'eng', '3.78', 153128, 181980, 5389, 4222, 14222, 49930, 63294, 50312, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(18122, 1774510, 42, '440238153', 'Philip Pullman', '2000', 'The Amber Spyglass', 'eng', '4.06', 192315, 217610, 6693, 4739, 11883, 39131, 70648, 91209, 'https://images.gr-assets.com/books/1329189152m/18122.jpg'),
(43889, 1323305, 90, '765346524', 'Terry Goodkind', '1994', 'Wizard\'s First Rule', 'eng', '4.13', 175771, 188159, 5485, 6176, 9386, 27430, 55921, 89246, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6837103, 7048306, 46, '1439153663', 'Kathleen Grissom', '2010', 'The Kitchen House', 'en-CA', '4.18', 168082, 179277, 15812, 1830, 5689, 26149, 71058, 74551, 'https://images.gr-assets.com/books/1463229128m/6837103.jpg'),
(5113, 3118417, 125, '316769029', 'J.D. Salinger', '1961', 'Franny and Zooey', 'en-US', '3.98', 152906, 162697, 5297, 2841, 9398, 34950, 56515, 58993, 'https://images.gr-assets.com/books/1355037988m/5113.jpg'),
(29059, 3185242, 84, '385720920', 'Chuck Palahniuk', '2001', 'Choke', 'eng', '3.69', 154643, 162963, 5328, 4541, 13841, 46314, 60868, 37399, 'https://images.gr-assets.com/books/1403186013m/29059.jpg'),
(4934, 3393910, 1072, '374528373', 'Fyodor Dostoyevsky, Richard Pevear, Larissa Volokhonsky', '1880', 'Братья Карамазовы', 'eng', '4.30', 155838, 178135, 7640, 2339, 5887, 22752, 51450, 95707, 'https://images.gr-assets.com/books/1427728126m/4934.jpg'),
(307791, 2285229, 69, '375822747', 'Jeanne DuPrau', '2003', 'The City of Ember', 'eng', '3.85', 198809, 204085, 9322, 3684, 13227, 53014, 74561, 59599, 'https://images.gr-assets.com/books/1397931596m/307791.jpg'),
(7670, 997271, 122, '60541814', 'Michael Crichton', '1969', 'The Andromeda Strain', '', '3.87', 173186, 178917, 2555, 1599, 9379, 48894, 69876, 49169, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(11566, 15599, 162, '451933028', 'Stephen King', '1996', 'The Green Mile', 'eng', '4.42', 173950, 191109, 4873, 725, 3044, 19770, 59813, 107757, 'https://images.gr-assets.com/books/1373903563m/11566.jpg'),
(2547, 2938937, 721, '000100039X', 'Kahlil Gibran', '1923', 'The Prophet', 'eng', '4.22', 142641, 164552, 6263, 2748, 6601, 24667, 47472, 83064, 'https://images.gr-assets.com/books/1355046521m/2547.jpg'),
(15196, 1947012, 37, '394541553', 'Art Spiegelman', '1985', 'Maus: A Survivor\'s Tale : My Father Bleeds History', 'eng', '4.35', 184007, 191615, 4837, 2822, 4801, 21104, 56900, 105988, 'https://images.gr-assets.com/books/1327884972m/15196.jpg'),
(2866718, 2892871, 67, '312379838', 'P.C. Cast, Kristin Cast', '2008', 'Untamed: A House of Night Novel', 'en-US', '3.95', 191743, 198350, 3356, 5701, 13859, 43080, 56984, 78726, 'https://images.gr-assets.com/books/1438037020m/2866718.jpg'),
(7967, 2327777, 99, '812550757', 'Orson Scott Card', '1986', 'Speaker for the Dead', 'en-US', '4.04', 164287, 182764, 6579, 1855, 8031, 36323, 70924, 65631, 'https://images.gr-assets.com/books/1295660894m/7967.jpg'),
(11138, 801500, 152, '684823780', 'C.S. Lewis', '1952', 'Mere Christianity', 'eng', '4.31', 184759, 198433, 6041, 4215, 6220, 23223, 54958, 109817, 'https://images.gr-assets.com/books/1468102872m/11138.jpg'),
(29044, 221359, 141, '1400031702', 'Donna Tartt', '1992', 'The Secret History', 'eng', '4.07', 168405, 189596, 13324, 3685, 9750, 32410, 66858, 76893, 'https://images.gr-assets.com/books/1451554846m/29044.jpg'),
(4953, 42857, 65, '375725784', 'Dave Eggers', '2000', 'A Heartbreaking Work of Staggering Genius', 'eng', '3.68', 145459, 149779, 8673, 7877, 15434, 35148, 50148, 41172, 'https://images.gr-assets.com/books/1327714834m/4953.jpg'),
(1295, 1584694, 161, '553381679', 'Jean M. Auel', '1980', 'The Clan of the Cave Bear', 'eng', '4.02', 176062, 187874, 5137, 3977, 10151, 37279, 63914, 72553, 'https://images.gr-assets.com/books/1385331302m/1295.jpg'),
(3685, 4639714, 1033, '439228905', 'Anna Sewell', '1877', 'Black Beauty', 'eng', '3.94', 183255, 195205, 3377, 3633, 11665, 47165, 62472, 70270, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(656, 4912783, 1017, '192833987', 'Leo Tolstoy, Henry Gifford, Aylmer Maude, Louise Maude', '1869', 'Война и миръ', 'eng', '4.11', 168037, 192992, 8062, 4952, 9691, 31876, 60043, 86430, 'https://images.gr-assets.com/books/1413215930m/656.jpg'),
(28676, 2270060, 144, '679735771', 'Bret Easton Ellis', '1991', 'American Psycho', 'eng', '3.81', 166083, 177109, 7669, 8639, 13632, 36830, 61550, 56458, 'https://images.gr-assets.com/books/1436934349m/28676.jpg'),
(38980, 2073907, 125, '613371658', 'Meg Cabot', '2000', 'The Princess Diaries', 'eng', '3.76', 193140, 200671, 4289, 5442, 16659, 57732, 61651, 59187, 'https://images.gr-assets.com/books/1355011082m/38980.jpg'),
(7061, 826298, 108, '1400034779', 'Alexander McCall Smith', '1998', 'The No. 1 Ladies\' Detective Agency ', 'eng', '3.75', 180320, 189258, 9369, 6389, 14860, 49558, 66723, 51728, 'https://images.gr-assets.com/books/1459953654m/7061.jpg'),
(138398, 30474, 36, '1582406723', 'Robert Kirkman, Tony Moore', '2004', 'The Walking Dead, Vol. 1: Days Gone Bye', 'en-GB', '4.30', 164530, 167805, 3397, 3685, 5008, 20273, 47455, 91384, 'https://images.gr-assets.com/books/1389233242m/138398.jpg'),
(70535, 208362, 221, '451457994', 'Arthur C. Clarke', '1968', '2001: A Space Odyssey', 'eng', '4.12', 170841, 180661, 3722, 2050, 6387, 32236, 67831, 72157, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(11422, 820210, 63, '1590525132', 'Francine Rivers', '1991', '', 'eng', '4.48', 157506, 163637, 9147, 2949, 4277, 13328, 33009, 110074, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(27523, 972769, 63, '842342702', 'Tim LaHaye, Jerry B. Jenkins', '1995', 'Left Behind:  A Novel of the Earth\'s Last Days', 'eng', '3.81', 161173, 165021, 3210, 12626, 13163, 31144, 43391, 64697, 'https://images.gr-assets.com/books/1406505054m/27523.jpg'),
(18635016, 21587145, 94, '62059998', 'Kiera Cass', '2014', 'The One', 'eng', '4.21', 139544, 237039, 21608, 3322, 9750, 35942, 72422, 115603, 'https://images.gr-assets.com/books/1395612906m/18635016.jpg'),
(7938275, 11349083, 78, '545265355', 'Suzanne Collins', '2010', 'The Hunger Games Box Set', 'eng', '4.49', 129665, 159760, 6429, 1015, 2521, 13438, 42932, 99854, 'https://images.gr-assets.com/books/1360094673m/7938275.jpg'),
(1869, 1840613, 57, '805063897', 'Barbara Ehrenreich', '2001', 'Nickel and Dimed: On (Not) Getting By in America', 'eng', '3.60', 152786, 157470, 5723, 10628, 14572, 40395, 53783, 38092, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1358844, 2855627, 90, '593053893', 'Sophie Kinsella', '2008', 'Remember Me?', 'eng', '3.76', 170096, 182581, 6838, 3877, 12970, 52917, 65379, 47438, 'https://images.gr-assets.com/books/1276963901m/1358844.jpg'),
(233649, 1574475, 71, '812517725', 'Robert Jordan', '1990', 'The Great Hunt', 'en-US', '4.20', 162595, 172500, 3061, 1824, 5059, 25119, 64494, 76004, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6534, 1045067, 129, '743477154', 'Patricia Cornwell', '1990', 'Post-Mortem:  A Mystery Introducing Dr. Kay Scarpetta', 'eng', '4.01', 167379, 173045, 2261, 2760, 6662, 37396, 66098, 60129, 'https://images.gr-assets.com/books/1341835831m/6534.jpg'),
(23919, 30431, 34, '385074077', 'Edgar Allan Poe', '1849', 'The Complete Tales of Edgar Allan Poe', 'en-US', '4.37', 160063, 160326, 1055, 1247, 2923, 19028, 49902, 87226, 'https://images.gr-assets.com/books/1327942676m/23919.jpg'),
(561909, 878114, 83, '553256696', 'Corrie ten Boom, John Sherrill, Elizabeth Sherrill', '1971', 'The Hiding Place', 'en-US', '4.42', 171384, 178722, 7801, 2958, 3872, 17731, 44665, 109496, 'https://images.gr-assets.com/books/1320418824m/561909.jpg'),
(3590, 1222101, 1235, '192835084', 'Arthur Conan Doyle', '1892', 'The Adventures of Sherlock Holmes', 'eng', '4.29', 139816, 184991, 4922, 864, 3047, 24897, 68111, 88072, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(16735, 1312477, 80, '553381547', 'Pat Conroy', '1986', 'The Prince of Tides', 'eng', '4.22', 159596, 165367, 3454, 2169, 5408, 24359, 55122, 78309, 'https://images.gr-assets.com/books/1320541074m/16735.jpg'),
(3985, 2693329, 80, '312282990', 'Michael Chabon', '2000', 'The Amazing Adventures of Kavalier & Clay', 'eng', '4.17', 147717, 156603, 9326, 2958, 7191, 22236, 52498, 71720, 'https://images.gr-assets.com/books/1479660066m/3985.jpg'),
(4268157, 4315675, 52, '802798233', 'Simone Elkeles', '2008', 'Perfect Chemistry', 'eng', '4.07', 198627, 205008, 9882, 6422, 11998, 35815, 57351, 93422, 'https://images.gr-assets.com/books/1439792475m/4268157.jpg'),
(34268, 1358908, 1416, '805072454', 'J.M. Barrie, Michael Hague', '1904', 'Peter Pan', 'en-US', '4.10', 169306, 196359, 7464, 2488, 8076, 38675, 65507, 81613, 'https://images.gr-assets.com/books/1337714526m/34268.jpg'),
(24768, 1568076, 78, '689865392', 'Scott Westerfeld', '2005', 'Pretties', 'eng', '3.85', 193405, 203755, 9390, 3808, 13664, 52192, 72804, 61287, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(11275, 2531376, 125, '965341984', 'Haruki Murakami, Jay Rubin', '1994', 'ねじまき鳥クロニクル [Nejimakidori kuronikuru]', 'eng', '4.17', 133408, 159705, 10724, 2022, 6154, 23828, 57956, 69745, 'https://images.gr-assets.com/books/1327872639m/11275.jpg'),
(79885, 1427801, 123, '739465511', 'Michael Connelly', '2005', 'The Lincoln Lawyer ', 'eng', '4.14', 149438, 160724, 4757, 1136, 3767, 27768, 67204, 60849, 'https://images.gr-assets.com/books/1370140049m/79885.jpg'),
(49628, 1871423, 113, '375507256', 'David Mitchell', '2004', 'Cloud Atlas', 'eng', '4.01', 152441, 172239, 17001, 5442, 10645, 28665, 58983, 68504, 'https://images.gr-assets.com/books/1406383769m/49628.jpg'),
(133518, 1235619, 56, '767902890', 'Tim O\'Brien', '1990', 'The Things They Carried', 'en-US', '4.12', 168678, 181159, 10666, 2623, 7845, 30102, 65204, 75385, 'https://images.gr-assets.com/books/1424663847m/133518.jpg'),
(114683, 110426, 15, '1844137872', 'Banksy', '1988', 'Wall and Piece', 'eng', '3.83', 149453, 150117, 687, 11641, 11724, 27885, 38313, 60554, 'https://images.gr-assets.com/books/1327904853m/114683.jpg'),
(9593911, 14480923, 76, '006197806X', 'Lauren Oliver', '2012', 'Pandemonium', 'eng', '4.07', 181656, 191644, 13876, 3024, 8570, 35845, 69351, 74854, 'https://images.gr-assets.com/books/1310371414m/9593911.jpg'),
(17231, 2113743, 95, '307277887', 'Jeff Lindsay', '2004', 'Darkly Dreaming Dexter', 'eng', '3.89', 150055, 157862, 5656, 4689, 10180, 35941, 53459, 53593, 'https://images.gr-assets.com/books/1334404607m/17231.jpg'),
(110494, 738775, 97, '1841493007', 'Charlaine Harris', '2002', 'Living Dead in Dallas', 'eng', '3.97', 190565, 209338, 6388, 1576, 8771, 50217, 81598, 67176, 'https://images.gr-assets.com/books/1329501808m/110494.jpg'),
(34897, 791061, 62, '765305119', 'Robert Jordan', '1991', 'The Dragon Reborn ', 'eng', '4.23', 153809, 164783, 2471, 1667, 4474, 23895, 59113, 75634, 'https://images.gr-assets.com/books/1480096580m/34897.jpg'),
(7733, 2394716, 1762, '141439491', 'Jonathan Swift, Robert DeMaria Jr.', '1726', 'Gulliver’s Travels', 'eng', '3.55', 168727, 188299, 3927, 5995, 19839, 63680, 61509, 37276, 'https://images.gr-assets.com/books/1427829692m/7733.jpg'),
(12957, 2080738, 805, '743482751', 'William Shakespeare, Barbara A. Mowat, Paul Werstine, Gail Kern Paster, Robert          Jackson', '1598', 'Much Ado About Nothing', 'eng', '4.06', 175616, 185702, 2686, 2305, 7837, 37688, 66480, 71392, 'https://images.gr-assets.com/books/1327885569m/12957.jpg'),
(52357, 189503, 601, '393320979', 'Unknown, Seamus Heaney', '975', 'Beowulf', 'en-US', '3.42', 155903, 184187, 5098, 12256, 25619, 56758, 51660, 37894, 'https://images.gr-assets.com/books/1327878125m/52357.jpg'),
(59980, 2501570, 74, '1401207529', 'Frank Miller, David Mazzucchelli, Richmond Lewis, Dennis O\'Neil', '1987', 'Batman: Year One', 'eng', '4.23', 145267, 148446, 1954, 3392, 4611, 19732, 47742, 72969, 'https://images.gr-assets.com/books/1327940389m/59980.jpg'),
(24817626, 44458285, 102, '62409859', 'Harper Lee', '2015', 'Go Set a Watchman', 'eng', '3.31', 138669, 164828, 24535, 8284, 26200, 58810, 48468, 23066, 'https://images.gr-assets.com/books/1451442088m/24817626.jpg'),
(1044355, 3255908, 47, '316143472', 'David Sedaris', '2008', 'When You Are Engulfed in Flames', 'en-US', '4.04', 150898, 156976, 9013, 1847, 5695, 30933, 63930, 54571, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(8490112, 13355552, 89, '316134023', 'Laini Taylor', '2011', 'Daughter of Smoke & Bone', 'eng', '4.04', 198283, 228815, 23582, 7073, 12325, 38879, 76179, 94359, 'https://images.gr-assets.com/books/1461353773m/8490112.jpg'),
(17878931, 25037051, 84, '1409151174', 'Victoria Aveyard', '2015', 'Red Queen', 'eng', '4.08', 83354, 289740, 30249, 7454, 14867, 48254, 95303, 123862, 'https://images.gr-assets.com/books/1411472322m/17878931.jpg'),
(12609433, 17624817, 92, '1400069289', 'Charles Duhigg', '2011', 'The Power of Habit', 'eng', '4.03', 155977, 170269, 9515, 3239, 6918, 33079, 66044, 60989, 'https://images.gr-assets.com/books/1366758683m/12609433.jpg'),
(386187, 300461, 76, '679751521', 'John Berendt', '1994', 'Midnight in the Garden of Good and Evil', 'eng', '3.90', 167997, 175681, 6635, 2332, 9145, 42827, 70546, 50831, 'https://images.gr-assets.com/books/1427166915m/386187.jpg'),
(15717943, 21389085, 53, '1301949825', 'Colleen Hoover', '2012', 'Hopeless', 'eng', '4.34', 189938, 207777, 18984, 3520, 6597, 23251, 56888, 117521, 'https://images.gr-assets.com/books/1353489892m/15717943.jpg'),
(3008, 1313599, 11, '142437018', 'Frances Hodgson Burnett, Nancy Bond', '1905', 'A Little Princess', 'eng', '4.20', 199872, 215833, 5128, 2653, 6227, 35428, 73488, 98037, 'https://images.gr-assets.com/books/1327868556m/3008.jpg'),
(51737, 1032900, 45, '142406252', 'Sarah Dessen', '2004', 'The Truth About Forever', 'en-US', '4.13', 179415, 183697, 7421, 2686, 7512, 33156, 59958, 80385, 'https://images.gr-assets.com/books/1362767907m/51737.jpg'),
(84119, 3294501, 280, '439861365', 'C.S. Lewis', '1954', 'The horse and his boy', 'eng', '3.90', 189671, 209180, 4913, 2752, 13751, 54684, 68114, 69879, 'https://images.gr-assets.com/books/1388210968m/84119.jpg'),
(6527740, 13385418, 63, '1595143068', 'Richelle Mead', '2010', 'Last Sacrifice ', 'eng', '4.42', 206792, 217652, 10312, 2797, 5330, 21948, 54440, 133137, 'https://images.gr-assets.com/books/1319850978m/6527740.jpg'),
(77767, 2884161, 146, '64400026', 'Laura Ingalls Wilder, Garth Williams', '1935', 'Little House on the Prairie', 'eng', '4.18', 195424, 200869, 3220, 3278, 7217, 33528, 61997, 94849, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(144974, 1602074, 383, '380002558', 'Margery Williams Bianco, William   Nicholson', '1922', 'The Velveteen Rabbit', 'eng', '4.29', 173469, 186686, 2714, 2438, 5354, 26752, 52991, 99151, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(629, 175720, 181, '60589469', 'Robert M. Pirsig', '1974', 'Zen and the Art of Motorcycle Maintenance', 'eng', '3.76', 139411, 153992, 6535, 6589, 14196, 36227, 49874, 47106, 'https://images.gr-assets.com/books/1410136019m/629.jpg'),
(8909, 3194841, 1167, '375759239', 'H.G. Wells, Arthur C. Clarke', '1897', 'The War of the Worlds', 'eng', '3.80', 159752, 181437, 4930, 2843, 11418, 51466, 69720, 45990, 'https://images.gr-assets.com/books/1320391644m/8909.jpg'),
(162085, 2191061, 75, '60887303', 'Sara Shepard', '2006', 'Pretty Little Liars', 'en-US', '3.90', 156328, 165836, 8160, 5743, 12397, 37519, 47724, 62453, 'https://images.gr-assets.com/books/1377830522m/162085.jpg'),
(231850, 261903, 58, '670241334', 'Don Freeman', '1948', 'Corduroy', 'en-US', '4.28', 160860, 162337, 1902, 1966, 5326, 25357, 42664, 87024, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(3109, 3287769, 54, '1594200823', 'Michael Pollan', '2006', 'The Omnivore\'s Dilemma', 'eng', '4.17', 133271, 147664, 11843, 1566, 4451, 22055, 58252, 61340, 'https://images.gr-assets.com/books/1393804353m/3109.jpg'),
(15790842, 21443207, 95, '316176486', 'Kate Atkinson', '2013', 'Life After Life', 'eng', '3.74', 138454, 158661, 20822, 6855, 13811, 36514, 57917, 43564, 'https://images.gr-assets.com/books/1358173808m/15790842.jpg'),
(3462, 1268663, 93, '446696129', 'Nicholas Sparks', '2000', 'The Rescue', 'en-US', '4.10', 142092, 148370, 3261, 1692, 5815, 30135, 49684, 61044, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(107291, 1812101, 135, '045057458X', 'Stephen King', '1991', 'Needful Things', '', '3.87', 153821, 161758, 2448, 2175, 10254, 42898, 57042, 49389, 'https://images.gr-assets.com/books/1315767817m/107291.jpg'),
(10987, 1131570, 105, '385335997', 'Diana Gabaldon', '1993', 'Voyager', 'eng', '4.38', 157395, 184208, 8381, 827, 3030, 21397, 59170, 99784, 'https://images.gr-assets.com/books/1483278195m/10987.jpg'),
(117251, 112914, 3, '393315053', 'Kenneth Branagh, William Shakespeare', '1996', '', 'eng', '4.12', 156869, 156873, 194, 1788, 6304, 30594, 50942, 67245, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10603, 996156, 143, '307348245', 'Stephen King', '1981', 'Cujo', 'spa', '3.65', 158215, 167044, 2832, 4096, 16130, 54393, 52708, 39717, 'https://images.gr-assets.com/books/1394208144m/10603.jpg'),
(10956, 812415, 102, '747560595', 'Jeffrey Eugenides', '1993', 'The Virgin Suicides', 'eng', '3.83', 159249, 179190, 7547, 3780, 12486, 44781, 67480, 50663, 'https://images.gr-assets.com/books/1319032910m/10956.jpg'),
(140077, 1808005, 88, '441012183', 'Charlaine Harris', '2004', 'Dead to the World', 'eng', '4.13', 199572, 210205, 5327, 1638, 5933, 39853, 78663, 84118, 'https://images.gr-assets.com/books/1468561630m/140077.jpg'),
(32261, 3331021, 918, '141439599', 'Thomas Hardy, Tim Dolin, Margaret R. Higonnet', '1891', 'Tess of the d\'Urbervilles: A Pure Woman Faithfully Presented', 'eng', '3.77', 171599, 190665, 6737, 8364, 16185, 44317, 64689, 57110, 'https://images.gr-assets.com/books/1497218117m/32261.jpg'),
(2175, 2766347, 1682, '192840398', 'Gustave Flaubert, Margaret Mauldon, Malcolm Bowie, Mark Overstall', '1856', 'Madame Bovary', 'eng', '3.64', 158877, 186553, 7617, 7682, 18771, 51707, 62328, 46065, 'https://images.gr-assets.com/books/1335676143m/2175.jpg'),
(378, 1782584, 82, '394820371', 'Norton Juster, Jules Feiffer', '1961', 'The Phantom Tollbooth', 'en-US', '4.22', 178432, 185392, 8011, 2848, 6922, 27918, 56237, 91467, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(7235533, 8134945, 48, '765326353', 'Brandon Sanderson', '2010', 'The Way of Kings', 'eng', '4.64', 144822, 164477, 10947, 1085, 1827, 7661, 33962, 119942, 'https://images.gr-assets.com/books/1388184640m/7235533.jpg'),
(140082, 602144, 90, '1841493015', 'Charlaine Harris', '2003', 'Club Dead', 'en-GB', '4.03', 181323, 197558, 5029, 1179, 6594, 44594, 78129, 67062, 'https://images.gr-assets.com/books/1329501590m/140082.jpg'),
(248704, 240980, 32, '078685197X', 'Ned Vizzini', '2006', 'It\'s Kind of a Funny Story', 'en-US', '4.14', 161001, 165713, 8461, 2018, 6246, 28680, 58548, 70221, 'https://images.gr-assets.com/books/1420629730m/248704.jpg'),
(68429, 2120474, 60, '765316889', 'Brandon Sanderson', '2007', '', 'eng', '4.35', 150736, 171402, 8541, 534, 2630, 18661, 63880, 85697, 'https://images.gr-assets.com/books/1480717596m/68429.jpg'),
(25041504, 44693518, 94, '', 'Jojo Moyes', '2015', 'After You', 'eng', '3.70', 99342, 175532, 16879, 2923, 12992, 53847, 69425, 36345, 'https://images.gr-assets.com/books/1429029729m/25041504.jpg'),
(10032672, 14928278, 90, '034552554X', 'Vanessa Diffenbaugh', '2011', 'The Language of Flowers', 'eng', '4.07', 140076, 159668, 17457, 1464, 5500, 28409, 69343, 54952, 'https://images.gr-assets.com/books/1333577674m/10032672.jpg'),
(59960, 1104159, 71, '156389341X', 'Frank Miller, Klaus Janson, Lynn Varley', '1986', 'Batman: The Dark Knight Returns', 'eng', '4.25', 135979, 144349, 2838, 3353, 5104, 18631, 42654, 74607, 'https://images.gr-assets.com/books/1327892039m/59960.jpg'),
(13152, 1829521, 96, '446617792', 'James Patterson', '2005', 'The Angel Experiment', 'eng', '4.08', 172302, 183035, 8606, 4747, 9858, 32564, 54067, 81799, 'https://images.gr-assets.com/books/1339277875m/13152.jpg'),
(285092, 2961887, 136, '1573225517', 'Nick Hornby', '1995', 'High Fidelity', 'eng', '3.94', 134849, 150929, 4792, 1587, 6973, 34435, 63435, 44499, 'https://images.gr-assets.com/books/1327928082m/285092.jpg'),
(15925, 810630, 88, '446696110', 'Nicholas Sparks', '2003', 'The Guardian', 'en-US', '4.14', 136427, 142884, 4333, 1867, 5499, 26372, 45789, 63357, 'https://images.gr-assets.com/books/1388195339m/15925.jpg'),
(46756, 3143431, 109, '385721676', 'Margaret Atwood', '2003', 'Oryx and Crake', 'eng', '4.00', 151500, 167177, 10391, 3548, 8557, 31794, 64097, 59181, 'https://images.gr-assets.com/books/1494109986m/46756.jpg'),
(1274, 55001, 202, '60574216', 'John Gray', '1998', 'Men Are from Mars, Women Are from Venus Book of Days: 365 Inspirations to Enrich Your Relationships', 'en-US', '3.52', 113915, 129520, 4191, 8235, 15283, 38147, 36751, 31104, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(33313, 4219, 78, '60899220', 'Anthony Bourdain', '2000', 'Kitchen Confidential: Adventures in the Culinary Underbelly', 'eng', '4.00', 134177, 145933, 7582, 1668, 5600, 30364, 61600, 46701, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(7669, 1525987, 124, '99244721', 'Michael Crichton', '1999', 'Timeline', 'en-US', '3.83', 148563, 158413, 3628, 2738, 11205, 41822, 57567, 45081, 'https://images.gr-assets.com/books/1405420745m/7669.jpg'),
(19380, 2833018, 1039, '486266893', 'Voltaire', '1759', 'Candide', 'eng', '3.76', 151471, 171617, 5504, 4906, 14285, 45693, 59709, 47024, 'https://images.gr-assets.com/books/1345060082m/19380.jpg'),
(84981, 1955922, 127, '374480095', 'Natalie Babbitt', '1975', 'Tuck Everlasting', 'eng', '3.85', 174280, 184056, 7187, 3823, 12462, 46988, 64213, 56570, 'https://images.gr-assets.com/books/1445184695m/84981.jpg'),
(10629, 1150571, 156, '2253147699', 'Stephen King, Marie Milpois', '1983', 'Christine', 'fre', '3.72', 151160, 157664, 2092, 3156, 14024, 48479, 49499, 42506, 'https://images.gr-assets.com/books/1327270815m/10629.jpg'),
(197084, 1837885, 44, '1713221', 'P.D. Eastman', '1960', 'Are You My Mother?', 'eng', '4.16', 174204, 177809, 1864, 3986, 8065, 31523, 45916, 88319, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(222078, 215065, 102, '071483355X', 'E.H. Gombrich', '1950', 'The Story of Art', 'en-US', '3.83', 164708, 166453, 470, 12639, 13426, 32492, 39357, 68539, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(13206760, 18390691, 64, '312642962', 'Marissa Meyer', '2013', 'Scarlet', 'eng', '4.30', 193766, 213010, 23054, 1250, 3669, 25696, 81461, 100934, 'https://images.gr-assets.com/books/1470056982m/13206760.jpg'),
(69571, 3366043, 185, '751532711', 'Robert T. Kiyosaki', '1997', 'Rich Dad , Poor Dad', 'eng', '3.95', 153764, 173904, 6790, 5093, 11346, 35831, 57062, 64572, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10637766, 14158688, 65, '1442426640', 'Becca Fitzpatrick', '2011', 'Silence ', 'eng', '4.16', 190722, 197338, 7290, 4217, 9307, 32161, 55811, 95842, 'https://images.gr-assets.com/books/1362408152m/10637766.jpg'),
(6101718, 6278977, 67, '670020559', 'Lev Grossman', '2009', 'The Magicians', 'eng', '3.47', 147908, 165609, 18232, 10045, 21851, 47087, 52810, 33816, 'https://images.gr-assets.com/books/1313772941m/6101718.jpg'),
(13615, 1782155, 44, '1421501686', 'Tsugumi Ohba, Takeshi Obata', '2004', 'デスノート #1 (Desu Nōto) Taikutsu (退屈)', 'eng', '4.42', 139501, 141095, 2470, 2040, 3448, 14453, 34728, 86426, 'https://images.gr-assets.com/books/1419952134m/13615.jpg'),
(3682, 2113193, 65, '689875347', 'Libba Bray', '2003', 'A Great and Terrible Beauty', 'eng', '3.79', 173613, 182107, 8902, 6620, 16645, 44166, 56502, 58174, 'https://images.gr-assets.com/books/1284558475m/3682.jpg'),
(256566, 886727, 107, '60529709', 'Jonathan Safran Foer', '2002', 'Everything Is Illuminated', 'eng', '3.90', 131492, 144312, 7019, 4169, 10063, 30365, 51579, 48136, 'https://images.gr-assets.com/books/1479774440m/256566.jpg'),
(15769, 2508588, 101, '752863886', 'Robert Ludlum', '1986', 'The Bourne Supremacy', 'en-US', '4.09', 142168, 145806, 1010, 1623, 4638, 27003, 57766, 54776, 'https://images.gr-assets.com/books/1335860600m/15769.jpg'),
(16056408, 19113823, 53, '425266745', 'Tammara Webber', '2012', 'Easy', 'en-CA', '4.11', 133937, 189861, 11189, 4496, 8142, 31038, 64085, 82100, 'https://images.gr-assets.com/books/1349370267m/16056408.jpg'),
(58696, 4711940, 1240, '140439447', 'Charles Dickens, Jeremy Tambling', '1849', 'David Copperfield', 'eng', '3.96', 150512, 164400, 4623, 3426, 9508, 35753, 56963, 58750, 'https://images.gr-assets.com/books/1461452762m/58696.jpg'),
(693208, 829330, 67, '316013684', 'Sherman Alexie, Ellen Forney', '2007', 'The Absolutely True Diary of a Part-Time Indian', 'eng', '4.11', 160607, 171492, 18988, 3502, 7316, 26704, 62780, 71190, 'https://images.gr-assets.com/books/1327908992m/693208.jpg'),
(117833, 876183, 586, '679760806', 'Mikhail Bulgakov, Katherine Tiernan O\'Connor, Diana Burgin, Ellendea Proffer', '1967', 'Мастер и Маргарита', 'eng', '4.32', 131389, 156780, 7365, 2428, 5647, 18910, 42164, 87631, 'https://images.gr-assets.com/books/1327867963m/117833.jpg'),
(13642, 113603, 157, '553383043', 'Ursula K. Le Guin', '1968', 'A Wizard of Earthsea', 'en-US', '3.99', 155042, 167058, 5357, 3253, 9210, 34737, 58618, 61240, 'https://images.gr-assets.com/books/1353424536m/13642.jpg'),
(357664, 25169, 77, '763616052', 'Kate DiCamillo, Chris Sheban', '2000', 'Because of Winn-Dixie', 'eng', '4.00', 154476, 159075, 6594, 2076, 8308, 36097, 54057, 58537, 'https://images.gr-assets.com/books/1456871914m/357664.jpg'),
(5148, 39755, 82, '743253973', 'John Knowles', '1959', 'A Separate Peace', 'en-US', '3.56', 155901, 162403, 5580, 8518, 18503, 45480, 53424, 36478, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(5349, 3154548, 117, '385339607', 'John Grisham', '1995', 'The Rainmaker', 'eng', '3.91', 137412, 142791, 1518, 986, 6288, 38331, 55983, 41203, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(3836, 121842, 1887, '142437239', 'Miguel de Cervantes Saavedra, Roberto González Echevarría, John Rutherford', '1605', 'Don Quijote de La Mancha', 'eng', '3.85', 134931, 159253, 5429, 4667, 12289, 38171, 50811, 53315, 'https://images.gr-assets.com/books/1364958765m/3836.jpg'),
(45107, 171715, 108, '6480098', 'Robin Hobb', '1995', 'Assassin\'s Apprentice', 'eng', '4.14', 132777, 162482, 6023, 2462, 6103, 25949, 59803, 68165, 'https://images.gr-assets.com/books/1320339497m/45107.jpg'),
(8695, 1877624, 162, '345418921', 'Douglas Adams', '1980', 'The Restaurant at the End of the Universe', 'eng', '4.22', 153838, 172365, 3851, 700, 3728, 27009, 66783, 74145, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(7740152, 7380161, 82, '385739141', 'Lauren Kate', '2010', 'Torment', 'eng', '3.89', 174393, 181384, 7245, 5367, 14327, 41971, 52983, 66736, 'https://images.gr-assets.com/books/1362339749m/7740152.jpg'),
(19321, 644171, 1, '723247706', 'Beatrix Potter', '1901', 'The Tale of Peter Rabbit', 'eng', '4.17', 162373, 165470, 1404, 2294, 6298, 30659, 48594, 77625, 'https://images.gr-assets.com/books/1485118382m/19321.jpg'),
(65641, 1419727, 257, '64405044', 'C.S. Lewis, Pauline Baynes', '1953', 'The Silver Chair', 'eng', '3.95', 170453, 185348, 3391, 1580, 9479, 47180, 65697, 61412, 'https://images.gr-assets.com/books/1336139237m/65641.jpg'),
(2767793, 2793516, 63, '765316897', 'Brandon Sanderson', '2008', 'The Hero of Ages', 'eng', '4.46', 143622, 161085, 9111, 596, 2257, 14291, 49628, 94313, 'https://images.gr-assets.com/books/1480717763m/2767793.jpg'),
(68783, 926090, 49, '679746048', 'Susanna Kaysen', '1993', 'Girl, Interrupted', 'eng', '3.90', 145161, 151176, 3532, 1827, 8242, 38968, 56689, 45450, 'https://images.gr-assets.com/books/1475482930m/68783.jpg'),
(40173, 2270522, 24, '61173398', 'Chelsea Handler', '2007', 'Are You There, Vodka? It\'s Me, Chelsea', '', '3.85', 127096, 135734, 6724, 3901, 9551, 32729, 46450, 43103, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(71728, 1743336, 278, '743278909', 'Richard Bach, Russell Munson', '1970', 'Jonathan Livingston Seagull', 'en-US', '3.80', 133728, 150767, 5501, 6169, 13796, 34951, 44689, 51162, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(8755785, 13629068, 7, '1481426303', 'Cassandra Clare', '2014', 'City of Heavenly Fire', 'eng', '4.48', 177796, 203325, 19582, 1683, 4287, 18763, 49304, 129288, 'https://images.gr-assets.com/books/1460477794m/8755785.jpg'),
(310259, 277308, 54, '920668372', 'Robert Munsch, Sheila McGraw', '1986', 'Love You Forever', 'en-GB', '4.34', 159703, 162007, 4286, 5949, 6288, 16941, 29626, 103203, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10567, 3017730, 123, '1416524517', 'Stephen King', '2006', 'Cell', 'en-US', '3.64', 144591, 153150, 4841, 5563, 16309, 44687, 47447, 39144, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(16158542, 21998925, 33, '067002581X', 'Daniel James Brown', '2013', 'The Boys in the Boat: Nine Americans and Their Epic Quest for Gold at the 1936 Berlin Olympics', 'eng', '4.32', 113565, 139128, 16287, 2292, 3772, 15002, 43457, 74605, 'https://images.gr-assets.com/books/1354683116m/16158542.jpg'),
(7332, 4733799, 339, '618391118', 'J.R.R. Tolkien, Christopher Tolkien, Ted Nasmith', '1977', 'The Silmarillion', 'eng', '3.87', 134106, 160751, 5743, 4943, 13613, 36498, 47548, 58149, 'https://images.gr-assets.com/books/1336502583m/7332.jpg'),
(5094, 2113248, 164, '451210859', 'Stephen King', '1987', 'The Drawing of the Three', 'eng', '4.23', 139052, 157513, 5293, 1062, 4303, 22908, 59055, 70185, 'https://images.gr-assets.com/books/1370918050m/5094.jpg'),
(3407877, 3448086, 119, '330449605', 'Kate Morton', '2008', 'The Forgotten Garden', 'en-GB', '4.12', 138377, 157088, 15953, 1501, 5098, 26557, 63709, 60223, 'https://images.gr-assets.com/books/1455283767m/3407877.jpg'),
(17690, 2965832, 915, '99428644', 'Franz Kafka, Edwin Muir, Willa Muir, Max Brod', '1925', 'Der Prozeß', 'eng', '3.98', 131856, 159270, 4717, 3539, 9051, 31198, 58123, 57359, 'https://images.gr-assets.com/books/1320399438m/17690.jpg'),
(22205, 132402, 42, '142501557', 'Sarah Dessen', '2002', 'This Lullaby', 'eng', '4.03', 151829, 155107, 4597, 2714, 8175, 32346, 49750, 62122, 'https://images.gr-assets.com/books/1397779294m/22205.jpg'),
(14864, 3375925, 65, '743275012', 'Jodi Picoult', '2000', 'Plain Truth', 'eng', '3.97', 128406, 138814, 6231, 1123, 5518, 32571, 57131, 42471, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6314763, 6499995, 69, '385523386', 'Piper Kerman', '2010', 'Orange Is the New Black: My Year in a Women\'s Prison', 'eng', '3.70', 127186, 146868, 12873, 3322, 11023, 43493, 57605, 31425, 'https://images.gr-assets.com/books/1320520714m/6314763.jpg'),
(8921, 3311984, 1717, '451528018', 'Arthur Conan Doyle, Anne Perry', '1902', 'The Hound of the Baskervilles', 'eng', '4.09', 154517, 178563, 5421, 1098, 5204, 35369, 71857, 65035, 'https://images.gr-assets.com/books/1355929358m/8921.jpg'),
(11468377, 16402639, 106, '374275637', 'Daniel Kahneman', '2011', 'Thinking, Fast and Slow', 'eng', '4.08', 136950, 149271, 5715, 3714, 7025, 25687, 49723, 63122, 'https://images.gr-assets.com/books/1317793965m/11468377.jpg'),
(402045, 806813, 103, '345350499', 'Marion Zimmer Bradley', '1982', 'The Mists of Avalon', 'eng', '4.12', 157736, 163331, 5582, 3469, 7966, 27551, 51373, 72972, 'https://images.gr-assets.com/books/1388857089m/402045.jpg'),
(37732, 4121, 75, '689841582', 'Judy Blume', '1970', 'Are You There God? It\'s Me, Margaret', 'eng', '3.89', 151789, 162083, 5168, 3588, 10014, 40314, 55092, 53075, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(15926, 943470, 115, '446612707', 'Nicholas Sparks', '2002', 'Nights in Rodanthe', 'eng', '3.82', 129807, 136507, 4025, 3102, 10605, 36852, 42686, 43262, 'https://images.gr-assets.com/books/1328145638m/15926.jpg'),
(18775247, 26680281, 111, '1476754454', 'Stephen King', '2014', 'Mr. Mercedes', 'eng', '3.92', 125847, 148491, 12447, 3242, 7332, 32479, 60965, 44473, 'https://images.gr-assets.com/books/1468705326m/18775247.jpg'),
(140075, 3159810, 73, '441014941', 'Charlaine Harris', '2007', 'All Together Dead', 'eng', '4.05', 162689, 173654, 3372, 1127, 5785, 37956, 66515, 62271, 'https://images.gr-assets.com/books/1417964062m/140075.jpg'),
(5166, 3221872, 39, '375706771', 'Chris Bohjalian', '1997', 'Midwives', 'en-US', '3.97', 133155, 135534, 3830, 1317, 5372, 30829, 57029, 40987, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(420282, 1045364, 57, '395389496', 'Chris Van Allsburg', '1985', 'The Polar Express', 'en-US', '4.29', 168001, 168847, 2498, 2857, 6268, 23676, 42383, 93663, 'https://images.gr-assets.com/books/1356707942m/420282.jpg'),
(125507, 120878, 39, '140544518', 'Jon Scieszka, Lane Smith', '1989', 'The True Story of the Three Little Pigs', 'en-GB', '4.29', 141945, 144093, 2618, 1449, 4217, 21301, 40806, 76320, 'https://images.gr-assets.com/books/1327884731m/125507.jpg'),
(32682, 5054702, 88, '425134350', 'Tom Clancy', '1987', 'Patriot Games', 'eng', '4.11', 141674, 146201, 939, 1351, 3943, 27548, 58440, 54919, 'https://images.gr-assets.com/books/1328007145m/32682.jpg'),
(1431, 3287043, 229, '61124265', 'Paulo Coelho, Margaret Jull Costa', '1998', 'Veronika decide morrer', 'eng', '3.69', 111856, 132191, 6063, 5217, 12725, 35174, 43885, 35190, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(16071764, 21865596, 66, '385349947', 'Sheryl Sandberg, Nell Scovell', '2013', 'Lean In: Women, Work, and the Will to Lead', 'eng', '3.94', 135635, 145331, 10385, 3688, 7487, 30825, 55784, 47547, 'https://images.gr-assets.com/books/1364250803m/16071764.jpg'),
(170210, 1053933, 80, '441013333', 'Charlaine Harris', '2005', 'Dead as a Doornail ', 'eng', '4.01', 169560, 179156, 3733, 969, 6113, 42398, 69792, 59884, 'https://images.gr-assets.com/books/1468562419m/170210.jpg'),
(10429045, 15333458, 77, '62085484', 'Tahereh Mafi', '2011', 'Shatter Me (Shatter Me, #1)', 'en-US', '4.01', 176433, 200300, 20959, 7715, 12475, 34344, 61578, 84188, 'https://images.gr-assets.com/books/1310649047m/10429045.jpg'),
(17214, 2534973, 132, '441783589', 'Robert A. Heinlein', '1959', 'Starship Troopers', 'en-CA', '3.99', 136886, 145886, 4034, 2062, 7314, 31597, 53591, 51322, 'https://images.gr-assets.com/books/1406457252m/17214.jpg'),
(12033455, 16327730, 86, '385342063', 'Sophie Kinsella', '2011', 'I\'ve Got Your Number', 'eng', '3.93', 144533, 154513, 10577, 3523, 8046, 34351, 58073, 50520, 'https://images.gr-assets.com/books/1327956732m/12033455.jpg'),
(10959, 4432325, 239, '1857993284', 'Jostein Gaarder, Paulette Møller', '1991', 'Sofies Verden', 'eng', '3.88', 109692, 143393, 7652, 3975, 9949, 32355, 50286, 46828, 'https://images.gr-assets.com/books/1343459906m/10959.jpg'),
(11260526, 16187316, 14, '316134112', 'Mark Cotta Vaz', '2011', '', 'eng', '4.30', 188136, 188274, 134, 2655, 6588, 29411, 42475, 107145, 'https://images.gr-assets.com/books/1327904795m/11260526.jpg'),
(76778, 4636013, 271, '553278223', 'Ray Bradbury', '1950', 'The Martian Chronicles', 'en-US', '4.12', 143236, 156328, 5204, 1666, 5808, 28385, 56556, 63913, 'https://images.gr-assets.com/books/1374049948m/76778.jpg'),
(7331435, 8975330, 76, '307592839', 'Jennifer Egan', '2010', 'A Visit From the Goon Squad', 'eng', '3.64', 120126, 139744, 15030, 6060, 14855, 36024, 48972, 33833, 'https://images.gr-assets.com/books/1356844046m/7331435.jpg'),
(93, 1738595, 771, '753454947', 'Johanna Spyri, Angelo  Rinaldi, Beverly Cleary', '1880', 'Heidi', 'eng', '3.97', 144497, 154669, 2667, 2236, 8362, 37291, 50838, 55942, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(83763, 1258566, 113, '61015725', 'Michael Crichton', '2002', 'Prey', '', '3.72', 131352, 136307, 2700, 2481, 11391, 40947, 48338, 33150, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(84369, 1059917, 245, '7202326', 'C.S. Lewis', '1956', 'The Last Battle', 'eng', '4.02', 158701, 174641, 4156, 3501, 10243, 35440, 54778, 70679, 'https://images.gr-assets.com/books/1308814830m/84369.jpg'),
(5064, 2845518, 2, '525950079', 'Ken Follett', '2007', 'World Without End', 'eng', '4.23', 128715, 145292, 9392, 1212, 4241, 20508, 53074, 66257, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1326258, 1315683, 77, '312360304', 'P.C. Cast, Kristin Cast', '2008', 'Chosen: A House of Night Novel', 'en-US', '3.90', 180961, 188550, 4013, 5974, 14466, 42946, 53682, 71482, 'https://images.gr-assets.com/books/1393192825m/1326258.jpg'),
(13372690, 18602144, 60, '', 'Colleen Hoover', '2012', 'Slammed', 'eng', '4.29', 153882, 176166, 14423, 2888, 5837, 22249, 51947, 93245, 'https://images.gr-assets.com/books/1328530463m/13372690.jpg'),
(544891, 532177, 74, '60874163', 'Alex Flinn', '2007', 'Beastly (Beastly, #1, Kendra Chronicles, #1)', 'eng', '3.84', 150003, 157088, 8576, 4103, 12836, 39399, 48089, 52661, 'https://images.gr-assets.com/books/1334260193m/544891.jpg'),
(2696, 986234, 634, '140424385', 'Geoffrey Chaucer, Nevill Coghill', '1390', 'Tales of Caunterbury', 'eng', '3.48', 148480, 158661, 2615, 6795, 19618, 52875, 48893, 30480, 'https://images.gr-assets.com/books/1261208589m/2696.jpg'),
(42149, 1488992, 43, '312348649', 'Emily Giffin', '2006', 'Baby Proof', 'en-US', '3.71', 124371, 129325, 3375, 3042, 10434, 39728, 44093, 32028, 'https://images.gr-assets.com/books/1361466583m/42149.jpg'),
(7664041, 10260587, 119, '375856110', 'Christopher Paolini', '2011', 'Inheritance', 'en-US', '4.08', 146905, 162717, 8891, 3498, 9379, 28585, 50380, 70875, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10357575, 18160093, 107, '307593312', 'Haruki Murakami, Jay Rubin, Philip Gabriel', '2009', 'いちきゅうはちよん [Ichi-Kyū-Hachi-Yon]', 'eng', '3.89', 125195, 138691, 13779, 3934, 9901, 28881, 51416, 44559, 'https://images.gr-assets.com/books/1483103331m/10357575.jpg'),
(46787, 2478635, 1075, '1840224029', 'Harriet Beecher Stowe', '1852', 'Uncle Tom\'s Cabin or Life Among the Lowly', 'eng', '3.83', 137858, 155559, 5696, 3732, 11754, 39559, 52344, 48170, 'https://images.gr-assets.com/books/1414349231m/46787.jpg'),
(480204, 2259720, 782, '60809248', 'Gaston Leroux, Alexander Teixeira de Mattos', '1909', 'Le Fantôme de l\'Opéra', 'eng', '3.97', 141110, 155679, 4590, 2451, 8945, 35912, 51572, 56799, 'https://images.gr-assets.com/books/1327867727m/480204.jpg'),
(140079, 1174101, 75, '441014917', 'Charlaine Harris', '2006', 'Definitely Dead (Sookie Stackhouse, #6)', 'en-US', '4.02', 163054, 172955, 3669, 1028, 6116, 40058, 66966, 58787, 'https://images.gr-assets.com/books/1468562748m/140079.jpg');
INSERT INTO `books` (`book_id`, `work_id`, `books_count`, `isbn`, `authors`, `original_publication_year`, `original_title`, `language_code`, `average_rating`, `ratings_count`, `work_ratings_count`, `work_text_reviews_count`, `ratings_1`, `ratings_2`, `ratings_3`, `ratings_4`, `ratings_5`, `image_url`) VALUES
(2526, 3213039, 231, '156007754', 'José Saramago, Giovanni Pontiero', '1995', 'Ensaio Sobre a Cegueira', 'en-US', '4.08', 98738, 133257, 11061, 2960, 6745, 21616, 47839, 54097, 'https://images.gr-assets.com/books/1327866409m/2526.jpg'),
(7905092, 9585796, 92, '374158460', 'Jonathan Franzen', '2010', 'Freedom', 'en-US', '3.73', 119213, 130682, 12909, 6143, 11728, 29502, 47828, 35481, 'https://images.gr-assets.com/books/1316729686m/7905092.jpg'),
(15812814, 14449475, 63, '142421715', 'Ally Condie', '2011', 'Crossed', 'eng', '3.52', 100886, 179584, 14020, 6581, 22713, 57856, 55935, 36499, 'https://images.gr-assets.com/books/1374335939m/15812814.jpg'),
(852470, 1008494, 58, '1423100034', 'Ally Carter', '2006', 'I\'d Tell You I Love You, But Then I\'d Have to Kill You', 'en-US', '3.82', 150222, 157885, 6720, 6407, 13220, 37418, 45880, 54960, 'https://images.gr-assets.com/books/1334491180m/852470.jpg'),
(1768603, 1766737, 104, '1416562591', 'Aravind Adiga', '2008', 'The White Tiger', 'eng', '3.71', 114531, 125632, 8334, 2934, 9631, 34919, 51398, 26750, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(3805, 941200, 133, '1841156736', 'Jonathan Franzen', '2001', 'The Corrections', 'eng', '3.78', 117657, 131271, 8201, 6684, 10960, 27173, 46440, 40014, 'https://images.gr-assets.com/books/1355011305m/3805.jpg'),
(88061, 86032, 83, '1921351438', 'Barack Obama', '1995', 'Dreams from My Father', 'eng', '3.81', 128961, 135594, 5843, 6777, 7212, 30921, 50809, 39875, 'https://images.gr-assets.com/books/1352340675m/88061.jpg'),
(7672, 688299, 83, '60541830', 'Michael Crichton', '1980', 'Congo', 'eng', '3.55', 129811, 134422, 1587, 2910, 13893, 48006, 45059, 24554, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(46677, 1086647, 47, '689711735', 'Judith Viorst, Ray Cruz', '1972', 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', 'en-CA', '4.22', 146073, 147047, 2213, 2443, 5423, 23838, 40774, 74569, 'https://images.gr-assets.com/books/1405259744m/46677.jpg'),
(5439, 3301398, 83, '618101365', 'Jhumpa Lahiri', '1999', 'Interpreter of Maladies', 'eng', '4.12', 110651, 125062, 8145, 860, 4045, 21705, 50880, 47572, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(2767, 2185591, 83, '60838655', 'Howard Zinn', '1980', 'A People\'s History of the United States: 1492 to Present ', 'eng', '4.07', 137372, 142326, 4320, 6435, 6926, 21522, 42751, 64692, 'https://images.gr-assets.com/books/1494279423m/2767.jpg'),
(251688, 2518209, 254, '679745653', 'Truman Capote', '1958', 'Breakfast at Tiffany\'s', 'eng', '3.89', 129778, 158526, 7331, 1953, 8353, 40016, 62437, 45767, 'https://images.gr-assets.com/books/1477015353m/251688.jpg'),
(6690798, 2802546, 101, '345504968', 'Justin Cronin', '2010', 'The Passage', 'eng', '4.04', 126993, 145772, 16506, 3522, 7867, 24461, 53735, 56187, 'https://images.gr-assets.com/books/1327874267m/6690798.jpg'),
(2744, 1007964, 112, '60515198', 'Neil Gaiman', '2005', 'Anansi Boys', 'eng', '4.00', 137639, 153465, 7758, 1219, 5671, 32195, 66653, 47727, 'https://images.gr-assets.com/books/1479778049m/2744.jpg'),
(5664985, 5836517, 41, '670011940', 'Sarah Dessen', '2009', 'Along for the Ride', 'eng', '4.08', 151721, 156330, 6238, 2588, 7073, 30314, 52171, 64184, 'https://images.gr-assets.com/books/1479692098m/5664985.jpg'),
(18693763, 26542311, 62, '159420571X', 'Celeste Ng', '2014', 'Everything I Never Told You', 'eng', '3.78', 108703, 134550, 15177, 2352, 8110, 36543, 57858, 29687, 'https://images.gr-assets.com/books/1386795198m/18693763.jpg'),
(9328, 3374404, 243, '553383809', 'Isabel Allende, Magda Bogin', '1982', 'La casa de los espíritus', 'en-US', '4.20', 119930, 140339, 5244, 1380, 4506, 21376, 50822, 62255, 'https://images.gr-assets.com/books/1358615501m/9328.jpg'),
(11573, 2745957, 145, '451155750', 'Stephen King', '1979', 'The Dead Zone', 'en-US', '3.90', 132723, 139386, 2294, 1371, 7164, 37094, 52341, 41416, 'https://images.gr-assets.com/books/1283509622m/11573.jpg'),
(16343, 3366260, 876, '646418432', 'Agatha Christie, Ροζίτα Σώκου', '1920', 'The Mysterious Affair at Styles', 'eng', '3.98', 135514, 148617, 3826, 3132, 5501, 33269, 55831, 50884, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(16304, 2285570, 429, '425200450', 'Agatha Christie', '1934', 'Murder in the Calais Coach', 'eng', '4.16', 138444, 173662, 8713, 706, 4027, 30417, 70825, 67687, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(15796700, 21519538, 83, '307271080', 'Chimamanda Ngozi Adichie', '2013', 'Americanah', 'eng', '4.26', 113252, 135108, 13831, 1764, 3564, 16174, 50092, 63514, 'https://images.gr-assets.com/books/1356654499m/15796700.jpg'),
(7494, 141228, 79, '446611085', 'James Patterson', '2001', 'Suzanne\'s Diary for Nicholas', 'eng', '4.16', 121398, 124164, 4255, 2106, 5364, 21005, 38213, 57476, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(233667, 1803, 154, '451167805', 'Stephen King', '1980', 'Firestarter', 'eng', '3.85', 142213, 148131, 1859, 1589, 9090, 42672, 51583, 43197, 'https://images.gr-assets.com/books/1394208032m/233667.jpg'),
(15731779, 21411971, 76, '425263924', 'Sylvia Day', '2013', 'Entwined with You', 'eng', '4.19', 141641, 157731, 9728, 2275, 6942, 25570, 47336, 75608, 'https://images.gr-assets.com/books/1362526983m/15731779.jpg'),
(6289283, 6473602, 70, '307266303', 'Christopher McDougall', '2009', 'Born to Run: A Hidden Tribe, Superathletes, and the Greatest Race the World Has Never Seen', 'eng', '4.27', 109642, 121428, 11605, 1516, 3182, 15027, 42605, 59098, 'https://images.gr-assets.com/books/1320531983m/6289283.jpg'),
(18293427, 25694131, 79, '1616203218', 'Gabrielle Zevin', '2014', 'The Storied Life of A.J. Fikry', 'eng', '3.98', 115393, 145313, 20980, 2685, 5844, 28640, 63184, 44960, 'https://images.gr-assets.com/books/1404582137m/18293427.jpg'),
(475339, 2666907, 74, '590133373', 'Ludwig Bemelmans', '1939', 'Mad About Madeline', 'en-GB', '4.22', 156726, 158318, 1407, 2361, 5708, 26834, 43736, 79679, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1005, 1199320, 709, '1585424331', 'Napoleon Hill', '1937', 'Think and Grow Rich', 'eng', '4.17', 87445, 117444, 3272, 2764, 5469, 18408, 33331, 57472, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(8337, 1200805, 132, '60885378', 'Laura Ingalls Wilder, Garth Williams', '1932', 'Little House In The Big Woods', 'eng', '4.16', 165127, 177991, 4096, 2773, 5952, 31155, 57916, 80195, 'https://images.gr-assets.com/books/1475195170m/8337.jpg'),
(14201, 3921305, 124, '765356155', 'Susanna Clarke', '2004', 'Jonathan Strange & Mr Norrell', 'eng', '3.80', 133683, 154688, 11516, 8086, 14044, 30972, 48696, 52890, 'https://images.gr-assets.com/books/1357027589m/14201.jpg'),
(3463, 1498124, 105, '446696137', 'Nicholas Sparks', '2001', 'A Bend in the Road', 'eng', '4.02', 116800, 123173, 3392, 1452, 5660, 27409, 42912, 45740, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12127810, 21539506, 63, '1423146727', 'Rick Riordan', '2013', 'The House of Hades', 'eng', '4.54', 159774, 175407, 11843, 698, 1916, 12999, 45501, 114293, 'https://images.gr-assets.com/books/1464201430m/12127810.jpg'),
(2536134, 2543657, 61, '61448761', 'Michael  Grant', '2008', 'Gone', 'eng', '3.85', 144606, 153953, 9445, 6428, 12529, 32771, 47507, 54718, 'https://images.gr-assets.com/books/1357796831m/2536134.jpg'),
(3466, 1208014, 85, '446615862', 'Nicholas Sparks', '2003', 'The Wedding', 'en-US', '3.98', 118045, 124358, 5443, 2102, 7587, 28194, 39312, 47163, 'https://images.gr-assets.com/books/1385738787m/3466.jpg'),
(1067, 3364186, 38, '743226720', 'David McCullough', '2005', '1776', 'eng', '4.06', 130293, 135378, 5963, 3155, 5468, 23230, 51681, 51844, 'https://images.gr-assets.com/books/1306787560m/1067.jpg'),
(10847, 1723947, 37, '330419129', 'Jon Krakauer', '2003', 'Under the Banner of Heaven: A Story of Violent Faith', 'eng', '3.98', 112167, 123697, 8947, 1958, 5259, 25101, 52050, 39329, 'https://images.gr-assets.com/books/1356441391m/10847.jpg'),
(11447921, 16381755, 51, '61928127', 'Jess Walter', '2012', 'Beautiful Ruins', 'eng', '3.67', 116053, 128321, 13738, 2869, 10393, 38113, 51164, 25782, 'https://images.gr-assets.com/books/1338161553m/11447921.jpg'),
(9742, 1716451, 62, '307237699', 'Barack Obama', '2006', 'The Audacity of Hope: Thoughts on Reclaiming the American Dream', 'en-US', '3.69', 110873, 114115, 4511, 7053, 7808, 28645, 40177, 30432, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10569, 150292, 122, '743455967', 'Stephen King', '1999', 'On Writing: A Memoir of the Craft', 'eng', '4.31', 131481, 151918, 11807, 1361, 3497, 18862, 51470, 76728, 'https://images.gr-assets.com/books/1436735207m/10569.jpg'),
(1472878, 1463850, 61, '312364083', 'Kristin Hannah', '2008', 'Firefly Lane', 'en-US', '4.04', 121966, 131124, 11137, 2074, 6448, 25649, 46852, 50101, 'https://images.gr-assets.com/books/1362435448m/1472878.jpg'),
(455373, 2651694, 122, '345418972', 'Michael Crichton', '1987', 'Sphere', 'eng', '3.77', 128244, 135005, 2313, 1851, 9728, 40085, 49513, 33828, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(2120652, 1470370, 47, '312348673', 'Emily Giffin', '2008', 'Love the One You\'re With', 'en-US', '3.70', 124812, 129614, 4743, 3289, 10895, 39052, 44476, 31902, 'https://images.gr-assets.com/books/1361466590m/2120652.jpg'),
(18214414, 25639104, 109, '316206873', 'Robert Galbraith, J.K. Rowling', '2014', 'The Silkworm', 'eng', '4.03', 120008, 145146, 13549, 1330, 4361, 27130, 67680, 44645, 'https://images.gr-assets.com/books/1392577290m/18214414.jpg'),
(43814, 3241580, 111, '345476883', 'Anne Rice', '1985', 'The Vampire Lestat', 'eng', '4.05', 141299, 150967, 3097, 1531, 6801, 30996, 54376, 57263, 'https://images.gr-assets.com/books/1347515742m/43814.jpg'),
(9118135, 14893776, 49, '62049801', 'Ann Patchett', '2011', 'State of Wonder', 'eng', '3.85', 124837, 135740, 14781, 2243, 8179, 32560, 57115, 35643, 'https://images.gr-assets.com/books/1454428541m/9118135.jpg'),
(13539044, 2915346, 75, '374533571', 'Matthew Quick', '2008', 'The Silver Linings Playbook', 'en-US', '4.00', 110939, 129408, 11059, 1493, 5495, 25882, 54594, 41944, 'https://images.gr-assets.com/books/1358277412m/13539044.jpg'),
(33507, 1112418, 1691, '076072850X', 'Jules Verne, Anthony Bonner', '1869', 'Vingt Mille Lieues Sous les Mers', 'eng', '3.86', 121112, 148698, 4608, 2333, 8924, 38817, 55211, 43413, 'https://images.gr-assets.com/books/1494979127m/33507.jpg'),
(16181, 1745738, 63, '743272498', 'Philippa Gregory', '2005', 'The Constant Princess', 'en-US', '3.88', 124786, 130800, 4166, 2456, 6856, 33052, 49899, 38537, 'https://images.gr-assets.com/books/1355932704m/16181.jpg'),
(14942, 841320, 572, '151009988', 'Virginia Woolf, Maureen Howard', '1925', 'Mrs Dalloway', 'en-US', '3.78', 136327, 158347, 6360, 6254, 13779, 37308, 52528, 48478, 'https://images.gr-assets.com/books/1479336522m/14942.jpg'),
(13486632, 10365993, 173, '1843913720', 'Jonas Jonasson, Rod Bradbury', '2009', 'Hundraåringen som klev ut genom fönstret och försvann', 'en-GB', '3.81', 92275, 137865, 16350, 4096, 11094, 31788, 50610, 40277, 'https://images.gr-assets.com/books/1334848488m/13486632.jpg'),
(10589, 3254516, 134, '067102423X', 'Stephen King', '1998', 'Bag of Bones', 'en-US', '3.87', 131004, 137867, 3087, 2377, 9330, 35689, 46716, 43755, 'https://images.gr-assets.com/books/1365592796m/10589.jpg'),
(4687, 3875895, 114, '786226749', 'John Irving', '1985', 'The Cider House Rules', 'eng', '4.10', 124876, 134263, 3170, 1250, 4327, 23669, 55302, 49715, 'https://images.gr-assets.com/books/1327962519m/4687.jpg'),
(10605, 2791999, 132, '451190750', 'Richard Bachman, Stephen King', '1984', 'Thinner', 'en-GB', '3.66', 130219, 136473, 1641, 2810, 13288, 44786, 41617, 33972, 'https://images.gr-assets.com/books/1346947063m/10605.jpg'),
(54479, 4537271, 1903, '014044906X', 'Jules Verne, Michael Glencross, Brian W. Aldiss', '1872', 'Le tour du monde en quatre-vingts jours', 'eng', '3.90', 117108, 141132, 4341, 1273, 6693, 36897, 55603, 40666, 'https://images.gr-assets.com/books/1308815551m/54479.jpg'),
(53496, 1237212, 65, '60739495', 'Sharon Creech', '1994', 'Walk Two Moons', 'eng', '3.95', 129350, 132970, 5530, 3251, 8401, 29328, 43060, 48930, 'https://images.gr-assets.com/books/1389035862m/53496.jpg'),
(1430, 1950213, 194, '60589280', 'Paulo Coelho, Margaret Jull Costa', '2003', 'Onze minutos', 'eng', '3.69', 102206, 116141, 5444, 4444, 11306, 31202, 38487, 30702, 'https://images.gr-assets.com/books/1358266987m/1430.jpg'),
(4009, 1839377, 155, '316767727', 'J.D. Salinger', '1953', 'Nine Stories', 'eng', '4.19', 105138, 117297, 3423, 1416, 3591, 18615, 41479, 52196, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(13747, 3338312, 64, '031610969X', 'Julie Powell', '2005', 'Julie & Julia: 365 Days, 524 Recipes, 1 Tiny Apartment Kitchen', 'eng', '3.67', 121373, 129563, 7434, 4405, 11803, 37340, 44811, 31204, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(764347, 750423, 62, '1416912045', 'Neal Shusterman', '2007', 'Unwind', 'eng', '4.18', 143892, 152643, 15376, 3032, 5976, 22062, 50286, 71287, 'https://images.gr-assets.com/books/1297677706m/764347.jpg'),
(10988, 3123704, 96, '385335989', 'Diana Gabaldon', '1996', 'Drums of Autumn (Outlander, #4)', 'eng', '4.34', 123736, 145728, 5743, 584, 2679, 18529, 48756, 75180, 'https://images.gr-assets.com/books/1500688941m/10988.jpg'),
(13414446, 18712554, 61, '399256768', 'Marie Lu', '2013', 'Prodigy', 'eng', '4.29', 149702, 160193, 12663, 1213, 3659, 21004, 56370, 77947, 'https://images.gr-assets.com/books/1336254717m/13414446.jpg'),
(12938, 2342136, 1108, '074348276X', 'William Shakespeare', '1603', 'The Tragedie of King Lear', 'eng', '3.89', 135448, 147282, 3079, 2825, 10502, 36179, 47682, 50094, 'https://images.gr-assets.com/books/1331563731m/12938.jpg'),
(12898, 2722054, 139, '435233076', 'Arthur Miller', '1949', 'Death of a Salesman', 'eng', '3.49', 132061, 147597, 3486, 6733, 19241, 46338, 46051, 29234, 'https://images.gr-assets.com/books/1469024140m/12898.jpg'),
(531350, 2416287, 101, '446579920', 'Nicholas Sparks', '2007', 'The Choice', 'en-US', '3.99', 93479, 128525, 6808, 2160, 7288, 28349, 42867, 47861, 'https://images.gr-assets.com/books/1385739133m/531350.jpg'),
(11742691, 16692130, 11, '545422906', 'Kate Egan', '2012', '', 'en-US', '4.51', 119915, 120075, 384, 1968, 2226, 10191, 24365, 81325, 'https://images.gr-assets.com/books/1363678804m/11742691.jpg'),
(10975, 1168289, 221, '', 'William Faulkner', '1929', 'The Sound and the Fury', 'eng', '3.86', 124665, 133331, 5485, 6725, 10848, 26021, 40913, 48824, 'https://images.gr-assets.com/books/1433089995m/10975.jpg'),
(76334, 2567181, 45, '452287588', 'Eckhart Tolle', '2005', 'A New Earth: Awakening to Your Life\'s Purpose', 'eng', '4.02', 106211, 113457, 5862, 4424, 7162, 19384, 32949, 49538, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(2880, 1854946, 34, '1591164419', 'Tite Kubo', '2002', 'BLEACH―ブリーチ―　1', 'eng', '4.21', 120004, 120433, 890, 2644, 5380, 18982, 30554, 62873, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(17571564, 24510592, 24, '1451666179', 'Allie Brosh', '2013', '', 'eng', '4.17', 118910, 131008, 10136, 4313, 5424, 17787, 39701, 63783, 'https://images.gr-assets.com/books/1409522492m/17571564.jpg'),
(9539, 6591373, 83, '812513738', 'Robert Jordan', '1992', 'The Shadow Rising ', 'en-US', '4.21', 122524, 130562, 2145, 930, 3327, 20346, 48728, 57231, 'https://images.gr-assets.com/books/1470841890m/9539.jpg'),
(33600, 3174890, 101, '192076920X', 'Gregory David Roberts', '2003', 'Shantaram', 'eng', '4.26', 95213, 111838, 10295, 2188, 4308, 13378, 34106, 57858, 'https://images.gr-assets.com/books/1333482282m/33600.jpg'),
(2233407, 3159807, 67, '441015891', 'Charlaine Harris', '2008', 'From Dead to Worse', 'eng', '4.01', 151095, 161814, 3500, 946, 5941, 37809, 62516, 54602, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(34084, 1810634, 151, '670032565', 'Stephen King, Ned Dameron', '1991', 'The Waste Lands', 'eng', '4.24', 117483, 135257, 3844, 801, 3169, 19831, 50959, 60497, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(2373, 2589896, 109, '451188454', 'Jeffery Deaver', '1997', 'The Bone Collector', 'en-US', '4.18', 120541, 125250, 1785, 1165, 3101, 20494, 47836, 52654, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(101299, 23684, 183, '375408266', 'Bernhard Schlink, Carol Brown Janeway', '1995', 'Der Vorleser', 'eng', '3.73', 119911, 141705, 8529, 2975, 10982, 39603, 55731, 32414, 'https://images.gr-assets.com/books/1327936339m/101299.jpg'),
(759611, 810506, 77, '805047905', 'Bill Martin Jr., Eric Carle', '1967', 'Brown Bear, Brown Bear, What Do You See?', 'eng', '4.19', 125668, 127162, 2731, 2280, 6108, 22298, 31492, 64984, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(77566, 1383900, 107, '553283685', 'Dan Simmons', '1989', 'Hyperion', 'eng', '4.21', 122225, 130489, 5640, 2284, 5503, 18329, 41131, 63242, 'https://images.gr-assets.com/books/1405546838m/77566.jpg'),
(5308, 195832, 233, '142000698', 'John Steinbeck', '1947', 'The Pearl of the World', 'eng', '3.41', 133264, 145891, 6121, 8757, 18361, 48458, 45467, 24848, 'https://images.gr-assets.com/books/1437234939m/5308.jpg'),
(179780, 1945267, 1, '61007226', 'William Peter Blatty', '1971', 'The Exorcist', 'en-US', '4.14', 124467, 130575, 2850, 2211, 4877, 22809, 43470, 57208, 'https://images.gr-assets.com/books/1375168676m/179780.jpg'),
(7937462, 11342428, 93, '031612558X', 'Stephenie Meyer', '2009', 'The Short Second Life of Bree Tanner', 'eng', '3.51', 145874, 159769, 9885, 7314, 21317, 50829, 43629, 36680, 'https://images.gr-assets.com/books/1274335680m/7937462.jpg'),
(77142, 1677615, 97, '067976402X', 'David Guterson', '1994', 'Snow Falling on Cedars', 'eng', '3.80', 131945, 136212, 3881, 2507, 9023, 35994, 54408, 34280, 'https://images.gr-assets.com/books/1479863528m/77142.jpg'),
(546018, 2529422, 102, '440174643', 'Alex Haley', '1976', 'Roots', 'en-US', '4.42', 118951, 122585, 2644, 784, 1951, 12877, 36557, 70416, 'https://images.gr-assets.com/books/1329398936m/546018.jpg'),
(96358, 551787, 69, '930289455', 'Alan Moore, Brian Bolland, Tim Sale', '1988', 'Batman: The Killing Joke ', 'eng', '4.36', 113855, 123312, 3711, 883, 2751, 14311, 38045, 67322, 'https://images.gr-assets.com/books/1346331835m/96358.jpg'),
(16981, 170957, 109, '679732764', 'Ralph Ellison', '1952', 'Invisible Man', 'eng', '3.84', 123073, 127464, 4160, 4351, 10006, 28935, 43080, 41092, 'https://images.gr-assets.com/books/1352854247m/16981.jpg'),
(43015, 825414, 68, '374105235', 'Ishmael Beah', '2007', 'A Long Way Gone. Memoirs of a Boy Soldier', 'en-US', '4.14', 116260, 121841, 9015, 1424, 3801, 20057, 46963, 49596, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(9822, 839692, 73, '689862202', 'Robert C. O\'Brien', '1971', 'Mrs. Frisby and the Rats of NIMH', '', '4.13', 135978, 142350, 2718, 1620, 4727, 26279, 50968, 58756, 'https://images.gr-assets.com/books/1351191064m/9822.jpg'),
(39662, 2248680, 132, '751514624', 'Stephen King', '1982', 'Different Seasons', 'eng', '4.34', 105961, 138206, 3148, 435, 2223, 17523, 48177, 69848, 'https://images.gr-assets.com/books/1329662611m/39662.jpg'),
(114345, 2852640, 14, '60529962', 'Laura Ingalls Wilder, Garth Williams', '1953', 'The Little House Collection', '', '4.33', 124320, 128880, 2016, 2304, 3046, 15651, 36875, 71004, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(33926, 33947, 61, '143035479', 'Melissa Bank', '1998', 'The Girls\' Guide to Hunting and Fishing', '', '3.29', 113977, 118017, 2809, 11089, 16858, 37528, 32016, 20526, 'https://images.gr-assets.com/books/1309210476m/33926.jpg'),
(13453029, 18979356, 116, '', 'Hugh Howey', '2012', 'Wool Omnibus', 'eng', '4.24', 81982, 121842, 11803, 1155, 3518, 15776, 46236, 55157, 'https://images.gr-assets.com/books/1349614200m/13453029.jpg'),
(28881, 3346728, 51, '380813815', 'Christopher Moore', '2002', 'Lamb: The Gospel According to Biff, Christ\'s Childhood Pal', 'en-US', '4.26', 118576, 125861, 10411, 2392, 4578, 16179, 37102, 65610, 'https://images.gr-assets.com/books/1331419009m/28881.jpg'),
(6708, 840520, 153, '1577314808', 'Eckhart Tolle', '1997', 'The Power of Now', 'eng', '4.10', 104549, 112730, 5376, 3440, 6131, 17848, 33175, 52136, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12868761, 17995392, 2, '399159010', 'Jenny  Lawson', '2012', 'Let\'s Pretend This Never Happened (A Mostly True Memoir)', 'eng', '3.90', 118475, 130593, 15544, 5179, 9769, 25994, 41884, 47767, 'https://images.gr-assets.com/books/1489415716m/12868761.jpg'),
(127455, 2116675, 72, '553804677', 'Scott Lynch', '2006', 'The Lies of Locke Lamora', 'eng', '4.30', 118751, 138021, 9655, 2360, 4377, 14772, 44719, 71793, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(518848, 3312237, 99, '64471837', 'Garth Nix', '1995', 'Sabriel', 'en-US', '4.17', 137047, 146144, 5652, 2911, 5797, 22367, 47814, 67255, 'https://images.gr-assets.com/books/1293655399m/518848.jpg'),
(5161066, 5228078, 68, '441017150', 'Charlaine Harris', '2009', 'Dead and Gone', 'eng', '4.01', 145157, 156932, 4315, 1114, 6415, 36292, 59321, 53790, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(15753740, 21449403, 62, '1439102767', 'Jodi Picoult', '2013', 'The Storyteller', 'eng', '4.26', 109313, 125264, 13923, 1206, 3199, 15490, 47104, 58265, 'https://images.gr-assets.com/books/1356328634m/15753740.jpg'),
(12578077, 17588854, 60, '1620610078', 'Jennifer L. Armentrout', '2011', 'Obsidian', 'eng', '4.23', 164832, 176296, 15367, 4284, 6932, 23256, 50731, 91093, 'https://images.gr-assets.com/books/1328275091m/12578077.jpg'),
(8694, 74123, 142, '345418905', 'Douglas Adams', '1982', 'Life, the Universe and Everything', 'eng', '4.19', 131562, 145992, 2354, 657, 3816, 25663, 53047, 62809, 'https://images.gr-assets.com/books/1333577589m/8694.jpg'),
(17167166, 21581860, 55, '1619630621', 'Sarah J. Maas', '2013', 'Crown of Midnight', 'en-CA', '4.49', 160485, 184381, 19450, 1092, 2478, 14391, 52781, 113639, 'https://images.gr-assets.com/books/1391580481m/17167166.jpg'),
(29800, 30220, 34, '1932664084', 'Bryan Lee O\'Malley', '2004', 'Scott Pilgrim, Volume 1: Scott Pilgrim\'s Precious Little Life', 'eng', '4.18', 126864, 130847, 3118, 3667, 4891, 18962, 40649, 62678, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6366437, 6553801, 51, '1416586288', 'Jeannette Walls', '2008', 'Half Broke Horses: A True Life Novel', 'eng', '4.05', 110597, 119479, 10401, 820, 3719, 23221, 52865, 38854, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(386372, 1857065, 4, '61020680', 'Terry Pratchett', '1987', 'Mort', 'eng', '4.22', 128450, 141887, 3081, 912, 2663, 21970, 55524, 60818, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6644117, 6838626, 58, '373210086', 'Julie Kagawa', '2010', 'The Iron King (The Iron Fey, #1) ', 'eng', '3.92', 158063, 163118, 10506, 5814, 11383, 34292, 50281, 61348, 'https://images.gr-assets.com/books/1327877670m/6644117.jpg'),
(256008, 3281465, 57, '067168390X', 'Larry McMurtry', '1985', 'Lonesome Dove', 'en-US', '4.47', 111498, 116430, 5343, 1080, 2179, 10686, 29526, 72959, 'https://images.gr-assets.com/books/1378573063m/256008.jpg'),
(32145, 1188203, 48, '393324826', 'Mary Roach', '2003', 'Stiff: The Curious Lives of Human Cadavers', 'eng', '4.05', 122502, 128102, 10513, 1992, 5132, 24229, 49580, 47169, 'https://images.gr-assets.com/books/1347656489m/32145.jpg'),
(8709527, 13582374, 37, '1595143173', 'Richelle Mead', '2011', 'Bloodlines', 'en-US', '4.22', 140599, 146134, 7698, 3103, 4901, 21147, 45060, 71923, 'https://images.gr-assets.com/books/1297199431m/8709527.jpg'),
(9532, 3145587, 63, '765342405', 'Orson Scott Card', '1998', 'Ender\'s Shadow', 'eng', '4.30', 115521, 125744, 4587, 706, 2793, 16218, 44173, 61854, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6063187, 6239469, 74, '385342020', 'Sophie Kinsella', '2009', 'Twenties Girl', 'eng', '3.82', 119105, 126192, 6023, 3479, 9323, 32120, 42968, 38302, 'https://images.gr-assets.com/books/1320544759m/6063187.jpg'),
(375013, 3127624, 134, '340606517', 'Thomas Keneally', '1982', 'Schindler\'s Ark', 'eng', '4.34', 108338, 113156, 1605, 1225, 2361, 12913, 36982, 59675, 'https://images.gr-assets.com/books/1348163457m/375013.jpg'),
(11337, 1987778, 104, '452287065', 'Toni Morrison', '1970', 'The Bluest Eye', 'eng', '3.99', 109944, 121866, 4963, 2409, 6094, 24867, 45871, 42625, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(5971165, 13560666, 101, '1416563687', 'Philippa Gregory', '2009', 'The White Queen', 'eng', '3.90', 119739, 130446, 6293, 2295, 7115, 31384, 49549, 40103, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(92057, 47400, 105, '345350685', 'Malcolm X, Alex Haley', '1965', 'The Autobiography of Malcolm X', 'eng', '4.29', 124805, 131773, 3951, 2453, 3362, 16312, 41019, 68627, 'https://images.gr-assets.com/books/1434682864m/92057.jpg'),
(23754, 1228437, 68, '1563892278', 'Neil Gaiman, Sam Kieth, Mike Dringenberg, Malcolm Jones III, Todd Klein, Karen  Berger', '1989', 'Preludes & Nocturnes', 'eng', '4.30', 122540, 138525, 4388, 2632, 3868, 16435, 41523, 74067, 'https://images.gr-assets.com/books/1411609637m/23754.jpg'),
(110737, 17572, 63, '345465083', 'Laura Hillenbrand', '1999', 'Seabiscuit', 'en-US', '4.20', 111497, 116984, 3636, 1391, 3451, 18065, 41881, 52196, 'https://images.gr-assets.com/books/1171644213m/110737.jpg'),
(21686, 1234227, 134, '038073186X', 'Dennis Lehane', '2003', 'Shutter Island', 'eng', '4.07', 113718, 124032, 6990, 1636, 4727, 22089, 49875, 45705, 'https://images.gr-assets.com/books/1329269081m/21686.jpg'),
(188572, 7492217, 301, '553328255', 'Arthur Conan Doyle', '1894', 'The Complete Sherlock Holmes', 'eng', '4.50', 109754, 126558, 2774, 471, 1125, 10089, 37928, 76945, 'https://images.gr-assets.com/books/1465539139m/188572.jpg'),
(13006, 2796883, 1129, '198320272', 'William Shakespeare, Roma Gill', '1599', 'The Tragedy of Julius Caesar', 'eng', '3.65', 119933, 135918, 3044, 3318, 13030, 42014, 46750, 30806, 'https://images.gr-assets.com/books/1354574927m/13006.jpg'),
(9938498, 14831761, 57, '307408841', 'Erik Larson', '2011', 'In the Garden of Beasts: Love, Terror, and an American Family in Hitler\'s Berlin', 'eng', '3.81', 110481, 122989, 12570, 1951, 7701, 32350, 50986, 30001, 'https://images.gr-assets.com/books/1327864303m/9938498.jpg'),
(30289, 1625515, 842, '140449140', 'Plato, Desmond Lee', '-380', 'Πολιτεία', 'eng', '3.90', 110274, 122747, 2261, 2772, 7531, 29394, 42284, 40766, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(47021, 3152341, 689, '074347757X', 'William Shakespeare', '1593', 'The Taming of the Shrew', 'en-US', '3.81', 126318, 134240, 2370, 2869, 9611, 35666, 47453, 38641, 'https://images.gr-assets.com/books/1327935253m/47021.jpg'),
(13206828, 18390772, 51, '312642970', 'Marissa Meyer', '2014', 'Cress', 'eng', '4.46', 162069, 177466, 20055, 866, 2056, 14772, 56494, 103278, 'https://images.gr-assets.com/books/1470057005m/13206828.jpg'),
(341879, 332242, 66, '006621131X', 'Patti Smith', '2010', 'Just Kids', 'en-US', '4.14', 106542, 117400, 8415, 3268, 5377, 17142, 37031, 54582, 'https://images.gr-assets.com/books/1259762407m/341879.jpg'),
(567616, 347606, 8, '714836257', 'Phaidon Press', '1997', '', 'eng', '3.79', 102746, 102988, 192, 7128, 7874, 22124, 28325, 37537, 'https://images.gr-assets.com/books/1411210646m/567616.jpg'),
(227941, 3341834, 40, '767905180', 'Jane Green', '2001', 'Jemima J', 'en-US', '3.62', 101436, 103849, 2448, 8909, 9304, 24965, 29819, 30852, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(30597, 3043569, 1206, '451527887', 'Victor Hugo, Walter J. Cobb', '1831', 'Notre-Dame de Paris', 'eng', '3.97', 119851, 133421, 3255, 1952, 6849, 30636, 47753, 46231, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(5211, 865827, 79, '140003065X', 'Rohinton Mistry', '1996', 'A Fine Balance', 'eng', '4.34', 99252, 104516, 7227, 1477, 3066, 11254, 31034, 57685, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(77727, 2110010, 24, '836220889', 'Bill Watterson, G.B. Trudeau', '1987', 'Calvin and Hobbes', 'en-US', '4.61', 117788, 118294, 684, 980, 1435, 7684, 22365, 85830, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(24765, 3278286, 66, '689865406', 'Scott Westerfeld', '2006', 'Specials', 'eng', '3.77', 139168, 148783, 7313, 3286, 13140, 41196, 48574, 42587, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(58345, 1970518, 452, '543898083', 'Kate Chopin', '1899', 'The Awakening', 'eng', '3.63', 125474, 137455, 5662, 7523, 14751, 35125, 44172, 35884, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(4134071, 4181277, 63, '031237982X', 'P.C. Cast, Kristin Cast', '2009', 'Hunted', 'eng', '3.93', 138103, 146051, 3204, 4169, 10788, 32719, 41977, 56398, 'https://images.gr-assets.com/books/1438042897m/4134071.jpg'),
(10929, 3125926, 83, '1401303277', 'Mitch Albom', '2006', 'For One More Day', 'en-US', '4.09', 102193, 106720, 6632, 958, 4221, 21064, 38962, 41515, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(32669, 5054704, 91, '425144372', 'Tom Clancy', '1989', 'Clear and Present Danger', 'eng', '4.08', 105317, 108638, 574, 973, 3064, 21463, 44290, 38848, 'https://images.gr-assets.com/books/1291440438m/32669.jpg'),
(30120, 2501867, 24, '60513098', 'Shel Silverstein', '1996', 'Falling Up', 'en-US', '4.33', 111779, 114990, 1281, 1209, 2879, 15625, 32073, 63204, 'https://images.gr-assets.com/books/1327871908m/30120.jpg'),
(7821447, 10860635, 39, '61992704', 'Justin Halpern', '2010', 'Sh*t My Dad Says', '', '3.98', 102560, 116368, 7386, 2279, 6246, 25054, 40835, 41954, 'https://images.gr-assets.com/books/1370399211m/7821447.jpg'),
(23955, 1087421, 112, '2020336464', 'Irvine Welsh, Eric Lindor Fall', '1993', 'Trainspotting', 'fre', '4.07', 59453, 110677, 2029, 1757, 4329, 19778, 42833, 41980, 'https://images.gr-assets.com/books/1375258001m/23955.jpg'),
(29581, 1703483, 143, '553803727', 'Isaac Asimov', '1952', 'Foundation and Empire', 'eng', '4.20', 105595, 116241, 2054, 497, 2770, 18775, 44860, 49339, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6596, 376130, 82, '1878424505', 'Miguel Ruiz', '1997', 'The Four Agreements: A Practical Guide to Personal Freedom, A Toltec Wisdom Book', '', '4.12', 97016, 112472, 6132, 2463, 5818, 19047, 33836, 51308, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6614960, 6809039, 7, '743296435', 'Jodi Picoult', '2010', 'House Rules', 'en-US', '4.01', 111239, 119767, 9871, 1155, 5434, 25143, 47540, 40495, 'https://images.gr-assets.com/books/1290479868m/6614960.jpg'),
(22917, 1855987, 325, '394709306', 'Jacob Grimm, Wilhelm Grimm, Josef Scharl, Padraic Colum, Joseph Campbell, Margaret Raine Hunt, James Stern', '1812', 'Brüder Grimm: Kinder- und Hausmärchen', 'eng', '4.31', 116324, 128007, 1851, 772, 2476, 18421, 41254, 65084, 'https://images.gr-assets.com/books/1369540060m/22917.jpg'),
(3980, 1384549, 83, '744583276', 'E.L. Konigsburg', '1967', 'From the Mixed-Up Files of Mrs. Basil E. Frankweiler', 'eng', '4.15', 134537, 144108, 5440, 1943, 5209, 25045, 49509, 62402, 'https://images.gr-assets.com/books/1327784751m/3980.jpg'),
(16130549, 17851499, 116, '1476727651', 'Stephen King', '2013', 'Doctor Sleep', 'eng', '4.10', 95276, 116565, 13654, 1117, 4071, 19995, 48181, 43201, 'https://images.gr-assets.com/books/1362415596m/16130549.jpg'),
(4271, 2961843, 138, '140285679', 'Nick Hornby', '1998', 'About a Boy', 'en-US', '3.79', 101999, 112161, 2794, 1127, 5639, 32252, 49493, 23650, 'https://images.gr-assets.com/books/1382004144m/4271.jpg'),
(15760001, 21459719, 61, '', 'Samantha Young', '2012', 'On Dublin Street', 'eng', '4.24', 136761, 145943, 8174, 2615, 5087, 19239, 46853, 72149, 'https://images.gr-assets.com/books/1490401910m/15760001.jpg'),
(3206011, 3239458, 44, '1434768511', 'Francis Chan, Danae Yankoski, Chris Tomlin', '2008', 'Crazy Love: Overwhelmed by a Relentless God', 'eng', '4.15', 106351, 109134, 3011, 2800, 4867, 16969, 32636, 51862, 'https://images.gr-assets.com/books/1328763220m/3206011.jpg'),
(7770, 98895, 49, '7173687', 'Dr. Seuss', '1960', 'One Fish, Two Fish, Red Fish, Blue Fish', '', '4.12', 117582, 122653, 2074, 2153, 5979, 24401, 32449, 57671, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(32423, 2200683, 99, '', 'Dean Koontz', '1987', 'Watchers', '', '4.16', 109595, 113984, 2687, 1253, 3766, 20833, 38155, 49977, 'https://images.gr-assets.com/books/1308458930m/32423.jpg'),
(821611, 1602613, 298, '553213873', 'Helen Keller', '1902', 'The Story of My Life', 'eng', '4.07', 107313, 110056, 1683, 2514, 4654, 20960, 36225, 45703, 'https://images.gr-assets.com/books/1320429331m/821611.jpg'),
(6224935, 6405647, 71, '052595127X', 'Jonathan Tropper', '2009', 'This Is Where I Leave You', 'eng', '3.88', 98645, 111476, 11062, 1552, 6027, 26235, 47931, 29731, 'https://images.gr-assets.com/books/1467397162m/6224935.jpg'),
(7108001, 6596168, 62, '446563080', 'Seth Grahame-Smith', '2010', 'Abraham Lincoln: Vampire Hunter', 'en-US', '3.70', 106336, 118704, 11875, 4404, 10413, 31741, 42104, 30042, 'https://images.gr-assets.com/books/1291165397m/7108001.jpg'),
(271199, 542633, 17, '1591826039', 'Natsuki Takaya, Alethea Nibley, Athena Nibley', '1999', 'フルーツバスケット 1', 'eng', '4.23', 118467, 118803, 1541, 3190, 5265, 17379, 27721, 65248, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12985, 1359590, 956, '743482832', 'William Shakespeare', '1623', 'The Tempest', 'en-US', '3.80', 125178, 135537, 2831, 2394, 10084, 37832, 46984, 38243, 'https://images.gr-assets.com/books/1327793692m/12985.jpg'),
(6917952, 7145410, 61, '1905654944', 'P.C. Cast, Kristin Cast', '2010', 'Burned: A House of Night Novel', 'eng', '3.98', 120763, 129493, 2999, 3628, 8971, 27361, 35719, 53814, 'https://images.gr-assets.com/books/1327944437m/6917952.jpg'),
(5096, 750558, 11, '340829788', 'Stephen King, Dave McKean', '1997', 'Wizard and Glass', 'eng', '4.24', 105026, 120708, 4070, 1040, 4034, 17762, 39468, 58404, 'https://images.gr-assets.com/books/1327946510m/5096.jpg'),
(18302455, 25791820, 89, '385351399', 'Dave Eggers', '2013', 'The Circle', 'eng', '3.46', 109412, 129023, 17954, 5667, 16425, 41080, 44562, 21289, 'https://images.gr-assets.com/books/1376419833m/18302455.jpg'),
(9673436, 527941, 73, '439813786', 'Brian Selznick', '2007', 'The Invention of Hugo Cabret', 'eng', '4.23', 132159, 135507, 13128, 1601, 4222, 20022, 44895, 64767, 'https://images.gr-assets.com/books/1422312376m/9673436.jpg'),
(5479, 39947767, 38, '60776099', 'Aldous Huxley, Christopher Hitchens', '1932', 'Brave New World/Brave New World Revisited', 'eng', '4.16', 108124, 110115, 1012, 1215, 3784, 18335, 39753, 47028, 'https://images.gr-assets.com/books/1331315450m/5479.jpg'),
(1087204, 2192688, 17, '1591169151', 'Bisco Hatori', '2003', '桜蘭高校ホスト部 1', 'eng', '4.36', 113881, 114117, 949, 2338, 3593, 13572, 26298, 68316, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(18812405, 26747961, 76, '778316556', 'Mary Kubica', '2014', 'The Good Girl', 'eng', '3.81', 100936, 122753, 11244, 2697, 8081, 30628, 49795, 31552, 'https://images.gr-assets.com/books/1388340126m/18812405.jpg'),
(16070903, 21864517, 47, '', 'Abbi Glines', '2012', 'Fallen Too Far (Too Far, #1)', 'eng', '4.21', 138871, 143547, 7995, 3366, 6036, 19726, 42292, 72127, 'https://images.gr-assets.com/books/1349565157m/16070903.jpg'),
(18081809, 25391048, 51, '1250049377', 'Rainbow Rowell', '2014', 'Landline', 'eng', '3.55', 113805, 123422, 15782, 5386, 13087, 38025, 41984, 24940, 'https://images.gr-assets.com/books/1499378092m/18081809.jpg'),
(6262365, 6445600, 62, '1905654588', 'P.C. Cast, Kristin Cast', '2008', 'Tempted', 'eng', '3.96', 127387, 137910, 3165, 4010, 9937, 29521, 38966, 55476, 'https://images.gr-assets.com/books/1408633041m/6262365.jpg'),
(12497, 2996445, 104, '375706674', 'Cormac McCarthy', '2005', 'No Country for Old Men', 'eng', '4.12', 100513, 110082, 6281, 1533, 3795, 16790, 45304, 42660, 'https://images.gr-assets.com/books/1443231179m/12497.jpg'),
(6101138, 6278354, 2, '7230206', 'Hilary Mantel', '2009', 'Wolf Hall', 'eng', '3.85', 102936, 118705, 12827, 6673, 9916, 21464, 37421, 43231, 'https://images.gr-assets.com/books/1336576165m/6101138.jpg'),
(6294, 2001, 75, '006441034X', 'Diana Wynne Jones', '1986', 'Howl\'s Moving Castle', 'eng', '4.30', 123945, 140348, 9219, 1370, 3764, 18194, 45058, 71962, 'https://images.gr-assets.com/books/1407450489m/6294.jpg'),
(11570, 643924, 118, '2226131906', 'Stephen King, William Olivier Desmond', '2001', 'Dreamcatcher', 'fre', '3.59', 115855, 122599, 1856, 5234, 14010, 36926, 36389, 30040, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(16902, 2361393, 852, '691096120', 'Henry David Thoreau', '1854', 'Walden; or Life in the Woods', 'eng', '3.79', 108062, 120653, 3620, 5092, 10227, 27683, 39108, 38543, 'https://images.gr-assets.com/books/1465675526m/16902.jpg'),
(28921, 3333111, 170, '571225381', 'Kazuo Ishiguro', '1989', 'The Remains of the Day', 'eng', '4.10', 105892, 121763, 7455, 1500, 5028, 21065, 46702, 47468, 'https://images.gr-assets.com/books/1327128714m/28921.jpg'),
(10766509, 15677976, 91, '446547654', 'Nicholas Sparks', '2010', 'The Best of Me', 'en-US', '3.91', 103915, 124564, 9610, 2688, 9119, 28642, 40370, 43745, 'https://images.gr-assets.com/books/1301685366m/10766509.jpg'),
(10746542, 15657664, 110, '224094157', 'Julian Barnes', '2011', 'The Sense of an Ending', 'eng', '3.70', 94968, 114025, 12966, 2910, 9843, 30865, 45258, 25149, 'https://images.gr-assets.com/books/1311704453m/10746542.jpg'),
(64863, 1299178, 81, '312938993', 'Sue Grafton', '1982', 'A is for Alibi', 'en-US', '3.82', 116026, 121225, 3236, 2465, 7563, 34101, 42272, 34824, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1554, 3098166, 498, '1580495931', 'Sophocles, J.E. Thomas', '-430', 'Οἰδίπους Τύραννος', 'eng', '3.67', 119496, 134384, 2129, 3032, 12324, 42020, 45436, 31572, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(5960325, 5991850, 52, '1400067111', 'Lisa See', '2009', 'Shanghai Girls', 'eng', '3.87', 106729, 114862, 8654, 1334, 5638, 28727, 49667, 29496, 'https://images.gr-assets.com/books/1327968416m/5960325.jpg'),
(5659, 1061285, 1150, '143039091', 'Kenneth Grahame, Gillian Avery', '1908', 'The Wind in the Willows', 'eng', '3.98', 124612, 139791, 4057, 2608, 7140, 31301, 47933, 50809, 'https://images.gr-assets.com/books/1423183570m/5659.jpg'),
(15749186, 21442106, 60, '', 'Jenny Han', '2014', 'To All the Boys I\'ve Loved Before', 'eng', '4.11', 136938, 151311, 17356, 3388, 6744, 25033, 51196, 64950, 'https://images.gr-assets.com/books/1372086100m/15749186.jpg'),
(9516, 3303888, 39, '037571457X', 'Marjane Satrapi, Mattias Ripa', '2000', 'Persepolis', 'eng', '4.23', 117103, 119965, 6588, 1138, 3121, 16734, 45474, 53498, 'https://images.gr-assets.com/books/1425871473m/9516.jpg'),
(3087, 4574872, 557, '1420925431', 'E.M. Forster', '1908', 'A Room with a View', 'eng', '3.91', 109994, 122055, 3969, 2113, 7241, 28787, 45563, 38351, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6931356, 7162394, 53, '316084239', 'Kody Keplinger', '2010', 'The DUFF: Designated Ugly Fat Friend', 'en-US', '3.86', 136736, 146547, 11130, 5089, 10817, 33459, 47351, 49831, 'https://images.gr-assets.com/books/1271108843m/6931356.jpg'),
(1295102, 1284222, 38, '067001088X', 'Sarah Dessen', '2008', 'Lock and Key', 'eng', '4.01', 120475, 127649, 4950, 1910, 6407, 27658, 43875, 47799, 'https://images.gr-assets.com/books/1479691949m/1295102.jpg'),
(268602, 1097497, 101, '399151575', 'J.D. Robb', '1995', 'Naked in Death', 'en-US', '4.13', 78028, 126781, 4462, 3226, 5211, 21254, 39535, 57555, 'https://images.gr-assets.com/books/1297783540m/268602.jpg'),
(5355, 1254155, 112, '385339666', 'John Grisham', '1994', 'The Chamber', 'eng', '3.76', 102715, 106806, 1337, 1706, 7154, 32686, 38347, 26913, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(4502877, 4551869, 1, '', 'Stephenie Meyer', '2008', 'Midnight Sun (Partial Draft)', 'eng', '4.03', 138118, 138117, 9189, 6209, 9089, 23237, 35433, 64149, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(204042, 197436, 49, '1569319006', 'Masashi Kishimoto, Katy Bridges', '1999', 'NARUTO -ナルト- 巻ノ一 ', 'eng', '4.35', 104633, 105269, 1207, 2105, 3635, 13142, 23193, 63194, 'https://images.gr-assets.com/books/1435524806m/204042.jpg'),
(13227454, 18156927, 89, '812993292', 'Rachel Joyce', '2012', 'The Unlikely Pilgrimage of Harold Fry', 'eng', '3.89', 94012, 113876, 14583, 1925, 6032, 26242, 48627, 31050, 'https://images.gr-assets.com/books/1335816092m/13227454.jpg'),
(13262783, 18464379, 66, '307931889', 'David Levithan', '2012', 'Every Day', 'eng', '3.99', 121863, 133960, 15539, 2994, 7882, 26109, 47403, 49572, 'https://images.gr-assets.com/books/1356993940m/13262783.jpg'),
(8648, 1150594, 79, '312861877', 'Orson Scott Card', '1991', 'Xenocide', 'eng', '3.77', 104467, 115183, 3217, 1842, 8424, 33016, 43038, 28863, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(24128, 2682703, 1088, '743477561', 'William Shakespeare, Robert          Jackson, Barbara A. Mowat, Paul Werstine', '1596', 'The Merchant of Venice', 'eng', '3.78', 115621, 128289, 2616, 1925, 9212, 36917, 46745, 33490, 'https://images.gr-assets.com/books/1327871054m/24128.jpg'),
(402093, 1755568, 120, '440178002', 'James Clavell', '1975', 'Shōgun', 'eng', '4.37', 104339, 115527, 3075, 872, 2373, 13468, 35713, 63101, 'https://images.gr-assets.com/books/1397228842m/402093.jpg'),
(42900, 1214837, 52, '451219368', 'J.R. Ward', '2006', 'Lover Awakened (Black Dagger Brotherhood, #3)', 'eng', '4.45', 134249, 142754, 5926, 1196, 2744, 14043, 36965, 87806, 'https://images.gr-assets.com/books/1388773547m/42900.jpg'),
(16096824, 21905102, 54, '1619634449', 'Sarah J. Maas', '2015', 'A Court of Thorns and Roses', 'eng', '4.29', 167848, 188723, 25463, 3499, 6586, 22541, 56042, 100055, 'https://images.gr-assets.com/books/1491595796m/16096824.jpg'),
(13584236, 19171215, 31, '345803574', 'E.L. James', '2012', '', '', '4.13', 76876, 101613, 6275, 5505, 6427, 13235, 20763, 55683, 'https://images.gr-assets.com/books/1431573483m/13584236.jpg'),
(293595, 680304, 42, '068983568X', 'Bill Martin Jr., John Archambault, Lois Ehlert', '1989', 'Chicka Chicka Boom Boom', 'eng', '4.21', 105192, 116089, 3318, 2524, 5879, 18923, 26523, 62240, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6393631, 6582125, 28, '545132053', 'Raina Telgemeier', '2009', 'Smile', 'eng', '4.19', 98628, 102804, 6516, 3201, 4369, 15206, 26690, 53338, 'https://images.gr-assets.com/books/1438206850m/6393631.jpg'),
(5472, 2966408, 51, '151010269', 'George Orwell, Christopher Hitchens', '1950', ' Animal Farm & 1984', 'eng', '4.26', 116197, 118761, 1293, 1212, 3276, 16511, 40583, 57179, 'https://images.gr-assets.com/books/1327959366m/5472.jpg'),
(5161, 1207024, 48, '140286276', 'Jacquelyn Mitchard', '1996', 'The Deep End of the Ocean', 'en-US', '3.84', 102733, 104471, 1095, 1741, 6092, 27939, 39820, 28879, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(12555, 1898187, 79, '345457374', 'Amy Tan', '2001', 'The Bonesetter\'s Daughter', 'en-US', '3.98', 99926, 105274, 2871, 730, 3502, 23935, 46287, 30820, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(402013, 108471, 67, '60288140', 'Louise Rennison', '1999', 'Angus, Thongs and Full-Frontal Snogging', 'eng', '3.74', 112733, 118893, 3833, 4507, 10953, 31648, 35061, 36724, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(13538873, 6736543, 88, '374214913', 'Robin Sloan', '2012', 'Mr. Penumbra\'s 24-Hour Bookstore', 'eng', '3.75', 110552, 127396, 20150, 2419, 9582, 34956, 50973, 29466, 'https://images.gr-assets.com/books/1345089845m/13538873.jpg'),
(43448, 3311885, 111, '743496310', 'V.C. Andrews', '1979', 'Flowers in the Attic', 'eng', '3.79', 109063, 122259, 6055, 4467, 10284, 30206, 38523, 38779, 'https://images.gr-assets.com/books/1327880853m/43448.jpg'),
(25899336, 45424659, 80, '', 'Paul Kalanithi, Abraham Verghese', '2016', 'When Breath Becomes Air', 'eng', '4.32', 116771, 165673, 15933, 2913, 4244, 18562, 51535, 88419, 'https://images.gr-assets.com/books/1492677644m/25899336.jpg'),
(139463, 3264295, 49, '590452037', 'Jerry Spinelli', '1990', 'Maniac Magee', 'eng', '3.86', 99831, 104657, 3689, 2697, 7804, 25881, 33058, 35217, 'https://images.gr-assets.com/books/1395884800m/139463.jpg'),
(22290, 849507, 87, '99285444', 'Chuck Palahniuk', '1999', 'Invisible Monsters', 'eng', '4.00', 54937, 99936, 4657, 1625, 5710, 20718, 35026, 36857, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1625, 3267921, 861, '743482778', 'William Shakespeare', '1601', 'Twelfth Night; or, What You Will', 'eng', '3.97', 119607, 128893, 2615, 1494, 6329, 29985, 47546, 43539, 'https://images.gr-assets.com/books/1416628008m/1625.jpg'),
(12936, 2134456, 73, '385732562', 'Lois Lowry', '2000', 'Gathering Blue', 'eng', '3.80', 114917, 127810, 9480, 1516, 8009, 36770, 49694, 31821, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(902, 869832, 38, '014240120X', 'Ellen Raskin', '1978', 'The Westing Game', 'eng', '4.03', 117108, 124343, 7814, 2682, 6710, 24165, 41664, 49122, 'https://images.gr-assets.com/books/1356850909m/902.jpg'),
(15839976, 21580644, 83, '345539788', 'Pierce Brown', '2014', 'Red Rising', 'eng', '4.26', 104939, 128188, 15775, 2341, 4309, 15037, 42448, 64053, 'https://images.gr-assets.com/books/1461354651m/15839976.jpg'),
(3227063, 3261241, 48, '316033677', 'Brent Weeks', '2008', 'The Way of Shadows', 'en-US', '4.15', 109236, 114492, 4025, 2049, 4811, 17366, 39470, 50796, 'https://images.gr-assets.com/books/1327881551m/3227063.jpg'),
(30868, 1095121, 48, '812474945', 'Barbara Kingsolver', '1988', 'The Bean Trees', 'eng', '3.94', 105032, 113568, 5259, 1401, 5007, 25764, 47738, 33658, 'https://images.gr-assets.com/books/1443483961m/30868.jpg'),
(15745950, 21436019, 58, '1476712980', 'Jamie McGuire', '2013', 'Walking Disaster', 'eng', '4.23', 134022, 145114, 11348, 2597, 5841, 20243, 42657, 73776, 'https://images.gr-assets.com/books/1352338368m/15745950.jpg'),
(17332218, 16482835, 34, '765326361', 'Brandon Sanderson', '2014', 'Words of Radiance', 'eng', '4.77', 73572, 108176, 7261, 154, 404, 2653, 18272, 86693, 'https://images.gr-assets.com/books/1391535251m/17332218.jpg'),
(301736, 45331, 148, '076360013X', 'Sam McBratney, Anita Jeram', '1988', 'Guess How Much I Love You', 'en-US', '4.36', 104690, 107554, 1326, 1434, 3317, 13963, 25628, 63212, 'https://images.gr-assets.com/books/1320457007m/301736.jpg'),
(10967, 1189893, 76, '440221668', 'Diana Gabaldon', '2001', 'The Fiery Cross', 'eng', '4.26', 103552, 120438, 5048, 736, 3692, 18829, 37362, 59819, 'https://images.gr-assets.com/books/1407366842m/10967.jpg'),
(10628, 2454497, 119, '450042685', 'Stephen King, John D. MacDonald', '1978', 'Night Shift', 'en-GB', '3.96', 104248, 112357, 2038, 984, 4705, 28410, 41703, 36555, 'https://images.gr-assets.com/books/1342215309m/10628.jpg'),
(126232, 2318370, 109, '1400064562', 'Peter Benchley', '1974', 'Jaws', 'eng', '3.96', 102574, 106201, 2205, 1836, 5893, 24737, 35730, 38005, 'https://images.gr-assets.com/books/1327958767m/126232.jpg'),
(3867, 1882970, 96, '393328627', 'Nicole Krauss', '2005', 'The History of Love', 'eng', '3.91', 98379, 103470, 9622, 2251, 7414, 22791, 35939, 35075, 'https://images.gr-assets.com/books/1327911009m/3867.jpg'),
(19302, 2056462, 215, '142402494', 'Astrid Lindgren, Lauren Child, Florence Lamborn, Nancy Seligsohn', '1945', 'Pippi Långstrump', 'eng', '4.11', 123065, 130305, 2615, 1749, 5293, 25615, 41802, 55846, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png');
INSERT INTO `books` (`book_id`, `work_id`, `books_count`, `isbn`, `authors`, `original_publication_year`, `original_title`, `language_code`, `average_rating`, `ratings_count`, `work_ratings_count`, `work_text_reviews_count`, `ratings_1`, `ratings_2`, `ratings_3`, `ratings_4`, `ratings_5`, `image_url`) VALUES
(2967752, 1531887, 127, '1933372605', 'Muriel Barbery, Alison Anderson', '2006', 'L\'élégance du hérisson', 'eng', '3.73', 101669, 118556, 15335, 6480, 11258, 25525, 39331, 35962, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(2199, 2861004, 40, '743270754', 'Doris Kearns Goodwin, Suzanne Toren', '2005', 'Team of Rivals: The Political Genius of Abraham Lincoln', 'eng', '4.30', 102923, 107944, 5875, 3306, 3095, 11140, 31184, 59219, 'https://images.gr-assets.com/books/1347278868m/2199.jpg'),
(7091488, 6902804, 59, '441018645', 'Charlaine Harris', '2010', 'Dead in the Family', 'en-US', '3.88', 127379, 138027, 5325, 1531, 8555, 37227, 48154, 42560, 'https://images.gr-assets.com/books/1290479828m/7091488.jpg'),
(11989, 2058116, 388, '679720219', 'Albert Camus, Stuart Gilbert', '1947', 'La peste', 'en-US', '3.97', 95803, 111823, 3494, 1430, 5671, 23913, 44261, 36548, 'https://images.gr-assets.com/books/1342837610m/11989.jpg'),
(78418, 888312, 97, '439206480', 'Lemony Snicket, Brett Helquist', '1999', 'The Reptile Room', 'eng', '3.95', 130213, 141121, 4863, 1410, 6684, 34847, 52929, 45251, 'https://images.gr-assets.com/books/1352146294m/78418.jpg'),
(13547180, 19112736, 35, '145162137X', 'Susannah Cahalan', '2012', 'Brain on Fire', 'eng', '4.00', 92849, 103617, 8593, 1491, 4253, 21084, 42730, 34059, 'https://images.gr-assets.com/books/1353173297m/13547180.jpg'),
(305234, 296240, 62, '61214655', 'Melissa Marr', '2007', 'Wicked Lovely ', 'en-US', '3.69', 131034, 136316, 6591, 5909, 13879, 36275, 40331, 39922, 'https://images.gr-assets.com/books/1327814035m/305234.jpg'),
(420297, 561754, 55, '039515023X', 'H.A. Rey', '1941', 'Curious George', 'en-CA', '4.13', 105473, 112467, 845, 2090, 5211, 21963, 29649, 53554, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(27712, 1122661, 218, '525457585', 'Michael Ende, Ralph Manheim, Roswitha Quadflieg', '1979', 'Die unendliche Geschichte', 'eng', '4.17', 109110, 124555, 4303, 1684, 4743, 21142, 39618, 57368, 'https://images.gr-assets.com/books/1327871159m/27712.jpg'),
(13912, 2561274, 59, '571212921', 'Sylvia Nasar', '1998', 'A Beautiful Mind', 'en-GB', '4.12', 98276, 100629, 1100, 2044, 3393, 16728, 36997, 41467, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(41681, 1253187, 534, '1884365302', 'Upton Sinclair, Earl Lee, Kathleen DeGrave', '1906', 'The Jungle', 'eng', '3.72', 97468, 109522, 4750, 3719, 9393, 29116, 39239, 28055, 'https://images.gr-assets.com/books/1332140681m/41681.jpg'),
(2800905, 2451397, 52, '61662690', 'Kelley Armstrong', '2008', 'The Summoning', 'en-US', '4.03', 132285, 136832, 5830, 3330, 7629, 27219, 42153, 56501, 'https://images.gr-assets.com/books/1478986944m/2800905.jpg'),
(63697, 882844, 124, '684853949', 'Oliver Sacks', '1985', 'The Man Who Mistook His Wife for a Hat and Other Clinical Tales', 'en-US', '4.04', 102419, 111090, 4238, 1549, 4719, 21880, 42523, 40419, 'https://images.gr-assets.com/books/1447047702m/63697.jpg'),
(92364, 395229, 144, '006074815X', 'Ken Follett', '1978', 'Storm Island', 'en-US', '4.16', 93475, 99971, 1990, 578, 2147, 17130, 40554, 39562, 'https://images.gr-assets.com/books/1327939511m/92364.jpg'),
(78433, 3246409, 103, '1860498809', 'Margaret Atwood', '2000', 'The Blind Assassin', 'eng', '3.95', 98464, 111284, 5908, 2340, 6203, 23409, 42565, 36767, 'https://images.gr-assets.com/books/1451445426m/78433.jpg'),
(23164983, 17377739, 29, '1594747350', 'Ransom Riggs', '2014', 'Hollow City', 'eng', '4.07', 73149, 132924, 14221, 971, 4618, 25627, 54274, 47434, 'https://images.gr-assets.com/books/1429175859m/23164983.jpg'),
(359770, 932849, 43, '375727345', 'Andre Dubus III', '1999', 'House of Sand and Fog', 'eng', '3.83', 55381, 104803, 3589, 3192, 7268, 24787, 38793, 30763, 'https://images.gr-assets.com/books/1428883041m/359770.jpg'),
(17235026, 23753235, 69, '356500152', 'M.R. Carey', '2014', 'The Girl with All the Gifts', 'eng', '3.93', 99729, 119493, 14701, 2427, 6277, 24649, 49720, 36420, 'https://images.gr-assets.com/books/1403033579m/17235026.jpg'),
(77013, 481854, 134, '067973225X', 'William Faulkner', '1930', 'As I Lay Dying', 'eng', '3.72', 103547, 110705, 5508, 6178, 10613, 24587, 35971, 33356, 'https://images.gr-assets.com/books/1451810782m/77013.jpg'),
(98573, 1285373, 33, '747532036', 'Crockett Johnson', '1955', 'Harold and the Purple Crayon', 'eng', '4.24', 107221, 109752, 1570, 1865, 4213, 17288, 28357, 58029, 'https://images.gr-assets.com/books/1327390957m/98573.jpg'),
(35729, 1593685, 57, '451218043', 'J.R. Ward', '2006', 'Lover Eternal (Black Dagger Brotherhood, #2)', 'eng', '4.35', 137558, 146205, 5559, 1583, 3587, 17261, 42711, 81063, 'https://images.gr-assets.com/books/1300845974m/35729.jpg'),
(29580, 64823, 146, '553803735', 'Isaac Asimov', '1953', '', 'eng', '4.23', 96865, 105839, 1675, 394, 2296, 16502, 39942, 46705, 'https://images.gr-assets.com/books/1417900922m/29580.jpg'),
(91477, 855288, 59, '451458125', 'Jim Butcher', '2001', 'Fool Moon ', 'eng', '4.04', 111371, 122158, 5269, 580, 4224, 26768, 49154, 41432, 'https://images.gr-assets.com/books/1345556849m/91477.jpg'),
(15751404, 21445709, 68, '316204366', 'Malcolm Gladwell', '2011', 'David and Goliath', 'eng', '3.90', 90083, 101707, 7317, 1768, 5208, 24303, 40901, 29527, 'https://images.gr-assets.com/books/1391813567m/15751404.jpg'),
(870, 1959820, 37, '1591169208', 'Hiromu Arakawa, Akira Watanabe', '2002', '鋼の錬金術師 1', 'eng', '4.49', 93990, 94768, 1103, 972, 1734, 8737, 21751, 61574, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(64216, 1128601, 98, '61020648', 'Terry Pratchett', '1989', 'Guards! Guards!', 'eng', '4.32', 108652, 119069, 2610, 756, 1721, 14830, 43570, 58192, 'https://images.gr-assets.com/books/1431127356m/64216.jpg'),
(7815, 1659905, 57, '1400078431', 'Joan Didion', '2005', 'The Year of Magical Thinking', 'eng', '3.86', 94590, 99308, 7729, 2670, 7410, 22435, 35538, 31255, 'https://images.gr-assets.com/books/1327878638m/7815.jpg'),
(80660, 3106720, 98, '006112429X', 'Lionel Shriver', '2003', 'We Need to Talk About Kevin', 'eng', '4.07', 101343, 113939, 11369, 3643, 5596, 16884, 41057, 46759, 'https://images.gr-assets.com/books/1327865017m/80660.jpg'),
(112537, 1882772, 151, '1857231589', 'Arthur C. Clarke', '1973', 'Rendezvous with Rama', 'eng', '4.06', 93151, 103414, 2773, 836, 3999, 20716, 40151, 37712, 'https://images.gr-assets.com/books/1405456427m/112537.jpg'),
(43758, 3147123, 100, '345419626', 'Anne Rice', '1988', 'The Queen of the Damned', 'eng', '3.86', 110693, 117289, 1921, 1866, 8091, 31233, 39038, 37061, 'https://images.gr-assets.com/books/1327871992m/43758.jpg'),
(53835, 1959512, 836, '159308143X', 'Edith Wharton, Maureen Howard', '1920', 'The Age of Innocence', 'eng', '3.93', 102646, 114994, 5051, 2359, 6549, 25631, 42542, 37913, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(61535, 1746717, 104, '199291152', 'Richard Dawkins', '1976', 'The Selfish Gene', 'eng', '4.11', 96564, 101017, 2460, 2783, 4298, 15845, 33818, 44273, 'https://images.gr-assets.com/books/1366758096m/61535.jpg'),
(4965, 3211895, 20, '142001430', 'Geraldine Brooks', '2001', 'Year of Wonders: A Novel of the Plague', 'eng', '4.00', 104283, 108029, 8124, 1491, 4853, 21931, 43557, 36197, 'https://images.gr-assets.com/books/1327936622m/4965.jpg'),
(32508, 48262, 130, '446612731', 'Michael Connelly', '1992', 'The Black Echo', 'eng', '4.08', 98591, 108388, 3068, 1487, 2971, 19722, 45422, 38786, 'https://images.gr-assets.com/books/1344265342m/32508.jpg'),
(667, 287946, 460, '452281253', 'Ayn Rand', '1938', 'Anthem', 'eng', '3.62', 95620, 106766, 7096, 6095, 10982, 27984, 34074, 27631, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10140661, 15038778, 50, '1936305623', 'Sylvain Reynard', '2011', 'Gabriel\'s Inferno', 'eng', '4.02', 119633, 127883, 7192, 5445, 8481, 21252, 35901, 56804, 'https://images.gr-assets.com/books/1301789770m/10140661.jpg'),
(8073, 11045, 28, '689707495', 'Judi Barrett, Ron Barrett', '1978', 'Cloudy with a Chance of Meatballs', 'eng', '4.15', 104677, 105520, 1782, 1641, 4578, 19494, 30132, 49675, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6643090, 6837577, 65, '1400068932', 'Helen Simonson', '2010', 'Major Pettigrew\'s Last Stand', 'eng', '3.87', 97745, 109311, 11386, 1652, 5870, 26114, 46749, 28926, 'https://images.gr-assets.com/books/1320539020m/6643090.jpg'),
(5598113, 5769464, 73, '425227510', 'Nora Roberts', '2009', 'Vision in White', 'eng', '4.10', 103933, 107747, 3560, 1736, 4571, 20507, 35020, 45913, 'https://images.gr-assets.com/books/1316972164m/5598113.jpg'),
(10909, 2532689, 69, '074349671X', 'Jodi Picoult', '2006', 'The Tenth Circle', 'eng', '3.48', 99170, 103155, 5101, 3141, 12846, 36925, 32003, 18240, 'https://images.gr-assets.com/books/1348575053m/10909.jpg'),
(9067850, 13945952, 66, '1423140567', 'Rick Riordan', '2011', 'The Throne of Fire', 'eng', '4.20', 116360, 123024, 4900, 869, 3653, 20425, 42668, 55409, 'https://images.gr-assets.com/books/1366227973m/9067850.jpg'),
(51964, 50700, 64, '765348276', 'John Scalzi', '2005', 'Old Man\'s War', 'eng', '4.23', 97653, 109133, 6878, 883, 2704, 14821, 42929, 47796, 'https://images.gr-assets.com/books/1487044882m/51964.jpg'),
(32692, 4847031, 112, '831727527', 'Stephen King', '1992', 'Gerald\'s Game', 'eng', '3.47', 100158, 105777, 2445, 6039, 14425, 32757, 28853, 23703, 'https://images.gr-assets.com/books/1297737756m/32692.jpg'),
(6427, 617151, 76, '140255559', 'Janet Evanovich', '1996', 'Two for the Dough', 'eng', '4.11', 116171, 127548, 4045, 458, 3089, 25824, 51020, 47157, 'https://images.gr-assets.com/books/1330926461m/6427.jpg'),
(327847, 318479, 63, '684818701', 'Irma S. Rombauer, Marion Rombauer Becker, Ethan Becker', '1931', 'The Joy of Cooking', '', '4.14', 102348, 105920, 1009, 3036, 4504, 17338, 31223, 49819, 'https://images.gr-assets.com/books/1379313627m/327847.jpg'),
(21611, 423, 98, '60510862', 'Joe Haldeman', '1974', 'The Forever War', 'eng', '4.15', 87636, 101775, 4340, 919, 3331, 16929, 39208, 41388, 'https://images.gr-assets.com/books/1386852511m/21611.jpg'),
(10585, 1590722, 125, '8497597729', 'Stephen King, Bettina Blanch Tyroller', '1994', 'Insomnia', 'spa', '3.79', 100972, 109444, 2296, 3138, 9066, 28408, 35608, 33224, 'https://images.gr-assets.com/books/1354355494m/10585.jpg'),
(7603, 903067, 69, '812971060', 'Azar Nafisi', '2003', 'Reading Lolita in Tehran: A Memoir in Books', 'eng', '3.57', 94696, 98413, 6576, 4270, 10670, 28610, 34061, 20802, 'https://images.gr-assets.com/books/1397751318m/7603.jpg'),
(944073, 929009, 82, '575079797', 'Joe Abercrombie', '2006', 'The Blade Itself', 'eng', '4.14', 97501, 107614, 5521, 1844, 3944, 15593, 42598, 43635, 'https://images.gr-assets.com/books/1284167912m/944073.jpg'),
(114955, 508999, 121, '786851473', 'Eoin Colfer', '2002', 'The Arctic Incident', 'eng', '3.94', 108031, 114867, 2434, 1594, 5098, 27655, 44276, 36244, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(7354, 310090, 95, '743225422', 'Annie Proulx', '1993', 'The Shipping News', 'eng', '3.83', 103151, 109047, 4044, 3321, 8054, 24808, 40446, 32418, 'https://images.gr-assets.com/books/1469036074m/7354.jpg'),
(22318578, 41711738, 94, '1607747308', 'Marie Kondō, Cathy Hirano', '2011', '人生がときめく片づけの魔法', 'eng', '3.77', 105063, 129409, 17320, 3885, 10846, 32775, 44967, 36936, 'https://images.gr-assets.com/books/1418767178m/22318578.jpg'),
(18460392, 26113532, 74, '385755880', 'Jennifer Niven, فرانک معنوی', '2015', 'All the Bright Places', 'eng', '4.19', 132087, 146542, 21192, 2871, 6238, 21061, 45697, 70675, 'https://images.gr-assets.com/books/1404331702m/18460392.jpg'),
(231604, 866667, 95, '671011367', 'Kathy Reichs', '1997', 'Déjà Dead', 'eng', '3.86', 100369, 107636, 3098, 2579, 6023, 27054, 40072, 31908, 'https://images.gr-assets.com/books/1334157601m/231604.jpg'),
(17402605, 3354660, 85, '552562521', 'Michael Scott', '2007', 'The Alchemyst: The Secrets of The Immortal Nicholas Flamel', 'eng', '3.84', 58396, 115864, 7165, 3737, 8839, 27510, 38469, 37309, 'https://images.gr-assets.com/books/1361310229m/17402605.jpg'),
(10964693, 15668403, 78, '374203059', 'Jeffrey Eugenides', '2011', 'The Marriage Plot', 'eng', '3.42', 90551, 99271, 10634, 4472, 12653, 33397, 33807, 14942, 'https://images.gr-assets.com/books/1328736940m/10964693.jpg'),
(16527, 3471915, 126, '61120251', 'Isabel Allende, Margaret Sayers Peden', '1998', 'Hija de la fortuna', 'eng', '3.89', 89770, 96939, 3142, 1238, 4950, 24400, 39391, 26960, 'https://images.gr-assets.com/books/1299666780m/16527.jpg'),
(22609317, 42099141, 58, '1476789630', 'Jessica Knoll', '2015', 'Luckiest Girl Alive', 'eng', '3.48', 82504, 98163, 9278, 3530, 11319, 33135, 34874, 15305, 'https://images.gr-assets.com/books/1425975301m/22609317.jpg'),
(270730, 262457, 22, '689865198', 'Ellen Hopkins', '2004', 'Crank (Crank, #1)', 'eng', '4.16', 104168, 105823, 7239, 2207, 5055, 16890, 31143, 50528, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(17675462, 18970934, 64, '545424925', 'Maggie Stiefvater', '2012', 'The Raven Boys', 'eng', '4.05', 121727, 159696, 20296, 4299, 7656, 26761, 57622, 63358, 'https://images.gr-assets.com/books/1477103737m/17675462.jpg'),
(547094, 2223519, 26, '031286504X', 'Richard Matheson', '1954', 'I Am Legend and Other Stories', 'eng', '3.99', 98795, 102941, 4383, 1451, 5061, 22371, 38426, 35632, 'https://images.gr-assets.com/books/1317791583m/547094.jpg'),
(1736739, 3263906, 87, '140006208X', 'Elizabeth Strout', '2008', 'Olive Kitteridge', 'eng', '3.78', 85019, 108518, 14175, 2907, 8772, 26625, 41160, 29054, 'https://images.gr-assets.com/books/1320430655m/1736739.jpg'),
(20588698, 21933444, 71, '081299499X', 'Lena Dunham, Joana Avillez', '2014', 'Not that Kind of Girl', 'eng', '3.33', 88251, 97626, 7732, 6235, 14712, 32976, 28187, 15516, 'https://images.gr-assets.com/books/1402816003m/20588698.jpg'),
(76865, 1094028, 63, '66620996', 'James C. Collins', '2001', 'Good to Great: Why Some Companies Make the Leap... and Others Don\'t', 'eng', '4.04', 85277, 88373, 3100, 1550, 3682, 16971, 33234, 32936, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6137154, 6128277, 70, '803734611', 'Kristin Cashore', '2009', 'Fire', 'en-US', '4.12', 98180, 133462, 9159, 2390, 6020, 22684, 45051, 57317, 'https://images.gr-assets.com/books/1331535456m/6137154.jpg'),
(17716, 2635502, 187, '', 'Samuel Beckett', '1952', 'En attendant Godot', 'eng', '3.81', 98950, 113243, 3767, 4684, 9587, 25125, 36788, 37059, 'https://images.gr-assets.com/books/1327910301m/17716.jpg'),
(43035, 2949952, 1085, '439236193', 'Jack London', '1906', 'White Fang', 'eng', '3.94', 100223, 114519, 3017, 1823, 5850, 27264, 42175, 37407, 'https://images.gr-assets.com/books/1475878443m/43035.jpg'),
(4978, 2754911, 105, '141651693X', 'Stephen King, Bernie Wrightson', '2003', 'Wolves of the Calla', 'eng', '4.17', 98182, 109648, 2874, 1013, 3733, 17788, 39889, 47225, 'https://images.gr-assets.com/books/1419360231m/4978.jpg'),
(18116, 1943518, 81, '440238609', 'Philip Pullman', '2000', 'His Dark Materials', 'eng', '4.25', 88227, 102040, 4499, 1672, 3744, 13475, 31455, 51694, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(16081272, 21880254, 61, '1480095532', 'J.A. Redmerski', '2012', 'The Edge of Never', 'en-US', '4.26', 117508, 127686, 10763, 2681, 4863, 16493, 35712, 67937, 'https://images.gr-assets.com/books/1358810128m/16081272.jpg'),
(15776309, 21488217, 46, '006222543X', 'Kimberly McCreight', '2013', 'Reconstructing Amelia', 'eng', '3.82', 86965, 99269, 10243, 1616, 5754, 25360, 42578, 23961, 'https://images.gr-assets.com/books/1350193583m/15776309.jpg'),
(18693716, 25570700, 88, '525426582', 'Jojo Moyes', '2014', 'The One Plus One', 'eng', '3.94', 87412, 105933, 9884, 1548, 4059, 23143, 47569, 29614, 'https://images.gr-assets.com/books/1403185695m/18693716.jpg'),
(11899, 2245431, 138, '312305060', 'Michael Cunningham', '1998', 'The Hours', 'en-US', '3.91', 97462, 106608, 4109, 2540, 6874, 23497, 38208, 35489, 'https://images.gr-assets.com/books/1479663379m/11899.jpg'),
(15858248, 21607771, 34, '1623420024', 'Alice Clayton', '2012', 'Wallbanger', 'eng', '4.10', 134805, 145610, 11854, 3556, 7236, 23963, 46970, 63885, 'https://images.gr-assets.com/books/1352205960m/15858248.jpg'),
(4136, 674383, 42, '316191299', 'David Sedaris', '1997', 'Holidays on Ice', 'eng', '3.95', 82591, 90898, 4509, 1685, 5179, 20216, 32529, 31289, 'https://images.gr-assets.com/books/1328330843m/4136.jpg'),
(10584, 14015, 132, '451188462', 'Stephen King', '1996', 'Desperation', 'eng', '3.80', 94821, 100128, 1787, 2284, 8007, 27093, 32961, 29783, 'https://images.gr-assets.com/books/1395764566m/10584.jpg'),
(9369720, 10958266, 66, '385739168', 'Lauren Kate', '2011', 'Passion', 'eng', '3.89', 119735, 125252, 5464, 3673, 10214, 28665, 35799, 46901, 'https://images.gr-assets.com/books/1362339802m/9369720.jpg'),
(13089710, 18261314, 66, '385742886', 'James Dashner', '2012', 'The Kill Order', 'eng', '3.69', 96568, 109441, 8219, 4497, 11820, 28996, 31984, 32144, 'https://images.gr-assets.com/books/1330636153m/13089710.jpg'),
(11500217, 16435765, 67, '144477851X', 'Susan Ee', '2011', 'Angelfall', 'en-US', '4.19', 73886, 128028, 13789, 2909, 5168, 18366, 40347, 61238, 'https://images.gr-assets.com/books/1423238576m/11500217.jpg'),
(187020, 826474, 49, '375726403', 'Richard Russo', '2001', 'Empire Falls', 'eng', '3.91', 90811, 93054, 3722, 1469, 5164, 21151, 38013, 27257, 'https://images.gr-assets.com/books/1403184884m/187020.jpg'),
(13895, 588034, 56, '1857232097', 'Robert Jordan', '1993', 'The Fires of Heaven', 'en-US', '4.13', 93227, 104317, 1864, 863, 3367, 18885, 39542, 41660, 'https://images.gr-assets.com/books/1327866286m/13895.jpg'),
(20820994, 11409817, 71, '803734964', 'Jandy Nelson', '2014', 'I\'ll Give You the Sun', 'eng', '4.14', 140937, 153584, 16701, 7025, 7517, 20793, 40241, 78008, 'https://images.gr-assets.com/books/1496659336m/20820994.jpg'),
(22283, 1602338, 63, '009928264X', 'Chuck Palahniuk', '1999', 'Survivor', 'en-US', '3.93', 49551, 88231, 3078, 903, 4759, 20844, 34767, 26958, 'https://images.gr-assets.com/books/1327346693m/22283.jpg'),
(9420, 3284660, 80, '385338708', 'Sophie Kinsella', '2007', 'Shopaholic and Baby', 'eng', '3.77', 98130, 103621, 2434, 2341, 7661, 29880, 34857, 28882, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(5091, 6309701, 105, '1416524525', 'Stephen King', '2004', 'The Dark Tower', 'en-US', '4.27', 93296, 104085, 3945, 1630, 3759, 13375, 31203, 54118, 'https://images.gr-assets.com/books/1372296329m/5091.jpg'),
(6202690, 6383190, 14, '316070521', 'Catherine Hardwicke', '2009', 'Twilight Director\'s Notebook', 'en-US', '4.20', 88847, 89383, 417, 3040, 4242, 14517, 17460, 50124, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(9418, 3238753, 93, '440241812', 'Sophie Kinsella', '2001', 'Shopaholic Abroad', 'en-US', '3.75', 93498, 100718, 2785, 1635, 7071, 31036, 35898, 25078, 'https://images.gr-assets.com/books/1266449959m/9418.jpg'),
(5544, 321174, 97, '393316041', 'Richard Feynman', '1984', 'Surely You\'re Joking, Mr. Feynman! Adventures of a Curious Character', 'en-US', '4.29', 91625, 97719, 3500, 2080, 2616, 11036, 30784, 51203, 'https://images.gr-assets.com/books/1348445281m/5544.jpg'),
(6654313, 6848948, 76, '545123283', 'Maggie Stiefvater', '2010', 'Linger', 'en-US', '3.91', 125363, 133284, 8784, 2594, 8966, 31455, 44446, 45823, 'https://images.gr-assets.com/books/1292482391m/6654313.jpg'),
(3579, 7365, 40, '553609416', 'L.M. Montgomery', '1908', 'The Complete Anne of Green Gables Boxed Set', '', '4.42', 92142, 93067, 1438, 1395, 1991, 9286, 23394, 57001, 'https://images.gr-assets.com/books/1267721500m/3579.jpg'),
(7588, 3298883, 766, '142437344', 'James Joyce, Seamus Deane', '1916', 'A Portrait of the Artist as a Young Man', 'eng', '3.60', 92569, 103232, 3934, 6367, 11067, 26108, 33169, 26521, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(1166599, 1920889, 2, '765302306', 'Robert Jordan, Brandon Sanderson', '2009', 'The Gathering Storm', 'eng', '4.34', 94095, 100343, 2582, 1146, 2178, 10877, 32914, 53228, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(19089, 1461747, 665, '451529170', 'George Eliot, Michel Faber', '1871', 'Middlemarch', 'eng', '3.93', 95995, 107160, 5292, 3674, 7307, 22093, 33770, 40316, 'https://images.gr-assets.com/books/1481264628m/19089.jpg'),
(13496084, 19038910, 30, '', 'Colleen Hoover', '2012', 'Point of Retreat', 'eng', '4.30', 109344, 124145, 8186, 1204, 3594, 16043, 39235, 64069, 'https://images.gr-assets.com/books/1330543249m/13496084.jpg'),
(5350, 1110983, 118, '385339100', 'John Grisham', '1997', 'The Partner', '', '3.89', 86870, 91921, 1896, 746, 4116, 25227, 36009, 25823, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(30, 89369, 74, '345538374', 'J.R.R. Tolkien', '1973', 'The Hobbit and The Lord of the Rings', 'eng', '4.59', 90907, 94348, 1565, 826, 1281, 5819, 19982, 66440, 'https://images.gr-assets.com/books/1346072396m/30.jpg'),
(13517535, 14321512, 38, '146109111X', 'S.C. Stephens', '2009', 'Thoughtless', 'eng', '4.12', 90483, 123867, 8939, 5238, 6858, 17472, 32339, 61960, 'https://images.gr-assets.com/books/1331254339m/13517535.jpg'),
(425029, 7732, 110, '446350982', 'Scott Turow', '1986', 'Presumed Innocent', '', '4.10', 91774, 93835, 1114, 679, 2438, 18147, 38472, 34099, 'https://images.gr-assets.com/books/1404412704m/425029.jpg'),
(11597, 1316297, 131, '045052468X', 'Stephen King', '1989', 'The Dark Half', 'eng', '3.74', 94624, 99918, 1357, 1592, 7735, 31007, 34084, 25500, 'https://images.gr-assets.com/books/1430122353m/11597.jpg'),
(7968243, 12020129, 55, '316001929', 'Stacy Schiff', '2006', 'Cleopatra: A Life', 'eng', '3.62', 73994, 76685, 4534, 5022, 7484, 19656, 23929, 20594, 'https://images.gr-assets.com/books/1294098301m/7968243.jpg'),
(1911, 711993, 83, '374292795', 'Thomas L. Friedman', '2005', 'The World Is Flat: A Brief History of the Twenty-first Century', 'en-US', '3.66', 78271, 83905, 3277, 3342, 7529, 22896, 30500, 19638, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(17182126, 21366540, 64, '385743564', 'Brandon Sanderson', '2013', 'Steelheart', 'eng', '4.16', 76261, 102116, 10160, 1300, 3063, 15596, 40585, 41572, 'https://images.gr-assets.com/books/1357576738m/17182126.jpg'),
(766020, 56647, 75, '1558580093', 'Marcus Pfister, J. Alison James', '1995', '', 'en-US', '4.15', 95421, 96218, 1764, 2029, 4860, 17546, 24018, 47765, 'https://images.gr-assets.com/books/1328755881m/766020.jpg'),
(32829, 1924715, 1363, '553213970', 'Jules Verne', '1864', 'Voyage au centre de la Terre', 'eng', '3.84', 89410, 111100, 3483, 1238, 6342, 31442, 42106, 29972, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(6398634, 6587328, 73, '61583251', 'Gretchen Rubin', '2009', 'The Happiness Project', 'eng', '3.57', 94456, 102878, 10295, 4381, 11562, 30145, 34374, 22416, 'https://images.gr-assets.com/books/1256849491m/6398634.jpg'),
(216363, 2398287, 196, '679740678', 'Philip K. Dick', '1962', 'The Man in the High Castle', 'eng', '3.66', 84180, 108388, 7689, 2723, 10203, 31793, 40156, 23513, 'https://images.gr-assets.com/books/1448756803m/216363.jpg'),
(105992, 1077715, 52, '393322238', 'Vincent Bugliosi, Curt Gentry', '1974', 'Helter Skelter: The True Story of The Manson Murders', 'en-GB', '4.00', 92158, 94919, 2510, 1207, 4141, 21434, 35026, 33111, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(90072, 24501333, 3, '793551617', 'Robert Kapilow, Dr. Seuss', '', '', '', '4.44', 90574, 90691, 262, 803, 1943, 10781, 20483, 56681, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(15645, 2377563, 856, '812970063', 'Dante Alighieri, Anthony M. Esolen', '1320', 'Inferno', '', '3.99', 87511, 109200, 3576, 1930, 6267, 23308, 37680, 40015, 'https://images.gr-assets.com/books/1333579470m/15645.jpg'),
(11559200, 16499524, 64, '670023485', 'Deborah Harkness', '2012', 'Shadow of Night', 'eng', '4.04', 97925, 112860, 11911, 1531, 5320, 22037, 41964, 42008, 'https://images.gr-assets.com/books/1320604137m/11559200.jpg'),
(18816603, 26757264, 64, '345544927', 'Jodi Picoult', '2014', 'Leaving Time', 'eng', '3.94', 76553, 94584, 11792, 1874, 5604, 20043, 36018, 31045, 'https://images.gr-assets.com/books/1394487223m/18816603.jpg'),
(71811, 69530, 48, '441013813', 'Patricia Briggs', '2006', 'Moon Called', 'eng', '4.18', 129150, 136273, 6493, 2325, 4716, 20975, 46351, 61906, 'https://images.gr-assets.com/books/1272070347m/71811.jpg'),
(872333, 857698, 47, '786838922', 'Melissa de la Cruz', '2006', 'Blue Bloods', 'en-US', '3.68', 116687, 120989, 4679, 6024, 12543, 31927, 34222, 36273, 'https://images.gr-assets.com/books/1322281515m/872333.jpg'),
(40024, 2266643, 70, '812976142', 'Caleb Carr', '1994', 'The Alienist', 'eng', '4.05', 96981, 100908, 4026, 1798, 4571, 18715, 37572, 38252, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(25489625, 44848425, 36, '812993543', 'Ta-Nehisi Coates', '2015', 'Between the World and Me', 'eng', '4.40', 74218, 102946, 13113, 1438, 2375, 9177, 30541, 59415, 'https://images.gr-assets.com/books/1451435027m/25489625.jpg'),
(15997, 1031493, 819, '140424393', 'John Milton, John      Leonard', '1667', 'Paradise Lost', 'eng', '3.80', 96316, 104580, 2645, 3956, 9036, 25069, 32906, 33613, 'https://images.gr-assets.com/books/1455618673m/15997.jpg'),
(6463967, 6654434, 57, '393072231', 'Michael   Lewis', '2009', 'The Big Short: Inside the Doomsday Machine', 'en-US', '4.26', 37090, 98272, 5659, 972, 2139, 12082, 38479, 44600, 'https://images.gr-assets.com/books/1453470736m/6463967.jpg'),
(11564, 1836389, 115, '1416524290', 'Stephen King', '1999', 'The Girl Who Loved Tom Gordon', '', '3.56', 95768, 103156, 3281, 3658, 12231, 33253, 30730, 23284, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(8621462, 13492114, 138, '1406311529', 'Patrick Ness, Jim Kay, Siobhan Dowd', '2011', ' A Monster Calls ', 'eng', '4.36', 104579, 132593, 24522, 1622, 3307, 14260, 39473, 73931, 'https://images.gr-assets.com/books/1485991317m/8621462.jpg'),
(8253920, 7338128, 39, '765325942', 'Robert Jordan, Brandon Sanderson', '2010', 'Towers of Midnight', 'en-US', '4.42', 91383, 98092, 2356, 877, 1704, 9062, 30593, 55856, 'https://images.gr-assets.com/books/1358109459m/8253920.jpg'),
(540020, 1792180, 170, '553266306', 'Frederick Forsyth', '1971', 'The Day of the Jackal', 'eng', '4.25', 85883, 89606, 1439, 514, 1738, 12890, 34456, 40008, 'https://images.gr-assets.com/books/1405364996m/540020.jpg'),
(6732019, 6928276, 60, '307463745', 'Jason Fried, David Heinemeier Hansson', '2010', 'Rework', 'eng', '3.93', 88626, 92318, 2938, 3523, 6109, 18662, 29118, 34906, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(8909152, 13785503, 44, '525951989', 'Rainbow Rowell', '2011', 'Attachments', 'eng', '3.95', 105414, 119865, 16114, 2354, 5547, 25617, 48546, 37801, 'https://images.gr-assets.com/books/1499377988m/8909152.jpg'),
(3090465, 6440505, 36, '739352350', 'Stephenie Meyer, Ilyana Kadushin, Matt Walters', '2005', 'The Twilight Saga', '', '3.88', 89204, 96811, 3641, 7478, 7649, 16077, 23209, 42398, 'https://images.gr-assets.com/books/1327930511m/3090465.jpg'),
(12875258, 18028067, 49, '679644199', 'Carol Rifka Brunt', '2012', 'Tell the Wolves I\'m Home', 'eng', '4.04', 85582, 96546, 11579, 1702, 4342, 17472, 38357, 34673, 'https://images.gr-assets.com/books/1335450415m/12875258.jpg'),
(32085, 2247074, 77, '312965788', 'James Herriot', '1972', 'All Creatures Great And Small', 'eng', '4.31', 64779, 98251, 2770, 693, 1999, 13232, 32737, 49590, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(11408650, 13460686, 42, '', 'Michelle Hodkin', '2011', 'The Unbecoming of Mara Dyer', 'eng', '4.09', 83847, 128632, 14154, 3673, 7214, 20598, 39430, 57717, 'https://images.gr-assets.com/books/1336655755m/11408650.jpg'),
(6854, 1341652, 67, '312966091', 'Janet Evanovich', '1997', 'Three to Get Deadly', 'en-US', '4.14', 113400, 118305, 2912, 332, 2257, 23249, 47014, 45453, 'https://images.gr-assets.com/books/1311727539m/6854.jpg'),
(136116, 750426, 427, '1576469239', 'Emmuska Orczy', '1905', 'The Scarlet Pimpernel', 'eng', '4.06', 93217, 104012, 5087, 1465, 4492, 20565, 37114, 40376, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(44186, 640276, 23, '037582913X', 'Jon Stone, Michael J. Smollin', '1971', 'The Monster at the End of This Book', 'eng', '4.45', 102184, 104970, 2504, 1911, 2537, 10567, 21477, 68478, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(37741, 879886, 66, '425193799', 'Judy Blume', '1972', 'Tales of a Fourth Grade Nothing', 'eng', '4.09', 106435, 111139, 2081, 1954, 4102, 21881, 37208, 45994, 'https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png'),
(10194157, 15093325, 66, '805094598', 'Leigh Bardugo', '2012', 'Shadow and Bone', 'eng', '4.05', 135225, 149447, 17829, 2619, 6318, 27165, 57759, 55586, 'https://images.gr-assets.com/books/1339533695m/10194157.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `email`, `password`) VALUES
(1, 'abc', 'abc@project.com', '616263313233');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
