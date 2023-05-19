CREATE VIEW CA_Restaurants_Ville AS
SELECT Adresse, SUM(Prix) AS CA
FROM Restaurants JOIN Commandes ON Restaurants.ID_Restaurant = Commandes.ID_Restaurant
GROUP BY Adresse;

CREATE VIEW Top_Livreurs_Ville AS
SELECT c.Zone_Geographique, c.Nom_Prenom, COUNT(*) AS NombreLivraisons
FROM Coursiers c JOIN Commandes cm ON c.ID_Coursier = cm.ID_Coursier
GROUP BY c.Zone_Geographique, c.Nom_Prenom
ORDER BY NombreLivraisons DESC
LIMIT 10;

CREATE VIEW Clients_Plus_Fideles AS
SELECT r.Nom_Enseigne, c.Nom_Prenom, COUNT(*) AS NombreCommandes
FROM Commandes cm
JOIN Restaurants r ON cm.ID_Restaurant = r.ID_Restaurant
JOIN Clients c ON cm.ID_Client = c.ID_Client
GROUP BY r.Nom_Enseigne, c.Nom_Prenom
ORDER BY NombreCommandes DESC;