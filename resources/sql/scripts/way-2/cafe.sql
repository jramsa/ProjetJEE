-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Jeu 02 Mars 2017 à 19:31
-- Version du serveur :  5.5.54-0+deb8u1-log
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `jbidet_db`
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
(1, '2014-02-01', 'Extérieur Quai', '5, rue d''Alsace', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��8pH@�"��]�@'),
(2, '2014-02-01', 'Le Sully', '6 Bd henri IV', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0g�|�|lH@�։���@'),
(3, '2013-08-22', 'O q de poule', '53 rue du ruisseau', '75018', 1.00, 0.00, 1.00, '\0\0\0\0\0\0\0ĵ��^rH@�7�\0�@'),
(4, '2013-08-22', 'Le Pas Sage', '1 Passage du Grand Cerf', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0T���nH@ǃ-v��@'),
(5, '2013-08-22', 'Le Dunois', '77 rue Dunois', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�K���jH@Q�H�@'),
(6, '2013-08-22', 'La Renaissance', '112 Rue Championnet', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\08��d�rH@Sx�캷@'),
(7, '2012-10-22', 'Le chantereine', '51 Rue Victoire', '75009', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0''�;pH@��-�@'),
(8, '2012-10-22', 'Le Müller', '11 rue Feutrier', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0]�zqH@��1��@'),
(9, '2012-10-22', 'Le drapeau de la fidelité', '21 rue Copreaux', '75015', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0��L�kH@t]���t@'),
(10, '2012-10-22', 'Le café des amis', '125 rue Blomet', '75015', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�ٲ|kH@��`@'),
(11, '2012-10-09', 'Le Café Livres', '10 rue Saint Martin', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�n��mH@Թ���@'),
(12, '2012-10-09', 'Le Bosquet', '46 avenue Bosquet', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�#���mH@�je�o@'),
(13, '2012-03-07', 'Le Brio', '216, rue Marcadet', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0h=|�(rH@6=((E�@'),
(14, '2012-03-07', 'Le Kleemend''s', '34 avenue Pierre Mendès-France', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.��TkH@�o+��@'),
(15, '2012-03-07', 'Café Pierre', '202 rue du faubourg st antoine', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���>�lH@�3�/.@'),
(16, '2012-03-07', 'Les Arcades', '61 rue de Ponthieu', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���P�oH@�,��o@'),
(17, '2012-03-07', 'Le Square', '31 rue Saint-Dominique', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�Q��mH@�X�O�@'),
(18, '2012-06-27', 'Assaporare Dix sur Dix', '75, avenue Ledru-Rollin', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�K���lH@��p>�@'),
(19, '2012-06-27', 'Au cerceau d''or', '129 boulevard sebastopol', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0z�,CoH@`"ĕ�@'),
(20, '2012-06-27', 'Café antoine', '17 rue Jean de la Fontaine', '75016', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0{��BmH@eq���0@'),
(21, '2012-06-27', 'Café Lea', '5 rue Claude Bernard', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0V,~SXkH@�Ƃ �@'),
(22, '2012-06-27', 'Cardinal Saint-Germain', '11 boulevard Saint-Germain', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0b�\r��lH@m����@'),
(23, '2012-06-27', 'Dédé la frite', '52 rue Notre-Dame des Victoires', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.��ToH@C�*q�@'),
(24, '2012-06-27', 'La Bauloise', '36 rue du hameau', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0\Z�.�jH@\\Z\r�{L@'),
(25, '2012-06-27', 'Le Bellerive', '71 quai de Seine', '75019', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�9d�qH@|�y�@'),
(26, '2012-06-27', 'Le bistrot de Maëlle et Augustin', '42 rue coquillère', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0,~SX�nH@�E��\\�@'),
(27, '2012-06-27', 'Le Dellac', '14 rue Rougemont', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0+�3�oH@�4���@'),
(28, '2012-06-27', 'Le Felteu', '1 rue Pecquay', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0����nH@/��C�@'),
(29, '2012-06-27', 'Le Saint Jean', '23 rue des abbesses', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�D�<qH@f�%⭳@'),
(30, '2012-06-27', 'les montparnos', '65 boulevard Pasteur', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�Z�kH@��Jvl�@'),
(31, '2014-02-01', 'Drole d''endroit pour une rencontre', '58 rue de Montorgueil', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�5�nH@��n��@'),
(32, '2014-02-01', 'Le pari''s café', '104 rue caulaincourt', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0GUD�qH@�s��Ʒ@'),
(33, '2014-02-01', 'Le Poulailler', '60 rue saint-sabin', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0d@�z�mH@㊋�r�@'),
(34, '2014-02-01', 'L''Assassin', '99 rue Jean-Pierre Timbaud', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�س�2oH@Z��/-\n@'),
(35, '2014-02-01', 'l''Usine', '1 rue d''Avron', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�`U��lH@!�1�0@'),
(36, '2014-02-01', 'La Bricole', '52 rue Liebniz', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�K�rH@\0;7mƩ@'),
(37, '2014-02-01', 'le ronsard', 'place maubert', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�6���lH@C�i�q�@'),
(38, '2014-02-01', 'Face Bar', '82 rue des archives', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0F�xxnH@��+e�@'),
(39, '2013-08-22', 'American Kitchen', '49 rue bichat', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�$�oH@� ��^�@'),
(40, '2013-08-22', 'La Marine', '55 bis quai de valmy', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0D�X�ooH@D��]�@'),
(41, '2013-08-22', 'Le Bloc', '21 avenue Brochant', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0����qH@+øD�@'),
(42, '2013-08-22', 'La Recoleta au Manoir', '229 avenue Gambetta', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0dt@�oH@��]M>@'),
(43, '2013-08-22', 'Le Pareloup', '80 Rue Saint-Charles', '75015', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0;��ulH@8�0C�I@'),
(44, '2013-08-22', 'La Brasserie Gaité', '3 rue de la Gaité', '75014', 0.00, 0.00, 1.00, '\0\0\0\0\0\0\0m6Vb�kH@y!@'),
(45, '2012-05-11', 'Café Zen', '46 rue Victoire', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�4(�pH@�:r�3�@'),
(46, '2012-10-22', 'O''Breizh', '27 rue de Penthièvre', '75008', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0W|C�oH@��il��@'),
(47, '2012-10-22', 'Le Petit Choiseul', '23 rue saint augustin', '75002', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0��e6oH@\0�~�:�@'),
(48, '2012-10-22', 'Invitez vous chez nous', '7 rue Epée de Bois', '75005', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�]��kH@F$a��@'),
(49, '2012-10-22', 'La Cordonnerie', '142 Rue Saint-Denis 75002 Paris', '75002', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�n��nH@''0���@'),
(50, '2012-10-22', 'Le Supercoin', '3, rue Baudelique', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�(\r5rH@�¼Ǚ�@'),
(51, '2012-10-22', 'Populettes', '86 bis rue Riquet', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0Q����qH@�)���@'),
(52, '2012-10-18', 'Au bon coin', '49 rue des Cloys', '75018', 1.00, 1.00, 1.00, '\0\0\0\0\0\0\0��aNrH@T�J�ó@'),
(53, '2012-10-18', 'Le Couvent', '69 rue Broca', '75013', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0U3k) kH@>�D���@'),
(54, '2012-10-18', 'La Brûlerie des Ternes', '111 rue mouffetard', '75005', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�6��kH@��R�@'),
(55, '2012-10-09', 'L''Écir', '59 Boulevard Saint-Jacques', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0F%u�jH@wLݕ]�@'),
(56, '2012-10-09', 'Le Chat bossu', '126, rue du Faubourg Saint Antoine', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0DkE��lH@�\0�}�@'),
(57, '2012-10-09', 'Denfert café', '58 boulvevard Saint Jacques', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0_]��jH@A�ȓ��@'),
(58, '2012-10-09', 'Le Café frappé', '95 rue Montmartre', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0vP��oH@E�k맿@'),
(59, '2012-10-09', 'Le Descartes', '1 rue Thouin', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�J�*lH@��,��@'),
(60, '2012-03-07', 'Bagels & Coffee Corner', 'Place de Clichy', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���`qH@{m�ԝ@'),
(61, '2012-03-07', 'Le Plein soleil', '90 avenue Parmentier', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�u�|�nH@G�q���@'),
(62, '2012-03-07', 'Le Relais Haussmann', '146, boulevard Haussmann', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�!�\npH@4��X�@'),
(63, '2012-03-07', 'Le Malar', '88 rue Saint-Dominique', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���nH@3d��s@'),
(64, '2012-03-07', 'Au panini de la place', '47 rue Belgrand', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0[�[!�nH@�3Lm�C@'),
(65, '2012-03-07', 'Le Village', '182 rue de Courcelles', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�|a2qH@k''JBb@'),
(66, '2012-03-07', 'Pause Café', '41 rue de Charonne', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���;mH@�qo~@'),
(67, '2012-03-07', 'Le Pure café', '14 rue Jean Macé', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0a�d7mH@�].�;@'),
(68, '2012-03-07', 'Extra old café', '307 fg saint Antoine', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���ާlH@��gB�$@'),
(69, '2012-03-07', 'Chez Fafa', '44 rue Vinaigriers', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�}���oH@\\�nK��@'),
(70, '2012-06-27', 'En attendant l''or', '3 rue Faidherbe', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\06!�1�lH@hB�Ē@'),
(71, '2012-06-27', 'Aux cadrans', '21 ter boulevard Diderot', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�!S>lH@P��0{�@'),
(72, '2012-06-27', 'Brûlerie San José', '30 rue des Petits-Champs', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\03nj��nH@��#�@'),
(73, '2012-06-27', 'Etienne', '14 rue Turbigo, Paris', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���nH@����#�@'),
(74, '2012-06-27', 'L''ingénu', '184 bd Voltaire', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��-cmH@^/M�@'),
(75, '2012-06-27', 'L''Olive', '8 rue L''Olive', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�S:X�qH@׉��\n�@'),
(76, '2012-06-27', 'Le Biz', '18 rue Favart', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��t�oH@of���@'),
(77, '2012-06-27', 'Le Cap Bourbon', '1 rue Louis le Grand', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.\Z2oH@Hm��~�@'),
(78, '2012-06-27', 'Le General Beuret', '9 Place du General Beuret', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�׻kH@3�\r�l@'),
(79, '2012-10-09', 'La Perle', '78 rue vieille du temple', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0G\rnH@F}�;l�@'),
(80, '2012-03-07', 'Le petit club', '55 rue de la tombe Issoire', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��QcBjH@4/��w�@'),
(81, '2012-06-27', 'Le Germinal', '95 avenue Emile Zola', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��fdlH@�\ZI�P@'),
(82, '2012-06-27', 'Le Ragueneau', '202 rue Saint-Honoré', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�]�zknH@�4Lk�@'),
(83, '2012-06-27', 'Le refuge', '72 rue lamarck', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0� ��qH@H4�"�@'),
(84, '2012-06-27', 'Le sully', '13 rue du Faubourg Saint Denis', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��5�eoH@s�ѓ�@'),
(85, '2012-10-09', 'Le relais de la victoire', '73 rue de la Victoire', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0zq�pH@2;�ީ@'),
(86, '2012-03-07', 'La chaumière gourmande', 'Route de la Muette à Neuilly\nClub hippique du Jardin d’Acclimatation', '75016', 0.00, 1.00, 0.00, ''),
(87, '2012-03-07', 'Caves populaires', '22 rue des Dames', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��?qH@ȱ��@'),
(88, '2012-03-07', 'Caprice café', '12 avenue Jean Moulin', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��#)�iH@�o�@'),
(89, '2012-03-07', 'Tamm Bara', '7 rue Clisson', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0g_y��jH@�2��A�@'),
(90, '2012-03-07', 'L''anjou', '1 rue de Montholon', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��լ3pH@��{G��@'),
(91, '2012-03-07', 'Café dans l''aerogare Air France Invalides', '2 rue Robert Esnault Pelterie', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�GߤinH@nk�K�@'),
(92, '2012-03-07', 'Waikiki', '10 rue d"Ulm', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��-$lH@���g�@'),
(93, '2012-03-07', 'Chez Prune', '36 rue Beaurepaire', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0?�g͏oH@�e�s~�@'),
(94, '2012-06-27', 'Au Vin Des Rues', '21 rue Boulard', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0,��jH@t	���@'),
(95, '2012-06-27', 'bistrot les timbrés', '14 rue d''alleray', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�H�HkH@KVE��h@'),
(96, '2012-06-27', 'Café beauveau', '9 rue de Miromesnil', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���oH@e6�$#�@'),
(97, '2012-06-27', 'Café de la Mairie (du VIII)', 'rue de Lisbonne', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�i�WVpH@''�O:��@'),
(98, '2012-06-27', 'Café Pistache', '9 rue des petits champs', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�n-��nH@�	�ʼ�@'),
(99, '2012-06-27', 'La Cagnotte', '13 Rue Jean-Baptiste Dumay', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���oH@�Tka\Z@'),
(100, '2012-06-27', 'le 1 cinq', '172 rue de vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�y��kH@���|@'),
(101, '2012-06-27', 'Le Killy Jen', '28 bis boulevard Diderot', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0\0�d�FlH@�9�@'),
(102, '2012-06-27', 'Les Artisans', '106 rue Lecourbe', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0''l?�kH@�=@��l@'),
(103, '2012-06-27', 'Peperoni', '83 avenue de Wagram', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��ꫫpH@$�\\e@'),
(104, '2014-02-01', 'L''antre d''eux', '16 rue DE MEZIERES', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���''�lH@�;��@'),
(105, '2014-02-01', 'Le bal du pirate', '60 rue des bergers', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�����kH@�0E�4>@'),
(106, '2014-02-01', 'zic zinc', '95 rue claude decaen', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�W�\\kH@^.�;1+@'),
(107, '2014-02-01', 'l''orillon bar', '35 rue de l''orillon', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�8�@doH@OZ��@'),
(108, '2013-08-22', 'Le Zazabar', '116 Rue de Ménilmontant', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�>�-WoH@p^��j''@'),
(109, '2013-08-22', 'L''Inévitable', '22 rue Linné', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��7lH@OI��@'),
(110, '2012-05-11', 'Ragueneau', '202 rue Saint Honoré', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�]�zknH@�4Lk�@'),
(111, '2012-10-22', 'Le Caminito', '48 rue du Dessous des Berges', '75013', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0UN{J�iH@y=��@'),
(112, '2012-10-22', 'Epicerie Musicale', '55bis quai de Valmy', '75010', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0D�X�ooH@D��]�@'),
(113, '2012-10-22', 'Le petit Bretonneau', 'Le petit Bretonneau - à l''intérieur de l''Hôpital', '75018', 1.00, 1.00, 0.00, ''),
(114, '2012-10-22', 'Le Centenaire', '104 rue amelot', '75011', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0q���hnH@�V%�}�@'),
(115, '2012-10-22', 'La Montagne Sans Geneviève', '13 Rue du Pot de Fer', '75005', 0.00, 1.00, 0.00, '\0\0\0\0\0\0\0�~���kH@[��X�@'),
(116, '2012-10-18', 'Les Pères Populaires', '46 rue de Buzenval', '75020', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\04��7�lH@-σ��6@'),
(117, '2012-10-09', 'Cafe de grenelle', '188 rue de Grenelle', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��¼�mH@܁:�q@'),
(118, '2014-02-01', 'le lutece', '380 rue de vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�e3��jH@m�?3�O@'),
(119, '2014-02-01', 'Brasiloja', '16 rue Ganneron', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��-�vqH@�v��@'),
(120, '2014-02-01', 'Rivolux', '16 rue de Rivoli', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��#��mH@��A�<�@'),
(121, '2014-02-01', 'Chai 33', '33 Cour Saint Emilion', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�Uס�jH@��rg&@'),
(122, '2013-08-22', 'L''européen', '21 Bis Boulevard Diderot', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0;�bFlH@c|��l�@'),
(123, '2013-08-22', 'NoMa', '39 rue Notre Dame de Nazareth', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0[��	oH@�l���@'),
(124, '2013-08-22', 'O''Paris', '1 Rue des Envierges', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�-�l�oH@"3�<@'),
(125, '2013-08-22', 'Café Clochette', '16 avenue Richerand', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�{eުoH@�GT��@'),
(126, '2013-08-22', 'La cantoche de Paname', '40 Boulevard Beaumarchais', '75011', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0p#e��mH@K?����@'),
(127, '2013-08-22', 'Le Saint René', '148 Boulevard de Charonne', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ѓ2��mH@]S ��(@'),
(128, '2012-10-22', 'La Liberté', '196 rue du faubourg saint-antoine', '75012', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�f,��lH@�a�[>@'),
(129, '2012-10-22', 'Chez Rutabaga', '16 rue des Petits Champs', '75002', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0؝�<�nH@�'',�@'),
(130, '2012-10-22', 'Le BB (Bouchon des Batignolles)', '2 rue Lemercier', '75017', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0����SqH@ё\\�C�@'),
(131, '2012-10-22', 'La Brocante', '10 rue Rossini', '75009', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�W�2�oH@�A�Ѫ�@'),
(132, '2012-10-22', 'Le Plomb du cantal', '3 rue Gaîté', '75014', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0m6Vb�kH@y!@'),
(133, '2012-10-22', 'Les caves populaires', '22 rue des Dames', '75017', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0��?qH@ȱ��@'),
(134, '2012-10-09', 'Chez Luna', '108 rue de Ménilmontant', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0 \nfLoH@h���%@'),
(135, '2012-03-07', 'Le bar Fleuri', '1 rue du Plateau', '75019', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�! _pH@0/�>:@'),
(136, '2012-03-07', 'Le Chaumontois', '12 rue Armand Carrel', '75018', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�j���pH@^��@'),
(137, '2012-03-07', 'Trois pièces cuisine', '101 rue des dames', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0u�(%qH@%z�r�@'),
(138, '2012-03-07', 'Le Zinc', '61 avenue de la Motte Picquet', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0j�TQ�lH@��d@'),
(139, '2012-03-07', 'La cantine de Zoé', '136 rue du Faubourg poissonnière', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��ùpH@\08���@'),
(140, '2012-03-07', 'Les Vendangeurs', '6/8 rue Stanislas', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�zM\nlH@''�O:��@'),
(141, '2012-03-07', 'L''avant comptoir', '3 carrefour de l''Odéon', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���mH@����ѵ@'),
(142, '2012-03-07', 'Botak cafe', '1 rue Paul albert', '75018', 1.00, 1.00, 1.00, '\0\0\0\0\0\0\0���xqH@Q1�߄�@'),
(143, '2012-03-07', 'le chateau d''eau', '67 rue du Château d''eau', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�?�Z�oH@��\na5�@'),
(144, '2012-06-27', 'Bistrot Saint-Antoine', '58 rue du Fbg Saint-Antoine', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0wg�mH@�Yg|_�@'),
(145, '2012-06-27', 'Chez Oscar', '11/13 boulevard Beaumarchais', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0ްmQfmH@\\�O��@'),
(146, '2012-06-27', 'Le Fronton', '63 rue de Ponthieu', '75008', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��67�oH@~T�~o@'),
(147, '2012-06-27', 'Le Piquet', '48 avenue de la Motte Picquet', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�rh��lH@ˀ��,g@'),
(148, '2012-06-27', 'Le Tournebride', '104 rue Mouffetard', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0>�ͨkH@$����@'),
(149, '2012-06-27', 'maison du vin', '52 rue des plantes', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0>�jH@�"����@'),
(150, '2014-02-01', 'Coffee Chope', '344Vrue Vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\00��skH@�!\Z�Al@'),
(151, '2014-02-01', 'L''entrepôt', '157 rue Bercy 75012 Paris', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�:�p�kH@���@'),
(152, '2013-08-22', 'Le café Monde et Médias', 'Place de la République', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�O���nH@�;���@'),
(153, '2013-08-22', 'Café rallye tournelles', '11 Quai de la Tournelle', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0:=��lH@Sx���@'),
(154, '2013-08-22', 'Brasserie le Morvan', '61 rue du château d''eau', '75010', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���oH@�\r�Q�@'),
(155, '2013-08-22', 'Chez Miamophile', '6 rue Mélingue', '75019', 1.00, 1.00, 1.00, '\0\0\0\0\0\0\0�z��oH@�M�@'),
(156, '2012-05-11', 'La Caravane', 'Rue de la Fontaine au Roi', '75011', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0��-oH@�n��@'),
(157, '2012-05-11', 'Panem', '18 rue de Crussol', '75011', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0+��]�nH@m�/��@'),
(158, '2012-05-11', 'Petits Freres des Pauvres', '47 rue de Batignolles', '75017', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0��V_]qH@z�蹅�@'),
(159, '2012-05-11', 'Café Dupont', '198 rue de la Convention', '75015', 0.00, 0.00, 0.00, '\0\0\0\0\0\0\0��G�)kH@��]M^@'),
(160, '2012-10-22', 'L''Angle', '28 rue de Ponthieu', '75008', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0`X�|oH@��:�fx@'),
(161, '2012-10-22', 'Institut des Cultures d''Islam', '19-23 rue Léon', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0C�׼�qH@̸����@'),
(162, '2012-10-22', 'Canopy Café associatif', '19 rue Pajol', '75018', 1.00, 1.00, 0.00, '\0\0\0\0\0\0\0�h��iqH@9% &��@'),
(163, '2012-10-09', 'L''Entracte', 'place de l''opera', '75002', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0%�}�eoH@���\n�@'),
(164, '2012-10-09', 'Le Sévigné', '15 rue du Parc Royal', '75003', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��/-�mH@��)���@'),
(165, '2012-10-09', 'Le Café d''avant', '35 rue Claude Bernard', '75005', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0,��zkH@�=�\Z-�@'),
(166, '2012-10-09', 'Le Lucernaire', '53 rue Notre-Dame des Champs', '75006', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��/lH@���l��@'),
(167, '2012-10-09', 'Le Brigadier', '12 rue Blanche', '75009', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0K\0�)UpH@�"��)�@'),
(168, '2012-03-07', 'L''âge d''or', '26 rue du Docteur Magnan', '75013', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�+.��iH@��?�@�@'),
(169, '2012-03-07', 'Café Victor', '10 boulevard Victor', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��F��jH@�9w�^:@'),
(170, '2012-03-07', 'L''empreinte', '54, avenue Daumesnil', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���\04lH@]1#�=@'),
(171, '2012-03-07', 'L''horizon', '93, rue de la Roquette', '75011', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�;Mf�mH@��M@'),
(172, '2012-06-27', 'Au pays de Vannes', '34 bis rue de Wattignies', '75012', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���jH@73��p*@'),
(173, '2012-06-27', 'Café Martin', '2 place Martin Nadaud', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0.T���nH@b���)@'),
(174, '2012-06-27', 'Café Varenne', '36 rue de Varenne', '75007', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0(D�!TmH@''����@'),
(175, '2012-06-27', 'l''Eléphant du nil', '125 Rue Saint-Antoine', '75004', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0G�g�umH@�q����@'),
(176, '2012-06-27', 'Le Comptoir', '354 bis rue Vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\04��7�jH@���W@'),
(177, '2012-06-27', 'Le Parc Vaugirard', '358 rue de Vaugirard', '75015', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�4��jH@,��\ZW@'),
(178, '2012-06-27', 'Le Reynou', '2 bis quai de la mégisserie', '75001', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�/��mH@������@'),
(179, '2012-06-27', 'le Zango', '58 rue Daguerre', '75014', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0���\\�jH@,��ص�@'),
(180, '2012-06-27', 'Melting Pot', '3 rue de Lagny', '75020', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0�GT�lH@��\Z�$3@'),
(181, '2012-06-27', 'Pari''s Café', '174 avenue de Clichy', '75017', 1.00, 0.00, 0.00, '\0\0\0\0\0\0\0��9rH@����@');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cafe`
--
ALTER TABLE `cafe`
	ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cafe`
--
ALTER TABLE `cafe`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
