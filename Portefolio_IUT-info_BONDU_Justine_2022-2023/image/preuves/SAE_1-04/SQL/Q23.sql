/* Affiche les qualifications affilié à la branche “informatique”. */

SELECT  Q.libelle_qualification
FROM    BRANCHE B JOIN QUALIFICATION Q ON B.code_branche=Q.code_branche
WHERE   libelle_branche='INFORMATIQUE';
