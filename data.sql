use Over_Eats;
INSERT INTO Restaurant (Nom_Enseigne, Notes, Email, Type_Restaurant, Numero_Telephone, Range_Prix, Paiements_Autorises)
VALUES
  ('Pizza Palace', 4.2, 'pizzapalace@example.com', 'Pizzeria', '1234567890', '€', 'Carte de crédit, Espèces'),
  ('Burger House', 4.5, 'burgerhouse@example.com', 'Fast-food', '9876543210', '€€', 'Carte de crédit, Paiement mobile'),
  ('Sushi Bar', 4.8, 'sushibar@example.com', 'Restaurant japonais', '4567890123', '€€€', 'Carte de crédit, Chèques, Espèces'),
  ('Mexican Grill', 4.3, 'mexicangrill@example.com', 'Restaurant mexicain', '7890123456', '€€', 'Carte de crédit'),
  ('Thai Spice', 4.6, 'thaispice@example.com', 'Restaurant thaïlandais', '2345678901', '€€', 'Carte de crédit, Paiement mobile, Espèces');

INSERT INTO Menu (Nom_Menu, Prix, Description, Restaurant_ID_Restaurant)
VALUES
  ('Margherita', 9.99, 'Tomato sauce, mozzarella, basil', 1),
  ('Pepperoni', 11.99, 'Tomato sauce, mozzarella, pepperoni', 1),
  ('Hawaiian', 12.99, 'Tomato sauce, mozzarella, ham, pineapple', 1),
  ('Cheeseburger', 8.99, 'Beef patty, cheese, lettuce, tomato, pickles', 2),
  ('Chicken Caesar Salad', 10.99, 'Grilled chicken, romaine lettuce, Caesar dressing', 2),
  ('Spicy Tuna Roll', 14.99, 'Tuna, spicy mayo, cucumber, avocado', 3),
  ('Chicken Teriyaki', 16.99, 'Grilled chicken, teriyaki sauce, steamed rice', 3),
  ('Quesadilla', 9.99, 'Flour tortilla, cheese, chicken, peppers, onions', 4),
  ('Burrito Bowl', 11.99, 'Rice, black beans, grilled chicken, salsa, guacamole', 4),
  ('Pad Thai', 12.99, 'Stir-fried noodles, shrimp, tofu, peanuts', 5),
  ('Green Curry', 14.99, 'Green curry paste, chicken, vegetables, coconut milk', 5);

INSERT INTO Element_Menu (Nom_Element, Composition, Menu_ID_Menu)
VALUES
  ('Tomato Sauce', 'Tomatoes, salt, spices', 1),
  ('Mozzarella', 'Milk, rennet, salt', 1),
  ('Pepperoni', 'Pork, spices, salt', 2),
  ('Ham', 'Pork, water, salt, sugar', 3),
  ('Pineapple', 'Pineapple chunks, syrup', 3),
  ('Beef Patty', 'Ground beef, salt, pepper', 4),
  ('Cheese', 'Cheddar, milk, salt', 4),
  ('Lettuce', 'Lettuce leaves, water, vinegar', 5),
  ('Grilled Chicken', 'Chicken breast, olive oil, spices', 5),
  ('Tuna', 'Fresh tuna, mayonnaise, spices', 6),
  ('Spicy Mayo', 'Mayonnaise, chili sauce, garlic', 6),
  ('Flour Tortilla', 'Flour, water, salt', 7),
  ('Rice', 'White rice, water', 7),
  ('Shrimp', 'Shrimp, salt, lemon juice', 8),
  ('Teriyaki Sauce', 'Soy sauce, sugar, ginger', 8),
  ('Cheese', 'Cheddar, mozzarella, pepper jack', 9),
  ('Chicken', 'Grilled chicken, spices, onions', 9),
  ('Noodles', 'Rice noodles, water', 10),
  ('Green Curry Paste', 'Green chilies, garlic, lemongrass', 10);

INSERT INTO Allergenes (Nom_Allergenes, Element_Menu_ID_Element)
VALUES
  ('Gluten', 1),
  ('Lactose', 2),
  ('Gluten', 3),
  ('Gluten', 4),
  ('Lactose', 4),
  ('Gluten', 5),
  ('Lactose', 5),
  ('Fish', 6),
  ('Egg', 6),
  ('Gluten', 7),
  ('Soy', 7),
  ('Crustaceans', 8),
  ('Gluten', 8),
  ('Lactose', 8),
  ('Lactose', 9),
  ('Gluten', 9),
  ('Gluten', 10),
  ('Lactose', 10);

INSERT INTO Promotion (Nom_Promotion, Type_Promotion, Montant, Menu_ID_Menu)
VALUES
  ('Réduction 20%', 1, 20, 1),
  ('Livraison gratuite', 2, NULL, 2),
  ('Réduction 10%', 1, 10, 3),
  ('Réduction 15%', 1, 15, 4),
  ('Livraison gratuite', 2, NULL, 5),
  ('Réduction 5%', 1, 5, 6),
  ('Réduction 30%', 1, 30, 7),
  ('Réduction 10%', 1, 10, 8),
  ('Réduction 25%', 1, 25, 9),
  ('Livraison gratuite', 2, NULL, 10);

INSERT INTO Media (Photo_De_Couverture, Restaurant_ID_Restaurant)
VALUES
  ('image1.jpg', 1),
  ('image2.jpg', 2),
  ('image3.jpg', 3),
  ('image4.jpg', 4),
  ('image5.jpg', 5);

INSERT INTO Adresse (Numero, Rue, Ville, Code_Postal)
VALUES
  (123, 'Rue des Champs', 'Paris', 75001),
  (456, 'Avenue de la Gare', 'Lyon', 69002),
  (789, 'Boulevard du Commerce', 'Marseille', 13001),
  (1011, 'Rue de la Paix', 'Bordeaux', 33000),
  (1213, 'Place de la Libération', 'Toulouse', 31000),
  (1415, 'Rue des Lilas', 'Nantes', 44000),
  (1617, 'Avenue du Port', 'Nice', 06000),
  (1819, 'Boulevard Saint-Michel', 'Lille', 59000),
  (2021, 'Rue Victor Hugo', 'Strasbourg', 67000),
  (2223, 'Place du Capitole', 'Rennes', 35000);

INSERT INTO Clients (Nom, Prenom, Numero_Telephone, Email, Moyen_Paiements, Date_Derniere_Activité, Est_Actif, Favoris, Adresse_ID_Adresse)
VALUES
  ('Dupont', 'Jean', '0123456789', 'jean.dupont@example.com', 'Carte de crédit', 10, 1, 'Pizza Hut', 1),
  ('Martin', 'Sophie', '9876543210', 'sophie.martin@example.com', 'PayPal', 5, 1, 'McDonalds', 2),
  ('Lefebvre', 'Pierre', '5555555555', 'pierre.lefebvre@example.com', 'Espèces', 3, 1, 'KFC', 3),
  ('Dubois', 'Marie', '9999999999', 'marie.dubois@example.com', 'Carte de débit', 7, 1, 'Subway', 4),
  ('Leblanc', 'Emma', '1111111111', 'emma.leblanc@example.com', 'Carte cadeau', 12, 1, 'Burger King', 5);

INSERT INTO Avis (Message, Date, Clients_ID_Client)
VALUES
  ('Très bon service et plats délicieux !', '2023-05-15 14:30:00', 1),
  ('Livraison rapide et repas chaud. Je recommande !', '2023-05-14 19:45:00', 2),
  ('Le restaurant a oublié un élément de ma commande. Décevant.', '2023-05-16 10:00:00', 3),
  ('Super expérience ! Les plats étaient excellents.', '2023-05-13 12:15:00', 4),
  ('Service client très réactif. Ils ont résolu un problème avec ma commande rapidement.', '2023-05-16 16:20:00', 5);

INSERT INTO Type_Vehicule (Type)
VALUES
  ('Voiture'),
  ('Moto'),
  ('Vélo'),
  ('Scooter');

INSERT INTO Coursiers (Nom, Prenom, Avis, Notes, Numero_Telephone, Zone_Geographique, Est_Actif, Type_Vehicule_ID_Type)
VALUES
  ('Dupont', 'Jean', 'Très bon service', 4.5, '0123456789', 'Paris', 1, 1),
  ('Martin', 'Sophie', 'Livraison rapide', 4.2, '0987654321', 'Lyon', 1, 2),
  ('Dubois', 'Pierre', 'Sympathique et efficace', 4.7, '9876543210', 'Marseille', 1, 3),
  ('Leroy', 'Julie', 'Excellent coursier', 4.9, '0123456789', 'Toulouse', 1, 1),
  ('Girard', 'Emma', 'Livraison impeccable', 4.8, '5555555555', 'Bordeaux', 1, 2);


INSERT INTO Facture (Date_Emission)
VALUES
  ('2023-05-01'),
  ('2023-05-05'),
  ('2023-05-10'),
  ('2023-05-15'), 
  ('2023-05-20');

INSERT INTO Statut_Commande (Statut_Commande)
VALUES
  ('En attente'),
  ('En cours de préparation'),
  ('En cours de livraison'),
  ('Livré'),
  ('Annulé');

INSERT INTO Commandes (Date_Commande, Prix, Restaurant_ID_Restaurant, Adresse_ID_Adresse, Facture_id_Facture, Clients_ID_Client, Coursiers_ID_Coursier, Statut_Commande_ID_Statut_Commande)
VALUES
  ('2023-05-01 12:30:00', 35.50, 1, 1, 1, 1, 1, 1),
  ('2023-05-02 18:45:00', 22.99, 2, 2, 2, 2, 2, 2),
  ('2023-05-03 20:15:00', 48.75, 3, 3, 3, 3, 3, 3),
  ('2023-05-04 14:00:00', 18.50, 4, 4, 4, 4, 4, 4),
  ('2023-05-05 19:30:00', 28.99, 5, 5, 5, 5, 5, 5);

INSERT INTO Pieces_identite (Pieces_Identite, Coursiers_ID_Coursier) VALUES
('Carte d identité', 1),
('Permis de conduire', 2),
('Passeport', 3),
('Carte de résident', 4),
('Carte d assurance maladie', 5);

INSERT INTO Menu_Commande (Menu_ID_Menu, Commandes_ID_Commande) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 4),
(7, 5);

INSERT INTO Contact_Reference (Nom, Prenom, Poste, Numero) VALUES
('Doe', 'John', 'Manager', '1234567890'),
('Smith', 'Jane', 'Supervisor', '9876543210'),
('Johnson', 'Michael', 'Assistant', '5555555555'),
('Williams', 'Emily', 'Coordinator', '7777777777');
