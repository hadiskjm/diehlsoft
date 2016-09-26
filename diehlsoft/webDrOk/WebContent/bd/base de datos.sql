-------------------------------------------------------------------------------
-- Export Status
-------------------------------------------------------------------------------
-- Date:           07/12/2012 18:02:45
-- Server version: 5.0.24a-community-nt
-- Host:           localhost
-- Database:       db_diehl
-- User:           root
-------------------------------------------------------------------------------
-- Options
-------------------------------------------------------------------------------
-- compatible:               5.0
-- charset:                  latin1
-- add-database-definition:  No
-- use-drop-create-database: Yes
-- only-structure:           No
-- add-lock:                 No
-- disable-keys:             No
-- single-transactions:      No
-- use-replace:              No
-- use-insert-delayed:       No
-- use-insert-ignore:        No
-------------------------------------------------------------------------------
-- Objects
-------------------------------------------------------------------------------
-- Tables:   9/9
-- Views:    0/0
-- Routines: 12/12
-------------------------------------------------------------------------------

SET NAMES 'latin1';

--
-- Drop tables
--

DROP TABLE IF EXISTS `tb_archivo`;
DROP TABLE IF EXISTS `tb_ciudad`;
DROP TABLE IF EXISTS `tb_estado`;
DROP TABLE IF EXISTS `tb_menu`;
DROP TABLE IF EXISTS `tb_opcionperfil`;
DROP TABLE IF EXISTS `tb_pais`;
DROP TABLE IF EXISTS `tb_perfil`;
DROP TABLE IF EXISTS `tb_persona`;
DROP TABLE IF EXISTS `tb_usuario`;

--
-- Drop stored procedures and functions
--

DROP PROCEDURE IF EXISTS `SP_CIULISTA`;
DROP PROCEDURE IF EXISTS `SP_ESTMODULOPEF`;
DROP PROCEDURE IF EXISTS `SP_PEFACTIVEOINACTIVE`;
DROP PROCEDURE IF EXISTS `SP_PEFAUCLIST`;
DROP PROCEDURE IF EXISTS `SP_PEFINSERT`;
DROP PROCEDURE IF EXISTS `SP_PEFSEARCHLIST`;
DROP PROCEDURE IF EXISTS `SP_PEFSEARCHXID`;
DROP PROCEDURE IF EXISTS `SP_PEFUPDATE`;
DROP PROCEDURE IF EXISTS `SP_PEROBTENER`;
DROP PROCEDURE IF EXISTS `SP_PISPAIS`;
DROP PROCEDURE IF EXISTS `SP_USUAUTENTICAR`;
DROP PROCEDURE IF EXISTS `SP_USUSEARCHXID`;

--
-- Definition for table "tb_archivo"
--

CREATE TABLE `tb_archivo`(
  `arcId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `arcNombre` VARCHAR(100) NOT NULL,
  `arcArchivo` BLOB NOT NULL,
  `arcFechaIngreso` DATE NOT NULL,
  `arcFechaUpdate` DATE NOT NULL,
  `arcUserIngreso` VARCHAR(20) NOT NULL,
  `arcUserUpdate` VARCHAR(20) NOT NULL,
  `arcLocale` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`arcId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB';

--
-- Definition for table "tb_ciudad"
--

CREATE TABLE `tb_ciudad`(
  `ciuId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `ciuDescripcion` VARCHAR(20) NOT NULL,
  `ciuFechaIngreso` DATE NOT NULL,
  `ciuFechaUpdate` DATE NOT NULL,
  `ciuUserIngreso` VARCHAR(20) NOT NULL,
  `ciuUserUpdate` VARCHAR(20) NOT NULL,
  `pisId` SMALLINT(6) NOT NULL,
  `ciuLocale` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`ciuId`, `pisId`),
  KEY `R3` (`pisId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 21
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB; (`pisId`) REFER `db_diehl/tb_pais`(`pisId`) ON DELETE NO A';

--
-- Definition for table "tb_estado"
--

CREATE TABLE `tb_estado`(
  `estId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `estNombre` VARCHAR(20) NOT NULL,
  `estLocale` VARCHAR(5) NOT NULL,
  `estParaModulo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`estId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 5
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB';

--
-- Definition for table "tb_menu"
--

CREATE TABLE `tb_menu`(
  `menId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `menMenu` TEXT NOT NULL,
  `menFechaIngreso` DATE NOT NULL,
  `menFechaUpdate` DATE NOT NULL,
  `menUserIngreso` VARCHAR(20) NOT NULL,
  `menUserUpdate` VARCHAR(20) NOT NULL,
  `menLocale` VARCHAR(5) NOT NULL,
  `oppId` SMALLINT(6) NOT NULL,
  `pefId` SMALLINT(6) NOT NULL,
  `perId` SMALLINT(6) NOT NULL,
  `usuId` SMALLINT(6) NOT NULL,
  `ciuId` SMALLINT(6) NOT NULL,
  `pisId` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`menId`, `oppId`, `pefId`, `perId`, `usuId`, `ciuId`, `pisId`),
  KEY `R5` (`oppId`, `pefId`),
  KEY `R6` (`perId`, `usuId`, `ciuId`, `pisId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB; (`oppId` `pefId`) REFER `db_diehl/tb_opcionperfil`(`oppId`';

--
-- Definition for table "tb_opcionperfil"
--

CREATE TABLE `tb_opcionperfil`(
  `oppId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `oppDescripcion` VARCHAR(30) NOT NULL,
  `oppFechaIngreso` DATE NOT NULL,
  `oppFechaUpdate` DATE NOT NULL,
  `oppUserIngreso` VARCHAR(20) NOT NULL,
  `oppUserUpdate` VARCHAR(20) NOT NULL,
  `oppEstado` VARCHAR(20) NOT NULL,
  `pefId` SMALLINT(6) NOT NULL,
  `oppLocale` VARCHAR(5) NOT NULL,
  `oppPermisosIUD` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`oppId`, `pefId`),
  KEY `R1` (`pefId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 9
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB; (`pefId`) REFER `db_diehl/tb_perfil`(`pefId`) ON DELETE NO';

--
-- Definition for table "tb_pais"
--

CREATE TABLE `tb_pais`(
  `pisId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `pisDescripcion` VARCHAR(50) NOT NULL,
  `pisContinente` VARCHAR(20) NOT NULL,
  `pisFechaIngreso` DATE NOT NULL,
  `pisFechaUpdate` DATE NOT NULL,
  `pisUserIngreso` VARCHAR(20) NOT NULL,
  `pisUserUpdate` VARCHAR(20) NOT NULL,
  `pisLocale` VARCHAR(5) NOT NULL,
  `pisDescLocale` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`pisId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 2
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB';

--
-- Definition for table "tb_perfil"
--

CREATE TABLE `tb_perfil`(
  `pefId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `pefDescripcion` VARCHAR(30) NOT NULL,
  `pefFechaIngreso` DATE NOT NULL,
  `pefFechaUpdate` DATE NOT NULL,
  `pefUserIngreso` VARCHAR(20) NOT NULL,
  `pefUserUpdate` VARCHAR(20) NOT NULL,
  `pefEstado` VARCHAR(20) NOT NULL,
  `pefLocale` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`pefId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 35
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB';

--
-- Definition for table "tb_persona"
--

CREATE TABLE `tb_persona`(
  `perId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `perNombre` VARCHAR(30) NOT NULL,
  `perApellidoPaterno` VARCHAR(30) NOT NULL,
  `perApellidoMaterno` VARCHAR(30) NULL DEFAULT NULL,
  `perSexo` VARCHAR(20) NOT NULL,
  `perCorreo` VARCHAR(100) NOT NULL,
  `perDireccion` VARCHAR(50) NULL DEFAULT NULL,
  `perTelefono` INT(11) NOT NULL,
  `perEstado` VARCHAR(20) NOT NULL,
  `perFechaIngreso` DATE NOT NULL,
  `perFechaUpdate` DATE NOT NULL,
  `perUserIngreso` VARCHAR(20) NOT NULL,
  `perUserUpdate` VARCHAR(20) NOT NULL,
  `usuId` SMALLINT(6) NOT NULL,
  `ciuId` SMALLINT(6) NOT NULL,
  `pisId` SMALLINT(6) NOT NULL,
  `perTheme` VARCHAR(50) NOT NULL,
  `perLocale` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`perId`, `usuId`, `ciuId`, `pisId`),
  KEY `R2` (`usuId`),
  KEY `R4` (`ciuId`, `pisId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 3
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB; (`usuId`) REFER `db_diehl/tb_usuario`(`usuId`) ON DELETE N';

--
-- Definition for table "tb_ordencompra"
--

DROP TABLE IF EXISTS `tb_ordencompra`;
CREATE TABLE IF NOT EXISTS `tb_ordencompra` (
`sm_oc`		    smallint(6) NOT NULL auto_increment,
`vc_oc_id`        varchar(50) NOT NULL,
`vc_cia_id`       varchar(2) NOT NULL,
`vc_loc_id`       varchar(2) NOT NULL,
`vc_cc_id`        varchar(2) NULL,
`vc_prov_id`      varchar(20) NULL,
`vc_moneda_id`    varchar(3) NULL,
`vc_tipooc_id`    varchar(2) NULL,
`vc_empleado_id`  varchar(20) NULL,
`vc_tipopago_id`  varchar(2)NULL,
`vc_preimpreso`   varchar(15)NULL,
`vc_estadooc`     varchar(2) NULL,
`vc_usuarioaprob` varchar(20) NULL,
`dt_ftransaccion` date,
`dt_faprobacion`  date,
`dt_femision`     date,
`dt_frequerida`   date,
`dt_fanulacion`   date,
`db_tcambio`      decimal(8,3),
`vc_aprobado`     varchar(2) NULL,
`vc_glosa`        varchar(250) NULL,
`db_subtotal`     decimal(13,2),
`db_impuesto`     decimal(13,2),
`db_total`        decimal(13,2),
`db_tdescuento`   decimal(13,2),
`db_descuento1`   decimal(13,2),
`db_descuento2`   decimal(13,2),
`db_igv_dscto1`   decimal(13,2),
`db_igv_dscto2`   decimal(13,2),
`vc_origen`       varchar(2) NULL,
`vc_motanula`     varchar(250) NULL,
`vc_cxp`          varchar(2) NULL,
`db_mfacturado`   decimal(13,2),
`vc_incoterm`     varchar(3),
 PRIMARY KEY  (`sm_oc`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 35
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB';

--
-- Definition for table "tb_usuario"
--

CREATE TABLE `tb_usuario`(
  `usuId` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `usuUser` VARCHAR(100) NOT NULL,
  `usuPassword` VARCHAR(100) NOT NULL,
  `usuConfirPassword` VARCHAR(100) NOT NULL,
  `usuFechaInicio` DATE NULL DEFAULT NULL,
  `usuFechaFinal` DATE NULL DEFAULT NULL,
  `usuEstado` VARCHAR(20) NOT NULL,
  `usuUserDesc` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`usuId`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 3
COLLATE = latin1_swedish_ci
ROW_FORMAT = COMPACT
COMMENT = 'InnoDB free: 9216 kB';

--
-- Data for table "tb_archivo"
--

--
-- Data for table "tb_ciudad"
--

INSERT INTO `tb_ciudad` VALUES
    (1, 'LIMA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (2, 'ICA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (3, 'JUNIN', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (4, 'HUANUCO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (5, 'PIURA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (6, 'TUMBES', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (7, 'UCAYALI', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (8, 'HUANCAVELICA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (9, 'AYACUCHO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (10, 'TACNA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (11, 'MOQUEGUA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (12, 'AREQUIPA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (13, 'CUZCO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (14, 'MADRE DE DIOS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (15, 'HUARAZ', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (16, 'TRUJILLO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (17, 'LAMBAYEQUE', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (18, 'CHIMBOTE', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (19, 'CERRO DE PASCO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE'),
    (20, 'CAJAMARCA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 'es_PE');

--
-- Data for table "tb_estado"
--

INSERT INTO `tb_estado` VALUES
    (1, 'ACTIVO', 'es_PE', 'perfil'),
    (2, 'INACTIVO', 'es_PE', 'perfil'),
    (3, 'ACTIVE', 'en_US', 'perfil'),
    (4, 'INACTIVE', 'en_US', 'perfil');

--
-- Data for table "tb_menu"
--

--
-- Data for table "tb_opcionperfil"
--

INSERT INTO `tb_opcionperfil` VALUES
    (1, 'INICIO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 1, 'es_PE', NULL),
    (2, 'PERFIL', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 1, 'es_PE', NULL),
    (3, 'HERRAMIENTAS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 1, 'es_PE', NULL),
    (4, 'MANTENIMIENTOS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 1, 'es_PE', NULL),
    (5, 'HOME', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 2, 'en_US', NULL),
    (6, 'PROFILE', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 2, 'en_US', NULL),
    (7, 'TOOLS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 2, 'en_US', NULL),
    (8, 'MAINTENANCES', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 2, 'en_US', NULL);

--
-- Data for table "tb_pais"
--

INSERT INTO `tb_pais` VALUES
    (1, 'PERU', 'AMERICA DEL SUR', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'es_PE', 'ESPAÑOL(PERÚ)');

--
-- Data for table "tb_perfil"
--

INSERT INTO `tb_perfil` VALUES
    (1, 'ADMINISTRADOR', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'INACTIVO', 'es_PE'),
    (2, 'ADMINISTRATOR', '2012-08-24', '2012-12-07', 'hrojas', 'ehuaman', 'ACTIVE', 'en_US'),
    (3, 'SOPORTE TI', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (4, 'ADMINISTRADOR DE RED', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (5, 'GERENTE GENERAL', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (6, 'ABOGADOS', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (7, 'SOCIOS', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (8, 'SECRETARIAS', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (9, 'AREA MANTENIMIENTO', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (10, 'FACTURACION', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'INACTIVO', 'es_PE'),
    (11, 'COBRANZA', '2012-08-24', '2012-12-07', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (12, 'SISTEMAS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (13, 'CENDOC', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (14, 'CONTABILIDAD', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (15, 'FINANZAS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (16, 'TESORERIA', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (17, 'PROYECTOS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (18, 'RECURSOS HUMANOS', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (19, 'SOCIOS2', '2012-11-28', '2012-12-04', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (20, 'SOCIOS 3', '2012-11-28', '2012-11-28', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (21, 'SISTEMAS 2', '2012-11-28', '2012-11-28', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (22, 'SOCIOS 4', '2012-11-28', '2012-11-28', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (23, 'SYSTEM', '2012-11-28', '2012-12-07', 'ehuaman', 'ehuaman', 'ACTIVE', 'en_US'),
    (24, 'CENDOC', '2012-11-28', '2012-12-07', 'ehuaman', 'ehuaman', 'ACTIVE', 'en_US'),
    (25, 'SISTEMAS 3', '2012-11-28', '2012-11-28', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (26, 'PROCURADORES', '2012-11-30', '2012-11-30', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (27, 'PRACTICANTES', '2012-11-30', '2012-11-30', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (28, 'RECEPCIÓN', '2012-11-30', '2012-11-30', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (29, 'HAROLD', '2012-11-30', '2012-11-30', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (30, 'EDITH', '2012-11-30', '2012-12-04', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (31, 'DANIEL', '2012-11-30', '2012-11-30', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (32, 'LEON', '2012-11-30', '2012-11-30', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (33, 'DAVE', '2012-11-30', '2012-12-04', 'hrojas', 'hrojas', 'ACTIVO', 'es_PE'),
    (34, 'SOCIOS 2', '2012-11-30', '2012-12-05', 'hrojas', 'hrojas', 'INACTIVO', 'es_PE');

--
-- Data for table "tb_persona"
--

INSERT INTO `tb_persona` VALUES
    (1, 'DIEHL', 'ROJAS', 'POSADAS', 'MALE', 'harold.diehl@gmail.com', 'Av. Universitaria 661', 15660300, 'ACTIVO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 1, 1, 1, 'themeLilac', 'es_PE'),
    (2, 'EDITH', 'HUAMAN', 'CANO', 'FEMALE', 'jenny.huaman@gmail.com', 'Av. Jose Galvez 400', 14650128, 'ACTIVO', '2012-08-24', '2012-08-24', 'hrojas', 'hrojas', 2, 1, 1, 'themeBlue', 'en_US');

--
-- Data for table "tb_usuario"
--

INSERT INTO `tb_usuario` VALUES
    (1, '0c8cb0c8a22d4a37e70be6eb159949af', '0c8cb0c8a22d4a37e70be6eb159949af', '0c8cb0c8a22d4a37e70be6eb159949af', '2012-08-24', '2012-08-24', 'ACTIVO', 'hrojas'),
    (2, '1c75e6cdfc0b9a2a5cac8ed3cbca6939', '1c75e6cdfc0b9a2a5cac8ed3cbca6939', '1c75e6cdfc0b9a2a5cac8ed3cbca6939', '2012-08-24', '2012-08-24', 'ACTIVO', 'ehuaman');

--
-- Foreign keys for table "tb_ciudad"
--

ALTER TABLE `tb_ciudad`
    ADD CONSTRAINT `R3` FOREIGN KEY (`pisId`) REFERENCES `tb_pais` (`pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Foreign keys for table "tb_menu"
--

ALTER TABLE `tb_menu`
    ADD CONSTRAINT `R5` FOREIGN KEY (`oppId`, `pefId`) REFERENCES `tb_opcionperfil` (`oppId`, `pefId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `R6` FOREIGN KEY (`perId`, `usuId`, `ciuId`, `pisId`) REFERENCES `tb_persona` (`perId`, `usuId`, `ciuId`, `pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Foreign keys for table "tb_opcionperfil"
--

ALTER TABLE `tb_opcionperfil`
    ADD CONSTRAINT `R1` FOREIGN KEY (`pefId`) REFERENCES `tb_perfil` (`pefId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Foreign keys for table "tb_persona"
--

ALTER TABLE `tb_persona`
    ADD CONSTRAINT `R2` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `R4` FOREIGN KEY (`ciuId`, `pisId`) REFERENCES `tb_ciudad` (`ciuId`, `pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER ||

--
-- Definition for procedure "SP_CIULISTA"
--

CREATE PROCEDURE `SP_CIULISTA` (strciuDescripcion varchar(20))
BEGIN
	SELECT ciuDescripcion as strciuDescripcion
  FROM tb_ciudad 
  WHERE ciuDescripcion LIKE strciuDescripcion;
END||

--
-- Definition for procedure "SP_ESTMODULOPEF"
--

CREATE PROCEDURE `SP_ESTMODULOPEF` (strestLocale varchar(5),strestParaModulo varchar(50))
BEGIN
  SELECT 
  estId as intestId, 
  estNombre as strestNombre, 
  estLocale as strestLocale, 
  estParaModulo as strestParaModulo
  FROM tb_estado
  WHERE estLocale=strestLocale
  and estParaModulo=strestParaModulo; 
END||

--
-- Definition for procedure "SP_PEFACTIVEOINACTIVE"
--

CREATE PROCEDURE `SP_PEFACTIVEOINACTIVE` (in intpefId int,
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

END||

--
-- Definition for procedure "SP_PEFAUCLIST"
--

CREATE PROCEDURE `SP_PEFAUCLIST` (strpefDescripcion varchar(50),strpefLocale varchar(5))
BEGIN
	select pefDescripcion as strpefDescripcion from tb_perfil
  where pefDescripcion like strpefDescripcion
  and pefLocale=strpefLocale;
END||

--
-- Definition for procedure "SP_PEFINSERT"
--

CREATE PROCEDURE `SP_PEFINSERT` (inout intpefId int,
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
     
	   
END||

--
-- Definition for procedure "SP_PEFSEARCHLIST"
--

CREATE PROCEDURE `SP_PEFSEARCHLIST` (strpefDescripcion varchar(50), strpefEstado varchar(20), strpefLocale varchar(7))
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
END||

--
-- Definition for procedure "SP_PEFSEARCHXID"
--

CREATE PROCEDURE `SP_PEFSEARCHXID` (p_pefId int)
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
END||

--
-- Definition for procedure "SP_PEFUPDATE"
--

CREATE PROCEDURE `SP_PEFUPDATE` (inout intpefId int,
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
END||

--
-- Definition for procedure "SP_PEROBTENER"
--

CREATE PROCEDURE `SP_PEROBTENER` (intusuId int)
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
END||

--
-- Definition for procedure "SP_PISPAIS"
--

CREATE PROCEDURE `SP_PISPAIS` ()
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
	  
END||

--
-- Definition for procedure "SP_USUAUTENTICAR"
--

CREATE PROCEDURE `SP_USUAUTENTICAR` (strusuUser VARCHAR(20),strusuPassword VARCHAR(100))
BEGIN
select usuId as intusuId from tb_usuario
where usuUser=MD5(strusuUser)
and usuPassword=MD5(strusuPassword)
and usuConfirPassword=MD5(strusuPassword)
and usuEstado='ACTIVO';	
END||

--
-- Definition for procedure "SP_USUSEARCHXID"
--

CREATE PROCEDURE `SP_USUSEARCHXID` (p_intusuId int)
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
END||

DELIMITER ;