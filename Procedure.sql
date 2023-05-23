DELIMITER //

CREATE PROCEDURE ArchiverComptesInactifs()
BEGIN
    -- Définir la date limite pour l'inactivité (2 ans)
    SET @dateLimite = DATE_SUB(CURRENT_DATE(), INTERVAL 2 YEAR);

    -- Archiver les comptes clients inactifs
    UPDATE Clients SET Statut = 'Archivé' WHERE Statut = 'Actif' AND DateDerniereConnexion < @dateLimite;

    -- Afficher le nombre de comptes archivés
    SELECT ROW_COUNT() AS ComptesArchives;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE ArchiverCommandesAnnulees()
BEGIN
    -- Définir la date limite pour l'archivage des commandes annulées (3 ans)
    SET @dateLimiteCommandes = DATE_SUB(CURRENT_DATE(), INTERVAL 3 YEAR);

    -- Archiver les commandes annulées
    UPDATE Commandes SET Statut = 'Archivée' WHERE Statut = 'Annulée' AND DateCommande < @dateLimiteCommandes;

    -- Afficher le nombre de commandes archivées
    SELECT ROW_COUNT() AS CommandesArchivées;
END //

DELIMITER ;
