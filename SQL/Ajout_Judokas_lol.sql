INSERT INTO niveaux (couleur_ceinture) VALUES ("blanc"),("jaune"),("orange"),("verte"),("bleu"),("marron"),("noir");
INSERT INTO competitions (nom, date_debut, date_fin) VALUES ("Le crane de Loick", "2025-07-16 10:10:0", "2025-07-16 10:10:20")
,("League of legends", "2000-01-01 00  :00:01", "2030-12-31 23:59:59"),
("J ai plus d inspi", "2025-07-16 10:10:0", "2025-07-16 10:10:20"),
(" G + d'inspi", "2025-07-16 10:10:0", "2025-07-16 10:10:20"),
("Le crane de Nico", "2025-07-15 10:10:0", "2025-07-15 10:10:20");

INSERT INTO judokas (nom,prenom,age,sexe,id_niveau,email,telephone,adresse,password) VALUES ("Laurent","Garen","31","M","5","garen@demacia.gov","06 45 23 11 87","10 Rue de la Justice, Demacia","Justice4All2025"),
("Crèvecoeur","Darius","34","M","6","darius@noxus.com","07 21 98 34 56","12 Boulevard du Fer, Noxus","NoxianMight!"),
("Brisefeu","Shen","38","M","7","shen@kinkou.org","07 66 45 22 33","22 Allée de l’Ombre, Ionia","BalanceKeeper"),
("Ferblanc","Poppy","24","F","3","poppy@demacia.gov","06 91 34 55 22","5 Rue du Marteau, Demacia","HammerTime2025"),
("Hiverhaut","Ornn","65","M","2","ornn@frejlord.org","07 33 12 00 00","Forge du Grand Nord, Freljord","ForgeMaster"),
("Lamegivre","Camille","39","F","6","camille@piltover.biz","07 41 85 74 63","44 Rue Mécanique, Piltover","PrecisionBlade"),
("Gravemarché","Sion","68","M","4","sion@noxus.com","07 09 34 00 66","9 Route de la Mort, Noxus","UnstoppableX"),
("Ventacier","Sett","28","M","7","sett@ioniafightclub.io","06 56 00 11 22","Arène du Sud, Ionia","BigBoss"),
("Zorg","Mundo","47","M","2","mundo@zonelibre.org","07 13 64 28 91","3 Rue de la Folie, Zaun","GoesWhereHeWants"),
("Valoris","Irelia","26","F","6","irelia@ionia.blade","06 31 47 20 55","88 Rue des Lames Dansantes, Ionia","BladeSurge2025");

INSERT INTO participer (id_judoka,id_competition) VALUES ("1","13"),("2","13"),("3","13"),("4","13"),("5","13"),("6","13"),("7","13"),("8","13");

UPDATE niveaux SET couleur_ceinture = "noirs";

UPDATE judokas SET age = "27" WHERE id_judoka = 1;
UPDATE judokas SET age = "31" WHERE id_judoka = 2;
UPDATE judokas SET age = "43" WHERE id_judoka = 3;

UPDATE competitions SET date_debut = "2025-08-07 04:10:20", date_fin = "2025-08-07 05:11:21" WHERE id_competition = 17;

DELETE FROM participer WHERE id_judoka = "8";

DELETE FROM judokas WHERE id_judoka = "10";

ALTER TABLE participer DROP FOREIGN KEY participer_ibfk_2;

ALTER TABLE participer ADD CONSTRAINT FOREIGN KEY (id_competition) REFERENCES competitions(id_competition) ON DELETE CASCADE;

DELETE FROM competitions WHERE id_competition = "13" OR id_competition = "14" OR id_competition = "15";