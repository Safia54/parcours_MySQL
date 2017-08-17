-- MySQL Script generated by MySQL Workbench
-- mer 16 aoû 2017 16:28:20 CEST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema librairie
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema librairie
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `librairie` DEFAULT CHARACTER SET utf8 ;
USE `librairie` ;

-- -----------------------------------------------------
-- Table `librairie`.`auteurs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `librairie`.`auteurs` (
  `id` INT NOT NULL,
  `fullname` VARCHAR(255) NOT NULL,
  `nationalité` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `librairie`.`livres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `librairie`.`livres` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `editor` VARCHAR(255) NULL,
  `date` YEAR NULL,
  `language` VARCHAR(255) NULL,
  `auteurs_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_livres_auteurs_idx` (`auteurs_id` ASC),
  CONSTRAINT `fk_livres_auteurs`
    FOREIGN KEY (`auteurs_id`)
    REFERENCES `librairie`.`auteurs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
