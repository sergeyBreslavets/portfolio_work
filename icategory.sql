-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Ноя 30 2015 г., 01:54
-- Версия сервера: 5.5.42
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `casejoke_antibio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_icategory`
--

CREATE TABLE `oc_icategory` (
  `icategory_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `oc_icategory_description`
--

CREATE TABLE `oc_icategory_description` (
  `icategory_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Структура таблицы `oc_icategory_to_layout`
--

CREATE TABLE `oc_icategory_to_layout` (
  `icategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Структура таблицы `oc_icategory_to_store`
--

CREATE TABLE `oc_icategory_to_store` (
  `icategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Индексы таблицы `oc_icategory`
--
ALTER TABLE `oc_icategory`
  ADD PRIMARY KEY (`icategory_id`);

--
-- Индексы таблицы `oc_icategory_description`
--
ALTER TABLE `oc_icategory_description`
  ADD PRIMARY KEY (`icategory_id`,`language_id`);

--
-- Индексы таблицы `oc_icategory_to_layout`
--
ALTER TABLE `oc_icategory_to_layout`
  ADD PRIMARY KEY (`icategory_id`,`store_id`);

--
-- Индексы таблицы `oc_icategory_to_store`
--
ALTER TABLE `oc_icategory_to_store`
  ADD PRIMARY KEY (`icategory_id`,`store_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_icategory`
--
ALTER TABLE `oc_icategory`
  MODIFY `icategory_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;