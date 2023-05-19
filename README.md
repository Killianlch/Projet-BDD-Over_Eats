
# Conception de la base de données pour Over Eats

## Introduction

Le présent rapport expose la conception de la base de données pour Over Eats, un concurrent fictif d'Uber Eats. L'objectif principal de cette base de données est de permettre la gestion des restaurants, des menus, des coursiers, des clients et des commandes au sein de la plateforme Over Eats.

### Raisonnement et logique de conception

Lors de la conception de la base de données, plusieurs aspects ont été pris en compte pour assurer une structure adéquate et répondre aux besoins fonctionnels du système.

1. Tables principales :
   Les principales entités identifiées dans le système sont les restaurants, les menus, les éléments de menu, les allergènes, les coursiers, les clients et les commandes. Ces entités ont été modélisées en tant que tables principales de la base de données.

2. Relations entre les tables :
   Des relations ont été établies entre les tables pour refléter les associations entre les entités. Par exemple, un menu est associé à un restaurant à l'aide d'une clé étrangère ID_Restaurant dans la table Menu. De même, un élément de menu est lié à un menu à l'aide d'une clé étrangère ID_Menu dans la table Elements_Menu.

3. Gestion des références :
   Les clés étrangères ont été utilisées pour gérer les références entre les tables. Cela permet de maintenir l'intégrité référentielle et d'assurer la cohérence des données. Par exemple, la clé étrangère ID_Restaurant dans la table Menu fait référence à la clé primaire ID_Restaurant dans la table Restaurants.

4. Attributs des tables :
   Les attributs nécessaires ont été identifiés pour chaque table afin de stocker les informations pertinentes. Par exemple, la table Restaurants comprend des attributs tels que Nom_Enseigne, Notes, Email, etc., pour enregistrer les détails spécifiques à un restaurant.

5. Contraintes et vérifications :
   Des contraintes ont été ajoutées pour assurer la qualité des données et l'intégrité du système. Par exemple, des clés primaires ont été définies pour chaque table afin d'assurer l'unicité des enregistrements. De plus, des contraintes spécifiques ont été définies pour gérer les relations et les règles métier, telles que l'impossibilité d'annuler une commande une fois qu'elle a été prise en charge par un coursier.

6. Gestion de la sécurité :
   Pour répondre aux exigences de sécurité, une table distincte Coursiers a été créée pour stocker les informations spécifiques aux coursiers, telles que les pièces d'identité stockées de manière sécurisée. De plus, des niveaux d'accès ont été définis pour différents utilisateurs, tels que le support opérationnel, les commerciaux, le recrutement et l'administration, pour contrôler leur accès aux informations sensibles.

## Conclusion

La conception de la base de données pour Over Eats a été réalisée en prenant en compte les besoins fonctionnels du système et en suivant une approche logique. Les tables principales ont été créées pour représenter les entités principales du système, tandis que les relations entre les tables et les contraintes ont été établies pour assurer l'intégrité référentielle et la cohérence des données. La gestion de la sécurité a également été prise en compte pour protéger les informations sensibles. Cette conception fournit une base solide pour le développement du système Over Eats et offre une structure adaptée à la gestion des restaurants, des menus, des coursiers, des clients et des commandes.
