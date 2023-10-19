/*  Lister les contrats du client 'FORD', le montant total, montant versé et les règlements qu'il a effectués
(sommes et dates). */

Select	c.num_contrat, montant_total, montant_verse, num_reglement
From 	contrat c JOIN Reglement R ON c.num_contrat = R.num_contrat
Where	num_client IN (Select	num_client
                       From 	Client
					   Where	raison_sociale = UPPER('ford'));