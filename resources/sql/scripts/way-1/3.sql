--
-- transform hotspot_wifi_tmp data to match with hotspot_wifi
--
INSERT INTO hotspot_wifi (id,site_name,address,site_code,district,coord)
	SELECT objectid,nom_site,adresse,code_site,arrondissement,PointFromText(CONCAT('POINT(',geo_point_2d,')')) FROM hotspot_wifi_tmp;

--
-- transform cafe_tmp data to match with cafe
--
INSERT INTO cafe (date,cafe_name,address,district,counter_price,indoor_price,outdoor_price,coord)
	SELECT date,nom_du_cafe,adresse,arrondissement,prix_comptoir,prix_salle,prix_terasse,PointFromText(CONCAT('POINT(',geoloc,')')) FROM cafe_tmp;

--
-- Remove tmp tables
--
DROP TABLE hotspot_wifi_tmp;
DROP TABLE cafe_tmp;

