-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2020 a las 01:13:53
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `emc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id`, `Nombre`, `Direccion`, `Ciudad`) VALUES
(1, ' Loma Bonita Hoteles', 'Colibri 185', 'Puerto vallarta'),
(2, 'pancho', 'libelula 132', 'puerto vallarta'),
(800, 'Hotel las palmas', 'paseo de las palmas', 'puerto vallarta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conexionesprotecciones`
--

CREATE TABLE `conexionesprotecciones` (
  `Id` int(10) UNSIGNED NOT NULL,
  `ConexionesProteccionesTemperatura` varchar(45) NOT NULL,
  `ConexionesProteccionesAgua` varchar(45) NOT NULL,
  `ConexionesProteccionesPresionAceite` varchar(45) NOT NULL,
  `ConexionesProteccionesVelocidad` varchar(45) NOT NULL,
  `ConexionesProteccionesFallaArranque` varchar(45) NOT NULL,
  `ConexionesMarcha` varchar(45) NOT NULL,
  `ConexionesCorrienteDirecta` varchar(45) NOT NULL,
  `IntegridadMotor_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE `correo` (
  `Cliente_Id` int(10) UNSIGNED NOT NULL,
  `Id` int(10) UNSIGNED NOT NULL,
  `Secuencia` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `correo`
--

INSERT INTO `correo` (`Cliente_Id`, `Id`, `Secuencia`, `Correo`) VALUES
(1, 1, ' 10', 'ferda@hotma.com'),
(1, 2, '1', 'ferda@hotma.com'),
(1, 3, '10', 'ferda@hotma.com'),
(800, 4, '1', 'ferdapn@hotymail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipodegeneracion`
--

CREATE TABLE `equipodegeneracion` (
  `Id` int(11) NOT NULL,
  `Cliente_Id` int(10) UNSIGNED NOT NULL,
  `Numero` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Ubicacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipodegeneracion`
--

INSERT INTO `equipodegeneracion` (`Id`, `Cliente_Id`, `Numero`, `Nombre`, `Ubicacion`) VALUES
(1, 1, '4', 'Campeche', 'Terraza1'),
(2, 1, '4', 'Campeche', 'Terraza1'),
(3, 800, '1', 'PLANTA de tratamiento', '2do piso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filtroaceite`
--

CREATE TABLE `filtroaceite` (
  `Id` int(11) NOT NULL,
  `Motores_Id` int(10) UNSIGNED NOT NULL,
  `FiltroAceite` varchar(45) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `filtroaceite`
--

INSERT INTO `filtroaceite` (`Id`, `Motores_Id`, `FiltroAceite`, `Numero`) VALUES
(1, 3, 'dsadsa543', '4'),
(2, 3, '456', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filtroagua`
--

CREATE TABLE `filtroagua` (
  `Id` int(11) NOT NULL,
  `Motores_Id` int(10) UNSIGNED NOT NULL,
  `FiltroAgua` varchar(45) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `filtroagua`
--

INSERT INTO `filtroagua` (`Id`, `Motores_Id`, `FiltroAgua`, `Numero`) VALUES
(7, 3, 'dsa', '1'),
(8, 3, '123', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filtroaire`
--

CREATE TABLE `filtroaire` (
  `Id` int(11) NOT NULL,
  `Motores_Id` int(10) UNSIGNED NOT NULL,
  `FiltroAire` varchar(45) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `filtroaire`
--

INSERT INTO `filtroaire` (`Id`, `Motores_Id`, `FiltroAire`, `Numero`) VALUES
(1, 3, 'dsa76', '4'),
(2, 3, '789', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filtrocombustible`
--

CREATE TABLE `filtrocombustible` (
  `Id` int(11) NOT NULL,
  `Motores_Id` int(10) UNSIGNED NOT NULL,
  `FiltroCombustible` varchar(45) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `filtrocombustible`
--

INSERT INTO `filtrocombustible` (`Id`, `Motores_Id`, `FiltroCombustible`, `Numero`) VALUES
(1, 3, 'dsa543', '3'),
(2, 3, '456', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fugas`
--

CREATE TABLE `fugas` (
  `Id` int(10) UNSIGNED NOT NULL,
  `FugasAgua` varchar(45) NOT NULL,
  `FugasAceite` varchar(45) NOT NULL,
  `FugasCombustible` varchar(45) NOT NULL,
  `FugasEscapeMotor` varchar(45) NOT NULL,
  `IntegridadMotor_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generador`
--

CREATE TABLE `generador` (
  `Id` int(11) NOT NULL,
  `equipodegeneracion_id` int(11) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Modelo` varchar(45) NOT NULL,
  `Capacidad` smallint(4) UNSIGNED NOT NULL,
  `Voltaje` smallint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generador`
--

INSERT INTO `generador` (`Id`, `equipodegeneracion_id`, `Marca`, `Modelo`, `Capacidad`, `Voltaje`) VALUES
(1, 1, 'standford', '123456dsa456', 100, 440),
(2, 1, 'ganzo123', 'g564', 456, 440),
(3, 1, 'ganzo', 'g564', 456, 440);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integridadcomponentes`
--

CREATE TABLE `integridadcomponentes` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Marcha` varchar(45) NOT NULL,
  `Alternador` varchar(45) NOT NULL,
  `Radiador` varchar(45) NOT NULL,
  `Precalentador` varchar(45) NOT NULL,
  `Bandas` varchar(45) NOT NULL,
  `Filtros` varchar(45) NOT NULL,
  `LineasCombustible` varchar(45) NOT NULL,
  `BombaAgua` varchar(45) NOT NULL,
  `AcoplamientoMotorGeneradorCorriente` varchar(45) NOT NULL,
  `Instrumentos` varchar(45) NOT NULL,
  `IntegridadMotor_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integridadcomponentesgeneradorca`
--

CREATE TABLE `integridadcomponentesgeneradorca` (
  `Id` int(10) UNSIGNED NOT NULL,
  `ConexionesGeneradorCa` varchar(45) NOT NULL,
  `DiodosRectificadores` varchar(45) NOT NULL,
  `CamposGiratorios` varchar(45) NOT NULL,
  `Excitatriz` varchar(45) NOT NULL,
  `Estator` varchar(45) NOT NULL,
  `IntegridadComponentesGeneradorCa` varchar(45) NOT NULL,
  `PickUp` varchar(45) NOT NULL,
  `IntegridadGenerador_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integridadcomponentespaneltranferencia`
--

CREATE TABLE `integridadcomponentespaneltranferencia` (
  `Id` int(10) UNSIGNED NOT NULL,
  `MantenedorCarga` varchar(45) NOT NULL,
  `SensitivoVoltaje` varchar(45) NOT NULL,
  `Temporizadores` varchar(45) NOT NULL,
  `Interruptores` varchar(45) NOT NULL,
  `Fusibles` varchar(45) NOT NULL,
  `IntegridadPanelTranferencia_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integridadconexionpaneltransferencia`
--

CREATE TABLE `integridadconexionpaneltransferencia` (
  `Id` int(10) UNSIGNED NOT NULL,
  `ConexionesTablero` varchar(45) NOT NULL,
  `IntegridadConexionPanelTransferenciacol` varchar(45) NOT NULL,
  `ConexionesEmergencia` varchar(45) NOT NULL,
  `ConexionesCarga` varchar(45) NOT NULL,
  `IntegridadComponentesPanelTranferencia_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integridadgenerador`
--

CREATE TABLE `integridadgenerador` (
  `Id` int(10) UNSIGNED NOT NULL,
  `EstadoGeneradorCa` varchar(45) NOT NULL,
  `Reporte_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integridadmotor`
--

CREATE TABLE `integridadmotor` (
  `Id` int(10) UNSIGNED NOT NULL,
  `EstadoMotor` varchar(45) NOT NULL,
  `HorasTrabajadas` int(7) UNSIGNED NOT NULL,
  `Reporte_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integridadpaneltranferencia`
--

CREATE TABLE `integridadpaneltranferencia` (
  `Id` int(10) UNSIGNED NOT NULL,
  `EstadoGeneral` varchar(45) NOT NULL,
  `Reporte_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motores`
--

CREATE TABLE `motores` (
  `Id` int(10) UNSIGNED NOT NULL,
  `equipodegeneracion_id` int(11) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Modelo` varchar(45) NOT NULL,
  `AmperajeBateria` smallint(2) UNSIGNED DEFAULT NULL,
  `VoltajeBaterias` varchar(45) NOT NULL,
  `Combustible` varchar(45) NOT NULL,
  `NumeroCilindros` smallint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `motores`
--

INSERT INTO `motores` (`Id`, `equipodegeneracion_id`, `Marca`, `Modelo`, `AmperajeBateria`, `VoltajeBaterias`, `Combustible`, `NumeroCilindros`) VALUES
(3, 1, 'dsa', 'dsa', 456, '48', 'Gasolina', 3),
(4, 1, 'dsa', 'dsa', 0, '12', 'Gasolina', 3),
(5, 1, 'dsa', 'dsa', 456, '48', 'Gasolina', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `Id` int(10) UNSIGNED NOT NULL,
  `NivelCombustible` tinyint(3) UNSIGNED NOT NULL,
  `NivelAgua` tinyint(3) UNSIGNED NOT NULL,
  `NivelLiquido` tinyint(3) UNSIGNED NOT NULL,
  `NivelAcetie` tinyint(3) UNSIGNED NOT NULL,
  `IntegridadMotor_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paneltransferencia`
--

CREATE TABLE `paneltransferencia` (
  `Id` int(11) NOT NULL,
  `equipodegeneracion_id` int(11) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Modelo` varchar(45) DEFAULT NULL,
  `Capacidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paneltransferencia`
--

INSERT INTO `paneltransferencia` (`Id`, `equipodegeneracion_id`, `Marca`, `Modelo`, `Capacidad`) VALUES
(1, 1, 'patito2', 'p123fg777', '789'),
(2, 1, 'patito', 'p123fg', '456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `Id` int(10) UNSIGNED NOT NULL,
  `ReporteFecha` date NOT NULL,
  `EstadoGeneral` varchar(45) NOT NULL,
  `Observaciones` varchar(45) NOT NULL,
  `Cliente_Id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE `telefonos` (
  `Cliente_Id` int(10) UNSIGNED NOT NULL,
  `Id` int(10) UNSIGNED NOT NULL,
  `Secuencia` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `telefonos`
--

INSERT INTO `telefonos` (`Cliente_Id`, `Id`, `Secuencia`, `Telefono`) VALUES
(1, 1, ' 1', '123456'),
(1, 2, '1', '123456'),
(1, 3, '1', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `conexionesprotecciones`
--
ALTER TABLE `conexionesprotecciones`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_ConexionesProtecciones_IntegridadMotor1_idx` (`IntegridadMotor_Id`);

--
-- Indices de la tabla `correo`
--
ALTER TABLE `correo`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Correo_Cliente1_idx` (`Cliente_Id`);

--
-- Indices de la tabla `equipodegeneracion`
--
ALTER TABLE `equipodegeneracion`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_equipodegeneracion_Cliente1_idx` (`Cliente_Id`);

--
-- Indices de la tabla `filtroaceite`
--
ALTER TABLE `filtroaceite`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_FiltroAceite_Motores1_idx` (`Motores_Id`);

--
-- Indices de la tabla `filtroagua`
--
ALTER TABLE `filtroagua`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_FiltroAgua_Motores1_idx` (`Motores_Id`);

--
-- Indices de la tabla `filtroaire`
--
ALTER TABLE `filtroaire`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_FiltroAire_Motores1_idx` (`Motores_Id`);

--
-- Indices de la tabla `filtrocombustible`
--
ALTER TABLE `filtrocombustible`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_FiltroCombustible_Motores1_idx` (`Motores_Id`);

--
-- Indices de la tabla `fugas`
--
ALTER TABLE `fugas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Fugas_IntegridadMotor1_idx` (`IntegridadMotor_Id`);

--
-- Indices de la tabla `generador`
--
ALTER TABLE `generador`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Generador_equipodegeneracion1_idx` (`equipodegeneracion_id`);

--
-- Indices de la tabla `integridadcomponentes`
--
ALTER TABLE `integridadcomponentes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_IntegridadComponentes_IntegridadMotor1_idx` (`IntegridadMotor_Id`);

--
-- Indices de la tabla `integridadcomponentesgeneradorca`
--
ALTER TABLE `integridadcomponentesgeneradorca`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_IntegridadComponentesGeneradorCa_IntegridadGenerador1_idx` (`IntegridadGenerador_Id`);

--
-- Indices de la tabla `integridadcomponentespaneltranferencia`
--
ALTER TABLE `integridadcomponentespaneltranferencia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_IntegridadComponentesPanelTranferencia_IntegridadPanelTr_idx` (`IntegridadPanelTranferencia_Id`);

--
-- Indices de la tabla `integridadconexionpaneltransferencia`
--
ALTER TABLE `integridadconexionpaneltransferencia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_IntegridadConexionPanelTransferencia_IntegridadComponent_idx` (`IntegridadComponentesPanelTranferencia_Id`);

--
-- Indices de la tabla `integridadgenerador`
--
ALTER TABLE `integridadgenerador`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_IntegridadGenerador_Reporte1_idx` (`Reporte_Id`);

--
-- Indices de la tabla `integridadmotor`
--
ALTER TABLE `integridadmotor`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_IntegridadMotor_Reporte1_idx` (`Reporte_Id`);

--
-- Indices de la tabla `integridadpaneltranferencia`
--
ALTER TABLE `integridadpaneltranferencia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_IntegridadPanelTranferencia_Reporte1_idx` (`Reporte_Id`);

--
-- Indices de la tabla `motores`
--
ALTER TABLE `motores`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id_UNIQUE` (`Id`),
  ADD KEY `fk_Motores_equipodegeneracion1_idx` (`equipodegeneracion_id`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Niveles_IntegridadMotor1_idx` (`IntegridadMotor_Id`);

--
-- Indices de la tabla `paneltransferencia`
--
ALTER TABLE `paneltransferencia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_PanelTransferencia_equipodegeneracion1_idx` (`equipodegeneracion_id`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Reporte_Cliente1_idx` (`Cliente_Id`);

--
-- Indices de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Telefonos_Cliente1_idx` (`Cliente_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT de la tabla `conexionesprotecciones`
--
ALTER TABLE `conexionesprotecciones`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `correo`
--
ALTER TABLE `correo`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipodegeneracion`
--
ALTER TABLE `equipodegeneracion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `filtroaceite`
--
ALTER TABLE `filtroaceite`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `filtroagua`
--
ALTER TABLE `filtroagua`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `filtroaire`
--
ALTER TABLE `filtroaire`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `filtrocombustible`
--
ALTER TABLE `filtrocombustible`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fugas`
--
ALTER TABLE `fugas`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generador`
--
ALTER TABLE `generador`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `integridadcomponentes`
--
ALTER TABLE `integridadcomponentes`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `integridadcomponentesgeneradorca`
--
ALTER TABLE `integridadcomponentesgeneradorca`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `integridadcomponentespaneltranferencia`
--
ALTER TABLE `integridadcomponentespaneltranferencia`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `integridadconexionpaneltransferencia`
--
ALTER TABLE `integridadconexionpaneltransferencia`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `integridadgenerador`
--
ALTER TABLE `integridadgenerador`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `integridadmotor`
--
ALTER TABLE `integridadmotor`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `integridadpaneltranferencia`
--
ALTER TABLE `integridadpaneltranferencia`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `motores`
--
ALTER TABLE `motores`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paneltransferencia`
--
ALTER TABLE `paneltransferencia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conexionesprotecciones`
--
ALTER TABLE `conexionesprotecciones`
  ADD CONSTRAINT `fk_ConexionesProtecciones_IntegridadMotor1` FOREIGN KEY (`IntegridadMotor_Id`) REFERENCES `integridadmotor` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `correo`
--
ALTER TABLE `correo`
  ADD CONSTRAINT `fk_Correo_Cliente1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipodegeneracion`
--
ALTER TABLE `equipodegeneracion`
  ADD CONSTRAINT `fk_equipodegeneracion_Cliente1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `filtroaceite`
--
ALTER TABLE `filtroaceite`
  ADD CONSTRAINT `fk_FiltroAceite_Motores1` FOREIGN KEY (`Motores_Id`) REFERENCES `motores` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `filtroagua`
--
ALTER TABLE `filtroagua`
  ADD CONSTRAINT `fk_FiltroAgua_Motores1` FOREIGN KEY (`Motores_Id`) REFERENCES `motores` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `filtroaire`
--
ALTER TABLE `filtroaire`
  ADD CONSTRAINT `fk_FiltroAire_Motores1` FOREIGN KEY (`Motores_Id`) REFERENCES `motores` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `filtrocombustible`
--
ALTER TABLE `filtrocombustible`
  ADD CONSTRAINT `fk_FiltroCombustible_Motores1` FOREIGN KEY (`Motores_Id`) REFERENCES `motores` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fugas`
--
ALTER TABLE `fugas`
  ADD CONSTRAINT `fk_Fugas_IntegridadMotor1` FOREIGN KEY (`IntegridadMotor_Id`) REFERENCES `integridadmotor` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `generador`
--
ALTER TABLE `generador`
  ADD CONSTRAINT `fk_Generador_equipodegeneracion1` FOREIGN KEY (`equipodegeneracion_id`) REFERENCES `equipodegeneracion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integridadcomponentes`
--
ALTER TABLE `integridadcomponentes`
  ADD CONSTRAINT `fk_IntegridadComponentes_IntegridadMotor1` FOREIGN KEY (`IntegridadMotor_Id`) REFERENCES `integridadmotor` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integridadcomponentesgeneradorca`
--
ALTER TABLE `integridadcomponentesgeneradorca`
  ADD CONSTRAINT `fk_IntegridadComponentesGeneradorCa_IntegridadGenerador1` FOREIGN KEY (`IntegridadGenerador_Id`) REFERENCES `integridadgenerador` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integridadcomponentespaneltranferencia`
--
ALTER TABLE `integridadcomponentespaneltranferencia`
  ADD CONSTRAINT `fk_IntegridadComponentesPanelTranferencia_IntegridadPanelTran1` FOREIGN KEY (`IntegridadPanelTranferencia_Id`) REFERENCES `integridadpaneltranferencia` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integridadconexionpaneltransferencia`
--
ALTER TABLE `integridadconexionpaneltransferencia`
  ADD CONSTRAINT `fk_IntegridadConexionPanelTransferencia_IntegridadComponentes1` FOREIGN KEY (`IntegridadComponentesPanelTranferencia_Id`) REFERENCES `integridadcomponentespaneltranferencia` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integridadgenerador`
--
ALTER TABLE `integridadgenerador`
  ADD CONSTRAINT `fk_IntegridadGenerador_Reporte1` FOREIGN KEY (`Reporte_Id`) REFERENCES `reporte` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integridadmotor`
--
ALTER TABLE `integridadmotor`
  ADD CONSTRAINT `fk_IntegridadMotor_Reporte1` FOREIGN KEY (`Reporte_Id`) REFERENCES `reporte` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `integridadpaneltranferencia`
--
ALTER TABLE `integridadpaneltranferencia`
  ADD CONSTRAINT `fk_IntegridadPanelTranferencia_Reporte1` FOREIGN KEY (`Reporte_Id`) REFERENCES `reporte` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `motores`
--
ALTER TABLE `motores`
  ADD CONSTRAINT `fk_Motores_equipodegeneracion1` FOREIGN KEY (`equipodegeneracion_id`) REFERENCES `equipodegeneracion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD CONSTRAINT `fk_Niveles_IntegridadMotor1` FOREIGN KEY (`IntegridadMotor_Id`) REFERENCES `integridadmotor` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `paneltransferencia`
--
ALTER TABLE `paneltransferencia`
  ADD CONSTRAINT `fk_PanelTransferencia_equipodegeneracion1` FOREIGN KEY (`equipodegeneracion_id`) REFERENCES `equipodegeneracion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `fk_Reporte_Cliente1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD CONSTRAINT `fk_Telefonos_Cliente1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
