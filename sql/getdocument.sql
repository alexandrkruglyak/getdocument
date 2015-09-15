-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 15 2015 г., 13:21
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `getdocument`
--

-- --------------------------------------------------------

--
-- Структура таблицы `obj_contracts`
--

CREATE TABLE IF NOT EXISTS `obj_contracts` (
  `id_contract` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `number` varchar(100) NOT NULL,
  `date_sign` date NOT NULL,
  `staff_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id_contract`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `obj_contracts`
--

INSERT INTO `obj_contracts` (`id_contract`, `id_customer`, `number`, `date_sign`, `staff_number`) VALUES
(1, 1, '1', '2015-09-14', '20'),
(2, 2, '2', '2015-09-16', '22'),
(3, 3, '3', '2015-09-16', '22'),
(4, 4, '4', '2015-09-18', '25'),
(5, 5, '5', '2015-09-18', '30'),
(6, 6, '6', '2015-09-19', '15'),
(7, 7, '7', '2015-09-19', '15');

-- --------------------------------------------------------

--
-- Структура таблицы `obj_customers`
--

CREATE TABLE IF NOT EXISTS `obj_customers` (
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `name_customer` varchar(250) NOT NULL,
  `company` enum('company_1','company_2','company_3') NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `obj_customers`
--

INSERT INTO `obj_customers` (`id_customer`, `name_customer`, `company`) VALUES
(1, 'Alexandr Kruglyak', 'company_1'),
(2, 'Vladimir Ershov', 'company_2'),
(3, 'Valeriy Ermishkin', 'company_3'),
(4, 'Valentin Strikalo', 'company_1'),
(5, 'Abdula Aliev', 'company_1'),
(6, 'Elena Grinenko', 'company_3'),
(7, 'Jesika Parker', 'company_2');

-- --------------------------------------------------------

--
-- Структура таблицы `obj_services`
--

CREATE TABLE IF NOT EXISTS `obj_services` (
  `id_service` int(11) NOT NULL AUTO_INCREMENT,
  `id_contract` int(11) NOT NULL,
  `title_service` varchar(255) NOT NULL,
  `status` enum('work','connecting','disconnected') NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `obj_services`
--

INSERT INTO `obj_services` (`id_service`, `id_contract`, `title_service`, `status`) VALUES
(1, 1, 'Created new Site', 'work'),
(2, 1, 'Update Site', 'connecting'),
(3, 1, 'Created game on PC', 'disconnected'),
(4, 2, 'Writed big text', 'work'),
(5, 3, 'Delete program', 'connecting'),
(6, 4, 'Parsing bags', 'work'),
(7, 5, 'Show index page', 'disconnected'),
(8, 6, 'Parsing error', 'work'),
(9, 7, 'Created antivirus', 'connecting');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
