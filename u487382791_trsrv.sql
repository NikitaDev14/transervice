
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 20 2014 г., 14:45
-- Версия сервера: 5.1.66
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u487382791_trsrv`
--

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `header` text NOT NULL,
  `text` text NOT NULL,
  `tid` int(4) NOT NULL,
  PRIMARY KEY (`id`,`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `header`, `text`, `tid`) VALUES
(1, 'Домой', 'index.php', '', '<div>Home</div>', 0),
(2, 'О компании', 'about-company.php', 'О компании', '<p>About</p>', 0),
(3, 'Партнерам', 'partners.php', 'Партнерам', '<p>For partners</p>', 0),
(4, 'Контакты', 'contacts.php', 'Контакты', '<p>Contacts</p>', 0),
(5, 'Карьера', 'careers.php', 'Карьера', '<p>Careers</p>', 0),
(6, 'Карта сайта', 'sitemap.php', '', '', 0),
(7, 'Обратная связь', 'feedback.php', '\r\n', '<p>Feedback</p>', 0),
(8, 'Офисный переезд', 'corporate-relocation.php', 'Офисные переезды', '<p>Corporate relocation</p>', 11),
(9, 'Квартирный переезд', 'apartment-relocation.php', 'Квартирные переезды', '<p>Apartment relocation</p>', 12),
(10, 'Дачный переезд', 'dacha-relocation.php', 'Дачные переезды', '<p>Dacha relocation</p>', 13),
(11, 'Услуги грузчиков', 'loaders-services.php', 'Услуги грузчиков', '<p>Loaders services</p>', 14),
(12, 'Грузовое такси', 'cargo-taxi.php', 'Грузовое такси', '<p>Cargo taxi</p>', 15),
(13, 'Переезд в другой город', 'intercity-moving.php', 'Переезд в другой город', '<p>Intercity moving</p>', 16),
(14, 'Междугородние перевозки', 'intercity-cargo-delivery.php', 'Междугородние перевозки', '<p>Intercity cargo delivery</p>', 17),
(15, 'Городские перевозки', 'city-cargo-delivery.php', 'Городские перевозки', '<p>City cargo delivery</p>', 18),
(16, 'Логистические решения', 'logistics-solution.php', 'Логистические решения', '<p>Logistics solution</p>', 19),
(17, 'Сопутствующие услуги', 'accompanying-services.php', 'Организация трансферов', '<p>Accompanying services</p>', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `subpage`
--

CREATE TABLE IF NOT EXISTS `subpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `header` text NOT NULL,
  `body_text` text NOT NULL,
  `pagenamez` text NOT NULL,
  `poz` text NOT NULL,
  PRIMARY KEY (`id`,`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `subpage`
--

INSERT INTO `subpage` (`id`, `tid`, `header`, `body_text`, `pagenamez`, `poz`) VALUES
(1, 18, 'Форма договора на услугу городского переезда ', '<p>Contract</p>', 'Договора', ''),
(2, 12, 'Машины для квартирного переезда', '<p>Transport</p>', 'Транспорт', ''),
(3, 12, 'Упаковка вещей при переезде квартиры', '<p>Packing</p>', 'Упаковка', ''),
(4, 11, 'Машины для офисного переезда', '<p>Transport</p>', 'Транспорт\r\n', ''),
(5, 12, 'Услуги грузчиков при переезде в другую квартиру', '<p>Loaders</p>', 'Грузчики', ''),
(6, 13, 'Использование транспорта при переезде на дачу', '<p>Transport</p>', 'Транспорт', ''),
(7, 13, 'Услуги грузчиков при дачном переезде', '<p>Loaders</p>', 'Грузчики\r\n', ''),
(8, 12, 'Хранение домашних вещей облегчит Ваш квартирный переезд', '<p>Store</p>', 'Хранение домашних вещей', ''),
(9, 12, 'Перевозка пианино и роялей', '<p>Piano transport</p>', 'Перевозка пианино', ''),
(10, 11, 'Услуги грузчиков при перевозке офисной мебели', '<p>Loaders</p>', 'Услуги грузчиков', ''),
(11, 11, 'Временное хранение вещей при переезде офиса', '<p>Temp storage</p>', 'Временное хранение', ''),
(12, 11, 'Хранение бумажных архивов при переезде офиса', '<p>Archive storage</p>', 'Хранение архивов', ''),
(13, 11, 'Организация уборки помещений при переезде офиса', '<p>Room cleaning</p>', 'Уборка помещений', ''),
(14, 11, 'Договор на организацию офисного переезда', '<p>Contract</p>', 'Договора', ''),
(15, 12, '', '<p>Price</p>', 'Стоимость', ''),
(16, 15, 'Выбор транспорта для переезда по Москве', '<p>Transport</p>', 'Транспорт', ''),
(17, 17, 'Транспорт для услуг переезда - автомобили и их характеристики', '<p>Transport</p>', 'Транспорт', ''),
(18, 14, 'Стоимость услуг по переезду', '<p>Service orice</p>', 'Стоимость услуг грузчиков', ''),
(19, 14, 'Заказ грузчика', '<p>Loaders</p>', 'Грузчики', ''),
(20, 14, 'Форма договора', '<p>Contract</p>', 'Договора', ''),
(21, 14, 'Такелажные работы', '<p>Lifting works</p>', 'Такелажные работы', ''),
(22, 11, 'Стоимость услуг переезда', '<p>Relocation price</p>', 'Стоимость переезда', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
