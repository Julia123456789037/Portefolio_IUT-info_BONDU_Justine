/*  Combien y a-t-il d'intérimaires débutants ? */

Select	COUNT(*)
From	Interimaire I JOIN NIVEAU_QUALIFICATION NQ ON I.code_niveau_qualif = NQ.code_niveau_qualif
Where 	libelle_niveau_qualif = 'DEBUTANT';