DELIMITER //
CREATE TRIGGER ChoixCoursier AFTER INSERT ON Commandes
FOR EACH ROW
BEGIN
    IF NEW.Statut = 'Acceptée' AND NEW.Coursier_ID_Coursier IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Veuillez choisir un coursier après l''acceptation du restaurant.';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER AnnulationCommande BEFORE UPDATE ON Commandes
FOR EACH ROW
BEGIN
    IF NEW.Statut = 'Annulée' AND OLD.StatutCoursier = 'Prise en charge' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'La commande ne peut pas être annulée car le coursier l''a prise en charge.';
    END IF;
END //
DELIMITER ;
