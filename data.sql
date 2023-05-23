INSERT INTO Over_Eats.Restaurant (ID_Restaurant, Nom_Enseigne, Notes, Email, Type_Restaurant, Numero_Telephone, Range_Prix, Paiements_Autorises)
VALUES (1, 'Pizza World', 4.5, 'contact@pizzaworld.com', 'Pizza', '1234567890', '$$', 'Carte de crédit, Espèces'),
       (2, 'Sushi Delight', 4.2, 'info@sushidelight.com', 'Sushi', '9876543210', '$$$', 'Carte de crédit, Chèques restaurant'),
       (3, 'Burger Shack', 3.8, 'hello@burgershack.com', 'Burger', '5555555555', '$$', 'Carte de crédit, Paiement en ligne'),
       (4, 'Thai Palace', 4.6, 'contact@thaipalace.com', 'Thai', '1111111111', '$$', 'Carte de crédit, Espèces');


INSERT INTO Over_Eats.Menu (ID_Menu, Nom_Menu, Prix, Description, Restaurant_ID_Restaurant)
VALUES (1, 'Pizza Margherita', 10.99, 'Tomato sauce, mozzarella cheese, basil', 1),
       (2, 'California Roll', 8.50, 'Crab, avocado, cucumber, rice, nori', 2),
       (3, 'Classic Burger', 9.99, 'Beef patty, lettuce, tomato, onion, pickles', 3),
       (4, 'Pad Thai', 12.95, 'Rice noodles, shrimp, tofu, peanuts, bean sprouts', 4);


INSERT INTO Over_Eats.Element_Menu (ID_Element, Nom_Element, Composition, Menu_ID_Menu)
VALUES (1, 'Tomato Sauce', 'Tomatoes, herbs, spices', 1),
       (2, 'Mozzarella Cheese', 'Milk, rennet, salt', 1),
       (3, 'Crab', 'Crab meat, vinegar, salt', 2),
       (4, 'Avocado', 'Fresh avocado', 2);


INSERT INTO Over_Eats.Allergenes (ID_Allergenes, Nom_Allergenes, Element_Menu_ID_Element)
VALUES (1, 'Gluten', 1),
       (2, 'Lactose', 2),
       (3, 'Seafood', 3),
       (4, 'Soy', 4);


INSERT INTO Over_Eats.Promotion (ID_Promotion, Nom_Promotion, Type_Promotion, Montant, Menu_ID_Menu)
VALUES (1, 'Summer Special', 1, 20, 1),
       (2, 'Happy Hour', 2, 50, 3);

INSERT INTO Over_Eats.Media (ID_Media, Photo_De_Couverture, Restaurant_ID_Restaurant)
VALUES (1, 'pizza_world.jpg', 1),
       (2, 'sushi_delight.jpg', 2),
       (3, 'burger_shack.jpg', 3),
       (4, 'thai_palace.jpg', 4);


INSERT INTO Over_Eats.Adresse (ID_Adresse, Numero, Rue, Ville, Code_Postal)
VALUES (1, 123, 'Rue de la Pizza', 'Paris', 75001),
       (2, 456, 'Avenue des Sushis', 'Lyon', 69002),
       (3, 789, 'Boulevard des Burgers', 'Marseille', 13008),
       (4, 321, 'Rue du Pad Thai', 'Toulouse', 31000);


INSERT INTO Over_Eats.Clients (ID_Client, Nom, Prenom, Numero_Telephone, Email, Moyen_Paiements, Date_Derniere_Activité, Est_Actif, Favoris, Adresse_ID_Adresse)
VALUES (1, 'Dupont', 'Jean', '1234567890', 'jean.dupont@gmail.com', 'Carte de crédit', 1, 1, 'Pizza Margherita, California Roll', 1),
       (2, 'Durand', 'Sophie', '9876543210', 'sophie.durand@gmail.com', 'Espèces', 1, 1, 'Classic Burger', 2),
       (3, 'Martin', 'Pierre', '5555555555', 'pierre.martin@gmail.com', 'Carte de crédit', 1, 1, 'Pad Thai', 3),
       (4, 'Lefevre', 'Emma', '1111111111', 'emma.lefevre@gmail.com', 'Carte de crédit', 1, 1, 'Pizza Margherita, Pad Thai', 4);


INSERT INTO Over_Eats.Avis (ID_Avis, Message, Date, Clients_ID_Client)
VALUES (1, 'Très bonne pizza, je recommande !', '2023-05-10 12:30:00', 1),
       (2, 'Les sushis sont délicieux et frais.', '2023-05-11 18:45:00', 2),
       (3, 'Burger savoureux et généreux en garniture.', '2023-05-12 20:15:00', 3),
       (4, 'Le Pad Thai était délicieux, je le commande souvent.', '2023-05-13 14:00:00', 4);


INSERT INTO Over_Eats.Type_Vehicule (ID_Type, Type)
VALUES (1, 'Voiture'),
       (2, 'Moto'),
       (3, 'Vélo');


INSERT INTO Over_Eats.Coursiers (ID_Coursier, Nom, Prenom, Avis, Notes, Numero_Telephone, Zone_Geographique, Est_Actif, Type_Vehicule_ID_Type)
VALUES (1, 'Dubois', 'Alexandre', 'Très bon coursier, livraison rapide.', 4.8, '1234567890', 'Paris', 1, 1),
       (2, 'Leroy', 'Julie', 'Livraison impeccable.', 4.5, '9876543210', 'Lyon', 1, 2),
       (3, 'Moreau', 'Antoine', 'Coursier sympathique et ponctuel.', 4.6, '5555555555', 'Marseille', 1, 3),
       (4, 'Fournier', 'Camille', 'Très bon service, toujours souriant.', 4.7, '1111111111', 'Toulouse', 1, 2);


INSERT INTO Over_Eats.Restaurants (ID_Restaurant, Nom, Description, Note_Moyenne, Adresse_ID_Adresse)
VALUES (1, 'Pizza Paradise', 'Dégustez les meilleures pizzas de la ville.', 4.5, 1),
       (2, 'Sushi World', 'Savourez des sushis frais et authentiques.', 4.2, 2),
       (3, 'Burger Factory', 'Le paradis des burgers gourmands.', 4.7, 3),
       (4, 'Thai Delight', 'Voyagez en Thaïlande avec nos délicieux plats.', 4.3, 4);


INSERT INTO Over_Eats.Commandes (ID_Commande, Date_Heure, Montant_Total, Est_Livrée, Clients_ID_Client, Restaurants_ID_Restaurant, Coursiers_ID_Coursier)
VALUES (1, '2023-05-10 12:45:00', 28.50, 1, 1, 1, 1),
       (2, '2023-05-11 19:15:00', 35.20, 1, 2, 2, 2),
       (3, '2023-05-12 20:30:00', 18.90, 1, 3, 3, 3),
       (4, '2023-05-13 14:30:00', 22.75, 1, 4, 4, 4);


INSERT INTO Over_Eats.Produits (ID_Produit, Nom, Description, Prix, Restaurants_ID_Restaurant)
VALUES (1, 'Pizza Margherita', 'Tomate, mozzarella, basilic', 12.50, 1),
       (2, 'California Roll', 'Avocat, concombre, saumon', 8.90, 2),
       (3, 'Classic Burger', 'Steak haché, cheddar, salade', 9.50, 3),
       (4, 'Pad Thai', 'Nouilles de riz, crevettes, cacahuètes', 11.20, 4);


INSERT INTO Over_Eats.Commande_Produits (Commandes_ID_Commande, Produits_ID_Produit, Quantite)
VALUES (1, 1, 2),
       (2, 2, 3),
       (3, 3, 1),
       (4, 4, 2);
