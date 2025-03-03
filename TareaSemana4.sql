-- MySQL Script generated by MySQL Workbench
-- Fri Feb 28 12:12:13 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tareaSemana4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tareaSemana4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tareaSemana4` DEFAULT CHARACTER SET utf8 ;
USE `tareaSemana4` ;

-- -----------------------------------------------------
-- Table `tareaSemana4`.`Estudiantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tareaSemana4`.`Estudiantes` (
  `Id_estudiante` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_estudiante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tareaSemana4`.`Cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tareaSemana4`.`Cursos` (
  `Id_curso` INT NOT NULL AUTO_INCREMENT,
  `Nombre del curso` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_curso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tareaSemana4`.`Inscripciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tareaSemana4`.`Inscripciones` (
  `Id_inscripción` INT NOT NULL,
  `Fecha` DATE NULL,
  `Id_estudiante` INT NOT NULL,
  `Id_curso` INT NOT NULL,
  PRIMARY KEY (`Id_inscripción`),
  INDEX `Id_estudiante_idx` (`Id_estudiante` ASC) VISIBLE,
  INDEX `Id_curso_idx` (`Id_curso` ASC) VISIBLE,
  CONSTRAINT `Id_estudiante`
    FOREIGN KEY (`Id_estudiante`)
    REFERENCES `tareaSemana4`.`Estudiantes` (`Id_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Id_curso`
    FOREIGN KEY (`Id_curso`)
    REFERENCES `tareaSemana4`.`Cursos` (`Id_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
