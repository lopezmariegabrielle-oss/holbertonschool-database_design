Pourquoi l'ancienne table posait problème (Normalisation Conférence)

L'ancienne table `CONFERENCE_REGISTRATIONS_FLAT` était un vrai bazar : elle mélangeait les participants, les conférenciers, les salles et les sessions au même endroit. Ça causait plein de bugs :

*Les mises à jour impossibles: Si l'e-mail d'un conférencier changeait, il fallait modifier toutes les lignes de toutes les sessions où il parlait. Un seul oubli, et ses infos devenaient fausses.
*Le problème des nouveautés : On ne pouvait même pas ajouter une nouvelle conférence dans la base tant qu'aucun participant ne s'y était inscrit !
*Les pertes de données: Si le dernier inscrit à une conférence annulait sa place, supprimer sa ligne supprimait aussi la conférence et le conférencier par erreur.

Ma nouvelle structure (3NF)
J'ai séparé tout ça en 4 tables pour que ce soit propre :
1. `speakers` : Les profils des conférenciers (écrits une seule fois).
2. `sessions` : Les conférences avec leur salle, liées à un conférencier.
3. `attendees` : Les participants.
4. `registrations` : La table de liaison pour inscrire un participant à une session.
