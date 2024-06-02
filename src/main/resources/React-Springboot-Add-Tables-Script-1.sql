CREATE DATABASE  IF NOT EXISTS `reactlibrarydatabase` ;
USE `reactlibrarydatabase`;



DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `copies_available` int(11) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `img` MEDIUMBLOB  DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;



DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `rating` decimal (3,2) DEFAULT NULL,
  `book_id` BIGINT(20) DEFAULT NULL,
  `review_description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;
    
    
DROP TABLE IF EXISTS `checkout`;

CREATE TABLE `checkout` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `checkout_date` varchar(45) DEFAULT NULL,
  `return_date` varchar(45) DEFAULT NULL,
  `book_id` BIGINT(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;
   
    

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `admin_email` varchar(45) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `closed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ;

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `checkout_date` varchar(45) DEFAULT NULL,
  `returned_date` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img` MEDIUMBLOB  DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


DROP TABLE IF EXISTS student;
CREATE TABLE student (
  id bigint NOT NULL AUTO_INCREMENT,
  first_name varchar(50) NOT NULL,
  surname varchar(50) NOT NULL,
  student_id varchar(20) NOT NULL,
  email varchar(100) NOT NULL,
  phone varchar(20) DEFAULT NULL,
  PRIMARY KEY (id)
);



