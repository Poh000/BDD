CREATE DATABASE judoka;

USE judoka;

CREATE TABLE Niveaux(
    id_niveau INT PRIMARY KEY AUTO_INCREMENT, 
    couleur_ceinture VARCHAR(50) NOT NULL
);

CREATE TABLE Judokas(
    id_judoka INT PRIMARY KEY AUTO_INCREMENT, 
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    sexe VARCHAR(50) NOT NULL,
    id_Niveau INT,
    FOREIGN KEY (id_niveau) REFERENCES Niveaux(id_niveau)
);

CREATE TABLE Competitions(
    id_competition INT PRIMARY KEY AUTO_INCREMENT, 
    nom VARCHAR(50) NOT NULL,
    date_debut DATETIME NOT NULL,
    date_fin DATETIME NOT NULL
);

CREATE TABLE Participer(
	id_judoka INT,
    id_competition INT,
    FOREIGN KEY (id_judoka) REFERENCES Judokas(id_judoka),
    FOREIGN KEY (id_competition) REFERENCES Competitions(id_competition)
);

ALTER TABLE Participer
	ADD PRIMARY KEY (id_judoka, id_competition);
    
    
    
ALTER TABLE Judokas
	ADD COLUMN email VARCHAR(50) NOT NULL UNIQUE,
    ADD COLUMN telephone VARCHAR(20) NOT NULL,
    ADD COLUMN adresse VARCHAR(255) NOT NULL,
    ADD COLUMN password VARCHAR(100) NOT NULL;
    
CREATE TABLE Messages(
	id_message INT,
	sujet VARCHAR(255) NOT NULL,
    contenu TEXT NOT NULL,
    date_message DATETIME NOT NULL,
    id_auteur INT,
    FOREIGN KEY (id_auteur) REFERENCES Judokas(id_judoka)
);

CREATE TABLE judokas_messages(
	id_destinataire INT,
    id_Messages INT,
    FOREIGN KEY (id_destinataire) REFERENCES Judokas(id_judoka),
    FOREIGN KEY (id_Messages) REFERENCES Messages(id_message),
    PRIMARY KEY (id_destinataire, id_Messages)
);

ALTER TABLE Messages
	ADD PRIMARY KEY (id_message);

