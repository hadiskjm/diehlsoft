CREATE DATABASE  IF NOT EXISTS `db_diehl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_diehl`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: db_diehl
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_archivo`
--

DROP TABLE IF EXISTS `tb_archivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_archivo` (
  `arcId` smallint(6) NOT NULL AUTO_INCREMENT,
  `arcNombre` varchar(100) NOT NULL,
  `arcArchivo` blob NOT NULL,
  `arcFechaIngreso` date NOT NULL,
  `arcFechaUpdate` date NOT NULL,
  `arcUserIngreso` varchar(20) NOT NULL,
  `arcUserUpdate` varchar(20) NOT NULL,
  `arcLocale` varchar(5) NOT NULL,
  PRIMARY KEY (`arcId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_archivo`
--

LOCK TABLES `tb_archivo` WRITE;
/*!40000 ALTER TABLE `tb_archivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_archivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ciudad`
--

DROP TABLE IF EXISTS `tb_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ciudad` (
  `ciuId` smallint(6) NOT NULL AUTO_INCREMENT,
  `ciuDescripcion` varchar(20) NOT NULL,
  `ciuFechaIngreso` date NOT NULL,
  `ciuFechaUpdate` date NOT NULL,
  `ciuUserIngreso` varchar(20) NOT NULL,
  `ciuUserUpdate` varchar(20) NOT NULL,
  `pisId` smallint(6) NOT NULL,
  `ciuLocale` varchar(5) NOT NULL,
  PRIMARY KEY (`ciuId`,`pisId`),
  KEY `R3` (`pisId`),
  CONSTRAINT `R3` FOREIGN KEY (`pisId`) REFERENCES `tb_pais` (`pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB; (`pisId`) REFER `db_diehl/tb_pais`(`pisId`) ON DELETE NO A';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ciudad`
--

LOCK TABLES `tb_ciudad` WRITE;
/*!40000 ALTER TABLE `tb_ciudad` DISABLE KEYS */;
INSERT INTO `tb_ciudad` VALUES (1,'LIMA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(2,'ICA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(3,'JUNIN','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(4,'HUANUCO','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(5,'PIURA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(6,'TUMBES','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(7,'UCAYALI','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(8,'HUANCAVELICA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(9,'AYACUCHO','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(10,'TACNA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(11,'MOQUEGUA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(12,'AREQUIPA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(13,'CUZCO','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(14,'MADRE DE DIOS','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(15,'HUARAZ','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(16,'TRUJILLO','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(17,'LAMBAYEQUE','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(18,'CHIMBOTE','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(19,'CERRO DE PASCO','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE'),(20,'CAJAMARCA','2012-08-24','2012-08-24','hrojas','hrojas',1,'es_PE');
/*!40000 ALTER TABLE `tb_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estado`
--

DROP TABLE IF EXISTS `tb_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_estado` (
  `estId` smallint(6) NOT NULL AUTO_INCREMENT,
  `estNombre` varchar(20) NOT NULL,
  `estLocale` varchar(5) NOT NULL,
  `estParaModulo` varchar(50) NOT NULL,
  PRIMARY KEY (`estId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estado`
--

LOCK TABLES `tb_estado` WRITE;
/*!40000 ALTER TABLE `tb_estado` DISABLE KEYS */;
INSERT INTO `tb_estado` VALUES (1,'ACTIVO','es_PE','perfil'),(2,'INACTIVO','es_PE','perfil'),(3,'ACTIVE','en_US','perfil'),(4,'INACTIVE','en_US','perfil'),(5,'ACTIVO','es_PE','opcionperfil'),(6,'INACTIVO','es_PE','opcionperfil'),(7,'ACTIVE','en_US','opcionperfil'),(8,'INACTIVE','en_US','opcionperfil');
/*!40000 ALTER TABLE `tb_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menu` (
  `menId` smallint(6) NOT NULL AUTO_INCREMENT,
  `menMenu` text NOT NULL,
  `menFechaIngreso` date NOT NULL,
  `menFechaUpdate` date NOT NULL,
  `menUserIngreso` varchar(20) NOT NULL,
  `menUserUpdate` varchar(20) NOT NULL,
  `menLocale` varchar(5) NOT NULL,
  `oppId` smallint(6) NOT NULL,
  `pefId` smallint(6) NOT NULL,
  `perId` smallint(6) NOT NULL,
  `usuId` smallint(6) NOT NULL,
  `ciuId` smallint(6) NOT NULL,
  `pisId` smallint(6) NOT NULL,
  PRIMARY KEY (`menId`,`oppId`,`pefId`,`perId`,`usuId`,`ciuId`,`pisId`),
  KEY `R5` (`oppId`,`pefId`),
  KEY `R6` (`perId`,`usuId`,`ciuId`,`pisId`),
  CONSTRAINT `R5` FOREIGN KEY (`oppId`, `pefId`) REFERENCES `tb_opcionperfil` (`oppId`, `pefId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `R6` FOREIGN KEY (`perId`, `usuId`, `ciuId`, `pisId`) REFERENCES `tb_persona` (`perId`, `usuId`, `ciuId`, `pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB; (`oppId` `pefId`) REFER `db_diehl/tb_opcionperfil`(`oppId`';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_opcionperfil`
--

DROP TABLE IF EXISTS `tb_opcionperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_opcionperfil` (
  `oppId` smallint(6) NOT NULL AUTO_INCREMENT,
  `oppDescripcion` varchar(30) NOT NULL,
  `oppFechaIngreso` date NOT NULL,
  `oppFechaUpdate` date NOT NULL,
  `oppUserIngreso` varchar(20) NOT NULL,
  `oppUserUpdate` varchar(20) NOT NULL,
  `oppEstado` varchar(20) NOT NULL,
  `pefId` smallint(6) NOT NULL,
  `oppLocale` varchar(5) NOT NULL,
  `oppPermisosIUD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`oppId`,`pefId`),
  KEY `R1` (`pefId`),
  CONSTRAINT `R1` FOREIGN KEY (`pefId`) REFERENCES `tb_perfil` (`pefId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB; (`pefId`) REFER `db_diehl/tb_perfil`(`pefId`) ON DELETE NO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_opcionperfil`
--

LOCK TABLES `tb_opcionperfil` WRITE;
/*!40000 ALTER TABLE `tb_opcionperfil` DISABLE KEYS */;
INSERT INTO `tb_opcionperfil` VALUES (1,'INICIO','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(2,'PERFIL','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(3,'HERRAMIENTAS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(4,'MANTENIMIENTOS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(5,'HOME','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(6,'PROFILE','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(7,'TOOLS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(8,'MAINTENANCES','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(9,'EDITAR','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(10,'OPCIÓN PERFIL','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(11,'NUEVO PERFIL','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(12,'NUEVO OPCIÓN PERFIL','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(13,'ADMINISTRAR EXPEDIENTES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(14,'CONSULTAR EXPEDIENTES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(15,'REGISTRAR EXPEDIENTES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(16,'REGISTRAR ACTOS PROCESALES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(17,'PROGRAMAR TAREAS','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(18,'CONSULTAR TAREAS','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(19,'REGISTRAR TAREA','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(20,'HAROLD','2014-12-16','2014-12-16','hrojas','hrojas','ACTIVO',1,'es_PE',NULL);
/*!40000 ALTER TABLE `tb_opcionperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ordencompra`
--

DROP TABLE IF EXISTS `tb_ordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ordencompra` (
  `sm_oc` smallint(6) NOT NULL AUTO_INCREMENT,
  `vc_oc_id` varchar(50) NOT NULL,
  `vc_cia_id` varchar(2) NOT NULL,
  `vc_loc_id` varchar(2) NOT NULL,
  `vc_cc_id` varchar(2) DEFAULT NULL,
  `vc_prov_id` varchar(20) DEFAULT NULL,
  `vc_moneda_id` varchar(3) DEFAULT NULL,
  `vc_tipooc_id` varchar(2) DEFAULT NULL,
  `vc_empleado_id` varchar(20) DEFAULT NULL,
  `vc_tipopago_id` varchar(2) DEFAULT NULL,
  `vc_preimpreso` varchar(15) DEFAULT NULL,
  `vc_estadooc` varchar(2) DEFAULT NULL,
  `vc_usuarioaprob` varchar(20) DEFAULT NULL,
  `dt_ftransaccion` date DEFAULT NULL,
  `dt_faprobacion` date DEFAULT NULL,
  `dt_femision` date DEFAULT NULL,
  `dt_frequerida` date DEFAULT NULL,
  `dt_fanulacion` date DEFAULT NULL,
  `db_tcambio` decimal(8,3) DEFAULT NULL,
  `vc_aprobado` varchar(2) DEFAULT NULL,
  `vc_glosa` varchar(250) DEFAULT NULL,
  `db_subtotal` decimal(13,2) DEFAULT NULL,
  `db_impuesto` decimal(13,2) DEFAULT NULL,
  `db_total` decimal(13,2) DEFAULT NULL,
  `db_tdescuento` decimal(13,2) DEFAULT NULL,
  `db_descuento1` decimal(13,2) DEFAULT NULL,
  `db_descuento2` decimal(13,2) DEFAULT NULL,
  `db_igv_dscto1` decimal(13,2) DEFAULT NULL,
  `db_igv_dscto2` decimal(13,2) DEFAULT NULL,
  `vc_origen` varchar(2) DEFAULT NULL,
  `vc_motanula` varchar(250) DEFAULT NULL,
  `vc_cxp` varchar(2) DEFAULT NULL,
  `db_mfacturado` decimal(13,2) DEFAULT NULL,
  `vc_incoterm` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`sm_oc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ordencompra`
--

LOCK TABLES `tb_ordencompra` WRITE;
/*!40000 ALTER TABLE `tb_ordencompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pais`
--

DROP TABLE IF EXISTS `tb_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pais` (
  `pisId` smallint(6) NOT NULL AUTO_INCREMENT,
  `pisDescripcion` varchar(50) NOT NULL,
  `pisContinente` varchar(20) NOT NULL,
  `pisFechaIngreso` date NOT NULL,
  `pisFechaUpdate` date NOT NULL,
  `pisUserIngreso` varchar(20) NOT NULL,
  `pisUserUpdate` varchar(20) NOT NULL,
  `pisLocale` varchar(5) NOT NULL,
  `pisDescLocale` varchar(50) NOT NULL,
  PRIMARY KEY (`pisId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pais`
--

LOCK TABLES `tb_pais` WRITE;
/*!40000 ALTER TABLE `tb_pais` DISABLE KEYS */;
INSERT INTO `tb_pais` VALUES (1,'PERU','AMERICA DEL SUR','2012-08-24','2012-08-24','hrojas','hrojas','es_PE','ESPAÃ‘OL(PERÃš)');
/*!40000 ALTER TABLE `tb_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perfil`
--

DROP TABLE IF EXISTS `tb_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perfil` (
  `pefId` smallint(6) NOT NULL AUTO_INCREMENT,
  `pefDescripcion` varchar(30) NOT NULL,
  `pefFechaIngreso` date NOT NULL,
  `pefFechaUpdate` date NOT NULL,
  `pefUserIngreso` varchar(20) NOT NULL,
  `pefUserUpdate` varchar(20) NOT NULL,
  `pefEstado` varchar(20) NOT NULL,
  `pefLocale` varchar(5) NOT NULL,
  PRIMARY KEY (`pefId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfil`
--

LOCK TABLES `tb_perfil` WRITE;
/*!40000 ALTER TABLE `tb_perfil` DISABLE KEYS */;
INSERT INTO `tb_perfil` VALUES (1,'ADMINISTRADOR','2012-08-24','2014-12-12','hrojas','hrojas','ACTIVO','es_PE'),(2,'ADMINISTRATOR','2012-08-24','2012-12-07','hrojas','ehuaman','ACTIVE','en_US'),(3,'SOPORTE TI','2012-08-24','2014-12-12','hrojas','hrojas','INACTIVO','es_PE'),(4,'ADMINISTRADOR DE RED','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(5,'GERENTE GENERAL','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(6,'ABOGADOS','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(7,'SOCIOS','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(8,'SECRETARIAS','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(9,'AREA MANTENIMIENTO','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(10,'FACTURACION','2012-08-24','2012-12-07','hrojas','hrojas','INACTIVO','es_PE'),(11,'COBRANZA','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(12,'SISTEMAS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(13,'CENDOC','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(14,'CONTABILIDAD','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(15,'FINANZAS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(16,'TESORERIA','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(17,'PROYECTOS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(18,'RECURSOS HUMANOS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(19,'SOCIOS2','2012-11-28','2012-12-04','hrojas','hrojas','ACTIVO','es_PE'),(20,'SOCIOS 3','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(21,'SISTEMAS 2','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(22,'SOCIOS 4','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(23,'SYSTEM','2012-11-28','2012-12-07','ehuaman','ehuaman','ACTIVE','en_US'),(24,'CENDOC','2012-11-28','2012-12-07','ehuaman','ehuaman','ACTIVE','en_US'),(25,'SISTEMAS 3','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(26,'PROCURADORES','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(27,'PRACTICANTES','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(28,'RECEPCIÓN','2012-11-30','2014-12-11','hrojas','hrojas','ACTIVO','es_PE'),(29,'HAROLD','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(30,'EDITH','2012-11-30','2012-12-04','hrojas','hrojas','ACTIVO','es_PE'),(31,'DANIEL','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(32,'LEON','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(33,'DAVE','2012-11-30','2012-12-04','hrojas','hrojas','ACTIVO','es_PE'),(34,'SOCIOS 2','2012-11-30','2012-12-05','hrojas','hrojas','INACTIVO','es_PE'),(35,'LABORAL','2014-12-12','2014-12-12','hrojas','hrojas','ACTIVO','es_PE'),(36,'LOGÍSTICA','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO','es_PE'),(37,'JENNY HUAMAN','2014-12-16','2014-12-16','hrojas','hrojas','ACTIVO','es_PE'),(38,'INIESTA ','2014-12-16','2014-12-16','hrojas','hrojas','ACTIVO','es_PE');
/*!40000 ALTER TABLE `tb_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_persona`
--

DROP TABLE IF EXISTS `tb_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_persona` (
  `perId` smallint(6) NOT NULL AUTO_INCREMENT,
  `perNombre` varchar(30) NOT NULL,
  `perApellidoPaterno` varchar(30) NOT NULL,
  `perApellidoMaterno` varchar(30) DEFAULT NULL,
  `perSexo` varchar(20) NOT NULL,
  `perCorreo` varchar(100) NOT NULL,
  `perDireccion` varchar(50) DEFAULT NULL,
  `perTelefono` int(11) NOT NULL,
  `perEstado` varchar(20) NOT NULL,
  `perFechaIngreso` date NOT NULL,
  `perFechaUpdate` date NOT NULL,
  `perUserIngreso` varchar(20) NOT NULL,
  `perUserUpdate` varchar(20) NOT NULL,
  `usuId` smallint(6) NOT NULL,
  `ciuId` smallint(6) NOT NULL,
  `pisId` smallint(6) NOT NULL,
  `perTheme` varchar(50) NOT NULL,
  `perLocale` varchar(20) NOT NULL,
  PRIMARY KEY (`perId`,`usuId`,`ciuId`,`pisId`),
  KEY `R2` (`usuId`),
  KEY `R4` (`ciuId`,`pisId`),
  CONSTRAINT `R2` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `R4` FOREIGN KEY (`ciuId`, `pisId`) REFERENCES `tb_ciudad` (`ciuId`, `pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB; (`usuId`) REFER `db_diehl/tb_usuario`(`usuId`) ON DELETE N';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_persona`
--

LOCK TABLES `tb_persona` WRITE;
/*!40000 ALTER TABLE `tb_persona` DISABLE KEYS */;
INSERT INTO `tb_persona` VALUES (1,'DIEHL','ROJAS','POSADAS','MALE','harold.diehl@gmail.com','Av. Universitaria 661',15660300,'ACTIVO','2012-08-24','2012-08-24','hrojas','hrojas',1,1,1,'themeDiehl','es_PE'),(2,'EDITH','HUAMAN','CANO','FEMALE','jenny.huaman@gmail.com','Av. Jose Galvez 400',14650128,'ACTIVO','2012-08-24','2012-08-24','hrojas','hrojas',2,1,1,'themeBlue','en_US');
/*!40000 ALTER TABLE `tb_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `usuId` smallint(6) NOT NULL AUTO_INCREMENT,
  `usuUser` varchar(100) NOT NULL,
  `usuPassword` varchar(100) NOT NULL,
  `usuConfirPassword` varchar(100) NOT NULL,
  `usuFechaInicio` date DEFAULT NULL,
  `usuFechaFinal` date DEFAULT NULL,
  `usuEstado` varchar(20) NOT NULL,
  `usuUserDesc` varchar(20) NOT NULL,
  PRIMARY KEY (`usuId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'0c8cb0c8a22d4a37e70be6eb159949af','0c8cb0c8a22d4a37e70be6eb159949af','0c8cb0c8a22d4a37e70be6eb159949af','2012-08-24','2012-08-24','ACTIVO','hrojas'),(2,'1c75e6cdfc0b9a2a5cac8ed3cbca6939','1c75e6cdfc0b9a2a5cac8ed3cbca6939','1c75e6cdfc0b9a2a5cac8ed3cbca6939','2012-08-24','2012-08-24','ACTIVO','ehuaman');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_diehl'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_CIULISTA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CIULISTA`(strciuDescripcion varchar(20))
BEGIN
	SELECT ciuDescripcion as strciuDescripcion
  FROM tb_ciudad 
  WHERE ciuDescripcion LIKE strciuDescripcion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ESTMODULOALL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ESTMODULOALL`(strestLocale varchar(5),strestParaModulo varchar(50))
BEGIN
  SELECT 
  estId as intestId, 
  estNombre as strestNombre, 
  estLocale as strestLocale, 
  estParaModulo as strestParaModulo
  FROM tb_estado
  WHERE estLocale=strestLocale
  and estParaModulo=strestParaModulo; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_OPPACTIVEOINACTIVE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_OPPACTIVEOINACTIVE`(in intoppId int,
in dteoppFechaUpdate Date,
in stroppUserIngreso varchar(20), 
in stroppEstado varchar(20))
BEGIN
     START TRANSACTION;
     
     update tb_opcionperfil
     set oppFechaUpdate =dteoppFechaUpdate, 
     oppUserIngreso =stroppUserIngreso, 
     oppEstado =stroppEstado
     where oppId=intoppId;
     
     COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_OPPAUCLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_OPPAUCLIST`(stroppDescripcion varchar(50),stroppLocale varchar(5))
BEGIN
	select oppDescripcion as stroppDescripcion from tb_opcionperfil
  where oppDescripcion like stroppDescripcion
  and oppLocale=stroppLocale;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_OPPINSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_OPPINSERT`(inout intoppId int,
inout stroppDescripcion varchar(30),
in dteoppFechaIngreso Date, 
in dteoppFechaUpdate Date,
in stroppUserIngreso varchar(20), 
in stroppUserUpdate varchar(20), 
in stroppEstado varchar(20),
in intpefId int,
in stroppLocale varchar(5))
BEGIN
DECLARE v_intoppId int;
DECLARE v_stroppDescripcion varchar(30) DEFAULT stroppDescripcion;

     START TRANSACTION;
     select @existe := count(*)
     from tb_opcionperfil
     where oppDescripcion=stroppDescripcion
     AND oppLocale=stroppLocale;
     
     if @existe = 0 then
     INSERT INTO tb_opcionperfil
      (oppId,oppDescripcion, oppFechaIngreso, oppFechaUpdate, oppUserIngreso, oppUserUpdate, oppEstado, pefId, oppLocale) 
      VALUES (null,UPPER(stroppDescripcion), dteoppFechaIngreso, dteoppFechaUpdate, stroppUserIngreso, stroppUserUpdate, stroppEstado, intpefId, stroppLocale);

     select max(oppId) into v_intoppId from tb_opcionperfil;
     select oppDescripcion into v_stroppDescripcion from tb_opcionperfil where oppId=v_intoppId;
     
     set intoppId=v_intoppId;
     set stroppDescripcion=v_stroppDescripcion;
     COMMIT;
     else
     
     set intoppId=0;
     set stroppDescripcion=v_stroppDescripcion;
     ROLLBACK;
     end if;
     
	   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_OPPSEARCHLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_OPPSEARCHLIST`(stroppDescripcion varchar(50), stroppEstado varchar(20), stroppLocale varchar(7))
BEGIN
	select 
  oppId as intoppId, 
  oppDescripcion as stroppDescripcion,
  oppFechaIngreso as dteoppFechaIngreso, 
  oppFechaUpdate as dteoppFechaUpdate, 
  oppUserIngreso as stroppUserIngreso, 
  oppUserUpdate as stroppUserUpdate, 
  oppEstado as stroppEstado, 
  pefId as intpefId, 
  oppLocale as stroppLocale
  from tb_opcionperfil
  where oppDescripcion like stroppDescripcion 
  and oppEstado like stroppEstado
  and oppLocale=stroppLocale
  order by pefId desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_OPPSEARCHXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_OPPSEARCHXID`(p_oppId int)
BEGIN
	   select 
      oppId as intoppId, 
      oppDescripcion as stroppDescripcion,
      oppFechaIngreso as dteoppFechaIngreso, 
      oppFechaUpdate as dteoppFechaUpdate, 
      oppUserIngreso as stroppUserIngreso, 
      oppUserUpdate as stroppUserUpdate, 
      oppEstado as stroppEstado, 
      pefId as intpefId, 
      oppLocale as stroppLocale
     from tb_opcionperfil
     where oppId=p_oppId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_OPPUPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_OPPUPDATE`(inout intoppId int,
inout stroppDescripcion varchar(30),
in dteoppFechaUpdate Date,
in stroppUserUpdate varchar(20), 
in stroppEstado varchar(20),
in intpefId int,
in stroppLocale varchar(5),
inout intoppMensaje int)
BEGIN
     START TRANSACTION;
     select @existe := count(*)
     from tb_opcionperfil
     where oppDescripcion=stroppDescripcion
     and oppLocale=stroppLocale
     and oppId not in (intoppId);

     if @existe = 0 then
     set intoppMensaje=1;
     update tb_opcionperfil 
     set oppDescripcion =UPPER(stroppDescripcion), 
     oppFechaUpdate =dteoppFechaUpdate, 
     oppUserUpdate =stroppUserUpdate, 
     oppEstado =stroppEstado, 
     oppLocale =stroppLocale
     where oppId=intoppId;
     COMMIT;
     else
     set intoppMensaje=2;
     ROLLBACK;
     end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PEFACTIVEOINACTIVE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PEFACTIVEOINACTIVE`(in intpefId int,
in dtepefFechaUpdate Date,
in strpefUserUpdate varchar(20), 
in strpefEstado varchar(20))
BEGIN
     START TRANSACTION;
     
     update tb_perfil 
     set pefFechaUpdate =dtepefFechaUpdate, 
     pefUserUpdate =strpefUserUpdate, 
     pefEstado =strpefEstado
     where pefId=intpefId;
     
     COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PEFAUCLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PEFAUCLIST`(strpefDescripcion varchar(50),strpefLocale varchar(5))
BEGIN
	select pefDescripcion as strpefDescripcion from tb_perfil
  where pefDescripcion like strpefDescripcion
  and pefLocale=strpefLocale;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PEFINSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PEFINSERT`(inout intpefId int,
inout strpefDescripcion varchar(30),
in dtepefFechaIngreso Date, 
in dtepefFechaUpdate Date,
in strpefUserIngreso varchar(20), 
in strpefUserUpdate varchar(20), 
in strpefEstado varchar(20), 
in strpefLocale varchar(5))
BEGIN
DECLARE v_intpefId int;
DECLARE v_strpefDescripcion varchar(30) DEFAULT strpefDescripcion;

     START TRANSACTION;
     select @existe := count(strpefDescripcion)
     from tb_perfil
     where pefDescripcion=strpefDescripcion
     AND pefLocale=strpefLocale;
     
     if @existe = 0 then
     insert into tb_perfil (pefId, pefDescripcion, pefFechaIngreso, pefFechaUpdate, pefUserIngreso, pefUserUpdate, pefEstado, pefLocale)
     values(null,UPPER(strpefDescripcion), dtepefFechaIngreso, dtepefFechaUpdate, strpefUserIngreso, strpefUserUpdate, strpefEstado, strpefLocale);
     
     select max(pefId) into v_intpefId from tb_perfil;
     select pefDescripcion into v_strpefDescripcion from tb_perfil where pefId=v_intpefId;
     
     set intpefId=v_intpefId;
     set strpefDescripcion=v_strpefDescripcion;
     COMMIT;
     else
     
     set intpefId=0;
     set strpefDescripcion=v_strpefDescripcion;
     ROLLBACK;
     end if;
     
	   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PEFSEARCHLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PEFSEARCHLIST`(strpefDescripcion varchar(50), strpefEstado varchar(20), strpefLocale varchar(7))
BEGIN
	select pefId as intpefId, 
  pefDescripcion as strpefDescripcion, 
  pefFechaIngreso as dtepefFechaIngreso, 
  pefFechaUpdate as dtepefFechaUpdate, 
  pefUserIngreso as strpefUserIngreso, 
  pefUserUpdate as strpefUserUpdate, 
  pefEstado as strpefEstado, 
  pefLocale as strpefLocale
  from tb_perfil
  where pefDescripcion like strpefDescripcion 
  and pefEstado like strpefEstado
  and pefLocale like strpefLocale;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PEFSEARCHXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PEFSEARCHXID`(p_pefId int)
BEGIN
	   select 
     pefId as intpefId, 
     pefDescripcion as strpefDescripcion, 
     pefFechaIngreso as dtepefFechaIngreso, 
     pefFechaUpdate as dtepefFechaUpdate, 
     pefUserIngreso as strpefUserIngreso, 
     pefUserUpdate as strpefUserUpdate, 
     pefEstado as strpefEstado, 
     pefLocale as strpefLocale
     from tb_perfil
     where pefId=p_pefId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PEFUPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PEFUPDATE`(inout intpefId int,
inout strpefDescripcion varchar(30),
in dtepefFechaUpdate Date,
in strpefUserUpdate varchar(20), 
in strpefEstado varchar(20), 
in strpefLocale varchar(5),
inout intpefMensaje int)
BEGIN
     START TRANSACTION;
     select @existe := count(strpefDescripcion)
     from tb_perfil
     where pefDescripcion=strpefDescripcion
     and pefLocale=strpefLocale
     and pefId not in (intpefId);

     if @existe = 0 then
     set intpefMensaje=1;
     update tb_perfil 
     set pefDescripcion =UPPER(strpefDescripcion), 
     pefFechaUpdate =dtepefFechaUpdate, 
     pefUserUpdate =strpefUserUpdate, 
     pefEstado =strpefEstado, 
     pefLocale =strpefLocale
     where pefId=intpefId;
     COMMIT;
     else
     set intpefMensaje=2;
     ROLLBACK;
     end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PEROBTENER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PEROBTENER`(intusuId int)
BEGIN
select perId as intperId,
perNombre as strperNombre,
perApellidoPaterno as strperApellidoPaterno,
perApellidoMaterno as strperApellidoMaterno,
perSexo as strperSexo,
perCorreo as strperCorreo,
perDireccion as strperDireccion,
perTelefono as intperTelefono,
perEstado as strperEstado, 
perFechaIngreso as dteperFechaIngreso,
perFechaUpdate as dteperFechaUpdate,
perUserIngreso as strperUserIngreso,
perUserUpdate as strperUserUpdate,
usuId as intusuId,
ciuId as intciuId,
pisId as intpisId,
perTheme as strperTheme,
perLocale as strperLocale
from tb_persona
where usuId=intusuId
and perEstado='ACTIVO';	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PISPAIS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PISPAIS`()
BEGIN
SELECT 
    pisId AS intpisId,
	  pisDescripcion AS strpisDescripcion,
	  pisContinente AS strpisContinente,
	  pisFechaIngreso AS dtepisFechaIngreso,
	  pisFechaUpdate AS dtepisFechaUpdate,
	  pisUserIngreso AS strpisUserIngreso,
	  pisUserUpdate AS strpisUserUpdate,
	  pisLocale AS strpisLocale,
	  pisDescLocale AS strpisDescLocale
  FROM tb_pais;
	  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUAUTENTICAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USUAUTENTICAR`(strusuUser VARCHAR(20),strusuPassword VARCHAR(100))
BEGIN
select usuId as intusuId from tb_usuario
where usuUser=MD5(strusuUser)
and usuPassword=MD5(strusuPassword)
and usuConfirPassword=MD5(strusuPassword)
and usuEstado='ACTIVO';	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUSEARCHXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USUSEARCHXID`(p_intusuId int)
BEGIN
	   select 
     usuId as intusuId,
     usuUser as strusuUser,
     usuPassword as strusuPassword,
     usuConfirPassword as strusuConfirPassword,
     usuFechaInicio as dteusuFechaInicio,
     usuFechaFinal as dteusuFechaFinal,
     usuEstado as strusuEstado,
     usuUserDesc as strusuUserDesc 
     from tb_usuario
     where usuId=p_intusuId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-19  9:39:56
