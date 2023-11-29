CREATE TABLE IF NOT EXISTS `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `project_id` int NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` int unsigned NOT NULL,
  `username` varchar(255) NOT NULL,
   PRIMARY KEY (`id`)
) ;

CREATE TABLE IF NOT EXISTS `task_participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL UNIQUE,
  `user_id` int NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `project_participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL UNIQUE,
  `user_id` int NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`id`)
);