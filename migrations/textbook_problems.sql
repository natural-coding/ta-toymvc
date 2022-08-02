-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table toymvc.textbook_problems
CREATE TABLE IF NOT EXISTS `textbook_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT 'Имя пользователя, создавшего задачу',
  `email` varchar(32) NOT NULL COMMENT 'E-mail пользователя, создавшего задачу',
  `problem_text` text NOT NULL COMMENT 'Описание задачи',
  `is_problem_solved` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Задача решена или нет',
  `admin_id` int(11) DEFAULT NULL COMMENT '(Сделано на будущее) Сейчас это признак редактирования записи администратором. Любое значение, которое not null',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Задачи, введенные посетителями сайта';

-- Dumping data for table toymvc.textbook_problems: ~1 rows (approximately)
/*!40000 ALTER TABLE `textbook_problems` DISABLE KEYS */;
INSERT INTO `textbook_problems` (`id`, `username`, `email`, `problem_text`, `is_problem_solved`, `admin_id`) VALUES
	(1, 'mary_anna', 'mary.anna@gmail.com', 'В лыжных гонках участвуют 13 спортсменов из России, 2 спортсмена из Норвегии и 5 спортсменов из Швеции. Порядок, в котором спортсмены стартуют, определяется жребием. Найдите вероятность того, что первым будет стартовать спортсмен из Норвегии или Швеции', 0, NULL),
	(2, 'Илья Сергеевич', 'masterok@hotmail.com', 'Замените словосочетание «грустно сказал», построенное на основе примыкания, синонимичным словосочетанием со связью управление. Напишите получившееся словосочетание.', 1, NULL),
	(3, 'squirrel66', 'el_murid@mail.ru', 'В начале года число абонентов телефонной компании «Восток» составляло 400 тыс. человек, а в конце года их стало 480 тыс. человек. На сколько процентов увеличилось за год число абонентов этой компании?', 1, NULL),
	(4, 'Анастасия', 'gloxy@yahoo.com', 'Какие два из перечисленных понятий используются в первую очередь при описании социальной сферы общественной жизни?\r\n\r\nСтрата, прибыль, искусство, государство, этнос.\r\n\r\nВыпишите соответствующие понятия и раскройте смысл любого одного из них. Ответ запишите на бланке ответов № 2, указав номер задания. ', 0, NULL);
/*!40000 ALTER TABLE `textbook_problems` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
