-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for prueba
CREATE DATABASE IF NOT EXISTS `prueba` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prueba`;

-- Dumping structure for table prueba.ciudades
CREATE TABLE IF NOT EXISTS `ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `valor` varchar(100) NOT NULL,
  `fechacrea` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table prueba.ciudades: ~0 rows (approximately)
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT IGNORE INTO `ciudades` (`id`, `nombre`, `valor`, `fechacrea`) VALUES
	(1, 'Miami', 'miami', '2021-05-17 22:04:18'),
	(2, 'Orlando', 'orlando', '2021-05-17 22:04:18'),
	(3, 'New York', 'new york', '2021-05-17 22:04:18'),
	(4, 'Bogota', 'bogota', '2021-05-17 22:04:18'),
	(5, 'Valencia', 'valencia', '2021-05-17 22:04:18'),
	(6, 'Sevilla', 'sevilla', '2021-05-17 22:04:18'),
	(7, 'Tokio', 'tokio', '2021-05-17 22:04:18'),
	(8, 'Ontario', 'ontario', '2021-05-17 22:04:18'),
	(9, 'Vancouver', 'vancouver', '2021-05-17 22:04:18'),
	(10, 'Singapur', 'singapur', '2021-05-17 22:04:18'),
	(11, 'Los Angeles', 'los angeles', '2021-05-17 22:04:18'),
	(12, 'Moscu', 'moscu', '2021-05-17 22:04:18'),
	(13, 'Río de Janeiro', 'rio de janeiro', '2021-05-17 22:04:18'),
	(14, 'Londres', 'londres', '2021-05-17 22:04:18'),
	(15, 'Roma', 'roma', '2021-05-17 22:04:18'),
	(16, 'Paris', 'paris', '2021-05-17 22:04:18'),
	(17, 'La Habana', 'la habana', '2021-05-17 22:04:18'),
	(18, 'Jerusalen', 'jerusalen', '2021-05-17 22:04:18'),
	(19, 'Beijing', 'beijing', '2021-05-17 22:04:19'),
	(20, 'Berlin', 'berlin', '2021-05-17 22:04:19'),
	(21, 'Viena', 'viena', '2021-05-17 22:04:19'),
	(22, 'Cuzco', 'cuzco', '2021-05-17 22:04:19');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;

-- Dumping structure for table prueba.historial
CREATE TABLE IF NOT EXISTS `historial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`contenido`)),
  `fechacrea` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `contenido` (`contenido`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table prueba.historial: ~13 rows (approximately)
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT IGNORE INTO `historial` (`id`, `contenido`, `fechacrea`) VALUES
	(19, '{"location":{"city":"Bogota","region":" Distrito Especial","woeid":368148,"country":"Colombia","lat":4.65637,"long":-74.11779,"timezone_id":"America/Bogota"},"current_observation":{"wind":{"chill":55,"direction":135,"speed":4.97},"atmosphere":{"humidity":85,"visibility":9.82,"pressure":21.82,"rising":0},"astronomy":{"sunrise":"5:43 am","sunset":"6:03 pm"},"condition":{"text":"Cloudy","code":26,"temperature":56},"pubDate":1621288800},"forecasts":[{"day":"Mon","date":1621227600,"low":51,"high":58,"text":"Scattered Showers","code":39},{"day":"Tue","date":1621314000,"low":50,"high":62,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1621400400,"low":48,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Thu","date":1621486800,"low":49,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621573200,"low":50,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621659600,"low":49,"high":64,"text":"Cloudy","code":26},{"day":"Sun","date":1621746000,"low":50,"high":62,"text":"Cloudy","code":26},{"day":"Mon","date":1621832400,"low":50,"high":59,"text":"Mostly Cloudy","code":28},{"day":"Tue","date":1621918800,"low":50,"high":62,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1622005200,"low":50,"high":61,"text":"Mostly Cloudy","code":28}]}', '2021-05-17 18:29:16'),
	(20, '{"location":{"city":"Miami","region":" FL","woeid":2450022,"country":"United States","lat":25.782551,"long":-80.221748,"timezone_id":"America/New_York"},"current_observation":{"wind":{"chill":80,"direction":75,"speed":15.53},"atmosphere":{"humidity":56,"visibility":10.0,"pressure":30.03,"rising":0},"astronomy":{"sunrise":"6:34 am","sunset":"8:00 pm"},"condition":{"text":"Breezy","code":23,"temperature":80},"pubDate":1621288800},"forecasts":[{"day":"Mon","date":1621224000,"low":75,"high":82,"text":"Mostly Cloudy","code":28},{"day":"Tue","date":1621310400,"low":76,"high":83,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1621396800,"low":77,"high":83,"text":"Scattered Thunderstorms","code":47},{"day":"Thu","date":1621483200,"low":77,"high":82,"text":"Scattered Thunderstorms","code":47},{"day":"Fri","date":1621569600,"low":77,"high":84,"text":"Breezy","code":23},{"day":"Sat","date":1621656000,"low":76,"high":83,"text":"Breezy","code":23},{"day":"Sun","date":1621742400,"low":75,"high":83,"text":"Partly Cloudy","code":30},{"day":"Mon","date":1621828800,"low":75,"high":85,"text":"Mostly Sunny","code":34},{"day":"Tue","date":1621915200,"low":75,"high":85,"text":"Thunderstorms","code":4},{"day":"Wed","date":1622001600,"low":76,"high":87,"text":"Thunderstorms","code":4}]}', '2021-05-17 18:40:23'),
	(21, '{"location":{"city":"Bogota","region":" Distrito Especial","woeid":368148,"country":"Colombia","lat":4.65637,"long":-74.11779,"timezone_id":"America/Bogota"},"current_observation":{"wind":{"chill":54,"direction":135,"speed":3.73},"atmosphere":{"humidity":90,"visibility":9.57,"pressure":21.85,"rising":0},"astronomy":{"sunrise":"5:43 am","sunset":"6:03 pm"},"condition":{"text":"Cloudy","code":26,"temperature":54},"pubDate":1621292400},"forecasts":[{"day":"Mon","date":1621227600,"low":51,"high":58,"text":"Scattered Showers","code":39},{"day":"Tue","date":1621314000,"low":50,"high":62,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1621400400,"low":48,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Thu","date":1621486800,"low":49,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621573200,"low":50,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621659600,"low":49,"high":64,"text":"Cloudy","code":26},{"day":"Sun","date":1621746000,"low":50,"high":62,"text":"Cloudy","code":26},{"day":"Mon","date":1621832400,"low":50,"high":59,"text":"Mostly Cloudy","code":28},{"day":"Tue","date":1621918800,"low":50,"high":62,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1622005200,"low":50,"high":61,"text":"Mostly Cloudy","code":28}]}', '2021-05-17 19:13:12'),
	(22, '{"location":{"city":"Orlando","region":" FL","woeid":2466256,"country":"United States","lat":28.479321,"long":-81.344292,"timezone_id":"America/New_York"},"current_observation":{"wind":{"chill":79,"direction":90,"speed":13.67},"atmosphere":{"humidity":52,"visibility":10.0,"pressure":29.97,"rising":0},"astronomy":{"sunrise":"6:34 am","sunset":"8:10 pm"},"condition":{"text":"Scattered Showers","code":39,"temperature":79},"pubDate":1621292400},"forecasts":[{"day":"Mon","date":1621224000,"low":64,"high":84,"text":"Scattered Showers","code":39},{"day":"Tue","date":1621310400,"low":70,"high":82,"text":"Partly Cloudy","code":30},{"day":"Wed","date":1621396800,"low":71,"high":82,"text":"Partly Cloudy","code":30},{"day":"Thu","date":1621483200,"low":71,"high":82,"text":"Partly Cloudy","code":30},{"day":"Fri","date":1621569600,"low":71,"high":85,"text":"Partly Cloudy","code":30},{"day":"Sat","date":1621656000,"low":71,"high":84,"text":"Partly Cloudy","code":30},{"day":"Sun","date":1621742400,"low":69,"high":87,"text":"Partly Cloudy","code":30},{"day":"Mon","date":1621828800,"low":70,"high":91,"text":"Sunny","code":32},{"day":"Tue","date":1621915200,"low":72,"high":92,"text":"Mostly Sunny","code":34},{"day":"Wed","date":1622001600,"low":74,"high":95,"text":"Mostly Sunny","code":34}]}', '2021-05-17 19:14:25'),
	(23, '{"location":{"city":"New York","region":" NY","woeid":2459115,"country":"United States","lat":40.71455,"long":-74.007118,"timezone_id":"America/New_York"},"current_observation":{"wind":{"chill":70,"direction":165,"speed":8.7},"atmosphere":{"humidity":38,"visibility":10.0,"pressure":30.21,"rising":0},"astronomy":{"sunrise":"5:37 am","sunset":"8:08 pm"},"condition":{"text":"Partly Cloudy","code":30,"temperature":70},"pubDate":1621292400},"forecasts":[{"day":"Mon","date":1621224000,"low":55,"high":76,"text":"Scattered Showers","code":39},{"day":"Tue","date":1621310400,"low":59,"high":79,"text":"Partly Cloudy","code":30},{"day":"Wed","date":1621396800,"low":62,"high":84,"text":"Sunny","code":32},{"day":"Thu","date":1621483200,"low":65,"high":84,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621569600,"low":62,"high":78,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621656000,"low":63,"high":77,"text":"Mostly Cloudy","code":28},{"day":"Sun","date":1621742400,"low":66,"high":83,"text":"Partly Cloudy","code":30},{"day":"Mon","date":1621828800,"low":65,"high":76,"text":"Rain","code":12},{"day":"Tue","date":1621915200,"low":62,"high":77,"text":"Rain","code":12},{"day":"Wed","date":1622001600,"low":64,"high":80,"text":"Partly Cloudy","code":30}]}', '2021-05-17 19:14:27'),
	(24, '{"location":{"city":"Ontario","region":" OR","woeid":2465714,"country":"United States","lat":44.02499,"long":-116.973251,"timezone_id":"America/Boise"},"current_observation":{"wind":{"chill":89,"direction":250,"speed":3.73},"atmosphere":{"humidity":17,"visibility":10.0,"pressure":27.29,"rising":0},"astronomy":{"sunrise":"6:20 am","sunset":"9:09 pm"},"condition":{"text":"Sunny","code":32,"temperature":89},"pubDate":1621292400},"forecasts":[{"day":"Mon","date":1621231200,"low":55,"high":90,"text":"Sunny","code":32},{"day":"Tue","date":1621317600,"low":59,"high":75,"text":"Partly Cloudy","code":30},{"day":"Wed","date":1621404000,"low":50,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Thu","date":1621490400,"low":45,"high":65,"text":"Partly Cloudy","code":30},{"day":"Fri","date":1621576800,"low":47,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621663200,"low":47,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Sun","date":1621749600,"low":45,"high":72,"text":"Partly Cloudy","code":30},{"day":"Mon","date":1621836000,"low":50,"high":80,"text":"Partly Cloudy","code":30},{"day":"Tue","date":1621922400,"low":52,"high":81,"text":"Partly Cloudy","code":30},{"day":"Wed","date":1622008800,"low":55,"high":81,"text":"Partly Cloudy","code":30}]}', '2021-05-17 19:14:31'),
	(25, '{"location":{"city":"Vancouver","region":" BC","woeid":9807,"country":"Canada","lat":49.247299,"long":-123.106911,"timezone_id":"America/Vancouver"},"current_observation":{"wind":{"chill":55,"direction":160,"speed":9.94},"atmosphere":{"humidity":70,"visibility":10.0,"pressure":29.53,"rising":0},"astronomy":{"sunrise":"5:27 am","sunset":"8:52 pm"},"condition":{"text":"Cloudy","code":26,"temperature":58},"pubDate":1621292400},"forecasts":[{"day":"Mon","date":1621234800,"low":50,"high":59,"text":"Showers","code":11},{"day":"Tue","date":1621321200,"low":45,"high":55,"text":"Showers","code":11},{"day":"Wed","date":1621407600,"low":44,"high":54,"text":"Scattered Showers","code":39},{"day":"Thu","date":1621494000,"low":43,"high":59,"text":"Partly Cloudy","code":30},{"day":"Fri","date":1621580400,"low":44,"high":61,"text":"Mostly Sunny","code":34},{"day":"Sat","date":1621666800,"low":46,"high":63,"text":"Partly Cloudy","code":30},{"day":"Sun","date":1621753200,"low":51,"high":57,"text":"Scattered Showers","code":39},{"day":"Mon","date":1621839600,"low":47,"high":53,"text":"Mostly Cloudy","code":28},{"day":"Tue","date":1621926000,"low":45,"high":58,"text":"Partly Cloudy","code":30},{"day":"Wed","date":1622012400,"low":48,"high":67,"text":"Partly Cloudy","code":30}]}', '2021-05-17 19:14:33'),
	(26, '{"location":{"city":"Bogota","region":" Distrito Especial","woeid":368148,"country":"Colombia","lat":4.65637,"long":-74.11779,"timezone_id":"America/Bogota"},"current_observation":{"wind":{"chill":53,"direction":135,"speed":3.11},"atmosphere":{"humidity":94,"visibility":8.33,"pressure":21.85,"rising":0},"astronomy":{"sunrise":"5:43 am","sunset":"6:03 pm"},"condition":{"text":"Cloudy","code":26,"temperature":53},"pubDate":1621296000},"forecasts":[{"day":"Mon","date":1621227600,"low":51,"high":58,"text":"Scattered Showers","code":39},{"day":"Tue","date":1621314000,"low":50,"high":61,"text":"Showers","code":11},{"day":"Wed","date":1621400400,"low":48,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Thu","date":1621486800,"low":49,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621573200,"low":50,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621659600,"low":50,"high":63,"text":"Cloudy","code":26},{"day":"Sun","date":1621746000,"low":50,"high":61,"text":"Cloudy","code":26},{"day":"Mon","date":1621832400,"low":51,"high":59,"text":"Cloudy","code":26},{"day":"Tue","date":1621918800,"low":49,"high":61,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1622005200,"low":50,"high":60,"text":"Cloudy","code":26}]}', '2021-05-17 20:23:07'),
	(27, '{"location":{"city":"Cusco","region":" Cusco","woeid":420629,"country":"Peru","lat":-13.55197,"long":-72.069168,"timezone_id":"America/Lima"},"current_observation":{"wind":{"chill":43,"direction":23,"speed":3.73},"atmosphere":{"humidity":76,"visibility":10.0,"pressure":19.16,"rising":0},"astronomy":{"sunrise":"6:00 am","sunset":"5:29 pm"},"condition":{"text":"Mostly Clear","code":33,"temperature":44},"pubDate":1621296000},"forecasts":[{"day":"Mon","date":1621227600,"low":35,"high":57,"text":"Mostly Sunny","code":34},{"day":"Tue","date":1621314000,"low":36,"high":56,"text":"Partly Cloudy","code":30},{"day":"Wed","date":1621400400,"low":37,"high":59,"text":"Partly Cloudy","code":30},{"day":"Thu","date":1621486800,"low":37,"high":58,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621573200,"low":38,"high":59,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621659600,"low":38,"high":59,"text":"Cloudy","code":26},{"day":"Sun","date":1621746000,"low":40,"high":57,"text":"Scattered Thunderstorms","code":47},{"day":"Mon","date":1621832400,"low":39,"high":53,"text":"Mostly Cloudy","code":28},{"day":"Tue","date":1621918800,"low":40,"high":53,"text":"Scattered Thunderstorms","code":47},{"day":"Wed","date":1622005200,"low":40,"high":52,"text":"Mostly Cloudy","code":28}]}', '2021-05-17 20:23:17'),
	(28, '{"location":{"city":"Tokyo","region":" Tokyo Prefecture","woeid":1118370,"country":"Japan","lat":35.670479,"long":139.740921,"timezone_id":"Asia/Tokyo"},"current_observation":{"wind":{"chill":72,"direction":68,"speed":13.05},"atmosphere":{"humidity":83,"visibility":10.0,"pressure":29.74,"rising":0},"astronomy":{"sunrise":"4:34 am","sunset":"6:42 pm"},"condition":{"text":"Cloudy","code":26,"temperature":72},"pubDate":1621296000},"forecasts":[{"day":"Tue","date":1621263600,"low":64,"high":73,"text":"Rain","code":12},{"day":"Wed","date":1621350000,"low":63,"high":68,"text":"Showers","code":11},{"day":"Thu","date":1621436400,"low":64,"high":71,"text":"Rain","code":12},{"day":"Fri","date":1621522800,"low":64,"high":73,"text":"Rain","code":12},{"day":"Sat","date":1621609200,"low":67,"high":73,"text":"Breezy","code":23},{"day":"Sun","date":1621695600,"low":62,"high":73,"text":"Partly Cloudy","code":30},{"day":"Mon","date":1621782000,"low":61,"high":72,"text":"Mostly Cloudy","code":28},{"day":"Tue","date":1621868400,"low":64,"high":68,"text":"Showers","code":11},{"day":"Wed","date":1621954800,"low":61,"high":76,"text":"Mostly Sunny","code":34},{"day":"Thu","date":1622041200,"low":60,"high":77,"text":"Partly Cloudy","code":30}]}', '2021-05-17 20:32:12'),
	(29, '{"location":{"city":"Bogota","region":" Distrito Especial","woeid":368148,"country":"Colombia","lat":4.65637,"long":-74.11779,"timezone_id":"America/Bogota"},"current_observation":{"wind":{"chill":52,"direction":135,"speed":3.11},"atmosphere":{"humidity":95,"visibility":7.39,"pressure":21.85,"rising":0},"astronomy":{"sunrise":"5:43 am","sunset":"6:03 pm"},"condition":{"text":"Cloudy","code":26,"temperature":53},"pubDate":1621299600},"forecasts":[{"day":"Mon","date":1621227600,"low":51,"high":58,"text":"Scattered Showers","code":39},{"day":"Tue","date":1621314000,"low":50,"high":61,"text":"Showers","code":11},{"day":"Wed","date":1621400400,"low":48,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Thu","date":1621486800,"low":49,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621573200,"low":50,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621659600,"low":50,"high":63,"text":"Cloudy","code":26},{"day":"Sun","date":1621746000,"low":50,"high":61,"text":"Cloudy","code":26},{"day":"Mon","date":1621832400,"low":51,"high":59,"text":"Cloudy","code":26},{"day":"Tue","date":1621918800,"low":49,"high":61,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1622005200,"low":50,"high":60,"text":"Cloudy","code":26}]}', '2021-05-17 21:33:47'),
	(30, '{"location":{"city":"Paris","region":" Ile-de-France","woeid":615702,"country":"France","lat":48.85693,"long":2.3412,"timezone_id":"Europe/Paris"},"current_observation":{"wind":{"chill":48,"direction":250,"speed":9.94},"atmosphere":{"humidity":79,"visibility":10.0,"pressure":29.74,"rising":0},"astronomy":{"sunrise":"6:04 am","sunset":"9:30 pm"},"condition":{"text":"Mostly Clear","code":33,"temperature":51},"pubDate":1621299600},"forecasts":[{"day":"Tue","date":1621288800,"low":49,"high":60,"text":"Scattered Thunderstorms","code":47},{"day":"Wed","date":1621375200,"low":48,"high":56,"text":"Scattered Thunderstorms","code":47},{"day":"Thu","date":1621461600,"low":45,"high":62,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621548000,"low":53,"high":62,"text":"Breezy","code":23},{"day":"Sat","date":1621634400,"low":50,"high":60,"text":"Scattered Showers","code":39},{"day":"Sun","date":1621720800,"low":47,"high":58,"text":"Partly Cloudy","code":30},{"day":"Mon","date":1621807200,"low":47,"high":60,"text":"Mostly Cloudy","code":28},{"day":"Tue","date":1621893600,"low":50,"high":63,"text":"Rain","code":12},{"day":"Wed","date":1621980000,"low":48,"high":66,"text":"Partly Cloudy","code":30},{"day":"Thu","date":1622066400,"low":49,"high":67,"text":"Partly Cloudy","code":30}]}', '2021-05-17 21:37:59'),
	(31, '{"location":{"city":"Bogota","region":" Distrito Especial","woeid":368148,"country":"Colombia","lat":4.65637,"long":-74.11779,"timezone_id":"America/Bogota"},"current_observation":{"wind":{"chill":52,"direction":113,"speed":3.11},"atmosphere":{"humidity":96,"visibility":7.21,"pressure":21.88,"rising":0},"astronomy":{"sunrise":"5:43 am","sunset":"6:03 pm"},"condition":{"text":"Cloudy","code":26,"temperature":52},"pubDate":1621303200},"forecasts":[{"day":"Mon","date":1621227600,"low":51,"high":58,"text":"Scattered Showers","code":39},{"day":"Tue","date":1621314000,"low":50,"high":61,"text":"Showers","code":11},{"day":"Wed","date":1621400400,"low":48,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Thu","date":1621486800,"low":49,"high":64,"text":"Mostly Cloudy","code":28},{"day":"Fri","date":1621573200,"low":50,"high":63,"text":"Mostly Cloudy","code":28},{"day":"Sat","date":1621659600,"low":50,"high":63,"text":"Cloudy","code":26},{"day":"Sun","date":1621746000,"low":50,"high":61,"text":"Cloudy","code":26},{"day":"Mon","date":1621832400,"low":51,"high":59,"text":"Cloudy","code":26},{"day":"Tue","date":1621918800,"low":49,"high":61,"text":"Mostly Cloudy","code":28},{"day":"Wed","date":1622005200,"low":50,"high":60,"text":"Cloudy","code":26}]}', '2021-05-17 21:57:21');
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;