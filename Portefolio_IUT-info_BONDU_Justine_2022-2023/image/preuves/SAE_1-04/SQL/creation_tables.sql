
/* ON DETRUIT LES TABLES */

DROP TABLE NIVEAU_QUALIFICATION CASCADE ;
DROP TABLE NIVEAU_QUALIFICATION;

DROP TABLE BRANCHE CASCADE;
DROP TABLE CLIENT CASCADE;
DROP TABLE QUALIFICATION CASCADE;
DROP TABLE CONTRAT CASCADE;

DROP TABLE REGLEMENT CASCADE;
DROP TABLE INTERIMAIRE CASCADE;
DROP TABLE CONVENTION CASCADE;
DROP TABLE REQUERIR CASCADE;
DROP TABLE INTERVENIR CASCADE;


/* ON CREER LES TABLES */

CREATE TABLE NIVEAU_QUALIFICATION(
   code_niveau_qualif INTEGER,
   libelle_niveau_qualif VARCHAR(50) check (libelle_niveau_qualif in ('DEBUTANT','EXPERT','CONFIRME','SPECIALISTE')) not null,
   coeff_facturation INTEGER NOT NULL,
   PRIMARY KEY(code_niveau_qualif)
);

CREATE TABLE BRANCHE(
   code_branche INTEGER,
   libelle_branche VARCHAR(50)  NOT NULL,
   PRIMARY KEY(code_branche)
);

CREATE TABLE CLIENT(
   num_client INTEGER,
   raison_sociale VARCHAR(50)  NOT NULL,
   adresse_client VARCHAR(50)  NOT NULL,
   PRIMARY KEY(num_client)
);

CREATE TABLE QUALIFICATION(
   code_qualification INTEGER,
   libelle_qualification VARCHAR(50)  NOT NULL,
   taux_fact_journalier INTEGER NOT NULL,
   code_branche INTEGER  NOT NULL,
   PRIMARY KEY(code_qualification),
   FOREIGN KEY(code_branche) REFERENCES BRANCHE(code_branche)
);

CREATE TABLE CONTRAT(
   num_contrat INTEGER,
   date_debut_contrat DATE NOT NULL,
   date_fin_contrat DATE NOT NULL,
   montant_total MONEY NOT NULL,
   montant_verse MONEY NOT NULL,
   num_client INTEGER NOT NULL,
   PRIMARY KEY(num_contrat),
   FOREIGN KEY(num_client) REFERENCES CLIENT(num_client)
);

CREATE TABLE REGLEMENT(
   num_reglement INTEGER,
   date_reglement DATE NOT NULL,
   montant_a_payer MONEY NOT NULL,
   num_contrat INTEGER NOT NULL,
   PRIMARY KEY(num_reglement),
   FOREIGN KEY(num_contrat) REFERENCES CONTRAT(num_contrat)
);

CREATE TABLE INTERIMAIRE(
   num_interim INTEGER,
   nom_interim VARCHAR(50)  NOT NULL,
   prenom_interim VARCHAR(50)  NOT NULL,
   date_naissance DATE NOT NULL,
   adresse_interim VARCHAR(50)  NOT NULL,
   tel_interim NUMERIC(10,0)   NOT NULL,
   num_SS VARCHAR(50)  NOT NULL,
   mail_interim VARCHAR(50)  NOT NULL,
   code_niveau_qualif INTEGER NOT NULL,
   code_qualification INTEGER NOT NULL,
   PRIMARY KEY(num_interim),
   FOREIGN KEY(code_niveau_qualif) REFERENCES NIVEAU_QUALIFICATION(code_niveau_qualif),
   FOREIGN KEY(code_qualification) REFERENCES QUALIFICATION(code_qualification)
);

CREATE TABLE CONVENTION(
   num_ordre INTEGER,
   date_debut_conv DATE NOT NULL,
   durree_conv INTEGER NOT NULL,
   salaire MONEY NOT NULL,
   num_interim INTEGER NOT NULL,
   PRIMARY KEY(num_ordre),
   FOREIGN KEY(num_interim) REFERENCES INTERIMAIRE(num_interim)
);

CREATE TABLE REQUERIR(
   code_qualification INTEGER,
   code_niveau_qualif INTEGER,
   num_contrat INTEGER,
   PRIMARY KEY(code_qualification, code_niveau_qualif, num_contrat),
   FOREIGN KEY(code_qualification) REFERENCES QUALIFICATION(code_qualification),
   FOREIGN KEY(code_niveau_qualif) REFERENCES NIVEAU_QUALIFICATION(code_niveau_qualif),
   FOREIGN KEY(num_contrat) REFERENCES CONTRAT(num_contrat)
);

CREATE TABLE INTERVENIR(
   num_interim INTEGER,
   num_contrat INTEGER,
   PRIMARY KEY(num_interim, num_contrat),
   FOREIGN KEY(num_interim) REFERENCES INTERIMAIRE(num_interim),
   FOREIGN KEY(num_contrat) REFERENCES CONTRAT(num_contrat)
);
