## Projet-BDD-Over_Eats

##Sujet : Conception, administration et sécurisation d’une BDD


Restaurants :
Nom de l’enseigne
Notes
Avis
email
contact(s) de référence
Type de restaurant
Numéro de téléphone
Range de prix (€ - €€€)
Adresse
Paiements autorisés
Une photo de couverture
Menu 
Promotions 

Menu : 
Chaque item du menu comprend : 
Nom du menu
Prix
Description
Éléments constituant le menu que l’utilisateur peut sélectionner (sauce, accompagnement etc…). Le nom de l’élément et les compositions sont créés par le restaurateur. Soit des mono-sélections, soit des choix multiples (avec un nombre maximum de sélection), obligatoire ou non. 
Des allergènes

Coursiers :
Nom/prénom
Type de véhicule
Avis
Notes
 Numéro de téléphone
Zone géographiques
Est actuellement actif ou non
Pièces d’identités (type et zone de stockage sur le drive sécurisés de l’entreprise)


Clients (particuliers)
Nom/prénom
Adresse(s)
Numéro de téléphone
Email
Moyen de paiements
Favoris
Commandes

Commandes :
Dates
Statut
Restaurant
Coursier
Client (et adresse)
Détail de la commande
Facture associée
Prix

#Contraintes
En plus des contraintes basiques de vérification de la qualité des données (Null, Non Null, date d’arrivée de la commande > date de création de la commande etc…). Vous avez ces contraintes spécifiques au client

Le choix du coursier se fait après que le restaurant est accepté la commande
Une commande ne peut pas être annulée si le coursier l’a prise en charge
Sécurité
Voici les niveaux d’accès Over Eats, voici les demandes :

Niveau support opérationnel : SAV basique de Over eats, ils ont besoin d’un accès permettant le suivi des commandes (numéro de téléphones des partis, détails, etc) mais n’ont pas accès aux informations sensibles (informations de paiements). Fort turnover des employés donc pas de garantie de sécurité
Niveau commercial : ont accès aux informations des restaurants (notamment CA) et peuvent les aider à paramétrer leurs comptes. N’ont pas accès aux informations des particuliers et des coursiers
Niveau recrutement : ont accès aux données des coursiers mais n’ont pas accès aux restaurants.
Niveau Admin : full accès. 


#Vues 

Il vous ai demandés de créer les vues suivantes : 

CA des restaurants par ville (Pour les commerciaux et les admins)
Top 10 des livreurs faisant le plus de livraison par ville (Pour les recruteurs et admins)
Clients commandant le plus à une enseigne données (Admin uniquement)

Je rappelle que l’exécution de ces vues doit être illustrée avec des données.

#Procédures

Vous devez créer une procédure stockée pour archiver les comptes clients inactifs depuis plus de 2ans.

Les commandes annulées doivent être archivées au bout de 3 ans.
