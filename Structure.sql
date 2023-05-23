DROP DATABASE IF EXISTS Over_Eats;
CREATE DATABASE Over_Eats;
USE Over_Eats;

CREATE TABLE Restaurants (
  ID_Restaurant INT PRIMARY KEY,
  Nom_Enseigne VARCHAR(255),
  Notes FLOAT,
  Email VARCHAR(255),
  Type_Restaurant VARCHAR(255),
  Numero_Telephone VARCHAR(20),
  Range_Prix VARCHAR(10),
  Adresse VARCHAR(255),
  Paiements_Autorises VARCHAR(255),
  ID_Media INT,
  ID_Avis INT,
  ID_Contact_Reference INT
);

CREATE TABLE Contact_Reference (
  ID_Contact_Reference INT PRIMARY KEY,
  Nom VARCHAR(255),
  Prenom VARCHAR(255),
  Poste VARCHAR(255),
  Numero_Telephone VARCHAR(20),
  FOREIGN KEY (ID_Contact_Reference) REFERENCES Restaurants (ID_Contact_Reference)
);

CREATE TABLE Menu (
  ID_Menu INT PRIMARY KEY,
  ID_Restaurant INT,
  Nom_Menu VARCHAR(255),
  Prix DECIMAL(10,2),
  Description TEXT,
  FOREIGN KEY (ID_Restaurant) REFERENCES Restaurants (ID_Restaurant)
);

CREATE TABLE Elements_Menu (
  ID_Element INT PRIMARY KEY,
  ID_Menu INT,
  Nom_Element VARCHAR(255),
  Composition TEXT,
  FOREIGN KEY (ID_Menu) REFERENCES Menu (ID_Menu)
);

CREATE TABLE Allergenes (
  ID_Allergene INT PRIMARY KEY,
  Nom_Allergene VARCHAR(255),
  ID_Element INT,
  FOREIGN KEY (ID_Element) REFERENCES Elements_Menu (ID_Element)
);

CREATE TABLE Coursiers (
  ID_Coursier INT PRIMARY KEY,
  Nom VARCHAR(255),
  Prenom VARCHAR(255),
  ID_Type VARCHAR(255),
  Avis VARCHAR(255),
  Notes FLOAT,
  Numero_Telephone VARCHAR(20),
  Zone_Geographique VARCHAR(255),
  Est_Actif BOOLEAN,
  Pieces_Identites VARCHAR(255)
);

CREATE TABLE Clients (
  ID_Client INT PRIMARY KEY,
  Nom VARCHAR(255),
  Prenom VARCHAR(255),
  Adresse VARCHAR(255),
  Numero_Telephone VARCHAR(20),
  Email VARCHAR(255),
  Moyen_Paiements VARCHAR(255),
  Est_Actif BOOLEAN,
  Favoris VARCHAR(255),
  Date_Derniere_Activite DATE
);

CREATE TABLE Commandes (
  ID_Commande INT PRIMARY KEY,
  Date_Commande DATE,
  Statut VARCHAR(255),
  ID_Restaurant INT,
  ID_Coursier INT,
  ID_Client INT,
  Prix DECIMAL(10,2),
  Detail_Commande VARCHAR(255),
  Facture_Associée VARCHAR(255),
  FOREIGN KEY (ID_Restaurant) REFERENCES Restaurants (ID_Restaurant),
  FOREIGN KEY (ID_Coursier) REFERENCES Coursiers (ID_Coursier),
  FOREIGN KEY (ID_Client) REFERENCES Clients (ID_Client)
);

CREATE TABLE Media (
  ID_Media INT PRIMARY KEY,
  Photo_De_Couverture VARCHAR(255),
  ID_Restaurant INT,
  FOREIGN KEY (ID_Restaurant) REFERENCES Restaurants (ID_Restaurant)
);

CREATE TABLE Avis (
  ID_Avis INT PRIMARY KEY,
  Auteur VARCHAR(255),
  Message varchar(255),
  Dates date
);

CREATE TABLE Type_Vehicule (
  ID_Type INT PRIMARY KEY,
  Type VARCHAR(255)
);

CREATE TABLE Promotion (
  ID_Promotion INT PRIMARY KEY,
  ID_Menu INT,
  Nom_Promotion VARCHAR(255),
  Type_promotion BOOLEAN,
  Montant INT,
  FOREIGN KEY (ID_Menu) REFERENCES Menu (ID_Menu)
);

CREATE TABLE Adresse (
  ID_Adresse INT PRIMARY KEY,
  ID_Client INT,
  ID_Restaurant INT,
  ID_Commande INT,
  Numero INT,
  Rue VARCHAR(255),
  Ville VARCHAR(255),
  Code_Postale INT,
  FOREIGN KEY (ID_Client) REFERENCES Clients (ID_Client),
  FOREIGN KEY (ID_Restaurant) REFERENCES Restaurants (ID_Restaurant),
  FOREIGN KEY (ID_Commande) REFERENCES Commandes (ID_Commande)
);