DELIMITER //

CREATE PROCEDURE ArchiverComptesInactifs()
BEGIN
    SET @dateLimite = DATE_SUB(CURRENT_DATE(), INTERVAL 2 YEAR);

    UPDATE Clients SET Statut = 'Archivé' WHERE Statut = 'Actif' AND DateDerniereConnexion < @dateLimite;

    SELECT ROW_COUNT() AS ComptesArchives;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE ArchiverCommandesAnnulees()
BEGIN
    SET @dateLimiteCommandes = DATE_SUB(CURRENT_DATE(), INTERVAL 3 YEAR);

    UPDATE Commandes SET Statut = 'Archivée' WHERE Statut = 'Annulée' AND DateCommande < @dateLimiteCommandes;

    SELECT ROW_COUNT() AS CommandesArchivées;
END //

DELIMITER ;
