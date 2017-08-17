-- MySQL Script generated by MySQL Workbench
-- jeu 17 aoû 2017 10:55:21 CEST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema vin
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vin
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vin` DEFAULT CHARACTER SET utf8 ;
USE `vin` ;

-- -----------------------------------------------------
-- Table `vin`.`pays`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vin`.`pays` (
  `id` INT NOT NULL,
  `continent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vin`.`exploitants-vignerons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vin`.`exploitants-vignerons` (
  `id` INT NOT NULL,
  `fullname` VARCHAR(255) NOT NULL,
  `entreprise` VARCHAR(255) NOT NULL,
  `hectares` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vin`.`cru`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vin`.`cru` (
  `id` INT NOT NULL,
  `type de raisins` VARCHAR(255) NOT NULL,
  `année` YEAR NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vin`.`vins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vin`.`vins` (
  `id` INT NOT NULL,
  `quantité en Litres` INT NULL,
  `pays_id` INT NOT NULL,
  `cru_id` INT NOT NULL,
  `exploitants-vignerons_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_vins_pays_idx` (`pays_id` ASC),
  INDEX `fk_vins_cru1_idx` (`cru_id` ASC),
  INDEX `fk_vins_exploitants-vignerons1_idx` (`exploitants-vignerons_id` ASC),
  CONSTRAINT `fk_vins_pays`
    FOREIGN KEY (`pays_id`)
    REFERENCES `vin`.`pays` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vins_cru1`
    FOREIGN KEY (`cru_id`)
    REFERENCES `vin`.`cru` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vins_exploitants-vignerons1`
    FOREIGN KEY (`exploitants-vignerons_id`)
    REFERENCES `vin`.`exploitants-vignerons` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;