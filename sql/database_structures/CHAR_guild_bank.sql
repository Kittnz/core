-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2021 at 02:46 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `tw_char`
--

-- --------------------------------------------------------

--
-- Table structure for table `guild_bank`
--

-- remove old guild_bank db
DROP TABLE IF EXISTS `guild_bank`;
CREATE TABLE `guild_bank` (
  `guildid` int(11) UNSIGNED NOT NULL,
  `guid` int(11) NOT NULL,
  `tab` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slot` tinyint(3) UNSIGNED NOT NULL,
  `item_template` int(11) UNSIGNED NOT NULL,
  `creatorGuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `charges` tinytext CHARACTER SET utf8,
  `flags` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `enchantments` text CHARACTER SET utf8 NOT NULL,
  `randomPropertyId` smallint(6) NOT NULL DEFAULT '0',
  `transmogrifyId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `durability` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `text` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `generated_loot` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guild_bank_log`
--

CREATE TABLE `guild_bank_log` (
  `log_id` int(11) NOT NULL,
  `guildid` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `tab` int(11) NOT NULL DEFAULT '1',
  `item` int(11) NOT NULL,
  `randomPropertyId` int(11) NOT NULL DEFAULT '0',
  `enchant` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL,
  `stamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_bank_money`
--

CREATE TABLE `guild_bank_money` (
  `guildid` int(11) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_bank_tabs`
--

CREATE TABLE `guild_bank_tabs` (
  `id` int(11) NOT NULL,
  `guildid` int(11) NOT NULL,
  `tabs` int(11) NOT NULL DEFAULT '0',
  `name1` varchar(64) NOT NULL DEFAULT 'Tab1',
  `name2` varchar(64) NOT NULL DEFAULT 'Tab2',
  `name3` varchar(64) NOT NULL DEFAULT 'Tab3',
  `name4` varchar(64) NOT NULL DEFAULT 'Tab4',
  `name5` varchar(64) NOT NULL DEFAULT 'Tab5',
  `icon1` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_08',
  `icon2` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_05',
  `icon3` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_03',
  `icon4` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_06',
  `icon5` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_02',
  `withdrawal1` int(11) NOT NULL DEFAULT '0',
  `withdrawal2` int(11) NOT NULL DEFAULT '0',
  `withdrawal3` int(11) NOT NULL DEFAULT '0',
  `withdrawal4` int(11) NOT NULL DEFAULT '0',
  `withdrawal5` int(11) NOT NULL DEFAULT '0',
  `minrank1` int(11) NOT NULL DEFAULT '0',
  `minrank2` int(11) NOT NULL DEFAULT '0',
  `minrank3` int(11) NOT NULL DEFAULT '0',
  `minrank4` int(11) NOT NULL DEFAULT '0',
  `minrank5` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guild_bank`
--
ALTER TABLE `guild_bank`
  ADD UNIQUE KEY `guildidandguid` (`guildid`,`guid`);

--
-- Indexes for table `guild_bank_log`
--
ALTER TABLE `guild_bank_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `stamp` (`stamp`);

--
-- Indexes for table `guild_bank_money`
--
ALTER TABLE `guild_bank_money`
  ADD PRIMARY KEY (`guildid`),
  ADD UNIQUE KEY `guildid` (`guildid`);

--
-- Indexes for table `guild_bank_tabs`
--
ALTER TABLE `guild_bank_tabs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guild_bank_log`
--
ALTER TABLE `guild_bank_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_bank_tabs`
--
ALTER TABLE `guild_bank_tabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
