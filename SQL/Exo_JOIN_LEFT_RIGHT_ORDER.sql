SELECT j.nom, j.prenom, niveaux.couleur_ceinture  FROM judokas j
	JOIN niveaux ON j.id_niveau = niveaux.id_niveau;
    
SELECT j.nom, j.prenom, competitions.nom  FROM judokas j
	JOIN participer ON j.id_judoka = participer.id_judoka
    JOIN competitions ON participer.id_competition = competitions.id_competition;

INSERT INTO participer (id_judoka, id_competition) VALUES (1, 2); -- Voir quelque chose dans le select précédent

SELECT j.nom, j.prenom, niveaux.couleur_ceinture, competitions.nom AS nom_competition FROM judokas j
	JOIN niveaux ON j.id_niveau = niveaux.id_niveau
	JOIN participer ON j.id_judoka = participer.id_judoka
	JOIN competitions ON participer.id_competition = competitions.id_competition;
    
INSERT INTO messages (id_message,sujet, contenu, date_message, id_auteur) VALUES (1,"Le crocodile a frappé", "J'ai pas d'idée pour le croco #renekton","2025-07-16 12:00:01",2),
(2,"Malphite le goat","Je deteste malphite #therock","2025-07-16 12:10:01",4),
(3,"J'ai plus d'idée","Tant pis","2025-07-16 12:20:01",6);

INSERT INTO judokas_messages (id_destinataire, id_messages) VALUES (3, 1),(5, 1);
INSERT INTO judokas_messages (id_destinataire, id_messages) VALUES (4, 2);
INSERT INTO judokas_messages (id_destinataire, id_messages) VALUES (6, 3);

SELECT j.nom, j.prenom, m.sujet, m.date_message FROM judokas j
	JOIN messages m ON j.id_judoka = m.id_auteur;

SELECT j.nom, j.prenom, m.sujet, m.date_message FROM judokas j
	JOIN judokas_messages jm ON j.id_judoka = jm.id_destinataire
    JOIN messages m ON jm.id_messages = m.id_message;
    
SELECT j.nom, j.prenom, m.sujet, m.date_message FROM judokas j
	LEFT JOIN judokas_messages jm ON j.id_judoka = jm.id_destinataire
	LEFT JOIN messages m ON jm.id_messages = m.id_message;

UPDATE niveaux SET couleur_ceinture = 'blanc'  WHERE id_niveau = 1;
UPDATE niveaux SET couleur_ceinture = 'jaune'  WHERE id_niveau = 2;
UPDATE niveaux SET couleur_ceinture = 'orange' WHERE id_niveau = 3;
UPDATE niveaux SET couleur_ceinture = 'verte'  WHERE id_niveau = 4;
UPDATE niveaux SET couleur_ceinture = 'bleu'   WHERE id_niveau = 5;
UPDATE niveaux SET couleur_ceinture = 'marron' WHERE id_niveau = 6;
UPDATE niveaux SET couleur_ceinture = 'noire'  WHERE id_niveau = 7;

    
UPDATE judokas SET id_niveau = 1 WHERE id_judoka = 1; -- blanc
UPDATE judokas SET id_niveau = 4 WHERE id_judoka IN (2, 3); -- verte

SELECT nom, prenom FROM judokas ORDER BY nom ASC, prenom ASC;

SELECT j.nom, j.prenom FROM judokas j
	JOIN niveaux n ON j.id_niveau = n.id_niveau
	ORDER BY n.couleur_ceinture DESC, j.nom ASC, j.prenom ASC;
    
SELECT j.nom, j.prenom, m.sujet, m.date_message FROM judokas j
	JOIN judokas_messages jm ON j.id_judoka = jm.id_destinataire
    JOIN messages m ON jm.id_messages = m.id_message
    ORDER BY m.date_message DESC;
    