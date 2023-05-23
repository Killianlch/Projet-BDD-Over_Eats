DROP DATABASE IF EXISTS Over_Eats;
CREATE DATABASE Over_Eats;
USE Over_Eats;

CREATE TABLE IF NOT EXISTS Over_Eats.Restaurant (
  ID_Restaurant INT NOT NULL AUTO_INCREMENT,
  Nom_Enseigne VARCHAR(255) NOT NULL,
  Notes FLOAT NULL,
  Email VARCHAR(255) NULL,
  Type_Restaurant VARCHAR(255) NULL,
  Numero_Telephone VARCHAR(20) NULL,
  Range_Prix VARCHAR(10) NULL,
  Paiements_Autorises VARCHAR(255) NULL,
  PRIMARY KEY (ID_Restaurant)
);

CREATE TABLE IF NOT EXISTS Over_Eats.Menu (
  ID_Menu INT NOT NULL AUTO_INCREMENT,
  Nom_Menu VARCHAR(255) NOT NULL,
  Prix DECIMAL(10,2) NOT NULL,
  Description LONGTEXT NULL,
  Restaurant_ID_Restaurant INT NOT NULL,
  PRIMARY KEY (ID_Menu),
  INDEX fk_Menu_Restaurant1_idx (Restaurant_ID_Restaurant ASC) ,
  CONSTRAINT fk_Menu_Restaurant1
    FOREIGN KEY (Restaurant_ID_Restaurant)
    REFERENCES Over_Eats.Restaurant (ID_Restaurant)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Element_Menu (
  ID_Element INT NOT NULL AUTO_INCREMENT,
  Nom_Element VARCHAR(255) BINARY NOT NULL,
  Composition LONGTEXT NOT NULL,
  Menu_ID_Menu INT NOT NULL,
  PRIMARY KEY (ID_Element),
  INDEX fk_Element_Menu_Menu1_idx (Menu_ID_Menu ASC) ,
  CONSTRAINT fk_Element_Menu_Menu1
    FOREIGN KEY (Menu_ID_Menu)
    REFERENCES Over_Eats.Menu (ID_Menu)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Allergenes (
  ID_Allergenes INT NOT NULL AUTO_INCREMENT COMMENT '\n',
  Nom_Allergenes VARCHAR(255) NULL,
  Element_Menu_ID_Element INT NOT NULL,
  PRIMARY KEY (ID_Allergenes),
  INDEX fk_Allergenes_Element_Menu1_idx (Element_Menu_ID_Element ASC) ,
  CONSTRAINT fk_Allergenes_Element_Menu1
    FOREIGN KEY (Element_Menu_ID_Element)
    REFERENCES Over_Eats.Element_Menu (ID_Element)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Promotion (
  ID_Promotion INT NOT NULL AUTO_INCREMENT,
  Nom_Promotion VARCHAR(255) NULL,
  Type_Promotion TINYINT NULL,
  Montant INT NULL,
  Menu_ID_Menu INT NOT NULL,
  PRIMARY KEY (ID_Promotion),
  INDEX fk_Promotion_Menu1_idx (Menu_ID_Menu ASC) ,
  CONSTRAINT fk_Promotion_Menu1
    FOREIGN KEY (Menu_ID_Menu)
    REFERENCES Over_Eats.Menu (ID_Menu)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Media (
  ID_Media INT NOT NULL AUTO_INCREMENT,
  Photo_De_Couverture VARCHAR(255) NULL,
  Restaurant_ID_Restaurant INT NOT NULL,
  PRIMARY KEY (ID_Media),
  INDEX fk_Media_Restaurant1_idx (Restaurant_ID_Restaurant ASC) ,
  CONSTRAINT fk_Media_Restaurant1
    FOREIGN KEY (Restaurant_ID_Restaurant)
    REFERENCES Over_Eats.Restaurant (ID_Restaurant)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Adresse (
  ID_Adresse INT NOT NULL AUTO_INCREMENT,
  Numero INT NULL,
  Rue VARCHAR(255) NULL,
  Ville VARCHAR(255) NULL,
  Code_Postal INT NULL,
  PRIMARY KEY (ID_Adresse)
);

CREATE TABLE IF NOT EXISTS Over_Eats.Clients (
  ID_Client INT NOT NULL AUTO_INCREMENT,
  Nom VARCHAR(255) NULL,
  Prenom VARCHAR(255) NULL,
  Numero_Telephone VARCHAR(20) NULL,
  Email VARCHAR(255) NULL,
  Moyen_Paiements VARCHAR(255) NULL,
  Date_Derniere_Activité TINYINT NULL,
  Est_Actif TINYINT NULL,
  Favoris VARCHAR(255) NULL,
  Adresse_ID_Adresse INT NOT NULL,
  PRIMARY KEY (ID_Client),
  INDEX fk_Clients_adresse1_idx (Adresse_ID_Adresse ASC) ,
  CONSTRAINT fk_Clients_adresse1
    FOREIGN KEY (Adresse_ID_Adresse)
    REFERENCES Over_Eats.Adresse (ID_Adresse)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Avis (
  ID_Avis INT NOT NULL AUTO_INCREMENT,
  Message VARCHAR(255) NULL,
  Date DATETIME NULL,
  Clients_ID_Client INT NOT NULL,
  PRIMARY KEY (ID_Avis),
  INDEX fk_Avis_Clients1_idx (Clients_ID_Client ASC) ,
  CONSTRAINT fk_Avis_Clients1
    FOREIGN KEY (Clients_ID_Client)
    REFERENCES Over_Eats.Clients (ID_Client)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Type_Vehicule (
  ID_Type INT NOT NULL AUTO_INCREMENT,
  Type VARCHAR(255) NULL,
  PRIMARY KEY (ID_Type)
);

CREATE TABLE IF NOT EXISTS Over_Eats.Coursiers (
  ID_Coursier INT NOT NULL AUTO_INCREMENT,
  Nom VARCHAR(255) NULL,
  Prenom VARCHAR(255) NULL,
  Avis VARCHAR(255) NULL,
  Notes FLOAT NULL,
  Numero_Telephone VARCHAR(20) NULL,
  Zone_Geographique VARCHAR(255) NULL,
  Est_Actif TINYINT NULL,
  Type_Vehicule_ID_Type INT NOT NULL,
  PRIMARY KEY (ID_Coursier),
  INDEX fk_Coursiers_Type_Vehicule1_idx (Type_Vehicule_ID_Type ASC) ,
  CONSTRAINT fk_Coursiers_Type_Vehicule1
    FOREIGN KEY (Type_Vehicule_ID_Type)
    REFERENCES Over_Eats.Type_Vehicule (ID_Type)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Facture (
  ID_Facture INT NOT NULL AUTO_INCREMENT,
  Date_Emission VARCHAR(45) NULL,
  PRIMARY KEY (ID_Facture)
);

CREATE TABLE IF NOT EXISTS Over_Eats.Statut_Commande (
  ID_Statut_Commande INT NOT NULL AUTO_INCREMENT,
  Statut_Commande VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_Statut_Commande)
);

CREATE TABLE IF NOT EXISTS Over_Eats.Commandes (
  ID_Commande INT NOT NULL AUTO_INCREMENT,
  Date_Commande DATETIME NULL,
  Prix DECIMAL(10,2) NULL,
  Restaurant_ID_Restaurant INT NOT NULL,
  Adresse_ID_Adresse INT NOT NULL,
  Facture_id_Facture INT NOT NULL,
  Clients_ID_Client INT NOT NULL,
  Coursiers_ID_Coursier INT NOT NULL,
  Statut_Commande_ID_Statut_Commande INT NOT NULL,
  PRIMARY KEY (ID_Commande),
  INDEX fk_Commandes_Restaurant1_idx (Restaurant_ID_Restaurant ASC) ,
  INDEX fk_Commandes_adresse1_idx (Adresse_ID_Adresse ASC) ,
  INDEX fk_Commandes_Facture1_idx (Facture_id_Facture ASC) ,
  INDEX fk_Commandes_Clients1_idx (Clients_ID_Client ASC) ,
  INDEX fk_Commandes_Coursiers1_idx (Coursiers_ID_Coursier ASC) ,
  INDEX fk_Commandes_statut_commande1_idx (Statut_Commande_ID_Statut_Commande ASC) ,
  CONSTRAINT fk_Commandes_Restaurant1
    FOREIGN KEY (Restaurant_ID_Restaurant)
    REFERENCES Over_Eats.Restaurant (ID_Restaurant)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Commandes_adresse1
    FOREIGN KEY (Adresse_ID_Adresse)
    REFERENCES Over_Eats.Adresse (ID_Adresse)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Commandes_Facture1
    FOREIGN KEY (Facture_id_Facture)
    REFERENCES Over_Eats.Facture (ID_Facture)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Commandes_Clients1
    FOREIGN KEY (Clients_ID_Client)
    REFERENCES Over_Eats.Clients (ID_Client)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Commandes_Coursiers1
    FOREIGN KEY (Coursiers_ID_Coursier)
    REFERENCES Over_Eats.Coursiers (ID_Coursier)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Commandes_statut_commande1
    FOREIGN KEY (Statut_Commande_ID_Statut_Commande)
    REFERENCES Over_Eats.Statut_Commande (ID_Statut_Commande)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Pieces_identite (
  ID_Pieces_Identite INT NOT NULL AUTO_INCREMENT,
  Pieces_Identite VARCHAR(255) NOT NULL,
  Coursiers_ID_Coursier INT NOT NULL,
  PRIMARY KEY (ID_Pieces_Identite),
  INDEX fk_Pieces_identite_Coursiers1_idx (Coursiers_ID_Coursier ASC) ,
  CONSTRAINT fk_Pieces_identite_Coursiers1
    FOREIGN KEY (Coursiers_ID_Coursier)
    REFERENCES Over_Eats.Coursiers (ID_Coursier)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Menu_Commande (
  Menu_ID_Menu INT NOT NULL,
  Commandes_ID_Commande INT NOT NULL,
  PRIMARY KEY (Menu_ID_Menu, Commandes_ID_Commande),
  INDEX fk_Menu_has_Commandes_Commandes1_idx (Commandes_ID_Commande ASC) ,
  INDEX fk_Menu_has_Commandes_Menu1_idx (Menu_ID_Menu ASC) ,
  CONSTRAINT fk_Menu_has_Commandes_Menu1
    FOREIGN KEY (Menu_ID_Menu)
    REFERENCES Over_Eats.Menu (ID_Menu)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Menu_has_Commandes_Commandes1
    FOREIGN KEY (Commandes_ID_Commande)
    REFERENCES Over_Eats.Commandes (ID_Commande)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS Over_Eats.Contact_Reference (
  ID_Contact_Reference INT NOT NULL AUTO_INCREMENT,
  Nom VARCHAR(255) NOT NULL,
  Prenom VARCHAR(255) NOT NULL,
  Poste VARCHAR(255) NOT NULL,
  Numero VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID_Contact_Reference)
);








