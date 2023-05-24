
-- Création de l'utilisateur pour le niveau SupportOpérationnel
CREATE USER 'support_oper'@'localhost' IDENTIFIED BY 'support';
GRANT SELECT ON Over_Eats.Commandes TO 'support_oper'@'localhost';
GRANT SELECT ON Over_Eats.Commandes TO 'support_oper'@'localhost';

-- Création de l'utilisateur pour le niveau Commercial
CREATE USER 'commercial'@'localhost' IDENTIFIED BY 'commercial';
GRANT SELECT ON Over_Eats.Restaurant TO 'commercial'@'localhost';
GRANT SELECT ON Over_Eats.ca_restaurant_ville TO 'commercial'@'localhost';

-- Création de l'utilisateur pour le niveau Recrutement
CREATE USER 'recrutement'@'localhost' IDENTIFIED BY 'recrutement';
GRANT SELECT ON Over_Eats.Coursiers TO 'recrutement'@'localhost';
GRANT SELECT ON Over_Eats.top10_livreurs_par_ville TO 'recrutement'@'localhost';

-- Création de l'utilisateur pour le niveau Admin
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON Over_Eats.* TO 'admin'@'localhost';
GRANT SELECT ON Over_Eats.topclients_enseigne TO 'admin'@'localhost';