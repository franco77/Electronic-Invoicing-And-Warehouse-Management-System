-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2019 at 08:02 AM
-- Server version: 8.0.17
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `el_invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `registered` int(11) NOT NULL,
  `last_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `username`, `password`, `email`, `image`, `registered`, `last_login`) VALUES
(1, 'Kiril Kirkov', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.admin', '16427489_1341882885869514_8248047917573720528_n2.jpg', 0, 1569051072);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `image`, `url`, `tags`, `time`) VALUES
(1, NULL, 'Api-for-invoices-manage_1', 'api,create invoices api', 1569053798),
(2, NULL, 'ImportExport_21', 'import,export,accounting', 1569053798);

-- --------------------------------------------------------

--
-- Table structure for table `blog_translates`
--

CREATE TABLE `blog_translates` (
  `id` int(11) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_translates`
--

INSERT INTO `blog_translates` (`id`, `for_id`, `abbr`, `title`, `description`) VALUES
(1, 1, 'en', 'Api for invoices manage', '<p>&nbsp;Soon we will launch a new feature allowing management of invoices by api</p>\r\n'),
(2, 2, 'en', 'Import/Export', '<p>We will soon make it possible to import and export to most used accounting programs</p>\r\n'),
(3, 1, 'bg', 'Api за управление на фактурите', '<p>Скоро ще бъде добавена опция за оправление на фактурите през API</p>\r\n'),
(4, 1, 'fr', 'Api pour les factures gérer', '<p>Bientôt, nous allons lancer une nouvelle fonctionnalité permettant la gestion des factures par api</p>\r\n'),
(5, 2, 'bg', 'Import/Export', '<p>Скоро ще направим възможно внасянето и експортирането в най-използваните счетоводни програми</p>\r\n'),
(6, 2, 'fr', 'Import/Export', '<p>Nous allons bientôt permettre l\'importation et l\'exportation vers les programmes de comptabilité les plus utilisés </p>');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_bulstat` varchar(50) NOT NULL,
  `is_to_person` tinyint(1) NOT NULL,
  `client_vat_registered` tinyint(1) NOT NULL,
  `vat_number` varchar(50) NOT NULL,
  `client_ident_num` varchar(50) NOT NULL,
  `client_address` varchar(500) NOT NULL,
  `client_city` varchar(80) NOT NULL,
  `client_country` varchar(80) NOT NULL,
  `accountable_person` varchar(200) NOT NULL COMMENT 'MOL',
  `recipient_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `for_user`, `for_company`, `client_name`, `client_bulstat`, `is_to_person`, `client_vat_registered`, `vat_number`, `client_ident_num`, `client_address`, `client_city`, `client_country`, `accountable_person`, `recipient_name`) VALUES
(1, 2, 1, 'kiril', '9898989', 0, 0, '', '', 'dqwdqw', 'dqwdqw', 'dqwdqw', 'dwqdq', 'dqwdq'),
(2, 2, 1, 'test', '312321', 0, 0, '', '', 'dwq', '', '', 'dqwdqw', '');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `value` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `value`, `name`) VALUES
(1, 'ALL', 'Albania Lek'),
(2, 'AFN', 'Afghanistan Afghani'),
(3, 'ARS', 'Argentina Peso'),
(4, 'AWG', 'Aruba Guilder'),
(5, 'AUD', 'Australia Dollar'),
(6, 'AZN', 'Azerbaijan New Manat'),
(7, 'BSD', 'Bahamas Dollar'),
(8, 'BBD', 'Barbados Dollar'),
(9, 'BDT', 'Bangladeshi taka'),
(10, 'BYR', 'Belarus Ruble'),
(11, 'BZD', 'Belize Dollar'),
(12, 'BMD', 'Bermuda Dollar'),
(13, 'BOB', 'Bolivia Boliviano'),
(14, 'BAM', 'Bosnia and Herzegovina Convertible Marka'),
(15, 'BWP', 'Botswana Pula'),
(16, 'BGN', 'Bulgaria Lev'),
(17, 'BRL', 'Brazil Real'),
(18, 'BND', 'Brunei Darussalam Dollar'),
(19, 'KHR', 'Cambodia Riel'),
(20, 'CAD', 'Canada Dollar'),
(21, 'KYD', 'Cayman Islands Dollar'),
(22, 'CLP', 'Chile Peso'),
(23, 'CNY', 'China Yuan Renminbi'),
(24, 'COP', 'Colombia Peso'),
(25, 'CRC', 'Costa Rica Colon'),
(26, 'HRK', 'Croatia Kuna'),
(27, 'CUP', 'Cuba Peso'),
(28, 'CZK', 'Czech Republic Koruna'),
(29, 'DKK', 'Denmark Krone'),
(30, 'DOP', 'Dominican Republic Peso'),
(31, 'XCD', 'East Caribbean Dollar'),
(32, 'EGP', 'Egypt Pound'),
(33, 'SVC', 'El Salvador Colon'),
(34, 'EEK', 'Estonia Kroon'),
(35, 'EUR', 'Euro Member Countries'),
(36, 'FKP', 'Falkland Islands (Malvinas) Pound'),
(37, 'FJD', 'Fiji Dollar'),
(38, 'GHC', 'Ghana Cedis'),
(39, 'GIP', 'Gibraltar Pound'),
(40, 'GTQ', 'Guatemala Quetzal'),
(41, 'GGP', 'Guernsey Pound'),
(42, 'GYD', 'Guyana Dollar'),
(43, 'HNL', 'Honduras Lempira'),
(44, 'HKD', 'Hong Kong Dollar'),
(45, 'HUF', 'Hungary Forint'),
(46, 'ISK', 'Iceland Krona'),
(47, 'INR', 'India Rupee'),
(48, 'IDR', 'Indonesia Rupiah'),
(49, 'IRR', 'Iran Rial'),
(50, 'IMP', 'Isle of Man Pound'),
(51, 'ILS', 'Israel Shekel'),
(52, 'JMD', 'Jamaica Dollar'),
(53, 'JPY', 'Japan Yen'),
(54, 'JEP', 'Jersey Pound'),
(55, 'KZT', 'Kazakhstan Tenge'),
(56, 'KPW', 'Korea (North) Won'),
(57, 'KRW', 'Korea (South) Won'),
(58, 'KGS', 'Kyrgyzstan Som'),
(59, 'LAK', 'Laos Kip'),
(60, 'LVL', 'Latvia Lat'),
(61, 'LBP', 'Lebanon Pound'),
(62, 'LRD', 'Liberia Dollar'),
(63, 'LTL', 'Lithuania Litas'),
(64, 'MKD', 'Macedonia Denar'),
(65, 'MYR', 'Malaysia Ringgit'),
(66, 'MUR', 'Mauritius Rupee'),
(67, 'MXN', 'Mexico Peso'),
(68, 'MNT', 'Mongolia Tughrik'),
(69, 'MZN', 'Mozambique Metical'),
(70, 'NAD', 'Namibia Dollar'),
(71, 'NPR', 'Nepal Rupee'),
(72, 'ANG', 'Netherlands Antilles Guilder'),
(73, 'NZD', 'New Zealand Dollar'),
(74, 'NIO', 'Nicaragua Cordoba'),
(75, 'NGN', 'Nigeria Naira'),
(76, 'NOK', 'Norway Krone'),
(77, 'OMR', 'Oman Rial'),
(78, 'PKR', 'Pakistan Rupee'),
(79, 'PAB', 'Panama Balboa'),
(80, 'PYG', 'Paraguay Guarani'),
(81, 'PEN', 'Peru Nuevo Sol'),
(82, 'PHP', 'Philippines Peso'),
(83, 'PLN', 'Poland Zloty'),
(84, 'QAR', 'Qatar Riyal'),
(85, 'RON', 'Romania New Leu'),
(86, 'RUB', 'Russia Ruble'),
(87, 'SHP', 'Saint Helena Pound'),
(88, 'SAR', 'Saudi Arabia Riyal'),
(89, 'RSD', 'Serbia Dinar'),
(90, 'SCR', 'Seychelles Rupee'),
(91, 'SGD', 'Singapore Dollar'),
(92, 'SBD', 'Solomon Islands Dollar'),
(93, 'SOS', 'Somalia Shilling'),
(94, 'ZAR', 'South Africa Rand'),
(95, 'LKR', 'Sri Lanka Rupee'),
(96, 'SEK', 'Sweden Krona'),
(97, 'CHF', 'Switzerland Franc'),
(98, 'SRD', 'Suriname Dollar'),
(99, 'SYP', 'Syria Pound'),
(100, 'TWD', 'Taiwan New Dollar'),
(101, 'THB', 'Thailand Baht'),
(102, 'TTD', 'Trinidad and Tobago Dollar'),
(103, 'TRY', 'Turkey Lira'),
(104, 'TRL', 'Turkey Lira'),
(105, 'TVD', 'Tuvalu Dollar'),
(106, 'UAH', 'Ukraine Hryvna'),
(107, 'GBP', 'United Kingdom Pound'),
(108, 'USD', 'United States Dollar'),
(109, 'UYU', 'Uruguay Peso'),
(110, 'UZS', 'Uzbekistan Som'),
(111, 'VEF', 'Venezuela Bolivar'),
(112, 'VND', 'Viet Nam Dong'),
(113, 'YER', 'Yemen Rial'),
(114, 'ZWD', 'Zimbabwe Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `cusom_plan_requests`
--

CREATE TABLE `cusom_plan_requests` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `invoices` int(10) UNSIGNED NOT NULL,
  `companies` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL COMMENT '0new, 1rejected, 2added_to_individual_plans',
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `email` varchar(250) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `schiffer` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `time_added` int(11) NOT NULL,
  `firms_access` varchar(200) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees_permissions`
--

CREATE TABLE `employees_permissions` (
  `id` int(11) NOT NULL,
  `for_employee` int(11) NOT NULL,
  `perm` varchar(50) NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `image`) VALUES
(2, 'inventory-management-software2.png'),
(3, 'priemo-predavatelen-protokol.gif'),
(4, '018479861_1-0e0362e0b2a11d28151ecc2a09929d71.png');

-- --------------------------------------------------------

--
-- Table structure for table `features_translates`
--

CREATE TABLE `features_translates` (
  `id` int(11) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features_translates`
--

INSERT INTO `features_translates` (`id`, `for_id`, `abbr`, `title`, `description`) VALUES
(3, 2, 'en', 'Inventory System', '<p>Through our storage system, you can add type moves (picking, inserting, moving) and keep track of stocks in your various warehouses. You can issue commodity receipts and have the opportunity to issue an invoice directly from a receipt.</p>\r\n'),
(4, 2, 'bg', 'Склад', '<p>Чрез складовата ни система ще можете да добавяте движения от тип (изкадване, вкарване, преместване) и да следите постоянните наличности в различните ви складове. Можете да издавате стокови разписки и има възможност и за издаване на фактура директно от стокова разписка.</p>\r\n'),
(5, 3, 'en', 'Protocols', '<p>Create acceptable transmission protocols, download/print.</p>\r\n'),
(6, 3, 'bg', 'Протоколи', '<p>Създаване на приемно предавателни протоколи. Сваляне като PDF и принтиране</p>\r\n'),
(7, 4, 'en', 'Warranty', '<p>You can issue warranties and download/print as pdf.</p>\r\n'),
(8, 4, 'bg', 'Гаранционни карти', '<p>Можете да създавате гаранционни карти колко да сваляте/принтирате като pdf</p>\r\n'),
(9, 2, 'fr', 'Entrepôt', '<p>Grâce à notre système de stockage, vous pouvez ajouter des mouvements de type (picking, insertion, déplacement) et garder une trace des stocks dans vos différents entrepôts. Vous pouvez émettre des reçus de marchandises et avoir la possibilité d\'émettre une facture directement à partir d\'un reçu.</p>\r\n'),
(10, 3, 'fr', 'Protocoles', '<p>Créez des protocoles de transmission hôte. Télécharger en PDF et Imprimer</p>\r\n'),
(11, 4, 'fr', 'Cartes de garantie', '<p>Vous pouvez cr&eacute;er des cartes de garantie combien vous t&eacute;l&eacute;chargez / imprimez en pdf</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `firms_payment_requests`
--

CREATE TABLE `firms_payment_requests` (
  `id` int(11) NOT NULL,
  `for_user` int(11) NOT NULL,
  `req_num` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `plan_type` varchar(50) NOT NULL,
  `plan_period` int(10) UNSIGNED NOT NULL COMMENT 'in months',
  `date_generated` int(11) NOT NULL,
  `date_activated` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0new, 1rejected, 2activated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `firms_plans`
--

CREATE TABLE `firms_plans` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `from_date` int(11) NOT NULL,
  `to_date` int(11) NOT NULL,
  `plan_type` varchar(50) NOT NULL,
  `num_invoices` int(11) NOT NULL,
  `num_firms` int(11) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time added',
  `sponsored` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `firms_plans`
--

INSERT INTO `firms_plans` (`id`, `for_user`, `from_date`, `to_date`, `plan_type`, `num_invoices`, `num_firms`, `time`, `sponsored`) VALUES
(2, 2, 1563703420, 1566381820, 'PRO', 500, 10, 1563703420, 1);

-- --------------------------------------------------------

--
-- Table structure for table `firms_translations`
--

CREATE TABLE `firms_translations` (
  `id` int(11) NOT NULL,
  `for_firm` int(10) UNSIGNED NOT NULL COMMENT 'firm id',
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(250) NOT NULL,
  `mol` varchar(100) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `trans_name` varchar(100) NOT NULL COMMENT 'for internally usage',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `firms_translations`
--

INSERT INTO `firms_translations` (`id`, `for_firm`, `name`, `address`, `city`, `mol`, `image`, `trans_name`, `is_default`) VALUES
(1, 1, 'Kiro', 'kdwqd', 'asdsa', 'dqwdw', NULL, 'default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `firms_users`
--

CREATE TABLE `firms_users` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL COMMENT 'user id',
  `bulstat` varchar(100) NOT NULL,
  `is_vat_registered` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` varchar(50) NOT NULL,
  `default_currency` varchar(10) DEFAULT NULL,
  `show_logo` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Show logo in invoices',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `firms_users`
--

INSERT INTO `firms_users` (`id`, `for_user`, `bulstat`, `is_vat_registered`, `vat_number`, `default_currency`, `show_logo`, `is_default`, `is_deleted`) VALUES
(1, 2, '91919191', 0, '', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `individual_plans`
--

CREATE TABLE `individual_plans` (
  `id` int(11) NOT NULL,
  `for_user` int(11) NOT NULL,
  `num_invoices` int(11) NOT NULL,
  `num_firms` int(11) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `inv_type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `inv_number` varchar(20) NOT NULL,
  `inv_currency` varchar(50) NOT NULL,
  `date_create` int(10) UNSIGNED NOT NULL,
  `date_tax_event` int(10) UNSIGNED NOT NULL,
  `cash_accounting` tinyint(1) NOT NULL,
  `have_maturity_date` tinyint(1) NOT NULL,
  `maturity_date` int(10) UNSIGNED NOT NULL,
  `remarks` longtext NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `to_inv_number` varchar(20) NOT NULL,
  `to_inv_date` int(10) UNSIGNED NOT NULL,
  `invoice_amount` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `discount_type` varchar(50) NOT NULL,
  `tax_base` varchar(50) NOT NULL,
  `vat_percent` varchar(50) NOT NULL,
  `vat_sum` varchar(50) NOT NULL,
  `no_vat` tinyint(1) NOT NULL,
  `no_vat_reason` varchar(255) NOT NULL,
  `final_total` varchar(50) NOT NULL,
  `composed` varchar(255) NOT NULL,
  `schiffer` varchar(100) NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `date_received` int(10) UNSIGNED NOT NULL,
  `return_reason` varchar(500) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `uniqid` varchar(50) NOT NULL COMMENT 'used for links'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `for_user`, `for_company`, `inv_type`, `status`, `inv_number`, `inv_currency`, `date_create`, `date_tax_event`, `cash_accounting`, `have_maturity_date`, `maturity_date`, `remarks`, `payment_method`, `payment_status`, `to_inv_number`, `to_inv_date`, `invoice_amount`, `discount`, `discount_type`, `tax_base`, `vat_percent`, `vat_sum`, `no_vat`, `no_vat_reason`, `final_total`, `composed`, `schiffer`, `created`, `date_received`, `return_reason`, `is_deleted`, `uniqid`) VALUES
(1, 2, 1, 'tax_inv', 'issued', '0000000001', 'EUR', 1569024000, 1569024000, 0, 0, 0, '', 'Easypay', 'unpaid', '', 0, '3.00', '0.00', 'EUR', '3.00', '20', '0.60', 0, '', '3.60', '', '', 1569056788, 0, '', 0, '2u5d85e81496c83'),
(2, 2, 1, 'tax_inv', 'issued', '0000000002', 'EUR', 1569024000, 1569024000, 0, 0, 1569024000, '', 'Credit or Debit Card', 'unpaid', '', 0, '0.00', '0.00', 'EUR', '0.00', '20', '0.00', 0, '', '0.00', '', '', 1569058057, 0, '', 0, '2u5d85ed09019e6');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_clients`
--

CREATE TABLE `invoices_clients` (
  `id` int(11) NOT NULL,
  `for_invoice` int(10) UNSIGNED NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_bulstat` varchar(50) NOT NULL,
  `is_to_person` tinyint(1) NOT NULL,
  `client_vat_registered` tinyint(1) NOT NULL,
  `vat_number` varchar(50) NOT NULL,
  `client_ident_num` varchar(50) NOT NULL,
  `client_address` varchar(500) NOT NULL,
  `client_city` varchar(80) NOT NULL,
  `client_country` varchar(80) NOT NULL,
  `accountable_person` varchar(200) NOT NULL,
  `recipient_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices_clients`
--

INSERT INTO `invoices_clients` (`id`, `for_invoice`, `for_user`, `for_company`, `client_name`, `client_bulstat`, `is_to_person`, `client_vat_registered`, `vat_number`, `client_ident_num`, `client_address`, `client_city`, `client_country`, `accountable_person`, `recipient_name`) VALUES
(1, 1, 2, 1, 'kiril', '9898989', 0, 0, '', '', 'dqwdqw', 'dqwdqw', 'dqwdqw', 'dwqdq', 'dqwdq'),
(2, 2, 2, 1, 'test', '312321', 0, 0, '', '', 'dwq', '', '', 'dqwdqw', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_firms`
--

CREATE TABLE `invoices_firms` (
  `id` int(11) NOT NULL,
  `for_invoice` int(10) UNSIGNED NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(250) NOT NULL,
  `accountable_person` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `is_vat_registered` tinyint(1) NOT NULL,
  `vat_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices_firms`
--

INSERT INTO `invoices_firms` (`id`, `for_invoice`, `for_user`, `bulstat`, `name`, `address`, `city`, `accountable_person`, `image`, `is_vat_registered`, `vat_number`) VALUES
(1, 1, 2, '91919191', 'Kiro', 'kdwqd', 'asdsa', 'dqwdw', '', 0, ''),
(2, 2, 2, '91919191', 'Kiro', 'kdwqd', 'asdsa', 'dqwdw', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_items`
--

CREATE TABLE `invoices_items` (
  `id` int(11) NOT NULL,
  `for_invoice` int(10) UNSIGNED NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `quantity_type` varchar(50) NOT NULL,
  `single_price` varchar(20) NOT NULL,
  `total_price` varchar(20) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices_items`
--

INSERT INTO `invoices_items` (`id`, `for_invoice`, `for_user`, `for_company`, `name`, `quantity`, `quantity_type`, `single_price`, `total_price`, `position`) VALUES
(1, 1, 2, 1, 'dwqdwq', '1.00', 'months', '1', '1.00', 1),
(2, 1, 2, 1, 'dwqdqw', '1.00', 'kilogram', '2', '2.00', 2),
(3, 2, 2, 1, 'dwq', '1.00', 'kilogram', '0.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices_languages`
--

CREATE TABLE `invoices_languages` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `mol` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `original` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `date_of_issue` varchar(100) NOT NULL,
  `a_date_of_a_tax_event` varchar(100) NOT NULL,
  `to_an_invoice` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `debit_note` varchar(100) NOT NULL,
  `credit_note` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pro_forma` varchar(100) NOT NULL,
  `products_name` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `single_price` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `tax_base` varchar(100) NOT NULL,
  `percentage_vat` varchar(100) NOT NULL,
  `vat_charget` varchar(100) NOT NULL,
  `everything` varchar(100) NOT NULL,
  `reason_for_non_vat` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `schiffer` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `from_date` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `receive_inv` varchar(100) NOT NULL,
  `i_accept` varchar(100) NOT NULL,
  `i_refuse` varchar(100) NOT NULL,
  `receive_inv_from` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices_languages`
--

INSERT INTO `invoices_languages` (`id`, `for_user`, `language_name`, `recipient`, `bulstat`, `mol`, `sender`, `original`, `number`, `date_of_issue`, `a_date_of_a_tax_event`, `to_an_invoice`, `invoice`, `debit_note`, `credit_note`, `remarks`, `pro_forma`, `products_name`, `quantity`, `single_price`, `value`, `amount`, `tax_base`, `percentage_vat`, `vat_charget`, `everything`, `reason_for_non_vat`, `compiled`, `signature`, `schiffer`, `page`, `payment_type`, `from_date`, `discount`, `receive_inv`, `i_accept`, `i_refuse`, `receive_inv_from`, `vat_number`) VALUES
(1, 0, 'English', 'Beneficiary\n', 'Bulstat:', 'Contact:', 'Sender', 'Original', 'Number', 'Date of issue', 'Date of tax event', 'To an invoice', 'Invoice', 'Debit note', 'Credit note', 'Remakrs', 'Pro-forma', 'Description', 'Quantity', 'Unit Cost', 'Price', 'Subtotal:', 'VAT base:', 'Percentage vat', 'Vat charged', 'Total:', 'Reason for non vat', 'Compiled', 'Signature', 'Schiffer', 'Page', 'Payment type', 'From date', 'Discount:', 'Reveice invoice', 'I accept', 'I refuse', 'Receive invoice from', 'Vat Number:'),
(2, 0, 'Bulgarian', 'Получател', 'Булстат:', 'Мол:', 'Доставчик', 'Оригинал', 'Номер', 'Дата на издаване', 'Дата на данъчно събитие', 'Към фактура', 'Фактура', 'Дебитно известие', 'Кредитно известие', 'Забележки', 'Проформа', 'Наименование на продукта', 'Количество', 'Ед.цена', 'Стойност', 'Сума по фактура:', 'Данъчна основа:', 'Процент ДДС', 'ДДС', 'Общо:', 'Причина за неначисляване на ДДС', 'Съставил', 'Подпис', 'Шифър', 'Страница', 'Начин на плащане', 'От дата', 'Отстъпка:', 'Получихте фактура', 'Приемам', 'Отказвам', 'Получихте фактура от', 'ДДС Номер:'),
(3, 0, 'Français', 'Destinataire', 'Bulstat:', 'Destinataire:', 'Fournisseur', 'Original', 'Numéro', 'Date d\'émission', 'Date de l\'événement fiscal', 'Pour une facture', 'Facture', 'Notification de la dette', 'Note de crédit', 'Remarques', 'Proform', 'Nom du produit', 'Quantité', 'Prix unique', 'Valeur', 'Montant de la facture:', 'Base d\'imposition:', 'Pourcentage de TVA', 'TVA', 'Total:', 'Raison de la TVA non facturée', 'Compilé', 'Signature', 'Schiffer', 'Page', 'Méthode de paiement', 'De Date', 'Remise:', 'Vous avez reçu une facture', 'J\'accepte', 'Je refuse', 'Vous avez reçu une facture de', 'Numéro de TVA:');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_logs`
--

CREATE TABLE `invoices_logs` (
  `id` int(11) NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(50) NOT NULL,
  `info` varchar(500) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices_translations`
--

CREATE TABLE `invoices_translations` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_invoice` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `mol` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `original` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `date_of_issue` varchar(100) NOT NULL,
  `a_date_of_a_tax_event` varchar(100) NOT NULL,
  `to_an_invoice` varchar(100) NOT NULL,
  `from_date` varchar(100) NOT NULL COMMENT 'to an invoice from date',
  `invoice` varchar(100) NOT NULL,
  `debit_note` varchar(100) NOT NULL,
  `credit_note` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pro_forma` varchar(100) NOT NULL,
  `products_name` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `single_price` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `tax_base` varchar(100) NOT NULL,
  `percentage_vat` varchar(100) NOT NULL,
  `vat_charget` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `everything` varchar(100) NOT NULL,
  `reason_for_non_vat` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `schiffer` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `receive_inv` varchar(100) NOT NULL,
  `i_accept` varchar(100) NOT NULL,
  `i_refuse` varchar(100) NOT NULL,
  `receive_inv_from` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices_translations`
--

INSERT INTO `invoices_translations` (`id`, `for_user`, `for_invoice`, `language_name`, `recipient`, `bulstat`, `mol`, `sender`, `original`, `number`, `date_of_issue`, `a_date_of_a_tax_event`, `to_an_invoice`, `from_date`, `invoice`, `debit_note`, `credit_note`, `remarks`, `pro_forma`, `products_name`, `quantity`, `single_price`, `value`, `amount`, `tax_base`, `percentage_vat`, `vat_charget`, `discount`, `everything`, `reason_for_non_vat`, `compiled`, `signature`, `schiffer`, `payment_type`, `page`, `receive_inv`, `i_accept`, `i_refuse`, `receive_inv_from`, `vat_number`) VALUES
(1, 2, 1, 'Français', 'Destinataire', 'Bulstat:', 'Destinataire:', 'Fournisseur', 'Original', 'Numéro', 'Date d\'émission', 'Date de l\'événement fiscal', 'Pour une facture', 'De Date', 'Facture', 'Notification de la dette', 'Note de crédit', 'Remarques', 'Proform', 'Nom du produit', 'Quantité', 'Prix unique', 'Valeur', 'Montant de la facture:', 'Base d\'imposition:', 'Pourcentage de TVA', 'TVA', 'Remise:', 'Total:', 'Raison de la TVA non facturée', 'Compilé', 'Signature', 'Schiffer', 'Méthode de paiement', 'Page', 'Vous avez reçu une facture', 'J\'accepte', 'Je refuse', 'Vous avez reçu une facture de', 'Numéro de TVA:'),
(2, 2, 2, 'Français', 'Destinataire', 'Bulstat:', 'Destinataire:', 'Fournisseur', 'Original', 'Numéro', 'Date d\'émission', 'Date de l\'événement fiscal', 'Pour une facture', 'De Date', 'Facture', 'Notification de la dette', 'Note de crédit', 'Remarques', 'Proform', 'Nom du produit', 'Quantité', 'Prix unique', 'Valeur', 'Montant de la facture:', 'Base d\'imposition:', 'Pourcentage de TVA', 'TVA', 'Remise:', 'Total:', 'Raison de la TVA non facturée', 'Compilé', 'Signature', 'Schiffer', 'Méthode de paiement', 'Page', 'Vous avez reçu une facture', 'J\'accepte', 'Je refuse', 'Vous avez reçu une facture de', 'Numéro de TVA:');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `quantity_type` varchar(50) NOT NULL,
  `single_price` varchar(20) NOT NULL,
  `currency` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `for_user`, `for_company`, `name`, `quantity_type`, `single_price`, `currency`) VALUES
(1, 2, 1, 'dwqdwq', 'months', '1', 'EUR'),
(2, 2, 1, 'dwqdqw', 'kilogram', '2', 'EUR'),
(3, 2, 1, 'dwq', 'kilogram', '0.00', 'EUR');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `currencyKey` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `flag`, `currencyKey`) VALUES
(2, 'en', 'english', 'EUR', 'en.png', 'EUR'),
(3, 'bg', 'bulgarian', 'лв', '', 'bgn'),
(4, 'fr', 'france', 'EUR', '', 'EUR');

-- --------------------------------------------------------

--
-- Table structure for table `movements`
--

CREATE TABLE `movements` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `movement_number` varchar(20) NOT NULL,
  `movement_type` varchar(15) NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `movement_currency` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `discount_type` varchar(50) NOT NULL,
  `tax_base` varchar(50) NOT NULL,
  `vat_percent` varchar(50) NOT NULL,
  `vat_sum` varchar(50) NOT NULL,
  `no_vat_reason` varchar(255) NOT NULL,
  `final_total` varchar(50) NOT NULL,
  `remarks` longtext NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `created` int(10) UNSIGNED NOT NULL COMMENT 'date_create field in view',
  `cancelled` tinyint(1) NOT NULL DEFAULT '0',
  `betrayed` varchar(100) NOT NULL,
  `accepted` varchar(100) NOT NULL,
  `lot` varchar(20) NOT NULL,
  `expire_date` int(10) UNSIGNED NOT NULL,
  `to_invoice` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movements_clients`
--

CREATE TABLE `movements_clients` (
  `id` int(11) NOT NULL,
  `for_movement` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_bulstat` varchar(50) NOT NULL,
  `is_to_person` tinyint(1) NOT NULL,
  `client_vat_registered` tinyint(1) NOT NULL,
  `vat_number` varchar(50) NOT NULL,
  `client_ident_num` varchar(50) NOT NULL,
  `client_address` varchar(500) NOT NULL,
  `client_city` varchar(80) NOT NULL,
  `client_country` varchar(80) NOT NULL,
  `accountable_person` varchar(200) NOT NULL,
  `recipient_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movements_firms`
--

CREATE TABLE `movements_firms` (
  `id` int(11) NOT NULL,
  `for_movement` int(10) UNSIGNED NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(250) NOT NULL,
  `accountable_person` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `is_vat_registered` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movements_from_to_store`
--

CREATE TABLE `movements_from_to_store` (
  `id` int(11) NOT NULL,
  `for_movement` int(10) UNSIGNED NOT NULL,
  `from_store` varchar(250) NOT NULL,
  `to_store` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movements_languages`
--

CREATE TABLE `movements_languages` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `bill_of_goods` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `betrayed` varchar(100) NOT NULL,
  `accepted` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `vat_amount` varchar(100) NOT NULL,
  `no_vat_reason` varchar(100) NOT NULL,
  `final_amount` varchar(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` varchar(10) NOT NULL,
  `product_quantity_type` varchar(100) NOT NULL,
  `single_price` varchar(20) NOT NULL,
  `product_amount` varchar(20) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL,
  `lot` varchar(100) NOT NULL,
  `expire_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movements_languages`
--

INSERT INTO `movements_languages` (`id`, `for_user`, `language_name`, `bill_of_goods`, `date`, `recipient`, `sender`, `bulstat`, `address`, `betrayed`, `accepted`, `amount`, `vat`, `vat_amount`, `no_vat_reason`, `final_amount`, `product_name`, `product_quantity`, `product_quantity_type`, `single_price`, `product_amount`, `payment_method`, `page`, `city`, `remarks`, `vat_number`, `lot`, `expire_date`) VALUES
(1, 0, 'English', 'Store order', 'Date', 'Recipient', 'Sender', 'Bulstat', 'Address', 'Betrayed', 'Accepted', 'Amount', 'Vat', 'Vat amount', 'No vat reason', 'Amount', 'Name', 'Quantity', 'Quantity type', 'Price', 'Amount', 'Payment method', 'Page', 'City', 'Remarks', 'Vat number', 'LOT#', 'Expiry date'),
(2, 0, 'Bulgarian', 'Стокова разписка', 'Дата', 'Получател', 'Доставчик', 'Булстат', 'Адрес', 'Предал', 'Приел', 'Сума', 'ДДС', 'ДДС сума', 'Основание за неначисляване на ддс', 'Общо', 'Наименование на стока', 'Количество', 'Тип количество', 'Ед.цена', 'Общо', 'Начин на плащане', 'Страница', 'Град', 'Забележки', 'ДДС Номер', 'Партиден номер', 'Срок на годност'),
(3, 0, 'Français', 'Reçu de marchandise', 'Date', 'Destinataire', 'Fournisseur', 'Bulstat', 'Adresse', 'Il a abandonné', 'Il a accepté', 'Montant', 'TVA', 'Montant de la TVA', 'Raison de la non-facturation de DPS', 'Total', 'Nom du produit', 'Quantité', 'Type de quantité', 'Prix unique', 'Total', 'Méthode de paiement', 'Page', 'Ville', 'Remarques', 'Numéro de TVA', 'Numéro de lot', 'Durée de conservation');

-- --------------------------------------------------------

--
-- Table structure for table `movements_revisions`
--

CREATE TABLE `movements_revisions` (
  `id` int(11) NOT NULL,
  `for_movement` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `before_revision` varchar(20) NOT NULL,
  `after_revision` varchar(20) NOT NULL,
  `difference` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movements_translations`
--

CREATE TABLE `movements_translations` (
  `id` int(11) NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `for_movement` int(10) UNSIGNED NOT NULL,
  `bill_of_goods` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `betrayed` varchar(100) NOT NULL,
  `accepted` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `vat_amount` varchar(100) NOT NULL,
  `no_vat_reason` varchar(100) NOT NULL,
  `final_amount` varchar(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` varchar(10) NOT NULL,
  `product_quantity_type` varchar(100) NOT NULL,
  `single_price` varchar(20) NOT NULL,
  `product_amount` varchar(20) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL,
  `lot` varchar(100) NOT NULL,
  `expire_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movement_items`
--

CREATE TABLE `movement_items` (
  `id` int(11) NOT NULL,
  `for_movement` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `quantity_type` varchar(50) NOT NULL,
  `single_price` varchar(20) NOT NULL,
  `total_price` varchar(20) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`) VALUES
(1, 'Credit or Debit Card'),
(2, 'Check'),
(3, 'PayPal'),
(4, 'Easypay'),
(5, 'E-Pay'),
(6, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `protocols`
--

CREATE TABLE `protocols` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `protocol_number` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `from_date` int(10) UNSIGNED NOT NULL,
  `to_invoice` varchar(20) NOT NULL,
  `remarks` longtext NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `received` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL,
  `provider_transmit` text NOT NULL,
  `contract` text NOT NULL,
  `amount` varchar(50) NOT NULL,
  `vat_percent` varchar(50) NOT NULL,
  `vat_sum` varchar(50) NOT NULL,
  `final_total` varchar(50) NOT NULL,
  `currency` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `protocols_clients`
--

CREATE TABLE `protocols_clients` (
  `id` int(11) NOT NULL,
  `for_protocol` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_bulstat` varchar(50) NOT NULL,
  `is_to_person` tinyint(1) NOT NULL,
  `client_vat_registered` tinyint(1) NOT NULL,
  `vat_number` varchar(50) NOT NULL,
  `client_ident_num` varchar(50) NOT NULL,
  `client_address` varchar(500) NOT NULL,
  `client_city` varchar(80) NOT NULL,
  `client_country` varchar(80) NOT NULL,
  `accountable_person` varchar(200) NOT NULL,
  `recipient_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `protocols_contracts`
--

CREATE TABLE `protocols_contracts` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `contract` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `protocols_firms`
--

CREATE TABLE `protocols_firms` (
  `id` int(11) NOT NULL,
  `for_protocol` int(10) UNSIGNED NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(250) NOT NULL,
  `accountable_person` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `is_vat_registered` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `protocols_items`
--

CREATE TABLE `protocols_items` (
  `id` int(11) NOT NULL,
  `for_protocol` int(10) UNSIGNED NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `quantity_type` varchar(50) NOT NULL,
  `single_price` varchar(20) NOT NULL,
  `total_price` varchar(20) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `protocols_languages`
--

CREATE TABLE `protocols_languages` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `transmission_protocol` varchar(100) NOT NULL,
  `protocol_number` varchar(100) NOT NULL,
  `from_date` varchar(100) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` varchar(100) NOT NULL,
  `product_quantity_type` varchar(100) NOT NULL,
  `product_single_price` varchar(100) NOT NULL,
  `product_final_price` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `vat_amount` varchar(100) NOT NULL,
  `final_amount` varchar(100) NOT NULL,
  `received` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `to_invoice` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `protocols_languages`
--

INSERT INTO `protocols_languages` (`id`, `for_user`, `language_name`, `transmission_protocol`, `protocol_number`, `from_date`, `recipient`, `supplier`, `product_name`, `product_quantity`, `product_quantity_type`, `product_single_price`, `product_final_price`, `amount`, `vat`, `vat_amount`, `final_amount`, `received`, `compiled`, `signature`, `city`, `address`, `bulstat`, `to_invoice`, `page`, `vat_number`) VALUES
(1, 0, 'English', 'Admission - transmission protocol', 'Number', 'From date', 'Recipient', 'Supplier', 'Name', 'Quantity', 'Quantity type', 'Single Price', 'Amount', 'Amount', 'Vat', 'Vat amount', 'Amount', 'Received', 'Compiled', 'Signature', 'City', 'Address', 'Bulstat', 'To invoice', 'Page', 'Vat number'),
(2, 0, 'Bulgarian', 'Приемно-предавателен протокол', 'Номер', 'От дата', 'Получател', 'Доставчик', 'Име', 'Количество', 'Тип', 'Ец.цена', 'Крайна цена', 'Цена', 'ДДС', 'ДДС Сума', 'Сума крайна', 'Получил', 'Съставил', 'Подпис', 'Град', 'Адрес', 'Булстат', 'Към фактура', 'Страница', 'ДДС Номер'),
(3, 0, 'Français', 'Protocole d\'acceptation', 'Numéro', 'De Date', 'Destinataire', 'Fournisseur', 'Nom', 'Quantité', 'Type', 'Prix unique', 'Prix final', 'Prix', 'TVA', 'Montant de la TVA', 'Montant final', 'Reçu', 'Compilé', 'Signature', 'Ville', 'Adresse', 'Bulstat', 'Pour une facture', 'Page', 'Numéro de TVA');

-- --------------------------------------------------------

--
-- Table structure for table `protocols_provider_transmit`
--

CREATE TABLE `protocols_provider_transmit` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `protocols_translations`
--

CREATE TABLE `protocols_translations` (
  `id` int(11) NOT NULL,
  `for_protocol` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `transmission_protocol` varchar(100) NOT NULL,
  `protocol_number` varchar(100) NOT NULL,
  `from_date` varchar(100) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` varchar(100) NOT NULL,
  `product_quantity_type` varchar(100) NOT NULL,
  `product_single_price` varchar(100) NOT NULL,
  `product_final_price` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `vat_amount` varchar(100) NOT NULL,
  `final_amount` varchar(100) NOT NULL,
  `received` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `to_invoice` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quantity_types`
--

CREATE TABLE `quantity_types` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quantity_types`
--

INSERT INTO `quantity_types` (`id`, `name`) VALUES
(1, 'kilogram'),
(2, 'number'),
(3, 'days'),
(4, 'months');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `position`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions_translates`
--

CREATE TABLE `questions_translates` (
  `id` int(11) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions_translates`
--

INSERT INTO `questions_translates` (`id`, `for_id`, `abbr`, `question`, `answer`) VALUES
(1, 1, 'en', 'How to register?', 'Registration is the easy part. Just click Register Now and fill in the email and password after you fill them correctly will be redirected to your personal account on invoicing.'),
(2, 2, 'en', 'In which format are invoices', 'Invoices are in PDF format. They can be sent via email as an attachment or link that when opened by the customer invoice is displayed in the browser, so can be downloaded and to accept or refuse that will be reflected in your system.'),
(3, 1, 'bg', 'Как да се регистрирате?', 'Регистрацията е лесната част. Просто кликнете върху \"Регистриране сега\" и попълнете имейла и паролата, след като ги попълните правилно, ще бъдат пренасочени към личния Ви акаунт при фактуриране.'),
(4, 1, 'fr', 'Comment s\'inscrire?', 'L\'inscription est la partie facile. Il suffit de cliquer sur S\'inscrire maintenant et de remplir l\'e-mail et le mot de passe après les avoir correctement remplis seront redirigés vers votre compte personnel lors de la facturation.'),
(5, 2, 'fr', 'Dans quel format sont les factures', 'Les factures sont en format PDF. Ils peuvent être envoyés par e-mail sous forme de pièce jointe ou de lien qui, une fois ouvert par la facture du client, est affiché dans le navigateur. Vous pouvez donc le télécharger et l\'accepter ou le refuser dans votre système.'),
(6, 2, 'bg', 'В какъв формат са фактурите', 'Фактурите са в PDF формат. Те могат да бъдат изпратени по електронна поща като прикачен файл или връзка, която след като бъде отворена от сметката на клиента, се показва в браузъра. Можете да го изтеглите и да го приемете или отхвърлите във вашата система.');

-- --------------------------------------------------------

--
-- Table structure for table `stock_availability`
--

CREATE TABLE `stock_availability` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `for_store` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `admin_info` varchar(255) NOT NULL,
  `my_key` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `admin_info`, `my_key`) VALUES
(1, 'Home Text 1', 'homeOne'),
(2, 'Home Text 2 - Specifications', 'homeSpecifications'),
(3, 'Features Page Text', 'featuresText'),
(4, 'Terms & Conditions', 'termsCondit'),
(5, 'Home Security', 'homeSecurity');

-- --------------------------------------------------------

--
-- Table structure for table `texts_translates`
--

CREATE TABLE `texts_translates` (
  `id` int(11) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `texts_translates`
--

INSERT INTO `texts_translates` (`id`, `for_id`, `abbr`, `text`) VALUES
(1, 1, 'en', '<p>One reason for not using other free software or storing invoices on your personal computer is that they are not safe there. The reasons for data loss can be many like viruses, broken hard drive, hacker attack and more. We provide you with a highly secure server on which we will store your important documents so that they will never be lost unless you choose to delete them. You will also always be able to refer to the issued documents as well as quickly and easily find them as customer search, date, number and many other varied options. You can translate your documents, currency, company name and everything you need to issue invoices in your language.<br />\r\nOur support team will waiting for all yours questions and help need.</p>\r\n\r\n<p><u><strong>We also offer for each account - issue warranties, issue protocols, Inventory System, multiple users with permission, etc.</strong></u></p>\r\n\r\n<p><u><strong>To 10 companies from one account.</strong></u></p>\r\n\r\n<p><span style=\"color:#eb8900;\">Easy and fast payment by SMS</span></p>\r\n'),
(2, 2, 'en', '<p>The interface for creating invoices as simple as possible so as to be most suitable for each type of user. The system is designed so that it can be used in any devices like tablet, PC and phone. In addition invoicing offer and a bunch of other accounting services so as to make your work easier. Your account can be accessed from anywhere in the world.</p>\r\n'),
(3, 3, 'en', '<p>Other inventory system help features</p>\r\n'),
(4, 4, 'en', '<p>ds asd as</p>\r\n'),
(5, 1, 'bg', '<p>Една от причините да не използвате друг свободен софтуер или да съхранявате фактури на вашия персонален компютър е, че те не са в безопасност там. Причините за загуба на данни могат да бъдат много като вируси, счупен твърд диск, хакерски атаки и др. Ние ви предоставяме високо сигурен сървър, на който ще съхраняваме Вашите важни документи, така че те никога няма да бъдат изгубени, освен ако не изберете да ги изтриете. Винаги ще можете да препращате към издадените документи, както и бързо и лесно да ги намерите като търсене на клиенти, дата, номер и много други разнообразни опции. Можете да превеждате документите, валутата, името на фирмата си и всичко, от което се нуждаете, за да издавате фактури на вашия език.<br />\r\nНашият екип за поддръжка ще чака всичките ви въпроси и ще ви помогне.</p>\r\n'),
(6, 1, 'fr', '<p>L&#39;une des raisons pour lesquelles vous n&#39;utilisez pas de logiciels gratuits ou ne stockez pas de factures sur votre ordinateur personnel, c&#39;est qu&#39;ils n&#39;y sont pas en s&eacute;curit&eacute;. Les raisons de la perte de donn&eacute;es peuvent &ecirc;tre nombreuses comme les virus, les disques durs cass&eacute;s, les attaques de pirates informatiques et plus encore. Nous vous fournissons un serveur hautement s&eacute;curis&eacute; sur lequel nous stockons vos documents importants afin qu&#39;ils ne soient jamais perdus &agrave; moins que vous ne choisissiez de les supprimer. Vous serez &eacute;galement toujours en mesure de se r&eacute;f&eacute;rer aux documents &eacute;mis ainsi que rapidement et facilement les trouver comme la recherche du client, la date, le nombre et de nombreuses autres options vari&eacute;es. Vous pouvez traduire vos documents, votre devise, le nom de votre entreprise et tout ce dont vous avez besoin pour &eacute;mettre des factures dans votre langue.<br />\r\nNotre &eacute;quipe de support vous attendra pour toutes vos questions et besoins d&#39;aide.</p>\r\n'),
(7, 2, 'bg', '<p>Интерфейсът за създаване на фактури е колкото е възможно по-прост, за да бъде най-подходящ за всеки тип потребител. Системата е проектирана така, че да може да се използва във всяко устройство като таблет, компютър и телефон. Освен оферта за фактуриране и куп други счетоводни услуги, за да улесните работата си. Профилът ви може да бъде достъпен от всяка точка на света.</p>\r\n'),
(8, 2, 'fr', '<p>L\'interface pour créer des factures aussi simple que possible afin d\'être le plus approprié pour chaque type d\'utilisateur. Le système est conçu pour pouvoir être utilisé sur n\'importe quel appareil comme une tablette, un PC ou un téléphone. En plus de l\'offre de facturation et d\'un tas d\'autres services de comptabilité afin de faciliter votre travail. Votre compte est accessible depuis n\'importe où dans le monde.</p>\r\n'),
(9, 3, 'bg', '<p>Други помощни функции за системата за инвентаризация</p>\r\n'),
(10, 3, 'fr', '<p>Autres fonctionnalités d\'aide du système d\'inventaire</p>\r\n'),
(11, 5, 'en', '<p>The software we provide goes through an encrypted connection so that the data you use is as protected as possible from malicious viruses. The information stored on our servers is backed up daily so that you are protected to the maximum from data loss.<br />\r\n<br />\r\nWe offer you a fully secure storage system for important documents.</p>\r\n'),
(12, 5, 'bg', '<p>Софтуера който ви предлагаме минава през криптирана връзка така, че данните които използвате да бъдат максималко предпазени от злонамерени вируси. Информацията която се съхранява на нашите сървъри има всекидневен архив така, че да бъдете максилано предпазени от загуба на данни.</p>\r\n\r\n<p>Предлагаме ви една напълно защитена система за съхранение да важни документи.</p>\r\n'),
(13, 5, 'fr', '<p>Le logiciel que nous proposons est fourni via une connexion crypt&eacute;e afin que les donn&eacute;es que vous utilisez soient aussi s&ucirc;res que possible des virus malveillants. Les informations stock&eacute;es sur nos serveurs disposent d&#39;une archive quotidienne afin que vous puissiez &ecirc;tre prot&eacute;g&eacute; contre la perte de donn&eacute;es.<br />\r\n<br />\r\nNous vous offrons un syst&egrave;me de stockage enti&egrave;rement prot&eacute;g&eacute; pour les documents importants.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `schiffer` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_registered` int(10) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `schiffer`, `email`, `password`, `ip_address`, `time_registered`, `enabled`) VALUES
(1, 'Кирката Кирков', '', '', 'asd@asd.asd', '$2y$10$uFdEn5Qr/appQnGWpNOZieD/zZgONyxU2..e0yNKzsmGE/pCTVlSm', '78.90.131.10', 1516262897, 1),
(2, '', '', '', 'kirilkirkov91@gmail.com', '$2y$10$4lvXKiK5H2qMrQwyzjOcJu6CsuRu91E.ukx6KCRCjgOkx8SIgWbmy', '127.0.0.1', 1569052964, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_currencies`
--

CREATE TABLE `users_currencies` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `value` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_payment_methods`
--

CREATE TABLE `users_payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_quantity_types`
--

CREATE TABLE `users_quantity_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_no_vat_reasons`
--

CREATE TABLE `user_no_vat_reasons` (
  `id` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `_key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `for_user`, `_key`, `value`) VALUES
(1, 2, 'opt_invRoundTo', '2'),
(2, 2, 'opt_invCalculator', '1'),
(3, 2, 'opt_pagination', '20'),
(4, 2, 'opt_movementRoundTo', '2'),
(5, 2, 'opt_movementCalculator', '1'),
(6, 2, 'opt_negativeQuantities', '1'),
(7, 2, 'opt_protocolCalculator', '1'),
(8, 2, 'opt_protocolRoundTo', '1'),
(9, 2, 'opt_invTemplate', 'creative');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `for_company` int(10) UNSIGNED NOT NULL,
  `warranty_number` varchar(20) NOT NULL,
  `valid_from` int(10) UNSIGNED NOT NULL,
  `to_invoice` varchar(20) NOT NULL,
  `conditions` longtext NOT NULL,
  `remarks` longtext NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `received` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warranties_clients`
--

CREATE TABLE `warranties_clients` (
  `id` int(11) NOT NULL,
  `for_warranty` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_bulstat` varchar(50) NOT NULL,
  `is_to_person` tinyint(1) NOT NULL,
  `client_vat_registered` tinyint(1) NOT NULL,
  `vat_number` varchar(50) NOT NULL,
  `client_ident_num` varchar(50) NOT NULL,
  `client_address` varchar(500) NOT NULL,
  `client_city` varchar(80) NOT NULL,
  `client_country` varchar(80) NOT NULL,
  `accountable_person` varchar(200) NOT NULL,
  `recipient_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warranties_firms`
--

CREATE TABLE `warranties_firms` (
  `id` int(11) NOT NULL,
  `for_warranty` int(10) UNSIGNED NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(250) NOT NULL,
  `accountable_person` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `is_vat_registered` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warranties_items`
--

CREATE TABLE `warranties_items` (
  `id` int(11) NOT NULL,
  `for_warranty` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `months` varchar(20) NOT NULL,
  `valid_to` int(10) UNSIGNED NOT NULL,
  `serial` varchar(100) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warranties_languages`
--

CREATE TABLE `warranties_languages` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `warranty_card` varchar(100) NOT NULL,
  `date_valid` varchar(100) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_months` varchar(100) NOT NULL,
  `product_valid_to` varchar(100) NOT NULL,
  `product_serial_num` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `received` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `warranty_conditions` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warranties_languages`
--

INSERT INTO `warranties_languages` (`id`, `for_user`, `language_name`, `warranty_card`, `date_valid`, `recipient`, `sender`, `bulstat`, `address`, `product_name`, `product_months`, `product_valid_to`, `product_serial_num`, `page`, `city`, `remarks`, `received`, `compiled`, `signature`, `warranty_conditions`, `vat_number`) VALUES
(1, 0, 'English', 'Warranty Card', 'Valid from:', 'Recipient', 'Sender', 'Bulstat', 'Address', 'Name', 'Months', 'Valid to', 'Serial number', 'Page', 'City', 'Remarks', 'Received', 'Compiled', 'Signature', 'Warranty conditions:', 'Vat number'),
(2, 0, 'Français', 'Carte de garantie', 'Valide à partir de:', 'Bénéficiaire', 'expéditeur', 'Bulstat', 'Adresse', 'prénom', 'Mois', 'Valable pour', 'Numéro de série', 'Page', 'Ville', 'Remarques', 'Reçu', 'Compilé', 'Signature', 'Conditions de garantie:', 'Numéro de TVA');

-- --------------------------------------------------------

--
-- Table structure for table `warranties_translations`
--

CREATE TABLE `warranties_translations` (
  `id` int(11) NOT NULL,
  `for_warranty` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(500) NOT NULL,
  `warranty_card` varchar(100) NOT NULL,
  `date_valid` varchar(100) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `bulstat` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_months` varchar(100) NOT NULL,
  `product_valid_to` varchar(100) NOT NULL,
  `product_serial_num` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `received` varchar(100) NOT NULL,
  `compiled` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `warranty_conditions` varchar(100) NOT NULL,
  `vat_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warranty_conditions`
--

CREATE TABLE `warranty_conditions` (
  `id` int(11) NOT NULL,
  `for_user` int(10) UNSIGNED NOT NULL,
  `condition_title` varchar(255) NOT NULL,
  `condition_description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warranty_events`
--

CREATE TABLE `warranty_events` (
  `id` int(11) NOT NULL,
  `for_warranty` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `on_date` int(10) UNSIGNED NOT NULL,
  `item` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_translates`
--
ALTER TABLE `blog_translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cusom_plan_requests`
--
ALTER TABLE `cusom_plan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_permissions`
--
ALTER TABLE `employees_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features_translates`
--
ALTER TABLE `features_translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firms_payment_requests`
--
ALTER TABLE `firms_payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `req_num` (`req_num`);

--
-- Indexes for table `firms_plans`
--
ALTER TABLE `firms_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firms_translations`
--
ALTER TABLE `firms_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firms_users`
--
ALTER TABLE `firms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_plans`
--
ALTER TABLE `individual_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`for_user`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices_clients`
--
ALTER TABLE `invoices_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices_firms`
--
ALTER TABLE `invoices_firms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices_items`
--
ALTER TABLE `invoices_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices_languages`
--
ALTER TABLE `invoices_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices_logs`
--
ALTER TABLE `invoices_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices_translations`
--
ALTER TABLE `invoices_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements`
--
ALTER TABLE `movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements_clients`
--
ALTER TABLE `movements_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements_firms`
--
ALTER TABLE `movements_firms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements_from_to_store`
--
ALTER TABLE `movements_from_to_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements_languages`
--
ALTER TABLE `movements_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements_revisions`
--
ALTER TABLE `movements_revisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements_translations`
--
ALTER TABLE `movements_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movement_items`
--
ALTER TABLE `movement_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols`
--
ALTER TABLE `protocols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols_clients`
--
ALTER TABLE `protocols_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols_contracts`
--
ALTER TABLE `protocols_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols_firms`
--
ALTER TABLE `protocols_firms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols_items`
--
ALTER TABLE `protocols_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols_languages`
--
ALTER TABLE `protocols_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols_provider_transmit`
--
ALTER TABLE `protocols_provider_transmit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protocols_translations`
--
ALTER TABLE `protocols_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity_types`
--
ALTER TABLE `quantity_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_translates`
--
ALTER TABLE `questions_translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_availability`
--
ALTER TABLE `stock_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_key` (`my_key`);

--
-- Indexes for table `texts_translates`
--
ALTER TABLE `texts_translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- Indexes for table `users_currencies`
--
ALTER TABLE `users_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_payment_methods`
--
ALTER TABLE `users_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_quantity_types`
--
ALTER TABLE `users_quantity_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_no_vat_reasons`
--
ALTER TABLE `user_no_vat_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties_clients`
--
ALTER TABLE `warranties_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties_firms`
--
ALTER TABLE `warranties_firms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties_items`
--
ALTER TABLE `warranties_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties_languages`
--
ALTER TABLE `warranties_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties_translations`
--
ALTER TABLE `warranties_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranty_conditions`
--
ALTER TABLE `warranty_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranty_events`
--
ALTER TABLE `warranty_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_translates`
--
ALTER TABLE `blog_translates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `cusom_plan_requests`
--
ALTER TABLE `cusom_plan_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees_permissions`
--
ALTER TABLE `employees_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `features_translates`
--
ALTER TABLE `features_translates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `firms_payment_requests`
--
ALTER TABLE `firms_payment_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firms_plans`
--
ALTER TABLE `firms_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `firms_translations`
--
ALTER TABLE `firms_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `firms_users`
--
ALTER TABLE `firms_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `individual_plans`
--
ALTER TABLE `individual_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices_clients`
--
ALTER TABLE `invoices_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices_firms`
--
ALTER TABLE `invoices_firms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices_items`
--
ALTER TABLE `invoices_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices_languages`
--
ALTER TABLE `invoices_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices_logs`
--
ALTER TABLE `invoices_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices_translations`
--
ALTER TABLE `invoices_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movements`
--
ALTER TABLE `movements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movements_clients`
--
ALTER TABLE `movements_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movements_firms`
--
ALTER TABLE `movements_firms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movements_from_to_store`
--
ALTER TABLE `movements_from_to_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movements_languages`
--
ALTER TABLE `movements_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movements_revisions`
--
ALTER TABLE `movements_revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movements_translations`
--
ALTER TABLE `movements_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movement_items`
--
ALTER TABLE `movement_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `protocols`
--
ALTER TABLE `protocols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protocols_clients`
--
ALTER TABLE `protocols_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protocols_contracts`
--
ALTER TABLE `protocols_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protocols_firms`
--
ALTER TABLE `protocols_firms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protocols_items`
--
ALTER TABLE `protocols_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protocols_languages`
--
ALTER TABLE `protocols_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `protocols_provider_transmit`
--
ALTER TABLE `protocols_provider_transmit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protocols_translations`
--
ALTER TABLE `protocols_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quantity_types`
--
ALTER TABLE `quantity_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions_translates`
--
ALTER TABLE `questions_translates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_availability`
--
ALTER TABLE `stock_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `texts_translates`
--
ALTER TABLE `texts_translates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_currencies`
--
ALTER TABLE `users_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_payment_methods`
--
ALTER TABLE `users_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_quantity_types`
--
ALTER TABLE `users_quantity_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_no_vat_reasons`
--
ALTER TABLE `user_no_vat_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warranties_clients`
--
ALTER TABLE `warranties_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warranties_firms`
--
ALTER TABLE `warranties_firms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warranties_items`
--
ALTER TABLE `warranties_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warranties_languages`
--
ALTER TABLE `warranties_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warranties_translations`
--
ALTER TABLE `warranties_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warranty_conditions`
--
ALTER TABLE `warranty_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warranty_events`
--
ALTER TABLE `warranty_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
