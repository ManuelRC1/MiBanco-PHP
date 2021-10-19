USE quevedodb;

-- Crear tabla usuarios
CREATE TABLE usuarios (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    passwd VARCHAR(255) NOT NULL,
    fecha_alta DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Crear tabla vacuna
CREATE TABLE vacuna (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    nombre_largo VARCHAR(100) NOT NULL,
    fabricante VARCHAR(255) NOT NULL,
    num_dosis INT(10) NOT NULL,
    tiempo_minimo INT,
    tiempo_maximo INT
);
--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE events (
    id int(11) NOT NULL PRIMARY KEY,
    title varchar(255) NOT NULL,
    start_event datetime NOT NULL,
    end_event datetime NOT NULL
    ); ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE events
    MODIFY id int(11) NOT NULL AUTO_INCREMENT;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2021 a las 21:30:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoscalendar`
--

CREATE TABLE eventoscalendar (
                                   id int(11) NOT NULL,
                                   evento varchar(250) DEFAULT NULL,
                                   color_evento varchar(20) DEFAULT NULL,
                                   fecha_inicio varchar(20) DEFAULT NULL,
                                   fecha_fin varchar(20) DEFAULT NULL
);

INSERT INTO eventoscalendar (id, evento, color_evento, fecha_inicio, fecha_fin) VALUES

ALTER TABLE eventoscalendar
    ADD PRIMARY KEY (id);

ALTER TABLE eventoscalendar
    MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;
