CREATE VIEW CA_Restaurant_Ville AS
SELECT A.Ville, R.Nom_Enseigne, SUM(C.Prix) AS CA
FROM Over_Eats.Restaurant R
JOIN Over_Eats.Commandes C ON R.ID_Restaurant = C.Restaurant_ID_Restaurant
JOIN Over_Eats.Adresse A ON R.ID_Restaurant = A.ID_Adresse
GROUP BY A.Ville, R.Nom_Enseigne;

CREATE VIEW Top10_Livreurs_Par_Ville AS
SELECT AD.Ville, CO.Nom AS Nom_Livreur, COUNT(*) AS Nombre_Livraisons
FROM Over_Eats.Coursiers CO
JOIN Over_Eats.Commandes CM ON CO.ID_Coursier = CM.Coursiers_ID_Coursier
JOIN Over_Eats.Adresse A ON CM.Adresse_ID_Adresse = A.ID_Adresse
JOIN Over_Eats.Clients CL ON CM.Clients_ID_Client = CL.ID_Client
JOIN Over_Eats.Adresse AD ON CL.Adresse_ID_Adresse = AD.ID_Adresse
GROUP BY AD.Ville, CO.Nom
HAVING COUNT(*) > 0
ORDER BY AD.Ville, Nombre_Livraisons DESC
LIMIT 10;

CREATE VIEW TopClients_Enseigne AS
SELECT R.Nom_Enseigne, C.Nom, C.Prenom, COUNT(*) AS Nombre_Commandes
FROM Over_Eats.Restaurant R
JOIN Over_Eats.Commandes CM ON R.ID_Restaurant = CM.Restaurant_ID_Restaurant
JOIN Over_Eats.Clients C ON CM.Clients_ID_Client = C.ID_Client
GROUP BY R.Nom_Enseigne, C.Nom, C.Prenom
HAVING R.Nom_Enseigne = 'nom_enseigne' -- Remplacez 'nom_enseigne' par le nom de l'enseigne souhaitée
ORDER BY Nombre_Commandes DESC;
