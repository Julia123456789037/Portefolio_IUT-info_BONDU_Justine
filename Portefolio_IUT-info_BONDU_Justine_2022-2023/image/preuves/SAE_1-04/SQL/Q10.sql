/* Quel est (quels sont) le (les) client(s) (raison_sociale et adresse) qui a (qui ont) demandé un intérimaire
chef débutant dans la restauration ? */

Select	raison_sociale, adresse_client
From	client cl JOIN contrat co ON cl.num_client = co.num_client
				  JOIN REQUERIR R ON co.num_contrat = R.num_contrat
				  JOIN Qualification Q ON R.code_qualification = Q.code_qualification
Where 	code_branche 		IN (Select	code_branche
								From	branche
								Where	libelle_branche = UPPER('restauration'))   AND

		code_niveau_qualif	IN (Select	code_niveau_qualif
		                     	From	NIVEAU_QUALIFICATION
							  	Where	libelle_niveau_qualif = UPPER('debutant'))  AND

		libelle_qualification = UPPER('chef');
		