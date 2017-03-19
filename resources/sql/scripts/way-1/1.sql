--
-- 'hotspot_wifi' table structure
--
CREATE TABLE IF NOT EXISTS `hotspot_wifi_tmp` (
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
-- 'cafe_tmp' table structure
--
CREATE TABLE `cafe_tmp` (
  `date` date NOT NULL,
  `nom_du_cafe` text COLLATE latin1_general_ci NOT NULL,
  `adresse` text COLLATE latin1_general_ci NOT NULL,
  `arrondissement` text COLLATE latin1_general_ci NOT NULL,
  `prix_comptoir` decimal(4,2) NOT NULL,
  `prix_salle` decimal(4,2) NOT NULL,
  `prix_terasse` decimal(4,2) NOT NULL,
  `lat` decimal(9,7) NOT NULL,
  `lon` decimal(9,7)NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

CREATE TABLE `cafe` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `cafe_name` text COLLATE latin1_general_ci NOT NULL,
  `address` text COLLATE latin1_general_ci NOT NULL,
  `district` text COLLATE latin1_general_ci NOT NULL,
  `counter_price` decimal(4,2) NOT NULL,
  `indoor_price` decimal(4,2) NOT NULL,
  `outdoor_price` decimal(4,2) NOT NULL,
  `lat` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `lon` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotspot_wifi`
--

CREATE TABLE `hotspot_wifi` (
  `id` int(11) NOT NULL,
  `site_name` text COLLATE latin1_general_ci NOT NULL,
  `address` text COLLATE latin1_general_ci NOT NULL,
  `site_code` text COLLATE latin1_general_ci NOT NULL,
  `district` text COLLATE latin1_general_ci NOT NULL,
  `lat` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `lon` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hotspot_wifi`
--
ALTER TABLE `hotspot_wifi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cafe`
--
ALTER TABLE `cafe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;


