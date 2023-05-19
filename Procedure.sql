DELIMITER //

CREATE PROCEDURE Archiver_Comptes_Inactifs()
BEGIN
  INSERT INTO Clients_Archive (ID_Client, Nom_Prenom, Adresse, Numero_Telephone, Email, Moyen_Paiements, Date_Derniere_Activite)
  SELECT ID_Client, Nom_Prenom, Adresse, Numero_Telephone, Email, Moyen_Paiements, Date_Derniere_Activite
  FROM Clients
  WHERE DATEDIFF(NOW(), Date_Derniere_Activite) > 730;
  
  UPDATE Clients
  SET Est_Supprime = 1
  WHERE DATEDIFF(NOW(), Date_Derniere_Activite) > 730;
  
END //

DELIMITER ;