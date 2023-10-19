/* Afficher le salaire, selon la convention du 01/12/2012, la qualification et son niveau, de l'intérimaire “justine”. */

SELECT  C.salaire, Q.libelle_qualification, N.libelle_niveau_qualif
FROM    INTERIMAIRE I JOIN CONVENTION C            ON I.num_interim=C.num_interim
                      JOIN QUALIFICATION Q         ON I.code_qualification=Q.code_qualification
                      JOIN NIVEAU_QUALIFICATION N  ON I.code_niveau_qualif=N.code_niveau_qualif
WHERE   I.prenom_interim='JUSTINE'                                  AND
        Q.code_qualification    IN (SELECT code_qualification
                                    FROM INTERIMAIRE
                                    WHERE prenom_interim='JUSTINE') AND
        N.libelle_niveau_qualif IN (SELECT libelle_niveau_qualif
                                    FROM INTERIMAIRE
                                    WHERE prenom_interim='JUSTINE'
                                   );

