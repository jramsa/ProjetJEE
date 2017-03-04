-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Client :  sqletud.u-pem.fr
-- GÃ©nÃ©rÃ© le :  Jeu 02 Mars 2017 Ã  19:31
-- Version du serveur :  5.5.54-0+deb8u1-log
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de donnÃ©es :  `jbidet_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `cafe`
--

CREATE TABLE IF NOT EXISTS `cafe` (
	`id` int(11) NOT NULL,
	`date` date NOT NULL,
	`cafe_name` text COLLATE latin1_general_ci NOT NULL,
	`address` text COLLATE latin1_general_ci NOT NULL,
	`district` text COLLATE latin1_general_ci NOT NULL,
	`counter_price` decimal(4,2) NOT NULL,
	`indoor_price` decimal(4,2) NOT NULL,
	`outdoor_price` decimal(4,2) NOT NULL,
	`coord` point NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `cafe`
--

INSERT INTO `cafe` (`id`, `date`, `cafe_name`, `address`, `district`, `counter_price`, `indoor_price`, `outdoor_price`, `coord`) VALUES
(1, '2014-02-01', 'ExtÃ©rieur Quai', '5, rue d''Alsace', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¹ë8pH@š"Àé]Ü@'),
(2, '2014-02-01', 'Le Sully', '6 Bd henri IV', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0gÔ|•|lH@®Ö‰Ëñê@'),
(3, '2013-08-22', 'O q de poule', '53 rue du ruisseau', '75018', 1.00, 0.00, 1.00, '\0\0\0\0\0\0\0ÄµÚÃ^rH@½7†\0à¸@'),
(4, '2013-08-22', 'Le Pas Sage', '1 Passage du Grand Cerf', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0T©Ù­nH@Çƒ-vûÌ@'),
(5, '2013-08-22', 'Le Dunois', '77 rue Dunois', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ñKı¼©jH@Q÷Hí@'),
(6, '2013-08-22', 'La Renaissance', '112 Rue Championnet', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\08øÂdªrH@SxĞìº·@'),
(7, '2012-10-22', 'Le chantereine', '51 Rue Victoire', '75009', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0''÷;pH@••-¯@'),
(8, '2012-10-22', 'Le MÃ¼ller', '11 rue Feutrier', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0]ûzqH@¡ø1æ®Å@'),
(9, '2012-10-22', 'Le drapeau de la fidelitÃ©', '21 rue Copreaux', '75015', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0ŞãL¶kH@t]øÁùt@'),
(10, '2012-10-22', 'Le cafÃ© des amis', '125 rue Blomet', '75015', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0ÀÙ²|kH@ƒû`@'),
(11, '2012-10-09', 'Le CafÃ© Livres', '10 rue Saint Martin', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0‡nöÊmH@Ô¹¢”Ì@'),
(12, '2012-10-09', 'Le Bosquet', '46 avenue Bosquet', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0’#‘mH@ä½jeÂo@'),
(13, '2012-03-07', 'Le Brio', '216, rue Marcadet', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0h=|™(rH@6=((E«@'),
(14, '2012-03-07', 'Le Kleemend''s', '34 avenue Pierre MendÃ¨s-France', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.ø§TkH@“o+½ö@'),
(15, '2012-03-07', 'CafÃ© Pierre', '202 rue du faubourg st antoine', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0«’È>ÈlH@­3¾/.@'),
(16, '2012-03-07', 'Les Arcades', '61 rue de Ponthieu', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¾À¬P¤oH@,µŞo@'),
(17, '2012-03-07', 'Le Square', '31 rue Saint-Dominique', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0 QºômH@X‹O@'),
(18, '2012-06-27', 'Assaporare Dix sur Dix', '75, avenue Ledru-Rollin', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0­KĞÏlH@ÈÍp>ÿ@'),
(19, '2012-06-27', 'Au cerceau d''or', '129 boulevard sebastopol', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0z¥,CoH@`"Ä•Ó@'),
(20, '2012-06-27', 'CafÃ© antoine', '17 rue Jean de la Fontaine', '75016', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0{ŸªBmH@eqÿ‘é0@'),
(21, '2012-06-27', 'CafÃ© Lea', '5 rue Claude Bernard', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0V,~SXkH@ïÆ‚Â Ì@'),
(22, '2012-06-27', 'Cardinal Saint-Germain', '11 boulevard Saint-Germain', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0bÜ\r¢µlH@m‡ÁüÕ@'),
(23, '2012-06-27', 'DÃ©dÃ© la frite', '52 rue Notre-Dame des Victoires', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.ø§ToH@CÇ*q½@'),
(24, '2012-06-27', 'La Bauloise', '36 rue du hameau', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0\Zä.ÂjH@\\Z\r‰{L@'),
(25, '2012-06-27', 'Le Bellerive', '71 quai de Seine', '75019', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ö9d¯qH@|·yã@'),
(26, '2012-06-27', 'Le bistrot de MaÃ«lle et Augustin', '42 rue coquillÃ¨re', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0,~SX©nH@İE˜¢\\º@'),
(27, '2012-06-27', 'Le Dellac', '14 rue Rougemont', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0+ß3¡oH@‹4ñğÄ@'),
(28, '2012-06-27', 'Le Felteu', '1 rue Pecquay', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0À•ìØnH@/¤ÃCØ@'),
(29, '2012-06-27', 'Le Saint Jean', '23 rue des abbesses', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ÃDƒ<qH@fú%â­³@'),
(30, '2012-06-27', 'les montparnos', '65 boulevard Pasteur', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Z¦kH@øßJvl„@'),
(31, '2014-02-01', 'Drole d''endroit pour une rencontre', '58 rue de Montorgueil', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¹5é¶nH@Íên‡Æ@'),
(32, '2014-02-01', 'Le pari''s cafÃ©', '104 rue caulaincourt', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0GUDİqH@ÖsÒûÆ·@'),
(33, '2014-02-01', 'Le Poulailler', '60 rue saint-sabin', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0d@öz÷mH@ãŠ‹£ró@'),
(34, '2014-02-01', 'L''Assassin', '99 rue Jean-Pierre Timbaud', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0àØ³ç2oH@Zóã/-\n@'),
(35, '2014-02-01', 'l''Usine', '1 rue d''Avron', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0…`U½ülH@!­1è„0@'),
(36, '2014-02-01', 'La Bricole', '52 rue Liebniz', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0âKºrH@\0;7mÆ©@'),
(37, '2014-02-01', 'le ronsard', 'place maubert', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ë6¨ıÖlH@C­iŞqÊ@'),
(38, '2014-02-01', 'Face Bar', '82 rue des archives', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0FšxxnH@ÃÓ+eâ@'),
(39, '2013-08-22', 'American Kitchen', '49 rue bichat', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Û$¶oH@Õ Ìí^î@'),
(40, '2013-08-22', 'La Marine', '55 bis quai de valmy', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0DûXÁooH@D¤¦]ì@'),
(41, '2013-08-22', 'Le Bloc', '21 avenue Brochant', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¢ëÂÎqH@+Ã¸D‹@'),
(42, '2013-08-22', 'La Recoleta au Manoir', '229 avenue Gambetta', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0dt@öoH@—ä€]M>@'),
(43, '2013-08-22', 'Le Pareloup', '80 Rue Saint-Charles', '75015', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0;¨ÄulH@8×0CãI@'),
(44, '2013-08-22', 'La Brasserie GaitÃ©', '3 rue de la GaitÃ©', '75014', 0.00, 0.00, 1.00, '\0\0\0\0\0\0\0m6VbkH@y!Â˜@'),
(45, '2012-05-11', 'CafÃ© Zen', '46 rue Victoire', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ò4(špH@°:r¤3°@'),
(46, '2012-10-22', 'O''Breizh', '27 rue de PenthiÃ¨vre', '75008', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0W|Cá³oH@¦µil¯…@'),
(47, '2012-10-22', 'Le Petit Choiseul', '23 rue saint augustin', '75002', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0ÒÂe6oH@\0‘~û:°@'),
(48, '2012-10-22', 'Invitez vous chez nous', '7 rue EpÃ©e de Bois', '75005', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0ê]¼·kH@F$aßÎ@'),
(49, '2012-10-22', 'La Cordonnerie', '142 Rue Saint-Denis 75002 Paris', '75002', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0˜nƒÀnH@''0ÖÍ@'),
(50, '2012-10-22', 'Le Supercoin', '3, rue Baudelique', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0¯(\r5rH@”Â¼Ç™Æ@'),
(51, '2012-10-22', 'Populettes', '86 bis rue Riquet', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0Q„ÔíìqH@¦)œŞå@'),
(52, '2012-10-18', 'Au bon coin', '49 rue des Cloys', '75018', 1.00, 1.00, 1.00, '\0\0\0\0\0\0\0ÒâŒaNrH@TıJçÃ³@'),
(53, '2012-10-18', 'Le Couvent', '69 rue Broca', '75013', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0U3k) kH@>éD‚©Æ@'),
(54, '2012-10-18', 'La BrÃ»lerie des Ternes', '111 rue mouffetard', '75005', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0É6‘™kH@šÚRÌ@'),
(55, '2012-10-09', 'L''Ã‰cir', '59 Boulevard Saint-Jacques', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0F%ušjH@wLİ•]°@'),
(56, '2012-10-09', 'Le Chat bossu', '126, rue du Faubourg Saint Antoine', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0DkE›ãlH@â\0ú}ÿ@'),
(57, '2012-10-09', 'Denfert cafÃ©', '58 boulvevard Saint Jacques', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0_]¨ÅjH@AŸÈ“¤«@'),
(58, '2012-10-09', 'Le CafÃ© frappÃ©', '95 rue Montmartre', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0vP‰ëoH@Eôkë§¿@'),
(59, '2012-10-09', 'Le Descartes', '1 rue Thouin', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0J€*lH@Šæ,òË@'),
(60, '2012-03-07', 'Bagels & Coffee Corner', 'Place de Clichy', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0–®`qH@{mÇÔ@'),
(61, '2012-03-07', 'Le Plein soleil', '90 avenue Parmentier', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Šuª|ÏnH@G°qı»ş@'),
(62, '2012-03-07', 'Le Relais Haussmann', '146, boulevard Haussmann', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¼!\npH@4½ÄX¦@'),
(63, '2012-03-07', 'Le Malar', '88 rue Saint-Dominique', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Áı€nH@3d’‘s@'),
(64, '2012-03-07', 'Au panini de la place', '47 rue Belgrand', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0[š[!¬nH@µ3Lm©C@'),
(65, '2012-03-07', 'Le Village', '182 rue de Courcelles', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ú|a2qH@k''JBb@'),
(66, '2012-03-07', 'Pause CafÃ©', '41 rue de Charonne', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¯–;mH@ã§qo~@'),
(67, '2012-03-07', 'Le Pure cafÃ©', '14 rue Jean MacÃ©', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0añd7mH@á].â;@'),
(68, '2012-03-07', 'Extra old cafÃ©', '307 fg saint Antoine', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ŒºÖŞ§lH@ƒgB“$@'),
(69, '2012-03-07', 'Chez Fafa', '44 rue Vinaigriers', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ú}ÿæÅoH@\\“nKäâ@'),
(70, '2012-06-27', 'En attendant l''or', '3 rue Faidherbe', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\06!­1èlH@hB“Ä’@'),
(71, '2012-06-27', 'Aux cadrans', '21 ter boulevard Diderot', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0æ!S>lH@PÆø0{ù@'),
(72, '2012-06-27', 'BrÃ»lerie San JosÃ©', '30 rue des Petits-Champs', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\03nj ùnH@êé#°@'),
(73, '2012-06-27', 'Etienne', '14 rue Turbigo, Paris', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¸¯çŒnH@ô¨ø¿#Ê@'),
(74, '2012-06-27', 'L''ingÃ©nu', '184 bd Voltaire', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ª×-cmH@^/Mà@'),
(75, '2012-06-27', 'L''Olive', '8 rue L''Olive', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¹S:XÿqH@×‰Ëñ\nä@'),
(76, '2012-06-27', 'Le Biz', '18 rue Favart', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¿îtç‰oH@ofô£á´@'),
(77, '2012-06-27', 'Le Cap Bourbon', '1 rue Louis le Grand', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.\Z2oH@Hmâä~§@'),
(78, '2012-06-27', 'Le General Beuret', '9 Place du General Beuret', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0²×»kH@3£\r§l@'),
(79, '2012-10-09', 'La Perle', '78 rue vieille du temple', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0G\rnH@F}’;lâ@'),
(80, '2012-03-07', 'Le petit club', '55 rue de la tombe Issoire', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ğŞQcBjH@4/‡İw¬@'),
(81, '2012-06-27', 'Le Germinal', '95 avenue Emile Zola', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Áå±fdlH@ü\ZI‚P@'),
(82, '2012-06-27', 'Le Ragueneau', '202 rue Saint-HonorÃ©', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0]¢zknH@”4Lk³@'),
(83, '2012-06-27', 'Le refuge', '72 rue lamarck', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¬ îêqH@H4"¶@'),
(84, '2012-06-27', 'Le sully', '13 rue du Faubourg Saint Denis', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Øó5ËeoH@s¼Ñ“Ò@'),
(85, '2012-10-09', 'Le relais de la victoire', '73 rue de la Victoire', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0zqÈpH@2;‹Ş©@'),
(86, '2012-03-07', 'La chaumiÃ¨re gourmande', 'Route de la Muette Ã  Neuilly\nClub hippique du Jardin dâ€™Acclimatation', '75016', 0.00, 1.00, 0.00, ''),
(87, '2012-03-07', 'Caves populaires', '22 rue des Dames', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ú–?qH@È±õá˜@'),
(88, '2012-03-07', 'Caprice cafÃ©', '12 avenue Jean Moulin', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¸å#)éiH@oïš@'),
(89, '2012-03-07', 'Tamm Bara', '7 rue Clisson', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0g_yjH@©2Œ»Aô@'),
(90, '2012-03-07', 'L''anjou', '1 rue de Montholon', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0€¶Õ¬3pH@”¿{GÉ@'),
(91, '2012-03-07', 'CafÃ© dans l''aerogare Air France Invalides', '2 rue Robert Esnault Pelterie', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0úGß¤inH@nkÏK…@'),
(92, '2012-03-07', 'Waikiki', '10 rue d"Ulm', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ˆò-$lH@ïçägÃ@'),
(93, '2012-03-07', 'Chez Prune', '36 rue Beaurepaire', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0?ıgÍoH@Ëe£s~ê@'),
(94, '2012-06-27', 'Au Vin Des Rues', '21 rue Boulard', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0,Õ¼jH@t	‡Şâ¡@'),
(95, '2012-06-27', 'bistrot les timbrÃ©s', '14 rue d''alleray', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¦H¾HkH@KVE¸Éh@'),
(96, '2012-06-27', 'CafÃ© beauveau', '9 rue de Miromesnil', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¿×—oH@e6È$#‡@'),
(97, '2012-06-27', 'CafÃ© de la Mairie (du VIII)', 'rue de Lisbonne', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0˜iûWVpH@''‡O:‘€@'),
(98, '2012-06-27', 'CafÃ© Pistache', '9 rue des petits champs', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0În-“ánH@·	÷Ê¼µ@'),
(99, '2012-06-27', 'La Cagnotte', '13 Rue Jean-Baptiste Dumay', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0„õóoH@ãTka\Z@'),
(100, '2012-06-27', 'le 1 cinq', '172 rue de vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¶yËÕkH@ä£ÅÃ|@'),
(101, '2012-06-27', 'Le Killy Jen', '28 bis boulevard Diderot', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0\0®dÇFlH@ï9°@'),
(102, '2012-06-27', 'Les Artisans', '106 rue Lecourbe', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0''l?ãkH@Ş=@÷ål@'),
(103, '2012-06-27', 'Peperoni', '83 avenue de Wagram', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0öÔê««pH@$–\\e@'),
(104, '2014-02-01', 'L''antre d''eux', '16 rue DE MEZIERES', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ı¡™''×lH@â;ş¤@'),
(105, '2014-02-01', 'Le bal du pirate', '60 rue des bergers', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0à…­ÙÊkH@Œ0E¹4>@'),
(106, '2014-02-01', 'zic zinc', '95 rue claude decaen', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0óWÈ\\kH@^.â;1+@'),
(107, '2014-02-01', 'l''orillon bar', '35 rue de l''orillon', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0—8ò@doH@OZ¸¬@'),
(108, '2013-08-22', 'Le Zazabar', '116 Rue de MÃ©nilmontant', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ù>ä-WoH@p^œøj''@'),
(109, '2013-08-22', 'L''InÃ©vitable', '22 rue LinnÃ©', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¾÷7lH@OIŸÖ@'),
(110, '2012-05-11', 'Ragueneau', '202 rue Saint HonorÃ©', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0]¢zknH@”4Lk³@'),
(111, '2012-10-22', 'Le Caminito', '48 rue du Dessous des Berges', '75013', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0UN{JÎiH@y=˜ÿ@'),
(112, '2012-10-22', 'Epicerie Musicale', '55bis quai de Valmy', '75010', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0DûXÁooH@D¤¦]ì@'),
(113, '2012-10-22', 'Le petit Bretonneau', 'Le petit Bretonneau - Ã  l''intÃ©rieur de l''HÃ´pital', '75018', 1.00, 1.00, 0.00, ''),
(114, '2012-10-22', 'Le Centenaire', '104 rue amelot', '75011', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0q¬‹ÛhnH@ÒV%‘}ğ@'),
(115, '2012-10-22', 'La Montagne Sans GeneviÃ¨ve', '13 Rue du Pot de Fer', '75005', 0.00, 1.00, 0.00, '\0\0\0\0\0\0\0ª~¥óákH@[éµÙXÉ@'),
(116, '2012-10-18', 'Les PÃ¨res Populaires', '46 rue de Buzenval', '75020', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\04¢´7ølH@-Ïƒ»³6@'),
(117, '2012-10-09', 'Cafe de grenelle', '188 rue de Grenelle', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0“Â¼ÇmH@Ü:åq@'),
(118, '2014-02-01', 'le lutece', '380 rue de vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ˆe3‡¤jH@mÈ?3ˆO@'),
(119, '2014-02-01', 'Brasiloja', '16 rue Ganneron', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0”-’vqH@‹v“@'),
(120, '2014-02-01', 'Rivolux', '16 rue de Rivoli', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0êé#ğ‡mH@“¦AÑ<à@'),
(121, '2014-02-01', 'Chai 33', '33 Cour Saint Emilion', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0½U×¡šjH@àÕrg&@'),
(122, '2013-08-22', 'L''europÃ©en', '21 Bis Boulevard Diderot', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0;àºbFlH@c|˜½lû@'),
(123, '2013-08-22', 'NoMa', '39 rue Notre Dame de Nazareth', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0[¶Ö	oH@Ól‡ÁÜ@'),
(124, '2013-08-22', 'O''Paris', '1 Rue des Envierges', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¶-ÊloH@"3¸<@'),
(125, '2013-08-22', 'CafÃ© Clochette', '16 avenue Richerand', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0…{eŞªoH@ñGT¨î@'),
(126, '2013-08-22', 'La cantoche de Paname', '40 Boulevard Beaumarchais', '75011', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0p#e‹¤mH@K?áìÖò@'),
(127, '2013-08-22', 'Le Saint RenÃ©', '148 Boulevard de Charonne', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ñ“2©¡mH@]S ³³(@'),
(128, '2012-10-22', 'La LibertÃ©', '196 rue du faubourg saint-antoine', '75012', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0f,šÎlH@Ôa…[>@'),
(129, '2012-10-22', 'Chez Rutabaga', '16 rue des Petits Champs', '75002', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0Øî<ñnH@¦'',ñ€²@'),
(130, '2012-10-22', 'Le BB (Bouchon des Batignolles)', '2 rue Lemercier', '75017', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0”ú²´SqH@Ñ‘\\şCš@'),
(131, '2012-10-22', 'La Brocante', '10 rue Rossini', '75009', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0¨WÊ2ÄoH@ÌAĞÑª¶@'),
(132, '2012-10-22', 'Le Plomb du cantal', '3 rue GaÃ®tÃ©', '75014', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0m6VbkH@y!Â˜@'),
(133, '2012-10-22', 'Les caves populaires', '22 rue des Dames', '75017', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0Ú–?qH@È±õá˜@'),
(134, '2012-10-09', 'Chez Luna', '108 rue de MÃ©nilmontant', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0 \nfLoH@h–¨©%@'),
(135, '2012-03-07', 'Le bar Fleuri', '1 rue du Plateau', '75019', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¸! _pH@0/À>:@'),
(136, '2012-03-07', 'Le Chaumontois', '12 rue Armand Carrel', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0©j‚¨ûpH@^ô¤@'),
(137, '2012-03-07', 'Trois piÃ¨ces cuisine', '101 rue des dames', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0u®(%qH@%zÅr‹@'),
(138, '2012-03-07', 'Le Zinc', '61 avenue de la Motte Picquet', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0j†TQ¼lH@ù÷d@'),
(139, '2012-03-07', 'La cantine de ZoÃ©', '136 rue du Faubourg poissonniÃ¨re', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0îÌÃ¹pH@\08öì¹Ì@'),
(140, '2012-03-07', 'Les Vendangeurs', '6/8 rue Stanislas', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0İzM\nlH@''‡O:‘ @'),
(141, '2012-03-07', 'L''avant comptoir', '3 carrefour de l''OdÃ©on', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¶ºœmH@›’¬ÃÑµ@'),
(142, '2012-03-07', 'Botak cafe', '1 rue Paul albert', '75018', 1.00, 1.00, 1.00, '\0\0\0\0\0\0\0øâ‹öxqH@Q1Îß„Â@'),
(143, '2012-03-07', 'le chateau d''eau', '67 rue du ChÃ¢teau d''eau', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0÷?ÀZµoH@ÓÜ\na5Ö@'),
(144, '2012-06-27', 'Bistrot Saint-Antoine', '58 rue du Fbg Saint-Antoine', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0wgí¶mH@«Yg|_ü@'),
(145, '2012-06-27', 'Chez Oscar', '11/13 boulevard Beaumarchais', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ş°mQfmH@\\ğO©ò@'),
(146, '2012-06-27', 'Le Fronton', '63 rue de Ponthieu', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0òÍ67¦oH@~TÃ~o@'),
(147, '2012-06-27', 'Le Piquet', '48 avenue de la Motte Picquet', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0°rh‘ílH@Ë€³”,g@'),
(148, '2012-06-27', 'Le Tournebride', '104 rue Mouffetard', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0>êÍ¨kH@$œ¼èË@'),
(149, '2012-06-27', 'maison du vin', '52 rue des plantes', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0>ùjH@Ÿ"‡ˆ›“@'),
(150, '2014-02-01', 'Coffee Chope', '344Vrue Vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\00ôˆÑskH@ê!\ZİAl@'),
(151, '2014-02-01', 'L''entrepÃ´t', '157 rue Bercy 75012 Paris', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0†:¬pËkH@æ®ò@'),
(152, '2013-08-22', 'Le cafÃ© Monde et MÃ©dias', 'Place de la RÃ©publique', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ÆOãŞünH@æ;ø‰è@'),
(153, '2013-08-22', 'CafÃ© rallye tournelles', '11 Quai de la Tournelle', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0:=ïÆlH@SxĞìº×@'),
(154, '2013-08-22', 'Brasserie le Morvan', '61 rue du chÃ¢teau d''eau', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0§é³®oH@Ü\r‹Q×@'),
(155, '2013-08-22', 'Chez Miamophile', '6 rue MÃ©lingue', '75019', 1.00, 1.00, 1.00, '\0\0\0\0\0\0\0…zúüoH@¶Mñ¸¨@'),
(156, '2012-05-11', 'La Caravane', 'Rue de la Fontaine au Roi', '75011', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0ê°Â-oH@½nëû@'),
(157, '2012-05-11', 'Panem', '18 rue de Crussol', '75011', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0+ùØ] nH@m­/Úò@'),
(158, '2012-05-11', 'Petits Freres des Pauvres', '47 rue de Batignolles', '75017', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0­§V_]qH@zÄè¹…@'),
(159, '2012-05-11', 'CafÃ© Dupont', '198 rue de la Convention', '75015', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0ÍèGÃ)kH@—ä€]M^@'),
(160, '2012-10-22', 'L''Angle', '28 rue de Ponthieu', '75008', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0`Xş|oH@œ§:äfx@'),
(161, '2012-10-22', 'Institut des Cultures d''Islam', '19-23 rue LÃ©on', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0CŒ×¼ªqH@Ì¸©æÓ@'),
(162, '2012-10-22', 'Canopy CafÃ© associatif', '19 rue Pajol', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0”hÉãiqH@9% &áâ@'),
(163, '2012-10-09', 'L''Entracte', 'place de l''opera', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0%‘}eoH@ö¶™\nñ¨@'),
(164, '2012-10-09', 'Le SÃ©vignÃ©', '15 rue du Parc Royal', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0óã/-êmH@İÏ)ÈÏæ@'),
(165, '2012-10-09', 'Le CafÃ© d''avant', '35 rue Claude Bernard', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0,ğİzkH@Ñ=ë\Z-Ç@'),
(166, '2012-10-09', 'Le Lucernaire', '53 rue Notre-Dame des Champs', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ìø/lH@®ôÚl¬¤@'),
(167, '2012-10-09', 'Le Brigadier', '12 rue Blanche', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0K\0ş)UpH@…"İÏ)¨@'),
(168, '2012-03-07', 'L''Ã¢ge d''or', '26 rue du Docteur Magnan', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Œ+.ÊiH@—á?İ@á@'),
(169, '2012-03-07', 'CafÃ© Victor', '10 boulevard Victor', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0–ËFçüjH@ó9w»^:@'),
(170, '2012-03-07', 'L''empreinte', '54, avenue Daumesnil', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¤Œ¸\04lH@]1#¼=@'),
(171, '2012-03-07', 'L''horizon', '93, rue de la Roquette', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ó;Mf¼mH@ãüM@'),
(172, '2012-06-27', 'Au pays de Vannes', '34 bis rue de Wattignies', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0¹àşjH@73úÑp*@'),
(173, '2012-06-27', 'CafÃ© Martin', '2 place Martin Nadaud', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.Tşµ¼nH@bøˆ˜)@'),
(174, '2012-06-27', 'CafÃ© Varenne', '36 rue de Varenne', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0(DÀ!TmH@''Ø›–@'),
(175, '2012-06-27', 'l''ElÃ©phant du nil', '125 Rue Saint-Antoine', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0GègêumH@¹q‹ù¹á@'),
(176, '2012-06-27', 'Le Comptoir', '354 bis rue Vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\04¢´7øjH@ĞïûW@'),
(177, '2012-06-27', 'Le Parc Vaugirard', '358 rue de Vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0‹4ñğjH@,·´\ZW@'),
(178, '2012-06-27', 'Le Reynou', '2 bis quai de la mÃ©gisserie', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0Ñ/¤ÃmH@‡¾»•Å@'),
(179, '2012-06-27', 'le Zango', '58 rue Daguerre', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0±‰Ì\\àjH@,”Øµ@'),
(180, '2012-06-27', 'Melting Pot', '3 rue de Lagny', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ñGT¨lH@”†\Z…$3@'),
(181, '2012-06-27', 'Pari''s CafÃ©', '174 avenue de Clichy', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0û‘9rH@éºğƒó‰@');

--
-- Index pour les tables exportÃ©es
--

--
-- Index pour la table `cafe`
--
ALTER TABLE `cafe`
	ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportÃ©es
--

--
-- AUTO_INCREMENT pour la table `cafe`
--
ALTER TABLE `cafe`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
