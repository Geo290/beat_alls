-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2024 a las 09:07:53
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `beat_alls`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `ID_Carrito` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Producto` int(11) NOT NULL,
  `Nombre_producto` varchar(30) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Cantidad_producto` smallint(6) NOT NULL,
  `Precio_unitario_producto` smallint(6) NOT NULL,
  `Precio_total_productos` int(11) NOT NULL,
  `Cantidad_pagar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Direccion` varchar(75) NOT NULL,
  `Edad` smallint(6) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Telefono` bigint(20) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Rol` varchar(25) NOT NULL,
  `Nombre_usuario` varchar(15) NOT NULL,
  `Contrasena` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `Nombre`, `Apellido`, `Direccion`, `Edad`, `Fecha_nacimiento`, `Telefono`, `Correo`, `Rol`, `Nombre_usuario`, `Contrasena`) VALUES
(12, 'Luis Salvador', 'Delgado', 'Francisco Javier Martínez Hernandez 306', 26, '1997-08-01', 4651164831, 'Luis_salvador97@outlook.com', 'Usuario', 'LuisS', '$2b$10$DmdwWEfVM348t2srNRKyFOmqMDS.ONiE4yGDPNFIUYiiQe3sA6W.G'),
(13, 'Flor Guadalupe', 'Llamas Zamorano', 'No tengo idea #104', 21, '2003-03-28', 4492852204, 'Flor@gmail.com', 'Usuario', 'Flor', '$2b$10$ecjtIbeX6r5uwdaerItlYeama1N2fjH.awp5GZjW949AB3jJ.5Rl6'),
(14, 'Astrid Jimena', 'Rodríguez Ramírez', 'Me vale vergas #207', 20, '2003-04-17', 8342566492, 'Astrid@gmail.com', 'Usuario', 'Astrid', '$2b$10$nkYdHEsYHWHmBShabn/HceEyUBPcK.Y/BEidCmZy8x669JZzqdPYm'),
(15, 'Alondra', 'Elías Dávila', 'Ni puta idea 102', 21, '2002-05-14', 4494241803, 'Alondra@gmail.com', 'Usuario', 'Alondra', '$2b$10$JPrdIeCiEWtFpKT9WCQIHOmMsfj4WJOssjhdZpAgRYlp4dPYGa//C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `Entrada` int(11) NOT NULL,
  `No_pedido` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Nombre_cliente` varchar(15) NOT NULL,
  `ID_producto` int(11) NOT NULL,
  `Nombre_producto` varchar(30) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Cantidad_producto` smallint(6) NOT NULL,
  `Precio_unitario_producto` smallint(6) NOT NULL,
  `Precio_total_productos` int(11) NOT NULL,
  `Cantidad_pagar` int(11) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `Estatus` varchar(25) NOT NULL,
  `motivo_Cancelacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`Entrada`, `No_pedido`, `ID_Cliente`, `Nombre_cliente`, `ID_producto`, `Nombre_producto`, `Descripcion`, `Cantidad_producto`, `Precio_unitario_producto`, `Precio_total_productos`, `Cantidad_pagar`, `Fecha`, `Estatus`, `motivo_Cancelacion`) VALUES
(22, 7, 13, 'Flor Guadalupe', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 3, 700, 2100, 0, '2024-04-01 19:18:53', 'Cancelado', 'Cancelaste este pedido'),
(23, 6, 13, 'Flor Guadalupe', 20, 'Blusa', 'Blusa negra manga corta', 3, 500, 1500, 0, '2024-04-01 19:06:54', 'Cancelado', 'Cancelaste este pedido'),
(24, 6, 13, 'Flor Guadalupe', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 0, '2024-04-01 19:06:54', 'Cancelado', 'Cancelaste este pedido'),
(25, 3, 14, 'Astrid Jimena', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 10, 700, 7000, 0, '2024-04-01 05:38:48', 'Cancelado', 'Cancelaste este pedido'),
(26, 7, 13, 'Flor Guadalupe', 20, 'Blusa', 'Blusa negra manga corta', 7, 500, 3500, 0, '2024-04-01 19:19:22', 'Cancelado', 'Cancelaste este pedido'),
(27, 7, 13, 'Flor Guadalupe', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 5, 700, 3500, 0, '2024-04-01 19:19:22', 'Cancelado', 'Cancelaste este pedido'),
(28, 7, 13, 'Flor Guadalupe', 22, 'Blusa deportiva', 'Blusa deportiva', 3, 300, 900, 0, '2024-04-01 19:19:22', 'Cancelado', 'Cancelaste este pedido'),
(29, 9, 14, 'Astrid Jimena', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 0, '2024-04-02 19:58:23', 'Cancelado', 'Cancelaste este pedido'),
(30, 9, 14, 'Astrid Jimena', 22, 'Blusa deportiva', 'Blusa deportiva', 1, 300, 300, 0, '2024-04-02 19:58:24', 'Cancelado', 'Cancelaste este pedido'),
(31, 10, 14, 'Astrid Jimena', 22, 'Blusa deportiva', 'Blusa deportiva', 3, 300, 900, 0, '2024-04-02 20:27:38', 'Cancelado', 'Cancelaste este pedido'),
(32, 10, 14, 'Astrid Jimena', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 0, '2024-04-02 20:27:39', 'Cancelado', 'Cancelaste este pedido'),
(33, 8, 13, 'Flor Guadalupe', 20, 'Blusa', 'Blusa negra manga corta', 1, 500, 500, 0, '2024-04-02 13:18:03', 'Cancelado', 'Cancelaste este pedido'),
(34, 15, 13, 'Flor Guadalupe', 20, 'Blusa', 'Blusa negra manga corta', 3, 500, 1500, 0, '2024-04-05 06:04:49', 'Cancelado', 'Cancelaste este pedido'),
(35, 15, 12, 'Luis Salvador', 23, 'Pantalón', 'Pantalón de Mezclilla', 1, 500, 500, 0, '2024-04-05 06:08:14', 'Cancelado', 'Cancelaste este pedido'),
(36, 15, 12, 'Luis Salvador', 23, 'Pantalón', 'Pantalón de Mezclilla', 1, 500, 500, 0, '2024-04-05 06:09:43', 'Cancelado', 'Cancelaste este pedido'),
(37, 15, 12, 'Luis Salvador', 23, 'Pantalón', 'Pantalón de Mezclilla', 2, 500, 1000, 0, '2024-04-05 06:12:29', 'Cancelado', 'Cancelaste este pedido'),
(38, 15, 12, 'Luis Salvador', 23, 'Pantalón', 'Pantalón de Mezclilla', 1, 500, 500, 0, '2024-04-05 06:13:38', 'Cancelado', 'Cancelaste este pedido'),
(39, 15, 12, 'Luis Salvador', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 0, '2024-04-05 06:31:36', 'Cancelado', 'Cancelaste este pedido'),
(40, 11, 14, 'Astrid Jimena', 22, 'Blusa deportiva', 'Blusa deportiva', 7, 300, 2100, 0, '2024-04-02 20:28:44', 'Cancelado', 'Cancelaste este pedido'),
(41, 11, 14, 'Astrid Jimena', 20, 'Blusa', 'Blusa negra manga corta', 1, 500, 500, 0, '2024-04-02 20:28:44', 'Cancelado', 'Cancelaste este pedido'),
(42, 16, 13, 'Flor Guadalupe', 20, 'Blusa', 'Blusa negra manga corta', 1, 500, 500, 0, '2024-04-05 06:31:38', 'Cancelado', 'Cancelaste este pedido'),
(43, 12, 14, 'Astrid Jimena', 20, 'Blusa', 'Blusa negra manga corta', 1, 500, 500, 0, '2024-04-05 05:35:57', 'Cancelado', 'Cancelaste este pedido'),
(44, 17, 14, 'Astrid Jimena', 20, 'Blusa', 'Blusa negra manga corta', 1, 500, 500, 0, '2024-04-05 06:31:39', 'Cancelado', 'Cancelaste este pedido'),
(45, 17, 14, 'Astrid Jimena', 23, 'Pantalón', 'Pantalón de Mezclilla', 1, 500, 500, 0, '2024-04-05 06:31:39', 'Cancelado', 'Cancelaste este pedido'),
(46, 18, 14, 'Astrid Jimena', 20, 'Blusa', 'Blusa negra manga corta', 1, 500, 500, 0, '2024-04-05 19:03:47', 'Cancelado', 'Cancelaste este pedido'),
(47, 20, 14, 'Astrid Jimena', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 0, '2024-04-06 01:16:33', 'Cancelado', 'Cancelaste este pedido'),
(48, 20, 14, 'Astrid Jimena', 20, 'Blusa', 'Blusa negra manga corta', 1, 500, 500, 0, '2024-04-06 01:16:33', 'Cancelado', 'Cancelaste este pedido'),
(49, 20, 14, 'Astrid Jimena', 22, 'Blusa deportiva', 'Blusa deportiva', 14, 300, 4200, 0, '2024-04-06 01:16:34', 'Cancelado', 'Cancelaste este pedido'),
(50, 19, 14, 'Astrid Jimena', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 700, '2024-04-06 01:14:48', 'Cancelado', 'Cancelaste este pedido'),
(51, 23, 14, 'Astrid Jimena', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 4, 700, 2800, 2800, '2024-04-06 07:12:18', 'Cancelado', 'Cancelaste este pedido'),
(52, 23, 14, 'Astrid Jimena', 22, 'Blusa deportiva', 'Blusa deportiva', 2, 300, 600, 600, '2024-04-06 07:12:18', 'Cancelado', 'Cancelaste este pedido'),
(53, 23, 14, 'Astrid Jimena', 23, 'Pantalón', 'Pantalón de Mezclilla', 3, 500, 1500, 1500, '2024-04-06 07:12:18', 'Cancelado', 'Cancelaste este pedido'),
(54, 24, 13, 'Flor Guadalupe', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 700, '2024-04-06 15:51:28', 'Cancelado', 'Cancelaste este pedido'),
(55, 24, 13, 'Flor Guadalupe', 29, 'Blusa', 'Blusa negra manga corta', 6, 300, 1800, 1800, '2024-04-06 15:51:28', 'Cancelado', 'Cancelaste este pedido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs_cliente`
--

CREATE TABLE `logs_cliente` (
  `ID` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Rol` varchar(25) NOT NULL,
  `Nombre_cliente` varchar(30) NOT NULL,
  `Accion` varchar(30) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Fecha_hora` datetime NOT NULL DEFAULT current_timestamp(),
  `IP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `logs_cliente`
--

INSERT INTO `logs_cliente` (`ID`, `ID_Cliente`, `Rol`, `Nombre_cliente`, `Accion`, `Descripcion`, `Fecha_hora`, `IP`) VALUES
(1, 14, 'Usuario', 'Astrid Jimena', 'Creación de carrito', 'Se da de alta un nuevo carrito', '2024-04-05 05:39:12', '192.168.0.10'),
(2, 15, 'Usuario', 'Alondra', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 05:43:21', '192.168.0.10'),
(3, 15, 'Usuario', 'Alondra', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 05:52:26', '192.168.0.10'),
(4, 15, 'Usuario', 'Alondra', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 05:52:30', '192.168.0.10'),
(5, 15, 'Usuario', 'Alondra', 'Creación de pedido', 'Se envía carrito de compras a pedido', '2024-04-05 05:52:38', '192.168.0.10'),
(6, 13, 'Usuario', 'Flor Guadalupe', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 06:04:41', '192.168.0.10'),
(7, 13, 'Usuario', 'Flor Guadalupe', 'Creación de pedido', 'Se envía carrito de compras a pedido', '2024-04-05 06:04:49', '192.168.0.10'),
(8, 13, 'Usuario', 'Flor Guadalupe', 'Cancelación de pedid', ' por parte del usuario', '2024-04-05 06:04:53', '192.168.0.10'),
(18, 12, 'Usuario', 'Luis Salvador', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 06:13:29', '192.168.0.10'),
(19, 12, 'Usuario', 'Luis Salvador', 'Creación de pedido', 'Se envía carrito de compras a pedido', '2024-04-05 06:13:39', '192.168.0.10'),
(20, 12, 'Usuario', 'Luis Salvador', 'Cancelación de pedido', 'Se cancela pedido número 15 por parte del cliente', '2024-04-05 06:13:46', '192.168.0.10'),
(21, 12, 'Usuario', 'Luis Salvador', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 06:31:08', '192.168.0.10'),
(22, 14, 'Usuario', 'Astrid Jimena', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 06:31:16', '192.168.0.10'),
(23, 13, 'Usuario', 'Flor Guadalupe', 'Adición al carrito', 'Se agrega producto al carrito', '2024-04-05 06:31:19', '192.168.0.10'),
(24, 12, 'Usuario', 'Luis Salvador', 'Creación de pedido', 'Se envía carrito de compras a pedido', '2024-04-05 06:31:36', '192.168.0.10'),
(25, 13, 'Usuario', 'Flor Guadalupe', 'Creación de pedido', 'Se envía carrito de compras a pedido', '2024-04-05 06:31:38', '192.168.0.10'),
(26, 14, 'Usuario', 'Astrid Jimena', 'Creación de pedido', 'Se envía carrito de compras a pedido', '2024-04-05 06:31:39', '192.168.0.10'),
(27, 12, 'Usuario', 'Luis Salvador', 'Cancelación de pedido', 'Se cancela pedido número 15 por parte del cliente', '2024-04-05 06:31:42', '192.168.0.10'),
(28, 14, 'Usuario', 'Astrid Jimena', 'Cancelación de pedido', 'Se cancela pedido número 11 por parte del cliente', '2024-04-05 06:31:45', '192.168.0.10'),
(29, 13, 'Usuario', 'Flor Guadalupe', 'Cancelación de pedido', 'Se cancela pedido número 16 por parte del cliente', '2024-04-05 06:31:47', '192.168.0.10'),
(30, 19, 'Cliente', 'Lizbeth', 'Registro de cliente', 'Se registra nuevo cliente', '2024-04-05 07:11:32', '192.168.0.10'),
(31, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-05 13:56:17', '192.168.3.123'),
(32, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-05 13:57:18', '192.168.3.123'),
(33, 13, 'Usuario', 'Flor Guadalupe', 'Logout', 'Cierre de sesión de cliente: Flor', '2024-04-05 13:57:21', '192.168.3.123'),
(34, 20, 'Cliente', 'Luis', 'Registro', 'Se registra nuevo cliente', '2024-04-05 14:10:05', '192.168.3.123'),
(35, 21, 'Cliente', 'Luis Salvador', 'Registro', 'Se registra nuevo cliente', '2024-04-05 14:11:48', '192.168.3.123'),
(36, 22, 'Cliente', 'Luis Salvador', 'Registro', 'Se registra nuevo cliente', '2024-04-05 14:12:49', '192.168.3.123'),
(37, 23, 'Cliente', 'Luis Salvador', 'Registro', 'Se registra nuevo cliente', '2024-04-05 14:14:00', '192.168.3.123'),
(38, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-05 19:01:18', '192.168.3.123'),
(39, 13, 'Usuario', 'Flor Guadalupe', 'Logout', 'Cierre de sesión de cliente: Flor', '2024-04-05 19:01:24', '192.168.3.123'),
(40, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-05 19:01:58', '192.168.3.123'),
(41, 13, 'Usuario', 'Flor Guadalupe', 'Logout', 'Cierre de sesión de cliente: Flor', '2024-04-05 19:02:39', '192.168.3.123'),
(42, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-05 19:02:43', '192.168.3.123'),
(43, 14, 'Usuario', 'Astrid Jimena', 'Cancelación', 'Se cancela pedido número 12 por parte del cliente', '2024-04-05 19:02:49', '192.168.3.123'),
(44, 14, 'Usuario', 'Astrid Jimena', 'Cancelación', 'Se cancela pedido número 17 por parte del cliente', '2024-04-05 19:03:12', '192.168.3.123'),
(45, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-05 19:03:40', '192.168.3.123'),
(46, 14, 'Usuario', 'Astrid Jimena', 'Creación', 'Se envía carrito de compras a pedido', '2024-04-05 19:03:47', '192.168.3.123'),
(47, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 01:12:59', '10.20.52.30'),
(48, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 01:13:05', '10.20.52.30'),
(49, 14, 'Usuario', 'Astrid Jimena', 'Creación', 'Se envía carrito de compras a pedido', '2024-04-06 01:14:49', '10.20.52.30'),
(50, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 01:15:03', '10.20.52.30'),
(51, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 01:15:06', '10.20.52.30'),
(52, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 01:15:13', '10.20.52.30'),
(53, 14, 'Usuario', 'Astrid Jimena', 'Creación', 'Se envía carrito de compras a pedido', '2024-04-06 01:16:34', '10.20.52.30'),
(54, 14, 'Usuario', 'Astrid Jimena', 'Cancelación', 'Se cancela pedido número 18 por parte del cliente', '2024-04-06 01:17:07', '10.20.52.30'),
(55, 14, 'Usuario', 'Astrid Jimena', 'Cancelación', 'Se cancela pedido número 20 por parte del cliente', '2024-04-06 01:17:21', '10.20.52.30'),
(56, 14, 'Usuario', 'Astrid Jimena', 'Logout', 'Cierre de sesión de cliente: Astrid', '2024-04-06 01:18:19', '10.20.52.30'),
(57, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 01:22:08', '10.20.52.30'),
(58, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 01:29:12', '10.20.52.30'),
(59, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 06:28:18', '192.168.0.10'),
(60, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 06:31:49', '192.168.0.10'),
(61, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 06:40:54', '192.168.0.10'),
(62, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 06:41:41', '192.168.0.10'),
(63, 14, 'Usuario', 'Astrid Jimena', 'Logout', 'Cierre de sesión de cliente: Astrid', '2024-04-06 06:42:26', '192.168.0.10'),
(64, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 06:42:40', '192.168.0.10'),
(65, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 06:43:30', '192.168.0.10'),
(66, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 06:48:09', '192.168.0.10'),
(67, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 06:48:15', '192.168.0.10'),
(68, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 06:49:29', '192.168.0.10'),
(69, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 06:50:36', '192.168.0.10'),
(70, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 07:06:23', '192.168.0.10'),
(71, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 07:11:22', '192.168.0.10'),
(72, 14, 'Usuario', 'Astrid Jimena', 'Creación', 'Se envía carrito de compras a pedido', '2024-04-06 07:11:34', '192.168.0.10'),
(73, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 07:11:53', '192.168.0.10'),
(74, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 07:11:57', '192.168.0.10'),
(75, 14, 'Usuario', 'Astrid Jimena', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 07:12:04', '192.168.0.10'),
(76, 14, 'Usuario', 'Astrid Jimena', 'Creación', 'Se envía carrito de compras a pedido', '2024-04-06 07:12:19', '192.168.0.10'),
(77, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 07:21:09', '192.168.0.10'),
(78, 14, 'Usuario', 'Astrid Jimena', 'Login', 'Inicio de sesión en empleado: Astrid', '2024-04-06 07:24:59', '192.168.0.10'),
(79, 14, 'Usuario', 'Astrid Jimena', 'Cancelación', 'Se cancela el pedido número 19 por parte del cliente', '2024-04-06 07:25:16', '192.168.0.10'),
(80, 14, 'Usuario', 'Astrid Jimena', 'Cancelación', 'Se cancela el pedido número 23 por parte del cliente', '2024-04-06 07:25:48', '192.168.0.10'),
(81, 18, 'Usuario', 'Esly Karina', 'Login', 'Inicio de sesión en empleado: Esly', '2024-04-06 08:10:56', '192.168.0.10'),
(82, 18, 'Usuario', 'Esly Karina', 'Logout', 'Cierre de sesión de cliente: Esly', '2024-04-06 08:10:58', '192.168.0.10'),
(83, 18, 'Usuario', 'Esly Karina', 'Login', 'Inicio de sesión en empleado: Esly', '2024-04-06 08:11:12', '192.168.0.10'),
(84, 18, 'Usuario', 'Esly Karina', 'Logout', 'Cierre de sesión de cliente: Esly', '2024-04-06 08:11:14', '192.168.0.10'),
(85, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-06 08:15:09', '192.168.0.10'),
(86, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-06 08:17:35', '192.168.0.10'),
(87, 13, 'Usuario', 'Flor Guadalupe', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 08:17:57', '192.168.0.10'),
(88, 13, 'Usuario', 'Flor Guadalupe', 'Logout', 'Cierre de sesión de cliente: Flor', '2024-04-06 08:26:30', '192.168.0.10'),
(89, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-06 08:40:44', '192.168.0.10'),
(90, 13, 'Usuario', 'Flor Guadalupe', 'Logout', 'Cierre de sesión de cliente: Flor', '2024-04-06 08:40:50', '192.168.0.10'),
(91, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-06 15:50:56', '192.168.0.10'),
(92, 13, 'Usuario', 'Flor Guadalupe', 'Agregar', 'Se agrega producto al carrito', '2024-04-06 15:51:07', '192.168.0.10'),
(93, 13, 'Usuario', 'Flor Guadalupe', 'Creación', 'Se envía carrito de compras a pedido', '2024-04-06 15:51:29', '192.168.0.10'),
(94, 13, 'Usuario', 'Flor Guadalupe', 'Cancelación', 'Se cancela el pedido número 24 por parte del cliente', '2024-04-06 15:52:05', '192.168.0.10'),
(95, 13, 'Usuario', 'Flor Guadalupe', 'Login', 'Inicio de sesión en empleado: Flor', '2024-04-06 18:36:04', '192.168.2.8'),
(96, 13, 'Usuario', 'Flor Guadalupe', 'Logout', 'Cierre de sesión de cliente: Flor', '2024-04-06 18:36:07', '192.168.2.8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs_usuario`
--

CREATE TABLE `logs_usuario` (
  `ID` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `Nombre_usuario` varchar(30) NOT NULL,
  `Accion` varchar(30) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Fecha_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `IP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `logs_usuario`
--

INSERT INTO `logs_usuario` (`ID`, `ID_Usuario`, `Rol`, `Nombre_usuario`, `Accion`, `Descripcion`, `Fecha_hora`, `IP`) VALUES
(1, 17, 'Administrador', 'EdgeSlayer', 'Creación de empleado', 'Se crea un nuevo empleado', '2024-04-05 07:06:30', '192.168.0.10'),
(2, 20, 'Empleado', 'Paulina Jaqueline', 'Creación de producto', 'Se registra nuevo producto del proveedor: 1', '2024-04-05 07:20:17', '192.168.0.10'),
(3, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualiza pedido número: 12', '2024-04-05 07:26:41', '192.168.0.10'),
(4, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos del usuario: 21', '2024-04-05 07:30:47', '192.168.0.10'),
(5, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos de cliente : 19', '2024-04-05 07:34:29', '192.168.0.10'),
(6, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualiza producto con el ID: 20', '2024-04-05 07:42:09', '192.168.0.10'),
(7, 17, 'Administrador', 'Luis Salvador', 'Creación', 'Se registra nuevo proveedor: Flor', '2024-04-05 07:52:09', '192.168.0.10'),
(8, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina el usuario: 22', '2024-04-05 07:58:01', '192.168.0.10'),
(9, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos de cliente : 19', '2024-04-05 07:59:58', '192.168.0.10'),
(10, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualiza producto con el ID: 24', '2024-04-05 08:04:58', '192.168.0.10'),
(11, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina producto número: 24', '2024-04-05 08:05:02', '192.168.0.10'),
(12, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-05 13:41:52', '192.168.3.123'),
(13, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-05 13:55:57', '192.168.3.123'),
(14, 20, 'Empleado', 'Paulina Jaqueline', 'Logout', 'Cierre de sesión de usuario: Paulina', '2024-04-05 13:55:59', '192.168.3.123'),
(15, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-05 13:56:04', '192.168.3.123'),
(16, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-05 13:56:06', '192.168.3.123'),
(17, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-05 13:56:11', '192.168.3.123'),
(18, 20, 'Empleado', 'Paulina Jaqueline', 'Logout', 'Cierre de sesión de usuario: Paulina', '2024-04-05 13:56:12', '192.168.3.123'),
(19, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-05 14:15:57', '192.168.3.123'),
(20, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-05 14:26:42', '192.168.3.123'),
(21, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-05 14:26:47', '192.168.3.123'),
(22, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina el cliente número: 23', '2024-04-05 14:26:58', '192.168.3.123'),
(23, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina el cliente número: 22', '2024-04-05 14:27:02', '192.168.3.123'),
(24, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina el cliente número: 21', '2024-04-05 14:27:07', '192.168.3.123'),
(25, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-05 16:43:04', '192.168.3.123'),
(26, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-05 16:45:08', '192.168.3.123'),
(27, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-05 19:01:28', '192.168.3.123'),
(28, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-05 19:01:53', '192.168.3.123'),
(29, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 01:10:51', '10.20.52.30'),
(30, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 01:10:51', '10.20.52.30'),
(31, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 01:12:47', '10.20.52.30'),
(32, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 01:18:19', '10.20.52.30'),
(33, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 01:18:24', '10.20.52.30'),
(34, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 01:22:03', '10.20.52.30'),
(35, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 01:33:18', '10.20.52.30'),
(36, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina el cliente número: 20', '2024-04-06 01:34:20', '10.20.52.30'),
(37, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina el cliente número: 19', '2024-04-06 01:34:27', '10.20.52.30'),
(38, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 04:34:06', '192.168.0.10'),
(39, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 04:35:11', '192.168.0.10'),
(40, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 04:37:39', '192.168.0.10'),
(41, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 04:57:16', '192.168.0.10'),
(42, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 04:58:30', '192.168.0.10'),
(43, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:00:23', '192.168.0.10'),
(44, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:03:56', '192.168.0.10'),
(45, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:04:52', '192.168.0.10'),
(46, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:08:59', '192.168.0.10'),
(47, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:10:35', '192.168.0.10'),
(48, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos de cliente : 12', '2024-04-06 05:10:48', '192.168.0.10'),
(49, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:16:28', '192.168.0.10'),
(50, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:18:19', '192.168.0.10'),
(51, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 05:22:57', '192.168.0.10'),
(52, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:23:01', '192.168.0.10'),
(53, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:25:33', '192.168.0.10'),
(54, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 05:26:50', '192.168.0.10'),
(55, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:26:54', '192.168.0.10'),
(56, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:28:19', '192.168.0.10'),
(57, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:29:27', '192.168.0.10'),
(58, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:30:57', '192.168.0.10'),
(59, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:33:09', '192.168.0.10'),
(60, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos de cliente : 12', '2024-04-06 05:37:00', '192.168.0.10'),
(61, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos de cliente : 12', '2024-04-06 05:37:19', '192.168.0.10'),
(62, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 05:38:25', '192.168.0.10'),
(63, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:38:29', '192.168.0.10'),
(64, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:41:51', '192.168.0.10'),
(65, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:45:35', '192.168.0.10'),
(66, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:47:12', '192.168.0.10'),
(67, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos de cliente : 18', '2024-04-06 05:47:30', '192.168.0.10'),
(68, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 05:56:51', '192.168.0.10'),
(69, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 06:40:42', '192.168.0.10'),
(70, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 06:40:44', '192.168.0.10'),
(71, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 06:42:31', '192.168.0.10'),
(72, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 06:42:33', '192.168.0.10'),
(73, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 08:10:20', '192.168.0.10'),
(74, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 08:10:35', '192.168.0.10'),
(75, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:26:36', '192.168.0.10'),
(76, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:34:21', '192.168.0.10'),
(77, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:40:57', '192.168.0.10'),
(78, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:42:33', '192.168.0.10'),
(79, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:44:30', '192.168.0.10'),
(80, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:45:36', '192.168.0.10'),
(81, 20, 'Empleado', 'Paulina Jaqueline', 'Logout', 'Cierre de sesión de usuario: Paulina', '2024-04-06 08:46:58', '192.168.0.10'),
(82, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:47:03', '192.168.0.10'),
(83, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:54:08', '192.168.0.10'),
(84, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:56:55', '192.168.0.10'),
(85, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 08:58:53', '192.168.0.10'),
(86, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:01:55', '192.168.0.10'),
(87, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:04:00', '192.168.0.10'),
(88, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:06:25', '192.168.0.10'),
(89, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:07:58', '192.168.0.10'),
(90, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:09:38', '192.168.0.10'),
(91, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:11:51', '192.168.0.10'),
(92, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:13:14', '192.168.0.10'),
(93, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:14:46', '192.168.0.10'),
(94, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:18:03', '192.168.0.10'),
(95, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 09:19:25', '192.168.0.10'),
(96, 20, 'Empleado', 'Paulina Jaqueline', 'Creación', 'Se registra nuevo producto del proveedor: 1', '2024-04-06 09:20:10', '192.168.0.10'),
(97, 20, 'Empleado', 'Paulina Jaqueline', 'Logout', 'Cierre de sesión de usuario: Paulina', '2024-04-06 13:29:07', '192.168.0.10'),
(98, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 13:29:12', '192.168.0.10'),
(99, 20, 'Empleado', 'Paulina Jaqueline', 'Creación', 'Se registra nuevo proveedor: Nike', '2024-04-06 13:31:12', '192.168.0.10'),
(100, 20, 'Empleado', 'Paulina Jaqueline', 'Logout', 'Cierre de sesión de usuario: Paulina', '2024-04-06 13:32:02', '192.168.0.10'),
(101, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 13:32:11', '192.168.0.10'),
(102, 20, 'Empleado', 'Paulina Jaqueline', 'Creación', 'Se registra nuevo proveedor: Rotten Cherry', '2024-04-06 13:35:17', '192.168.0.10'),
(103, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 13:37:32', '192.168.0.10'),
(104, 20, 'Empleado', 'Paulina Jaqueline', 'Creación', 'Se registra nuevo proveedor: The Rotten Cherry', '2024-04-06 13:38:17', '192.168.0.10'),
(105, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 13:56:05', '192.168.0.10'),
(106, 20, 'Empleado', 'Paulina Jaqueline', 'Logout', 'Cierre de sesión de usuario: Paulina', '2024-04-06 14:00:49', '192.168.0.10'),
(107, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 14:00:54', '192.168.0.10'),
(108, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 15:11:24', '192.168.0.10'),
(109, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 15:14:19', '192.168.0.10'),
(110, 20, 'Empleado', 'Paulina Jaqueline', 'Login', 'Inicio de sesión en empleado: Paulina', '2024-04-06 15:29:31', '192.168.0.10'),
(111, 20, 'Empleado', 'Paulina Jaqueline', 'Creación', 'Se registra nuevo producto del proveedor: 2', '2024-04-06 15:30:16', '192.168.0.10'),
(112, 20, 'Empleado', 'Paulina Jaqueline', 'Logout', 'Cierre de sesión de usuario: Paulina', '2024-04-06 15:37:17', '192.168.0.10'),
(113, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 15:37:22', '192.168.0.10'),
(114, 17, 'Administrador', 'EdgeSlayer', 'Creación', 'Se crea un nuevo empleado', '2024-04-06 15:38:13', '192.168.0.10'),
(115, 17, 'Administrador', 'Luis Salvador', 'Logout', 'Cierre de sesión de usuario: EdgeSlayer', '2024-04-06 15:38:30', '192.168.0.10'),
(116, 23, 'Empleado', 'Luis', 'Login', 'Inicio de sesión en empleado: LuisChalan', '2024-04-06 15:38:54', '192.168.0.10'),
(117, 23, 'Empleado', 'Luis', 'Creación', 'Se registra nuevo proveedor: Shein', '2024-04-06 15:39:32', '192.168.0.10'),
(118, 23, 'Empleado', 'Luis', 'Creación', 'Se registra nuevo producto del proveedor: 3', '2024-04-06 15:40:40', '192.168.0.10'),
(119, 23, 'Empleado', 'Luis', 'Logout', 'Cierre de sesión de usuario: LuisChalan', '2024-04-06 15:44:35', '192.168.0.10'),
(120, 23, 'Empleado', 'Luis', 'Login', 'Inicio de sesión en empleado: LuisChalan', '2024-04-06 15:44:56', '192.168.0.10'),
(121, 23, 'Empleado', 'Luis', 'Creación', 'Se registra nuevo proveedor: Shein', '2024-04-06 15:45:28', '192.168.0.10'),
(122, 23, 'Empleado', 'Luis', 'Creación', 'Se registra nuevo producto del proveedor: 4', '2024-04-06 15:46:20', '192.168.0.10'),
(123, 23, 'Empleado', 'Luis', 'Logout', 'Cierre de sesión de usuario: LuisChalan', '2024-04-06 15:47:53', '192.168.0.10'),
(124, 23, 'Empleado', 'Luis', 'Login', 'Inicio de sesión en empleado: LuisChalan', '2024-04-06 15:48:39', '192.168.0.10'),
(125, 23, 'Empleado', 'Luis', 'Creación', 'Se registra nuevo proveedor: Shein', '2024-04-06 15:49:24', '192.168.0.10'),
(126, 23, 'Empleado', 'Luis', 'Creación', 'Se registra nuevo producto del proveedor: 5', '2024-04-06 15:50:36', '192.168.0.10'),
(127, 23, 'Empleado', 'Luis', 'Logout', 'Cierre de sesión de usuario: LuisChalan', '2024-04-06 15:50:50', '192.168.0.10'),
(128, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 18:36:16', '192.168.2.8'),
(129, 17, 'Administrador', 'Luis Salvador', 'Eliminación', 'Se elimina el cliente número: 18', '2024-04-06 18:36:28', '192.168.2.8'),
(130, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos de cliente : 15', '2024-04-06 18:36:42', '192.168.2.8'),
(131, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 18:55:15', '192.168.2.8'),
(132, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos del usuario: 20', '2024-04-06 18:55:57', '192.168.2.8'),
(133, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualizan datos del usuario: 20', '2024-04-06 18:56:14', '192.168.2.8'),
(134, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 19:03:42', '192.168.2.8'),
(135, 17, 'Administrador', 'Luis Salvador', 'Login', 'Inicio de sesión en administrador: EdgeSlayer', '2024-04-06 20:49:25', '192.168.2.8'),
(136, 17, 'Administrador', 'Luis Salvador', 'Actualización', 'Se actualiza pedido número: 21', '2024-04-06 20:49:37', '192.168.2.8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `No_pedido` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Nombre_cliente` varchar(15) NOT NULL,
  `ID_Producto` int(11) NOT NULL,
  `Nombre_producto` varchar(30) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Cantidad_producto` smallint(6) NOT NULL,
  `Precio_unitario_producto` smallint(6) NOT NULL,
  `Precio_total_productos` int(11) NOT NULL,
  `Cantidad_pagar` int(11) NOT NULL,
  `Ubicacion` varchar(50) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `Estatus` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`No_pedido`, `ID_Cliente`, `Nombre_cliente`, `ID_Producto`, `Nombre_producto`, `Descripcion`, `Cantidad_producto`, `Precio_unitario_producto`, `Precio_total_productos`, `Cantidad_pagar`, `Ubicacion`, `Fecha`, `Estatus`) VALUES
(13, 15, 'Alondra', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 0, 'Aguascalientes', '2024-04-05 05:50:50', 'Pendiente de pago'),
(14, 15, 'Alondra', 22, 'Blusa deportiva', 'Blusa deportiva', 2, 300, 600, 0, 'Aguascalientes', '2024-04-05 05:52:37', 'Pendiente de pago'),
(14, 15, 'Alondra', 21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 1, 700, 700, 600, 'Aguascalientes', '2024-04-05 05:52:37', 'Pendiente de pago'),
(21, 14, 'Astrid Jimena', 20, 'Blusa', 'Blusa negra manga corta', 3, 500, 1500, 0, 'Guanajuato', '2024-04-06 07:06:35', 'En ruta de entrega'),
(22, 14, 'Astrid Jimena', 20, 'Blusa', 'Blusa negra manga corta', 3, 500, 1500, 0, 'Aguascalientes', '2024-04-06 07:11:34', 'Pendiente de pago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(11) NOT NULL,
  `Nombre_producto` varchar(30) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Color` varchar(15) NOT NULL,
  `Talla` varchar(20) NOT NULL,
  `Material` varchar(15) NOT NULL,
  `Marca` varchar(25) NOT NULL,
  `Temporada` varchar(30) NOT NULL,
  `Existencias` smallint(6) NOT NULL,
  `Precio` float NOT NULL,
  `Precio_publico` float NOT NULL,
  `ID_Proveedor` int(11) NOT NULL,
  `filepath` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Producto`, `Nombre_producto`, `Descripcion`, `Color`, `Talla`, `Material`, `Marca`, `Temporada`, `Existencias`, `Precio`, `Precio_publico`, `ID_Proveedor`, `filepath`) VALUES
(20, 'Blusa', 'Blusa negra manga corta', 'Negro', 'Chica', 'Algodón', 'Aeropostale', 'Verano', 2, 250, 500, 1, 'uploads\\imagen_1711755328299imagen_1711671472712playeras-aeropostale-dama-nuevas-mayoreo-original-D_NQ_NP_967231-MLM31214568647_062019-Q.jpg'),
(21, 'Vestido', 'Vestido negro corte de corazón en el pecho', 'Negro', 'XL', 'Algodón', 'Shein Curvy', 'Verano', 6, 350, 700, 1, 'uploads\\imagen_1711755402343imagen_1711671505231b8fb775acf84732fe4a7766ada080d69.jpg'),
(22, 'Blusa deportiva', 'Blusa deportiva', 'Rojo', 'Grande', 'Algodón', 'Adidas', 'Verano', 10, 150, 300, 1, 'uploads\\imagen_17117554339281711669092760-IN-GN2902-1.png'),
(23, 'Pantalón', 'Pantalón de Mezclilla', 'Azul', 'Grande', 'Mezclilla', 'Levis', 'Verano', 14, 250, 500, 1, 'uploads\\imagen_17120822643361680213793_PANTALON FRENTE.png'),
(25, 'Blusa deportiva', 'Chamarra de piel para caballero rockera', 'Negro', 'Grande', 'Vinipiel', 'Aeropostale', 'Invierno', 2, 150, 300, 1, 'uploads\\imagen_171239520969123-4-300x300.png'),
(26, 'Panties', 'Panties calavera', 'Negro', 'Chica', 'Algodon', 'Rotten Cherry', 'Verano', 50, 100, 200, 2, 'uploads\\imagen_1712417413491images.jpeg'),
(29, 'Blusa', 'Blusa negra manga corta', 'Negro', 'Mediana', 'algodon', 'Shein Curvy', 'Invierno', 52, 150, 300, 5, 'uploads\\imagen_1712418618326the-swordsman-son-devil-may-cry-5-4k-2w-1366x768.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ID_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Telefono` bigint(20) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Empresa` varchar(20) NOT NULL,
  `filepath` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ID_Proveedor`, `Nombre`, `Apellido`, `Telefono`, `Correo`, `Empresa`, `filepath`) VALUES
(1, 'Luis Salvador', 'Delgado Romo', 4651164832, 'EdgeSlayer97@gmail.com', 'Epic Games', ''),
(2, 'Astrid Jimena', 'Rodríguez Ramírez', 8342566491, 'AstridJ@gmail.com', 'The Rotten Cherry', 'uploads\\imagen_1712410693824images (1).png'),
(5, 'Alondra', 'Elías Dávila', 7897897897, 'AlondraED@gmail.com', 'Shein', 'uploads\\imagen_1712418546354fkehnxzexbetqozch34y.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Direccion` varchar(75) NOT NULL,
  `Edad` smallint(6) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Telefono` bigint(20) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Rol` varchar(25) NOT NULL,
  `Nombre_usuario` varchar(15) NOT NULL,
  `Contrasena` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usuario`, `Nombre`, `Apellido`, `Direccion`, `Edad`, `Fecha_nacimiento`, `Telefono`, `Correo`, `Rol`, `Nombre_usuario`, `Contrasena`) VALUES
(17, 'Luis Salvador', 'Delgado Romo', 'Francisco Javier Martínez Hernandez 306', 26, '1997-08-01', 4651164831, 'EdgeSlayer97@gmail.com', 'Administrador', 'EdgeSlayer', '$2b$10$wEuruXQ4gR/lhQZaPqHwCO097FAlByKtAgnwIdjXxwA1m9vu9.MM2'),
(20, 'Flor Guadalupe', 'Llamas Zamorano', 'No se :(', 21, '2003-03-28', 4651175897, 'Paulina@gmail.com', 'Administrador', 'Paulina', '$2b$10$vzXWk5ZOgGWtnR1x3h4GmeNV/GB1HkKS3tNgQcssyrRAW3QMQMIXu'),
(21, 'Alondra', 'Elías Dávila', 'Ni puta idea 101', 21, '2002-05-14', 1234567890, 'AlondraE@gmail.com', 'Administrador', 'AlondraX', '$2b$10$cSeGrWWIuCoqtZ8B9AAl4.tr7.kIMesikEaoOn2jzPKe4rL061y/m'),
(23, 'Luis', 'Delgado', 'Francisco Javier Martínez Hernandez 304', 26, '1997-08-01', 4651164835, 'Luis_salvador97@hotmail.com', 'Empleado', 'LuisChalan', '$2b$10$auNlBed7qZLnMDNP7Qya.e137omC8QDRjajtcgIHBQfbIkEg05ouu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD KEY `fk_idcliente` (`ID_Cliente`),
  ADD KEY `fk_idproducto` (`ID_Producto`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD UNIQUE KEY `Telefono` (`Telefono`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD UNIQUE KEY `Nombre_usuario` (`Nombre_usuario`),
  ADD KEY `ID_Clientex` (`ID_Cliente`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`Entrada`),
  ADD KEY `fk_idclienteH` (`ID_Cliente`),
  ADD KEY `fk_idproductoH` (`ID_producto`);

--
-- Indices de la tabla `logs_cliente`
--
ALTER TABLE `logs_cliente`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_cliente` (`ID_Cliente`);

--
-- Indices de la tabla `logs_usuario`
--
ALTER TABLE `logs_usuario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_usuario_logs` (`ID_Usuario`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD KEY `fk_idclienteP` (`ID_Cliente`),
  ADD KEY `fk_idproductoP` (`ID_Producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`),
  ADD KEY `fk_proveedor` (`ID_Proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ID_Proveedor`),
  ADD UNIQUE KEY `Telefono` (`Telefono`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `Telefono` (`Telefono`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD UNIQUE KEY `Nombre_usuario` (`Nombre_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `Entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `logs_cliente`
--
ALTER TABLE `logs_cliente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `logs_usuario`
--
ALTER TABLE `logs_usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ID_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_idcliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `fk_idproducto` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `fk_idclienteH` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `fk_idproductoH` FOREIGN KEY (`ID_producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `logs_usuario`
--
ALTER TABLE `logs_usuario`
  ADD CONSTRAINT `fk_usuario_logs` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_idclienteP` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `fk_idproductoP` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_proveedor` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
