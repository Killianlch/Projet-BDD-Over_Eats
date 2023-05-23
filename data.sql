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
