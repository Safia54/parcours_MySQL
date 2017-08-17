-- MySQL Script generated by MySQL Workbench
-- jeu 17 aoû 2017 10:29:47 CEST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema blog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema blog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 ;
USE `blog` ;

-- -----------------------------------------------------
-- Table `blog`.`articles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blog`.`articles` (
  `id` INT NOT NULL,
  `titres` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `blog`.`catégories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blog`.`catégories` (
  `id` INT NOT NULL,
  `nom` VARCHAR(255) NULL,
  `articles_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_catégories_articles1_idx` (`articles_id` ASC),
  CONSTRAINT `fk_catégories_articles1`
    FOREIGN KEY (`articles_id`)
    REFERENCES `blog`.`articles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `blog`.`mots-clefs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blog`.`mots-clefs` (
  `id` INT NOT NULL,
  `tags` VARCHAR(255) NOT NULL,
  `articles_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_mots-clefs_articles_idx` (`articles_id` ASC),
  CONSTRAINT `fk_mots-clefs_articles`
    FOREIGN KEY (`articles_id`)
    REFERENCES `blog`.`articles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;