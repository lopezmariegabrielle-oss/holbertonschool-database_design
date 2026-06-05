Pourquoi l'ancienne table posait problème (Dépendance Transitive)

Dans l'ancienne table, tout était mélangé au même endroit. Les infos du département (le nom, le lieu, le mail du chef) étaient écrites sur la ligne de chaque employé. C'est ça qu'on appelle une "dépendance transitive" : ces infos dépendent du département, pas de l'employé !

Ça créait deux gros problèmes :

*La galère pour les mises à jour: Si un service déménageait (par exemple les RH qui passent de Londres à Berlin), il fallait modifier la ville sur chaque ligne d'employé. Si on oubliait une seule ligne, le même service se retrouvait dans deux villes différentes.
*Les pertes de données par erreur: Si on supprimait le dernier employé d'un service, toute sa ligne disparaissait. Du coup, on perdait aussi toutes les infos du service d'un coup (son nom, son lieu...), ce qui est absurde.

Maintenant, avec mes deux tables `departments` et `employees`, chaque service est enregistré une seule fois. Si le service déménage, je change la ville sur une seule ligne et tous les employés restent liés au bon endroit sans bug. C'est ça la 3NF !