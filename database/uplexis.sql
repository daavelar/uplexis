-- MySQL dump 10.13  Distrib 5.7.11, for osx10.11 (x86_64)
--
-- Host: localhost    Database: uplexis
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_usuarios_table',1),('2016_07_11_152912_create_sintegra_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sintegra`
--

DROP TABLE IF EXISTS `sintegra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sintegra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `cnpj` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resultado_json` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sintegra`
--

LOCK TABLES `sintegra` WRITE;
/*!40000 ALTER TABLE `sintegra` DISABLE KEYS */;
INSERT INTO `sintegra` VALUES (13,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:04:11','2016-07-12 06:04:11'),(14,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:04:14','2016-07-12 06:04:14'),(15,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:05:00','2016-07-12 06:05:00'),(16,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:05:07','2016-07-12 06:05:07'),(17,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:05:32','2016-07-12 06:05:32'),(18,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:06:23','2016-07-12 06:06:23'),(19,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:07:16','2016-07-12 06:07:16'),(20,1,'31.804.115-0002-43','{\"cnpj\":\"\\u00a031.804.115\\/0002-43\",\"inscricao_estadual\":\"\\u00a0082.254.28-1\",\"razao_social\":\"\\u00a0CEREAIS DO NICO LTDA\",\"logradouro\":\"\\u00a0RUA IPE\",\"numero\":\"\\u00a010\",\"complemento\":\"\\u00a0\",\"bairro\":\"\\u00a0MOVELAR\",\"municipio\":\"\\u00a0LINHARES\",\"uf\":\"\\u00a0ES\",\"cep\":\"\\u00a029906-120\",\"telefone\":\"\\u00a0        \",\"atividade_economica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"data_de_inicio_de_atividade\":\"26\\/03\\/2004\",\"situacao_cadastral_vigente\":\"HABILITADO\",\"data_desta_situacao_cadastral\":\"26\\/03\\/2004\",\"regime_de_apuracao\":\"ORDINARIO\",\"emitente_de_nfe_desde\":\"31\\/08\\/2009\",\"obrigada_a_nf_e_em\":\"01\\/09\\/2009\"}','2016-07-12 06:07:38','2016-07-12 06:07:38');
/*!40000 ALTER TABLE `sintegra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_usuario_unique` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','$2y$10$aolitT0F/oCEtOHTYrSXJ.H.9axIpsGqrZoKJQcQn5DyAiLxHXZWy','r3npcIILGsoJsacI7N4Yb8tCvEDLyM05TkLcZ1nWLKQOK4mYM9T5f4UuJ2Vm','2016-07-12 04:53:51','2016-07-12 06:07:08');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-12  0:15:12
