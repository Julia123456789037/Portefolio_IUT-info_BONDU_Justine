/* Afficher le numéro, nom, prénom, branche, qualification et niveau de celle-ci des intérimaires du havre. */

SELECT  I.num_interim, I.nom_interim, I.prenom_interim, B.libelle_branche, Q.libelle_qualification, N.libelle_niveau_qualif
FROM    INTERIMAIRE I JOIN QUALIFICATION Q         ON I.code_qualification=Q.code_qualification
                      JOIN NIVEAU_QUALIFICATION N  ON I.code_niveau_qualif=N.code_niveau_qualif
                      JOIN BRANCHE B               ON B.code_branche=Q.code_branche
WHERE   adresse_interim='LE HAVRE';

