CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `news_text` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `news_categoris` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
   PRIMARY KEY (`id`)
) ;

CREATE TABLE IF NOT EXISTS `news_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `news_id` int NOT NULL,
  `user_ip` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `news_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `news_id` int NOT NULL UNIQUE,
  `user_ip` int unsigned NOT NULL UNIQUE,
  `mark` int NOT NULL,
  PRIMARY KEY (`id`)
);