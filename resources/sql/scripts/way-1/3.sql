--
-- transform hotspot_wifi_tmp data to match with hotspot_wifi
--
INSERT INTO hotspot_wifi (id,site_name,address,site_code,district,lat,lon)
	SELECT objectid,nom_site,adresse,code_site,arrondissement,lat,lon) FROM hotspot_wifi_tmp;

--
-- transform cafe_tmp data to match with cafe
--
IINSERT INTO cafe (date,cafe_name,address,district,counter_price,indoor_price,outdoor_price,lat,lon)
	SELECT date,nom_du_cafe,adresse,arrondissement,prix_comptoir,prix_salle,prix_terasse,lat,lon FROM cafe_tmp;

--
-- Remove tmp tables
--
DROP TABLE hotspot_wifi_tmp;
DROP TABLE cafe_tmp;