use sakila;

-- Add the new films to the database.


drop table if exists films_2020;


CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` char(6),
  `rental_rate` char(10),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` char(10) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;








select * from films_2020;




update films_2020 
set rental_rate=2.99;

update films_2020 
set rental_duration = 3;

update films_2020 
set replacement_cost = 8.99;

select * from films_2020;



