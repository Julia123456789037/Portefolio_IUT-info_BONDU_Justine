/*  Trouver les entreprises qui recherche des ingénieurs d’un niveau “expert” ou des chef de niveau 'confirmé'. */

Select	cl.*
From	client cl JOIN contrat co ON cl.num_client = co.num_client
				 JOIN Requerir r ON co.num_contrat = r.num_contrat
Where	(	code_qualification IN (Select	code_qualification
								   From		QUALIFICATION
								   Where 	libelle_qualification = UPPER('ingenieur')) AND
			code_niveau_qualif IN (Select	code_niveau_qualif
			                       From		NIVEAU_QUALIFICATION
								   Where	libelle_niveau_qualif = UPPER('expert'))) OR
		(	code_qualification IN (Select	code_qualification
								   From		QUALIFICATION
								   Where 	libelle_qualification = UPPER('chef')) AND
			code_niveau_qualif IN (Select	code_niveau_qualif
			                       From		NIVEAU_QUALIFICATION
								   Where	libelle_niveau_qualif = UPPER('confirme')));
