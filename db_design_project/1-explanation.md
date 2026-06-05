Pourquoi le prix est dans les lignes de commande (unit_price_paid)

Dans la nouvelle structure, j'ai choisi de mettre le prix payé (`unit_price_paid`) dans la table `order_items` (les lignes de commande) et pas dans la table `products`. 

Voici pourquoi c'est important :

*Garder l'historique des ventes: Le prix d'un produit dans le catalogue change souvent avec le temps (inflation, soldes, augmentations). Si on laissait le prix uniquement dans la table `products`, modifier le prix d'un article aujourd'hui changerait magiquement le prix de toutes les vieilles factures du passé !
*Une photo du moment: En enregistrant le prix directement dans `order_items` au moment de l'achat, on fige ce que le client a vraiment payé ce jour-là. Même si le prix du produit augmente le mois d'après, les anciennes commandes restent correctes et inchangées.

C'est indispensable pour que la comptabilité reste juste et pour respecter la Troisième Forme Normale (3NF).
