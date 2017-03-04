--
-- 'hotspot_wifi' table structure
--
CREATE TABLE IF NOT EXISTS `hotspot_wifi` (
	`id` int(11) NOT NULL,
	`site_name` text COLLATE latin1_general_ci NOT NULL,
	`address` text COLLATE latin1_general_ci NOT NULL,
	`site_code` text COLLATE latin1_general_ci NOT NULL,
	`district` text COLLATE latin1_general_ci NOT NULL,
	`coord` point NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
ALTER TABLE `hotspot_wifi`
	ADD PRIMARY KEY (`id`);

--
-- 'hswt' table structure
--
CREATE TABLE IF NOT EXISTS `hotspot_wifi_tmp` (
	`objectid` int(11) NOT NULL,
	`nom_site` text COLLATE latin1_general_ci NOT NULL,
	`adresse` text COLLATE latin1_general_ci NOT NULL,
	`code_site` text COLLATE latin1_general_ci NOT NULL,
	`arrondissement` text COLLATE latin1_general_ci NOT NULL,
	`geo_shape` text COLLATE latin1_general_ci NOT NULL,
	`geo_point_2d` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
ALTER TABLE `hotspot_wifi_tmp`
	ADD PRIMARY KEY (`objectid`);

--
-- 'cafe' table sructure
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
ALTER TABLE `cafe`
	ADD PRIMARY KEY (`id`);
ALTER TABLE `cafe`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 'cafe_tmp' table structure
--
CREATE TABLE IF NOT EXISTS `cafe_tmp` (
	`date` date NOT NULL,
	`nom_du_cafe` text COLLATE latin1_general_ci NOT NULL,
	`adresse` text COLLATE latin1_general_ci NOT NULL,
	`arrondissement` text COLLATE latin1_general_ci NOT NULL,
	`prix_comptoir` decimal(4,2) NOT NULL,
	`prix_salle` decimal(4,2) NOT NULL,
	`prix_terasse` decimal(4,2) NOT NULL,
  	`geoloc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

