/*  Afficher les numéros, les noms et les niveaux de qualification des intérimaires comptables. */

Select	num_interim, nom_interim, libelle_niveau_qualif
From	Interimaire I JOIN NIVEAU_QUALIFICATION NQ ON I.code_niveau_qualif = NQ.code_niveau_qualif
Where	num_interim IN (Select	num_interim
						From	Qualification Q JOIN Branche B ON Q.code_branche = B.code_branche
						Where	libelle_branche = UPPER('comptabilite'));