-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema datasite
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `datasite` ;

-- -----------------------------------------------------
-- Schema datasite
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `datasite` DEFAULT CHARACTER SET utf8 ;
USE `datasite` ;

-- -----------------------------------------------------
-- Table `datasite`.`registered_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datasite`.`registered_user` ;

CREATE TABLE IF NOT EXISTS `datasite`.`registered_user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(45) NOT NULL,
  `company` VARCHAR(120) NOT NULL,
  `country` VARCHAR(50) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `organizational_type` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `state` VARCHAR(2) NOT NULL,
  `zip_code` VARCHAR(10) NOT NULL,
  `disclaimer_accepted` TINYINT NOT NULL DEFAULT 0,
  `language_code` VARCHAR(2) NOT NULL DEFAULT 'en',
  `email_address` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `datasite`.`unregistered_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datasite`.`unregistered_user` ;

CREATE TABLE IF NOT EXISTS `datasite`.`unregistered_user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email_address` VARCHAR(200) NOT NULL,
  `language_code` VARCHAR(2) NOT NULL DEFAULT 'en',
  `registration_id` VARCHAR(32) NOT NULL,
  `registration_id_generated_time` BIGINT(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `datasite`.`project`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datasite`.`project` ;

CREATE TABLE IF NOT EXISTS `datasite`.`project` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `project_id` INT NOT NULL,
  `user_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS datasite;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'datasite' IDENTIFIED BY 'datasite';

GRANT ALL ON `datasite`.* TO 'datasite';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `datasite`.`registered_user`
-- -----------------------------------------------------
START TRANSACTION;
USE `datasite`;
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (1, 'Jaydashire', 'Goyette - Renner', 'South Africa', 'firstName 1', 'lastName 1', 'organizationType 1', '524.276.1570 x487', 'SD', '68048', FALSE, 'en', 'last1@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (2, 'Adolfofort', 'Fisher - Bartoletti', 'China', 'firstName 2', 'lastName 2', 'organizationType 2', '(308) 197-9774 x339', 'CO', '78569', FALSE, 'en', 'last2@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (3, 'Graysonbury', 'Jacobi, Mills and Hills', 'Falkland Islands (Malvinas)', 'firstName 3', 'lastName 3', 'organizationType 3', '489.210.6899 x3598', 'MD', '25899', FALSE, 'en', 'last3@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (4, 'West Raymundohaven', 'Davis and Sons', 'Philippines', 'firstName 4', 'lastName 4', 'organizationType 4', '(521) 801-9336', 'SD', '12625', FALSE, 'en', 'last4@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (5, 'Clintonshire', 'Goldner, Abbott and Boehm', 'Guam', 'firstName 5', 'lastName 5', 'organizationType 5', '1-375-765-9133', 'AL', '04215-6941', FALSE, 'en', 'last5@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (6, 'Port Donnelltown', 'Beer Inc', 'Austria', 'firstName 6', 'lastName 6', 'organizationType 6', '734.703.0514', 'IA', '04294-4721', FALSE, 'en', 'last6@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (7, 'Lake Eduardo', 'Wunsch - Lemke', 'Russian Federation', 'firstName 7', 'lastName 7', 'organizationType 7', '1-613-060-2850', 'MO', '91995-1360', FALSE, 'en', 'last7@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (8, 'Port Kaylinfurt', 'Ziemann and Sons', 'Mayotte', 'firstName 8', 'lastName 8', 'organizationType 8', '423-706-3784 x842', 'OH', '67167-5912', FALSE, 'en', 'last8@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (9, 'Elvismouth', 'Stamm, Bosco and Trantow', 'Trinidad and Tobago', 'firstName 9', 'lastName 9', 'organizationType 9', '1-126-878-3852 x59952', 'NM', '48249-1747', FALSE, 'en', 'last9@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (10, 'Lake Johannbury', 'Schuster Group', 'Egypt', 'firstName 10', 'lastName 10', 'organizationType 10', '(046) 786-9832', 'TX', '23558', FALSE, 'en', 'last10@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (11, 'Baileymouth', 'Little, Weber and Romaguera', 'Eritrea', 'firstName 11', 'lastName 11', 'organizationType 11', '1-558-581-0254', 'IL', '9559', FALSE, 'en', 'last11@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (12, 'Port Santiagomouth', 'Corkery, Donnelly and Sipes', 'Mongolia', 'firstName 12', 'lastName 12', 'organizationType 12', '833-417-0709', 'OK', '42375-6579', FALSE, 'en', 'last12@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (13, 'New Assunta', 'Hilll Inc', 'Lesotho', 'firstName 13', 'lastName 13', 'organizationType 13', '1-399-906-6377 x645', 'NC', '3578', FALSE, 'en', 'last13@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (14, 'Collinshaven', 'Mitchell, Carroll and Kuhlman', 'Belize', 'firstName 14', 'lastName 14', 'organizationType 14', '768.414.3047 x35738', 'MA', '97799', FALSE, 'en', 'last14@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (15, 'Bogisichfurt', 'Nader - Rogahn', 'American Samoa', 'firstName 15', 'lastName 15', 'organizationType 15', '1-659-066-6926 x485', 'AR', '23890-8533', FALSE, 'en', 'last15@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (16, 'Sammieton', 'Bergstrom, Bauch and Thiel', 'Kyrgyz Republic', 'firstName 16', 'lastName 16', 'organizationType 16', '1-300-214-3303 x62197', 'IL', '12817-5123', FALSE, 'en', 'last16@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (17, 'Eloyville', 'Prohaska, Brekke and Thiel', 'Denmark', 'firstName 17', 'lastName 17', 'organizationType 17', '244-151-0265 x78213', 'HI', '56405-2053', FALSE, 'en', 'last17@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (18, 'Ahmadton', 'Auer, Daniel and Walker', 'Yemen', 'firstName 18', 'lastName 18', 'organizationType 18', '219-323-5624 x320', 'NE', '80976-0463', FALSE, 'en', 'last18@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (19, 'Kirlinstad', 'Wiegand LLC', 'Iceland', 'firstName 19', 'lastName 19', 'organizationType 19', '369-547-2253', 'NC', '38401', FALSE, 'en', 'last19@mail.com');
INSERT INTO `datasite`.`registered_user` (`id`, `city`, `company`, `country`, `first_name`, `last_name`, `organizational_type`, `phone`, `state`, `zip_code`, `disclaimer_accepted`, `language_code`, `email_address`) VALUES (20, 'Erdmanfort', 'Nader LLC', 'Anguilla', 'firstName 20', 'lastName 20', 'organizationType 20', '1-431-935-1461', 'WY', '02950-6308', FALSE, 'en', 'last20@mail.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `datasite`.`unregistered_user`
-- -----------------------------------------------------
START TRANSACTION;
USE `datasite`;
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (21, 'email1@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF1', 156165026851);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (22, 'email2@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF2', 156165026852);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (23, 'email3@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF3', 156165026853);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (24, 'email4@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF4', 156165026854);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (25, 'email5@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF5', 156165026855);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (26, 'email6@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF6', 156165026856);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (27, 'email7@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF7', 156165026857);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (28, 'email8@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF8', 156165026858);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (29, 'email9@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF9', 156165026859);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (210, 'email10@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF10', 1561650268510);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (211, 'email11@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF11', 1561650268511);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (212, 'email12@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF12', 1561650268512);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (213, 'email13@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF13', 1561650268513);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (214, 'email14@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF14', 1561650268514);
INSERT INTO `datasite`.`unregistered_user` (`id`, `email_address`, `language_code`, `registration_id`, `registration_id_generated_time`) VALUES (215, 'email15@somewhere.com', 'en', 'jwsMJNOk3oM3hVM5bGcF15', 1561650268515);

COMMIT;


-- -----------------------------------------------------
-- Data for table `datasite`.`project`
-- -----------------------------------------------------
START TRANSACTION;
USE `datasite`;
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (1, 1, 1);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (2, 2, 1);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (3, 3, 3);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (4, 4, 4);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (5, 5, 5);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (6, 6, 6);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (7, 7, 7);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (8, 8, 8);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (9, 9, 8);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (10, 10, null);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (11, 11, 11);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (12, 12, 12);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (13, 13, 13);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (14, 14, 14);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (15, 15, 15);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (16, 16, 16);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (17, 17, 17);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (18, 18, 18);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (19, 19, 19);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (21, 21, 21);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (22, 22, 22);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (23, 23, 23);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (24, 24, 24);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (25, 25, 25);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (26, 26, 26);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (27, 27, 27);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (28, 28, 28);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (29, 29, 29);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (30, 1, 25);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (31, 2, 25);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (32, 32, 25);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (33, 33, 210);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (34, 34, 211);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (35, 35, 212);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (36, 36, 213);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (37, 37, 214);
INSERT INTO `datasite`.`project` (`id`, `project_id`, `user_id`) VALUES (38, 38, 215);

COMMIT;

