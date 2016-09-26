CREATE DATABASE  IF NOT EXISTS `db_diehlinfov002` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_diehlinfov002`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: db_diehlinfov002
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
-- Table structure for table `tb_actualidadlaboral`
--

DROP TABLE IF EXISTS `tb_actualidadlaboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_actualidadlaboral` (
  `aclId` smallint(6) NOT NULL AUTO_INCREMENT,
  `aclTitulo` varchar(500) NOT NULL,
  `aclNombre` varchar(500) NOT NULL,
  `aclContenido` text NOT NULL,
  `aclResumen` text NOT NULL,
  `aclFechaIngreso` datetime NOT NULL,
  `aclFechaUpdate` datetime NOT NULL,
  `aclUserIngreso` varchar(20) NOT NULL,
  `aclUserUpdate` varchar(20) NOT NULL,
  `aclEstado` varchar(20) NOT NULL,
  `aclFile` varchar(250) DEFAULT NULL,
  `bolId` smallint(6) NOT NULL,
  `usuId` smallint(6) NOT NULL,
  PRIMARY KEY (`aclId`,`bolId`,`usuId`),
  KEY `R12` (`bolId`,`usuId`),
  CONSTRAINT `R12` FOREIGN KEY (`bolId`, `usuId`) REFERENCES `tb_boletin` (`bolId`, `usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_actualidadlaboral`
--

LOCK TABLES `tb_actualidadlaboral` WRITE;
/*!40000 ALTER TABLE `tb_actualidadlaboral` DISABLE KEYS */;
INSERT INTO `tb_actualidadlaboral` VALUES (1,'1 COYUNTURA LABORAL','1.1	Recordatorios Laborales  Enero 2015','<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-image:none; border:1px solid rgb(255, 208, 185); width:100%\">\r\n	<tbody>\r\n		<tr style=\"border: 1px solid rgb(255, 208, 185); border-image: none; font-family: open sans; font-size: 12px; background-color: rgb(216, 125, 39);\">\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Obligaci&oacute;n</strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Plazo</strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>&iquest;Qu&eacute; hacer?</strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"font-family: open sans; font-size: 11px; background-color: rgb(190, 190, 190);\">\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p style=\"text-align: center;\"><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Registrar datos de situaci&oacute;n educativa de los trabajadores en las planillas</strong></span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">31.01.2015</span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Precisar lo siguiente:</span></span></p>\r\n\r\n			<ol style=\"margin-left: 40px; list-style-type: lower-roman;\">\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Nivel educativo.</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Nacionalidad de la Instituci&oacute;n y nombre completo.</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Carrera cursada.</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">A&ntilde;o de egreso.</span></span></li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"font-family: open sans; font-size: 11px; background-color: rgb(217, 217, 217);\">\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p style=\"text-align: center;\"><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Comunicar al MTPE los servicios m&iacute;nimos en caso de huelga a trabajadores</strong></span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Enero 2015</span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Informar:</span></span></p>\r\n\r\n			<ol style=\"margin-left: 40px; list-style-type: lower-roman;\">\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">N&uacute;mero de trabajadores.</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Puestos de trabajo.</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Horarios de trabajo.</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Turnos de trabajo.</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Periodicidad de los reemplazos.</span></span></li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"font-family: open sans; font-size: 11px; background-color: rgb(190, 190, 190);\">\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p style=\"text-align: center;\"><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Contratar personal discapacitado por el equivalente al 3% del personal total en planilla</strong></span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Vigente a partir de 01.01.2015</span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Exigible solo a empresas con m&aacute;s de 50 trabajadores.</span></span></p>\r\n\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Excepciones:</span></span></p>\r\n\r\n			<ol style=\"margin-left: 40px; list-style-type: lower-roman;\">\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Inexistencia de vacantes en el periodo anual,</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Vacantes que, por razones t&eacute;cnicas o de riesgo, no puedan ser asumidas por personal discapacitado,</span></span></li>\r\n				<li><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Vacantes que, despu&eacute;s de haberlas ofrecido en la Bolsa de Trabajo del MINTRA, no hayan tenido postulantes.</span></span></li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"font-family: open sans; font-size: 11px; background-color: rgb(217, 217, 217);\">\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p style=\"text-align: center;\"><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Exigir recibos por honorarios electr&oacute;nicos.</strong></span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Vigente desde el 01.01.2015</span></span></p>\r\n			</td>\r\n			<td style=\"border: 1px solid rgb(255, 208, 185); border-image: none;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Exigible solo a empresas inscritas en el R&eacute;gimen General del Impuesto a la Renta.</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','Registrar datos de situación educativa de los trabajadores en las planillas','2015-01-29 00:00:00','2015-01-31 00:00:00','hrojas','hrojas','PUBLICADO','',1,1),(2,'1 COYUNTURA LABORAL','1.2	Novedades en la SUNAFIL','<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">El Poder Ejecutivo design&oacute; al <strong>Dr. Oscar G&oacute;mez Castro</strong> como <strong>nuevo Superintendente de la Superintendencia Nacional de Fiscalizaci&oacute;n Laboral</strong> (Resoluci&oacute;n Suprema N&deg; 001-2015-TR).</span></span></span></p>\r\n\r\n<p style=\"margin-left: 40px;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En reciente comunicado de la SUNAFIL se dieron las siguientes noticias:</span></span></span></p>\r\n\r\n<p style=\"margin-left: 40px;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">&nbsp; (i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se formar&aacute; un equipo para la revisi&oacute;n de la legislaci&oacute;n y elaborar propuestas normativas,</span></span></span></p>\r\n\r\n<p style=\"margin-left: 35.25pt;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">(ii)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se instalar&aacute; un Tribunal de Fiscalizaci&oacute;n Laboral que permita uniformizar criterios en los procedimientos sancionadores,</span></span></span></p>\r\n\r\n<p style=\"margin-left: 35.25pt;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">(iii)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Se crear&aacute; la Escuela Nacional de Fiscalizaci&oacute;n Laboral.</span></span></span></p>\r\n','El Poder Ejecutivo designó al Dr. Oscar Gómez Castro como nuevo Superintendente de la Superintendencia Nacional de Fiscalización Laboral (Resolución Suprema N° 001-2015-TR).','2015-01-29 00:00:00','2015-01-31 00:00:00','hrojas','hrojas','PUBLICADO','',1,1),(3,'2 NORMATIVA LABORAL','2.1	¿Qué pasará con los descuentos a las gratificaciones en el 2015?','<p style=\"text-align: justify;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Actualmente, existen dos proyectos de ley en el Congreso que proponen regulaciones totalmente contrarias. El Proyecto de Ley N&deg; 4055/2014-CR, se&ntilde;ala que los trabajadores no percibir&aacute;n el monto adicional que deber&iacute;a pagar el empleador a favor de EsSalud. Por el contrario, el Proyecto de Ley N&deg; 4116/2014-CR supone establecer de forma definitiva que dicho aporte que inicialmente le corresponder&iacute;a a EsSalud ser&aacute; otorgado al trabajador. Pues bien, el Proyecto de Ley N&deg; 4055/2014-CR expresa en su exposici&oacute;n de motivos que de esta forma busca que EsSalud cuente con una mayor cantidad de fondos y pueda cubrir de una mejor manera los servicios que presta a sus asegurados. Mientras que el Proyecto de Ley N&deg; 4116/2014-CR busca generar una mayor cantidad de ingresos a los trabajadores.</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Ambos proyectos se encuentran en la Comisi&oacute;n&nbsp; de Trabajo y Promoci&oacute;n del Empleo. En los pr&oacute;ximos d&iacute;as ambos proyectos ser&aacute;n discutidos en el Pleno.</span></span></span></p>\r\n','Actualmente, existen dos proyectos de ley en el Congreso que proponen regulaciones totalmente contrarias. El Proyecto de Ley N° 4055/2014-CR, señala que los trabajadores no percibirán el monto adicional que debería pagar el empleador a favor de EsSalud. ','2015-01-30 00:00:00','2015-01-31 00:00:00','hrojas','hrojas','PUBLICADO','',1,1),(4,'3 CRITERIO TRIBUNAL CONSTITUCIONAL','CRITERIO DE LA CORTE SUPREMA','<p style=\"margin-left: 35.25pt;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>&ldquo;<em>Todas las cl&aacute;usulas que conforman un Convenio Colectivo son de obligatorio cumplimiento entre las partes y no es necesario que expresamente se pacte su exigibilidad&rdquo;</em></strong>.- <strong>Casaci&oacute;n Laboral N&deg;1936-2014-Arequipa.</strong></span></span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Conflicto:</strong> El sindicato demandante pretende, que la empresa demanda cumpla con la Cl&aacute;usula Tercera del Convenio Colectivo 2004 &ndash; 2008, incrementando las remuneraciones b&aacute;sicas mensuales de los trabajadores comprendidos dentro del &aacute;mbito del convenio en dos oportunidades: (i) a partir del primero enero de 2004 y (ii) el segundo incremento, a partir del primero de enero de 2005, a efectos de que las remuneraciones se mantengan en el promedio de remuneraciones de la gran miner&iacute;a.&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Causal del recurso: </strong>Error en la interpretaci&oacute;n del art&iacute;culo 29&deg; del Decreto Supremo N&deg;011-92-TR-</span></span></span></p>\r\n\r\n<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Conviene recordar que el art&iacute;culo 29&deg; del Decreto Supremo N&deg;011-92-TR establece la existencia de tres (3) tipos de cl&aacute;usulas que forman parte de la Convenci&oacute;n Colectiva:</span></span></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-image:none; border:1px solid rgb(255, 208, 185); width:100%\">\r\n	<tbody>\r\n		<tr style=\"border: 1px solid rgb(255, 208, 185); border-image: none; font-family: open sans; font-size: 12px; background-color: rgb(216, 125, 39);\">\r\n			<td style=\"width: 161px;\">\r\n			<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\"><strong>Tipo de Cl&aacute;usula</strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"width: 435px;\">\r\n			<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\"><strong>Definici&oacute;n </strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"font-family: open sans; font-size: 11px; background-color: rgb(190, 190, 190);\">\r\n			<td style=\"width: 161px;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cl&aacute;usulas Normativas</span></span></p>\r\n			</td>\r\n			<td style=\"width: 435px;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Aquellas que se incorporan autom&aacute;ticamente a los contratos individuales de trabajo y los que aseguran o protegen su cumplimiento. Durante su vigencia se interpretan como normas jur&iacute;dicas.</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"font-family: open sans; font-size: 11px; background-color: rgb(217, 217, 217);\">\r\n			<td style=\"width: 161px;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cl&aacute;usulas Obligacionales</span></span></p>\r\n			</td>\r\n			<td style=\"width: 435px;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Aquellas que establecen derechos y deberes de naturaleza colectiva laboral entre las partes del convenio. Se interpretan seg&uacute;n las reglas de los contratos.</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"font-family: open sans; font-size: 11px; background-color: rgb(190, 190, 190);\">\r\n			<td style=\"width: 161px;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cl&aacute;usulas Delimitadoras</span></span></p>\r\n			</td>\r\n			<td style=\"width: 435px;\">\r\n			<p><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Aquellas destinadas a regular el &aacute;mbito y vigencia del convenio colectivo. Se interpretan seg&uacute;n las reglas de los contratos.</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','Todas las cláusulas que conforman un Convenio Colectivo son de obligatorio cumplimiento entre las partes y no es necesario que expresamente se pacte su exigibilidad','2015-01-30 00:00:00','2015-01-31 00:00:00','hrojas','hrojas','PUBLICADO','',1,1),(5,'4 GESTIÓN DE PERSONAS','GESTIÓN DE PERSONAS','<p style=\"text-align: justify;\"><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Muchas acciones preventivas en las empresas, (no solo aquellas centrales del negocio, sino tambi&eacute;n las adoptadas en las &aacute;reas de gesti&oacute;n humana), requieren de la colaboraci&oacute;n y participaci&oacute;n de los mandos intermedios (jefes, supervisores, l&iacute;deres). Su papel es fundamental, pues ellos est&aacute;n permanente vinculados con sus equipos de trabajo y deben gestionar el d&iacute;a a d&iacute;a del &aacute;rea a la que pertenecen. La participaci&oacute;n de los mandos intermedios permite ajustar, delimitar o incluso, modificar el dise&ntilde;o y desarrollo de una pol&iacute;tica empresarial preventiva. En cuanto a la implementaci&oacute;n de una medida preventiva, los mandos intermedios deben contar con formaci&oacute;n continua en habilidades y capacidades que les permitan manejar los conflictos internos y decidir ante los frentes de conflicto que pudieran generar un mal clima laboral. Toda esta planificaci&oacute;n, debe ir acompa&ntilde;ada de suficientes canales de comunicaci&oacute;n interna de manera que los mandos intermedios puedan transmitir los mensajes preventivos de forma clara y sean entendidos por los equipos de trabajo. Por &uacute;ltimo, estas acciones requieren de un monitoreo continuo que permita verificar si dichas acciones est&aacute;n repercutiendo en la conflictividad en la empresa.</span></span></span></p>\r\n','La importancia de gestionar con los mandos intermedios','2015-01-30 00:00:00','2015-01-31 00:00:00','hrojas','hrojas','PUBLICADO','',1,1),(6,'5 NOTAS DE PRENSA','NOTAS DE PRENSA','<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><big><small><a href=\"http://gestion.pe/economia/descuentos-gratificaciones-que-pasara-peruanos-que-cesen-entre-enero-y-julio-2015-2115820\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\"><span style=\"color:rgb(255, 255, 255)\">Descuentos en gratificaciones: &iquest;qu&eacute; pasar&aacute; con peruanos que cesen entre enero y julio del 2015?</span></a></small></big></span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><big><small><a href=\"http://gestion.pe/economia/advierten-que-proyecto-boletas-pago-virtuales-comprometeria-transparencia-informacion-2114253\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\"><span style=\"color:rgb(255, 255, 255)\">Advierten que proyecto de boletas de pago virtuales comprometer&iacute;a transparencia de informaci&oacute;n</span></a></small></big></span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><big><small><a href=\"http://www.esan.edu.pe/conexion/actualidad/2014/11/05/conozca-alcances-uso-poligrafo-centros-trabajo/\" style=\"color: rgb(17, 85, 204);\" target=\"_blank\"><span style=\"color:rgb(255, 255, 255)\">Conozca los alcances del uso del pol&iacute;grafo en los centros de trabajo</span></a></small></big></span></span></p>\r\n','NOTAS DE PRENSA','2015-01-30 00:00:00','2015-01-31 00:00:00','hrojas','hrojas','PUBLICADO','',1,1),(7,'1 COYUNTURA LABORAL','1.3	Reciente informe de la OIT señala que el Perú tiene el mayor nivel de informalidad en la región','<p><span style=\"color:rgb(255, 255, 255)\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\">La OIT desarrolla las tendencias del mundo socio laboral para el 2015, con informaci&oacute;n relacionada al desarrollo del empleo a nivel global y regional, las tendencias del empleo en los diferentes sectores econ&oacute;micos, as&iacute; como diferentes estad&iacute;sticas, entre las que destaca la calificaci&oacute;n del <strong>Per&uacute;</strong> como el pa&iacute;s que tiene la mayor tasa de informalidad en Am&eacute;rica Latina y el Caribe (de <strong>hasta 64%</strong>), antes que M&eacute;xico (tasa de hasta 53.8%) y Ecuador (tasa de hasta 49.3%).</span></span></span></p>\r\n','La OIT desarrolla las tendencias del mundo socio laboral para el 2015, con información relacionada al desarrollo del empleo a nivel global y regional, las tendencias del empleo en los diferentes sectores económicos, así como diferentes estadísticas','2015-01-30 00:00:00','2015-01-31 00:00:00','hrojas','hrojas','PUBLICADO','',1,1),(8,'NORMATIVA LABORAL','','','','2015-01-30 00:00:00','2015-01-30 00:00:00','hrojas','hrojas','ACTIVO','',1,1);
/*!40000 ALTER TABLE `tb_actualidadlaboral` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_archivo`
--

LOCK TABLES `tb_archivo` WRITE;
/*!40000 ALTER TABLE `tb_archivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_archivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_boletin`
--

DROP TABLE IF EXISTS `tb_boletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_boletin` (
  `bolId` smallint(6) NOT NULL AUTO_INCREMENT,
  `bolNombre` varchar(250) NOT NULL,
  `bolFechaIngreso` datetime NOT NULL,
  `bolFechaUpdate` datetime NOT NULL,
  `bolUserIngreso` varchar(20) NOT NULL,
  `bolUserUpdate` varchar(20) NOT NULL,
  `bolEstado` varchar(20) NOT NULL,
  `bolFile` varchar(500) DEFAULT NULL,
  `usuId` smallint(6) NOT NULL,
  PRIMARY KEY (`bolId`,`usuId`),
  KEY `R7` (`usuId`),
  CONSTRAINT `R7` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_boletin`
--

LOCK TABLES `tb_boletin` WRITE;
/*!40000 ALTER TABLE `tb_boletin` DISABLE KEYS */;
INSERT INTO `tb_boletin` VALUES (1,'BOLETIN ENERO 2015','2015-01-29 00:00:00','2015-01-30 00:00:00','hrojas','hrojas','PUBLICADO','El pago de la remuneración integral anual de trabajadores.pdf',1),(2,'BOLETIN FEBRERO 2015','2015-01-29 00:00:00','2015-01-29 00:00:00','hrojas','hrojas','ACTIVO','A prepararse- lo que se viene en el 2015 en materia laboral.pdf',1),(3,'BOLETIN MARZO 2015','2015-01-29 00:00:00','2015-01-29 00:00:00','hrojas','hrojas','ACTIVO','',1),(4,'BOLETIN ABRIL 2015','2015-01-29 00:00:00','2015-01-29 00:00:00','hrojas','hrojas','DELETE','reporteConsultarLicenciasArea.xlsx',1),(5,'BOLETIN MAYO 2015','2015-01-29 00:00:00','2015-01-29 00:00:00','hrojas','hrojas','DELETE','Boletin-primera-quincena-de-Diciembre-2014.docx',1);
/*!40000 ALTER TABLE `tb_boletin` ENABLE KEYS */;
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
  KEY `R3` (`pisId`) USING BTREE,
  CONSTRAINT `R3` FOREIGN KEY (`pisId`) REFERENCES `tb_pais` (`pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
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
-- Table structure for table `tb_criteriosrelevantes`
--

DROP TABLE IF EXISTS `tb_criteriosrelevantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_criteriosrelevantes` (
  `crrId` smallint(6) NOT NULL AUTO_INCREMENT,
  `crrNombre` varchar(100) NOT NULL,
  `crrContenido` text NOT NULL,
  `crrResumen` text NOT NULL,
  `crrFechaIngreso` datetime NOT NULL,
  `crrFechaUpdate` datetime NOT NULL,
  `crrUserIngreso` varchar(20) NOT NULL,
  `crrUserUpdate` varchar(20) NOT NULL,
  `crrEstado` varchar(20) NOT NULL,
  `usuId` smallint(6) NOT NULL,
  `crrFile` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`crrId`,`usuId`),
  KEY `R10` (`usuId`) USING BTREE,
  CONSTRAINT `R10` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_criteriosrelevantes`
--

LOCK TABLES `tb_criteriosrelevantes` WRITE;
/*!40000 ALTER TABLE `tb_criteriosrelevantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_criteriosrelevantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estado`
--

DROP TABLE IF EXISTS `tb_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_estado` (
  `estId` smallint(6) NOT NULL AUTO_INCREMENT,
  `estNombre` varchar(250) NOT NULL,
  `estLocale` varchar(5) NOT NULL,
  `estParaModulo` varchar(50) NOT NULL,
  PRIMARY KEY (`estId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estado`
--

LOCK TABLES `tb_estado` WRITE;
/*!40000 ALTER TABLE `tb_estado` DISABLE KEYS */;
INSERT INTO `tb_estado` VALUES (1,'ACTIVO','es_PE','perfil'),(2,'INACTIVO','es_PE','perfil'),(3,'ACTIVE','en_US','perfil'),(4,'INACTIVE','en_US','perfil'),(5,'ACTIVO','es_PE','opcionperfil'),(6,'INACTIVO','es_PE','opcionperfil'),(7,'ACTIVE','en_US','opcionperfil'),(8,'INACTIVE','en_US','opcionperfil'),(9,'ACTIVO','es_PE','actualidadLaboral'),(10,'INACTIVO','es_PE','actualidadLaboral'),(11,'PENDIENTE','es_PE','actualidadLaboral'),(12,'PUBLICADO','es_PE','actualidadLaboral'),(13,'ENVIADO','es_PE','actualidadLaboral'),(14,'ACTIVO','es_PE','imagen'),(15,'INACTIVO','es_PE','imagen'),(16,'ACTUALIDAD LABORAL','es_PE','imagenModulo'),(17,'NOTA DE PRENSA','es_PE','imagenModulo'),(18,'JURISPRUDENCIA LABORAL','es_PE','imagenModulo'),(19,'CRITERIOS RELEVANTES','es_PE','imagenModulo'),(20,'GESTIÓN PERSONAS','es_PE','imagenModulo'),(21,'PRIMERA QUINCENA ENERO 2015','es_PE','imagenCampana'),(22,'SEGUNDA QUINCENA ENERO 2015','es_PE','imagenCampana'),(23,'PRIMERA QUINCENA FEBRERO 2015','es_PE','imagenCampana'),(24,'SEGUNDA QUINCENA FEBRERO 2015','es_PE','imagenCampana'),(25,'PRIMERA QUINCENA MARZO 2015','es_PE','imagenCampana'),(26,'SEGUNDA QUINCENA MARZO 2015','es_PE','imagenCampana'),(27,'PRIMERA QUINCENA ABRIL 2015','es_PE','imagenCampana'),(28,'SEGUNDA QUINCENA ABRIL 2015','es_PE','imagenCampana'),(29,'PRIMERA QUINCENA MAYO 2015','es_PE','imagenCampana'),(30,'SEGUNDA QUINCENA MAYO 2015','es_PE','imagenCampana'),(31,'PRIMERA QUINCENA JUNIO 2015','es_PE','imagenCampana'),(32,'SEGUNDA QUINCENA JUNIO 2015','es_PE','imagenCampana'),(33,'PRIMERA QUINCENA JULIO 2015','es_PE','imagenCampana'),(34,'SEGUNDA QUINCENA JULIO 2015','es_PE','imagenCampana'),(35,'PRIMERA QUINCENA AGOSTO 2015','es_PE','imagenCampana'),(36,'SEGUNDA QUINCENA AGOSTO 2015','es_PE','imagenCampana'),(37,'PRIMERA QUINCENA SETIEMBRE 2015','es_PE','imagenCampana'),(38,'SEGUNDA QUINCENA SETIEMBRE 2015','es_PE','imagenCampana'),(39,'PRIMERA QUINCENA OCTUBRE 2015','es_PE','imagenCampana'),(40,'SEGUNDA QUINCENA OCTUBRE 2015','es_PE','imagenCampana'),(41,'PRIMERA QUINCENA NOVIEMBRE 2015','es_PE','imagenCampana'),(42,'SEGUNDA QUINCENA NOVIEMBRE 2015','es_PE','imagenCampana'),(43,'PRIMERA QUINCENA DICIEMBRE 2015','es_PE','imagenCampana'),(44,'SEGUNDA QUINCENA DICIEMBRE 2015','es_PE','imagenCampana'),(45,'ACTIVO','es_PE','bolModulo'),(46,'ELIMINADO','es_PE','bolModulo'),(47,'PUBLICADO','es_PE','bolModulo'),(48,'ANTERIORES','es_PE','bolModulo'),(49,'1 COYUNTURA LABORAL','es_PE','aclOpcionesTitulo'),(50,'3 CRITERIO TRIBUNAL CONSTITUCIONAL','es_PE','aclOpcionesTitulo'),(51,'4 GESTIÓN DE PERSONAS','es_PE','aclOpcionesTitulo'),(52,'5 NOTAS DE PRENSA','es_PE','aclOpcionesTitulo'),(53,'2 NORMATIVA LABORAL','es_PE','aclOpcionesTitulo');
/*!40000 ALTER TABLE `tb_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_imagen`
--

DROP TABLE IF EXISTS `tb_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_imagen` (
  `imgId` smallint(6) NOT NULL AUTO_INCREMENT,
  `imgNombre` varchar(1000) NOT NULL,
  `imgModulo` varchar(250) NOT NULL,
  `imgCampana` varchar(100) NOT NULL,
  `imgFechaIngreso` datetime NOT NULL,
  `imgFechaUpdate` datetime NOT NULL,
  `imgUserIngreso` varchar(20) NOT NULL,
  `imgUserUpdate` varchar(20) NOT NULL,
  `imgEstado` varchar(20) NOT NULL,
  `usuId` smallint(6) NOT NULL,
  PRIMARY KEY (`imgId`,`usuId`),
  KEY `R11` (`usuId`) USING BTREE,
  CONSTRAINT `R11` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_imagen`
--

LOCK TABLES `tb_imagen` WRITE;
/*!40000 ALTER TABLE `tb_imagen` DISABLE KEYS */;
INSERT INTO `tb_imagen` VALUES (1,'ley  pulpin.jpg','ACTUALIDAD LABORAL','PRIMERA QUINCENA ENERO 2015','2015-01-30 00:00:00','2015-01-30 00:00:00','hrojas','hrojas','ACTIVO',1);
/*!40000 ALTER TABLE `tb_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_jurisprudencialaboral`
--

DROP TABLE IF EXISTS `tb_jurisprudencialaboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_jurisprudencialaboral` (
  `julId` smallint(6) NOT NULL AUTO_INCREMENT,
  `julNombre` varchar(100) NOT NULL,
  `julContenido` text NOT NULL,
  `julResumen` text NOT NULL,
  `julFechaIngreso` datetime NOT NULL,
  `julFechaUpdate` datetime NOT NULL,
  `julUserIngreso` varchar(20) NOT NULL,
  `julUserUpdate` varchar(20) NOT NULL,
  `julEstado` varchar(20) NOT NULL,
  `julFile` varchar(250) DEFAULT NULL,
  `usuId` smallint(6) NOT NULL,
  PRIMARY KEY (`julId`,`usuId`),
  KEY `R9` (`usuId`) USING BTREE,
  CONSTRAINT `R9` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jurisprudencialaboral`
--

LOCK TABLES `tb_jurisprudencialaboral` WRITE;
/*!40000 ALTER TABLE `tb_jurisprudencialaboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_jurisprudencialaboral` ENABLE KEYS */;
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
  KEY `R5` (`oppId`,`pefId`) USING BTREE,
  KEY `R6` (`perId`,`usuId`,`ciuId`,`pisId`) USING BTREE,
  CONSTRAINT `R5` FOREIGN KEY (`oppId`, `pefId`) REFERENCES `tb_opcionperfil` (`oppId`, `pefId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `R6` FOREIGN KEY (`perId`, `usuId`, `ciuId`, `pisId`) REFERENCES `tb_persona` (`perId`, `usuId`, `ciuId`, `pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_notasprensa`
--

DROP TABLE IF EXISTS `tb_notasprensa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_notasprensa` (
  `nopId` smallint(6) NOT NULL AUTO_INCREMENT,
  `nopNombre` varchar(100) NOT NULL,
  `nopContenido` text NOT NULL,
  `nopResumen` text NOT NULL,
  `nopFechaIngreso` datetime NOT NULL,
  `nopFechaUpdate` datetime NOT NULL,
  `nopUserIngreso` varchar(20) NOT NULL,
  `nopUserUpdate` varchar(20) NOT NULL,
  `nopEstado` varchar(20) NOT NULL,
  `usuId` smallint(6) NOT NULL,
  `nopFile` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`nopId`,`usuId`),
  KEY `R8` (`usuId`) USING BTREE,
  CONSTRAINT `R8` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_notasprensa`
--

LOCK TABLES `tb_notasprensa` WRITE;
/*!40000 ALTER TABLE `tb_notasprensa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_notasprensa` ENABLE KEYS */;
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
  KEY `R1` (`pefId`) USING BTREE,
  CONSTRAINT `R1` FOREIGN KEY (`pefId`) REFERENCES `tb_perfil` (`pefId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_opcionperfil`
--

LOCK TABLES `tb_opcionperfil` WRITE;
/*!40000 ALTER TABLE `tb_opcionperfil` DISABLE KEYS */;
INSERT INTO `tb_opcionperfil` VALUES (1,'INICIO','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(2,'PERFIL','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(3,'HERRAMIENTAS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(4,'MANTENIMIENTOS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(5,'HOME','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(6,'PROFILE','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(7,'TOOLS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(8,'MAINTENANCES','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO',2,'en_US',NULL),(9,'EDITAR','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(10,'OPCIÃ“N PERFIL','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(11,'NUEVO PERFIL','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(12,'NUEVO OPCIÃ“N PERFIL','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(13,'ADMINISTRAR EXPEDIENTES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(14,'CONSULTAR EXPEDIENTES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(15,'REGISTRAR EXPEDIENTES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(16,'REGISTRAR ACTOS PROCESALES','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(17,'PROGRAMAR TAREAS','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(18,'CONSULTAR TAREAS','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(19,'REGISTRAR TAREA','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO',1,'es_PE',NULL),(20,'HAROLD','2014-12-16','2014-12-16','hrojas','hrojas','ACTIVO',1,'es_PE',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pais`
--

LOCK TABLES `tb_pais` WRITE;
/*!40000 ALTER TABLE `tb_pais` DISABLE KEYS */;
INSERT INTO `tb_pais` VALUES (1,'PERU','AMERICA DEL SUR','2012-08-24','2012-08-24','hrojas','hrojas','es_PE','ESPAÃƒâ€˜OL(PERÃƒÅ¡)');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfil`
--

LOCK TABLES `tb_perfil` WRITE;
/*!40000 ALTER TABLE `tb_perfil` DISABLE KEYS */;
INSERT INTO `tb_perfil` VALUES (1,'ADMINISTRADOR','2012-08-24','2014-12-12','hrojas','hrojas','ACTIVO','es_PE'),(2,'ADMINISTRATOR','2012-08-24','2012-12-07','hrojas','ehuaman','ACTIVE','en_US'),(3,'SOPORTE TI','2012-08-24','2014-12-12','hrojas','hrojas','INACTIVO','es_PE'),(4,'ADMINISTRADOR DE RED','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(5,'GERENTE GENERAL','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(6,'ABOGADOS','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(7,'SOCIOS','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(8,'SECRETARIAS','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(9,'AREA MANTENIMIENTO','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(10,'FACTURACION','2012-08-24','2012-12-07','hrojas','hrojas','INACTIVO','es_PE'),(11,'COBRANZA','2012-08-24','2012-12-07','hrojas','hrojas','ACTIVO','es_PE'),(12,'SISTEMAS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(13,'CENDOC','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(14,'CONTABILIDAD','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(15,'FINANZAS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(16,'TESORERIA','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(17,'PROYECTOS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(18,'RECURSOS HUMANOS','2012-08-24','2012-08-24','hrojas','hrojas','ACTIVO','es_PE'),(19,'SOCIOS2','2012-11-28','2012-12-04','hrojas','hrojas','ACTIVO','es_PE'),(20,'SOCIOS 3','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(21,'SISTEMAS 2','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(22,'SOCIOS 4','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(23,'SYSTEM','2012-11-28','2012-12-07','ehuaman','ehuaman','ACTIVE','en_US'),(24,'CENDOC','2012-11-28','2012-12-07','ehuaman','ehuaman','ACTIVE','en_US'),(25,'SISTEMAS 3','2012-11-28','2012-11-28','hrojas','hrojas','ACTIVO','es_PE'),(26,'PROCURADORES','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(27,'PRACTICANTES','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(28,'RECEPCIÃ“N','2012-11-30','2014-12-11','hrojas','hrojas','ACTIVO','es_PE'),(29,'HAROLD','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(30,'EDITH','2012-11-30','2012-12-04','hrojas','hrojas','ACTIVO','es_PE'),(31,'DANIEL','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(32,'LEON','2012-11-30','2012-11-30','hrojas','hrojas','ACTIVO','es_PE'),(33,'DAVE','2012-11-30','2012-12-04','hrojas','hrojas','ACTIVO','es_PE'),(34,'SOCIOS 2','2012-11-30','2012-12-05','hrojas','hrojas','INACTIVO','es_PE'),(35,'LABORAL','2014-12-12','2014-12-12','hrojas','hrojas','ACTIVO','es_PE'),(36,'LOGISTICA','2014-12-13','2014-12-13','hrojas','hrojas','ACTIVO','es_PE'),(37,'JENNY HUAMAN','2014-12-16','2014-12-16','hrojas','hrojas','ACTIVO','es_PE'),(38,'INIESTA ','2014-12-16','2014-12-16','hrojas','hrojas','ACTIVO','es_PE');
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
  KEY `R2` (`usuId`) USING BTREE,
  KEY `R4` (`ciuId`,`pisId`) USING BTREE,
  CONSTRAINT `R2` FOREIGN KEY (`usuId`) REFERENCES `tb_usuario` (`usuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `R4` FOREIGN KEY (`ciuId`, `pisId`) REFERENCES `tb_ciudad` (`ciuId`, `pisId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
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
-- Dumping routines for database 'db_diehlinfov002'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLAUCLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLAUCLIST`(straclNombre varchar(100))
BEGIN
	select aclNombre as straclNombre from tb_actualidadlaboral
  where aclNombre like straclNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLINSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLINSERT`(inout intaclId int,
    in    straclTitulo varchar (500),
	  inout straclNombre varchar(500),
	  in    straclContenido text,
	  in    straclResumen text,
	  in    dteaclFechaIngreso datetime,
	  in    dteaclFechaUpdate datetime,
	  in    straclUserIngreso varchar(20),
	  in    straclUserUpdate varchar(20),
	  in    straclEstado varchar(20),
	  in    straclFile varchar(250),
    in    intbolId int,
	  in    intusuId int
)
BEGIN
DECLARE v_intaclId int;
DECLARE v_straclNombre varchar(100) DEFAULT straclNombre;

     START TRANSACTION;
     select @existe := count(aclNombre)
     from tb_actualidadlaboral
     where aclNombre=straclNombre;
     
     if @existe = 0 then
     insert into tb_actualidadlaboral (aclId, aclTitulo, aclNombre, aclContenido, aclResumen, aclFechaIngreso, aclFechaUpdate, aclUserIngreso, aclUserUpdate, aclEstado, aclFile, bolId, usuId)
     values(null,UPPER(straclTitulo), straclNombre, straclContenido, straclResumen, dteaclFechaIngreso, dteaclFechaUpdate, straclUserIngreso, straclUserUpdate, straclEstado, straclFile, intbolId, intusuId);
     
     select max(aclId) into v_intaclId from tb_actualidadlaboral;
     select aclNombre into v_straclNombre from tb_actualidadlaboral where aclId=v_intaclId;
     
     set intaclId=v_intaclId;
     set straclNombre=v_straclNombre;
     COMMIT;
     else
     
     set intaclId=0;
     set straclNombre=v_straclNombre;
     ROLLBACK;
     end if;
     
	   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLSEARCHLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLSEARCHLIST`(p_intbolId int)
BEGIN
	select 
  aclId as intaclId,
  aclTitulo as straclTitulo,
  aclNombre as straclNombre,
  aclContenido as straclContenido,
  aclResumen as straclResumen,
  aclFechaIngreso as dteaclFechaIngreso,
  aclFechaUpdate as dteaclFechaUpdate,
  aclUserIngreso as straclUserIngreso,
  aclUserUpdate as straclUserUpdate,
  aclEstado as straclEstado,
  aclFile as straclFile,
  acl.bolId as intbolId,
  acl.usuId as intusuId,
  bol.bolNombre as strbolNombre
  from tb_actualidadlaboral acl, tb_boletin bol
  where acl.bolId=bol.bolId
  and bol.bolId=p_intbolId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLSEARCHLISTXBOLID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLSEARCHLISTXBOLID`(p_intbolId varchar(20))
BEGIN
	select 
  aclId as intaclId, 
  aclTitulo as straclTitulo,
  aclNombre as straclNombre,
  aclContenido as straclContenido,
  aclResumen as straclResumen,
  aclFechaIngreso as dteaclFechaIngreso,
  aclFechaUpdate as dteaclFechaUpdate,
  aclUserIngreso as straclUserIngreso,
  aclUserUpdate as straclUserUpdate,
  aclEstado as straclEstado,
  aclFile as straclFile,
  acl.bolId as intbolId,
  acl.usuId as intusuId,
  bol.bolNombre as strbolNombre
  from tb_actualidadlaboral acl, tb_boletin bol
  where acl.bolId=bol.bolId
  and acl.bolId=p_intbolId
  and acl.aclEstado in ('PUBLICADO','ANTERIORES')
  ORDER BY acl.aclTitulo ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLSEARCHLISTXBOLID2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLSEARCHLISTXBOLID2`(p_intbolId int)
BEGIN
	select 
  distinct aclTitulo as straclTitulo
  from tb_actualidadlaboral acl, tb_boletin bol
  where acl.bolId=bol.bolId
  AND bol.bolId=p_intbolId
  and acl.aclEstado in ('PUBLICADO','ANTERIORES');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLSEARCHLISTXESTADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLSEARCHLISTXESTADO`(straclEstado varchar(20))
BEGIN
	select 
  aclId as intaclId, 
  aclTitulo as straclTitulo,
  aclNombre as straclNombre,
  aclContenido as straclContenido,
  aclResumen as straclResumen,
  aclFechaIngreso as dteaclFechaIngreso,
  aclFechaUpdate as dteaclFechaUpdate,
  aclUserIngreso as straclUserIngreso,
  aclUserUpdate as straclUserUpdate,
  aclEstado as straclEstado,
  aclFile as straclFile,
  acl.bolId as intbolId,
  acl.usuId as intusuId,
  bol.bolNombre as strbolNombre
  from tb_actualidadlaboral acl, tb_boletin bol
  where acl.bolId=bol.bolId
  and acl.aclEstado like straclEstado
  and bol.bolEstado like straclEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLSEARCHLISTXESTADO2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLSEARCHLISTXESTADO2`(straclEstado varchar(20))
BEGIN
	select 
  distinct aclTitulo as straclTitulo,
  bol.bolNombre as strbolNombre
  from tb_actualidadlaboral acl, tb_boletin bol
  where acl.bolId=bol.bolId
  and acl.aclEstado like straclEstado
  and bol.bolEstado like straclEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLSEARCHXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLSEARCHXID`(p_aclId int)
BEGIN
	select 
  aclId as intaclId,
  aclTitulo as straclTitulo,
  aclNombre as straclNombre,
  aclContenido as straclContenido,
  aclResumen as straclResumen,
  aclFechaIngreso as dteaclFechaIngreso,
  aclFechaUpdate as dteaclFechaUpdate,
  aclUserIngreso as straclUserIngreso,
  aclUserUpdate as straclUserUpdate,
  aclEstado as straclEstado,
  aclFile as straclFile,
  bolId as intbolId,
  usuId as intusuId
  from tb_actualidadlaboral
  where aclId=p_aclId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACLUPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACLUPDATE`(inout intaclId int,
in    straclTitulo varchar(500),
inout straclNombre varchar(500),
in    straclContenido text,
in    straclResumen text,
in    dteaclFechaUpdate datetime,
in    straclUserUpdate varchar(20),
in    straclEstado varchar(20),
in    straclFile varchar(250),
in    intbolId int,
in    intusuId int,
inout intaclMensaje int)
BEGIN
     START TRANSACTION;
     select @existe := count(aclNombre)
     from tb_actualidadlaboral
     where aclNombre=straclNombre
     and aclId not in (intaclId);

     if @existe = 0 then
     set intaclMensaje=1;
     update tb_actualidadlaboral 
     set aclTitulo=UPPER(straclTitulo),
      aclNombre =straclNombre, 
      aclContenido=straclContenido,
      aclResumen=straclResumen,
      aclFechaUpdate=dteaclFechaUpdate,
      aclUserUpdate=straclUserUpdate,
      aclEstado=straclEstado,
      aclFile=straclFile,
      bolId=intbolId,
      usuId=intusuId
     where aclId=intaclId;
     COMMIT;
     else
     set intaclMensaje=2;
     ROLLBACK;
     end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BOLAUCLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BOLAUCLIST`(strbolNombre varchar(100))
BEGIN
	select bolNombre as strbolNombre from tb_boletin
  where bolNombre like strbolNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BOLDELETE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BOLDELETE`(inout intbolId int,
	  in    dtebolFechaUpdate datetime,
	  in    strbolUserUpdate varchar(20),
	  in    strbolEstado varchar(20),
	  in    intusuId int,
    inout intbolMensaje int)
BEGIN
     START TRANSACTION;
     select @existe := count(bolId)
     from tb_boletin
     where bolId=intbolId;

     if @existe = 1 then
     set intbolMensaje=1;
     update  tb_boletin
     set bolFechaUpdate=dtebolFechaUpdate,
      bolUserUpdate=strbolUserUpdate,
      bolEstado=strbolEstado,
      usuId=intusuId
     where bolId=intbolId;
     COMMIT;
     else
     set intbolMensaje=2;
     ROLLBACK;
     end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BOLINSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BOLINSERT`(inout intbolId int,
	  inout strbolNombre varchar(250),
	  in    dtebolFechaIngreso datetime,
	  in    dtebolFechaUpdate datetime,
	  in    strbolUserIngreso varchar(20),
	  in    strbolUserUpdate varchar(20),
	  in    strbolEstado varchar(20),
	  in    strbolFile varchar(500),
	  in    intusuId int
)
BEGIN
DECLARE v_intbolId int;
DECLARE v_strbolNombre varchar(100) DEFAULT strbolNombre;

     START TRANSACTION;
     select @existe := count(bolNombre)
     from tb_boletin
     where bolNombre=strbolNombre;
     
     if @existe = 0 then
     insert into tb_boletin (bolId, bolNombre, bolFechaIngreso, bolFechaUpdate, bolUserIngreso, bolUserUpdate, bolEstado, bolFile, usuId)
     values(null,UPPER(strbolNombre), dtebolFechaIngreso, dtebolFechaUpdate, strbolUserIngreso, strbolUserUpdate, strbolEstado, strbolFile, intusuId);
     
     select max(bolId) into v_intbolId from tb_boletin;
     select bolNombre into v_strbolNombre from tb_boletin where bolId=v_intbolId;
     
     set intbolId=v_intbolId;
     set strbolNombre=v_strbolNombre;
     COMMIT;
     else
     
     set intbolId=0;
     set strbolNombre=v_strbolNombre;
     ROLLBACK;
     end if;
     
	   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BOLSEARCHLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BOLSEARCHLIST`(strbolNombre varchar(250), strbolEstado varchar(20))
BEGIN
	select 
  bolId as intbolId,
  bolNombre as strbolNombre,
  bolFechaIngreso as dtebolFechaIngreso,
  bolFechaUpdate as dtebolFechaUpdate,
  bolUserIngreso as strbolUserIngreso,
  bolUserUpdate as strbolUserUpdate,
  bolEstado as strbolEstado,
  bolFile as strbolFile,
  usuId as intusuId
  from tb_boletin
  where bolNombre like strbolNombre 
  and bolEstado like strbolEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BOLSEARCHLISTBACK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BOLSEARCHLISTBACK`()
BEGIN
	select 
  bolId as intbolId,
  bolNombre as strbolNombre,
  bolFechaIngreso as dtebolFechaIngreso,
  bolFechaUpdate as dtebolFechaUpdate,
  bolUserIngreso as strbolUserIngreso,
  bolUserUpdate as strbolUserUpdate,
  bolEstado as strbolEstado,
  bolFile as strbolFile,
  usuId as intusuId
  from tb_boletin
  where bolEstado IN ('PUBLICADO','ANTERIORES');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BOLSEARCHXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BOLSEARCHXID`(p_bolId int)
BEGIN
	select 
  bolId as intbolId,
  bolNombre as strbolNombre,
  bolFechaIngreso as dtebolFechaIngreso,
  bolFechaUpdate as dtebolFechaUpdate,
  bolUserIngreso as strbolUserIngreso,
  bolUserUpdate as strbolUserUpdate,
  bolEstado as strbolEstado,
  bolFile as strbolFile,
  usuId as intusuId
  from tb_boletin
  where bolId=p_bolId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BOLUPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BOLUPDATE`(inout intbolId int,
	  inout strbolNombre varchar(250),
	  in    dtebolFechaUpdate datetime,
	  in    strbolUserUpdate varchar(20),
	  in    strbolEstado varchar(20),
	  in    strbolFile varchar(500),
	  in    intusuId int,
    inout intbolMensaje int)
BEGIN
     START TRANSACTION;
     select @existe := count(bolNombre)
     from tb_boletin
     where bolNombre=strbolNombre
     and bolId not in (intbolId);

     if @existe = 0 then
     set intbolMensaje=1;
     update  tb_boletin
     set bolNombre =UPPER(strbolNombre), 
      bolFechaUpdate=dtebolFechaUpdate,
      bolUserUpdate=strbolUserUpdate,
      bolEstado=strbolEstado,
      bolFile=strbolFile,
      usuId=intusuId
     where bolId=intbolId;
     COMMIT;
     else
     set intbolMensaje=2;
     ROLLBACK;
     end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CIULISTA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
  and estParaModulo=strestParaModulo
  ORDER BY estNombre ASC; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_IMGAUCLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_IMGAUCLIST`(strimgNombre varchar(1000))
BEGIN
	select imgNombre as strimgNombre 
  from tb_imagen
  where imgNombre like strimgNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_IMGINSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_IMGINSERT`(inout intimgId int,
	  inout strimgNombre varchar(1000),
	  in    strimgModulo varchar(250),
	  in    strimgCampana varchar(100),
	  in    dteimgFechaIngreso datetime,
	  in    dteimgFechaUpdate datetime,
	  in    strimgUserIngreso varchar(20),
	  in    strimgUserUpdate varchar(20),
	  in    strimgEstado varchar(20),
	  in    intusuId int
)
BEGIN
DECLARE v_intimgId int;
DECLARE v_strimgNombre varchar(1000) DEFAULT strimgNombre;

     START TRANSACTION;
     select @existe := count(imgNombre)
     from tb_imagen
     where imgNombre=strimgNombre;
     
     if @existe = 0 then
     insert into tb_imagen (imgId, imgNombre, imgModulo, imgCampana, imgFechaIngreso, imgFechaUpdate, imgUserIngreso, imgUserUpdate, imgEstado, usuId)
     values(null,strimgNombre, strimgModulo, strimgCampana, dteimgFechaIngreso, dteimgFechaUpdate, strimgUserIngreso, strimgUserUpdate, strimgEstado, intusuId);
     
     select max(imgId) into v_intimgId from tb_imagen;
     select imgNombre into v_strimgNombre from tb_imagen where imgId=v_intimgId;
     
     set intimgId=v_intimgId;
     set strimgNombre=v_strimgNombre;
     COMMIT;
     else
     
     set intimgId=0;
     set strimgNombre=v_strimgNombre;
     ROLLBACK;
     end if;
     
	   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_IMGMODCAMLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_IMGMODCAMLIST`(strimgModulo varchar(250),strimgCampana varchar(100))
BEGIN
	select 
  imgId as intimgId, 
  imgNombre as strimgNombre, 
  imgModulo as strimgModulo, 
  imgCampana as strimgCampana, 
  imgFechaIngreso as dteimgFechaIngreso, 
  imgFechaUpdate as dteimgFechaUpdate, 
  imgUserIngreso as strimgUserIngreso, 
  imgUserUpdate as strimgUserUpdate, 
  imgEstado as strimgEstado, 
  usuId as intusuId
  from tb_imagen
  where imgModulo like strimgModulo
  and imgCampana like strimgCampana;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_IMGSEARCHLIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_IMGSEARCHLIST`(strimgNombre varchar(1000),strimgModulo varchar(250),strimgCampana varchar(100),strimgEstado varchar(20))
BEGIN
	select 
  imgId as intimgId, 
  imgNombre as strimgNombre, 
  imgModulo as strimgModulo, 
  imgCampana as strimgCampana, 
  imgFechaIngreso as dteimgFechaIngreso, 
  imgFechaUpdate as dteimgFechaUpdate, 
  imgUserIngreso as strimgUserIngreso, 
  imgUserUpdate as strimgUserUpdate, 
  imgEstado as strimgEstado, 
  usuId as intusuId
  from tb_imagen
  where imgNombre like strimgNombre 
  and imgModulo like strimgModulo
  and imgCampana like strimgCampana
  and imgEstado like strimgEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_IMGSEARCHXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_IMGSEARCHXID`(p_imgId int)
BEGIN
	select 
  imgId as intimgId, 
  imgNombre as strimgNombre, 
  imgModulo as strimgModulo, 
  imgCampana as strimgCampana, 
  imgFechaIngreso as dteimgFechaIngreso, 
  imgFechaUpdate as dteimgFechaUpdate, 
  imgUserIngreso as strimgUserIngreso, 
  imgUserUpdate as strimgUserUpdate, 
  imgEstado as strimgEstado, 
  usuId as intusuId
  from tb_imagen
  where imgId=p_imgId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_IMGUPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_IMGUPDATE`(inout intimgId int,
	  inout strimgNombre varchar(1000),
	  in    strimgModulo varchar(250),
	  in    strimgCampana varchar(100),
	  in    dteimgFechaUpdate datetime,
	  in    strimgUserUpdate varchar(20),
	  in    strimgEstado varchar(20),
	  in    intusuId int,
    inout intimgMensaje int)
BEGIN
     START TRANSACTION;
     select @existe := count(imgNombre)
     from tb_imagen
     where imgNombre=strimgNombre
     and imgId not in (intimgId);

     if @existe = 0 then
     set intimgMensaje=1;
     update tb_imagen 
     set imgNombre =strimgNombre, 
      imgModulo=strimgModulo,
      imgCampana=strimgCampana,
      imgFechaUpdate=dteimgFechaUpdate,
      imgUserUpdate=strimgUserUpdate,
      imgEstado=strimgEstado,
      usuID =intusuId
     where imgId=intimgId;
     COMMIT;
     else
     set intimgMensaje=2;
     ROLLBACK;
     end if;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
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

-- Dump completed on 2015-01-31 14:49:39
