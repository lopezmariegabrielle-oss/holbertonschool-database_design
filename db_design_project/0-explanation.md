Pourquoi l'ancienne table posait problème (Normalisation 3NF)

L'ancienne table `STUDENT_COURSES` mélangeait tout au même endroit : les étudiants, les cours et les profs. Ça créait de gros problèmes au quotidien :

*Pour les mises à jour: Si l'e-mail d'un prof changeait, il fallait modifier toutes les lignes où il apparaissait. Un seul oubli et la base de données n'était plus à jour. Maintenant, son e-mail est dans la table `instructors` **une seule fois**. Une seule modification suffit.
*Pour les insertions: On ne pouvait pas créer un nouveau cours tant qu'aucun élève ne s'y était inscrit. Désormais, les tables `courses` et `instructors` sont indépendantes : on peut ajouter un cours quand on veut.
*Pour les suppressions: Si on désinscrivait le dernier élève d'un cours, toute la ligne disparaissait, ce qui supprimait aussi le cours et le prof par erreur ! Avec la table de liaison `enrollments`, supprimer une inscription retire juste le lien, sans toucher au cours ni au prof.

En séparant les données en 4 tables (`students`, `instructors`, `courses`, `enrollments`), chaque table a enfin un seul rôle clair. C'est le principe de la Troisième Forme Normale (3NF).