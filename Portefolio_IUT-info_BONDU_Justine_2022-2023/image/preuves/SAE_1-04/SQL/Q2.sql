/*  Quel client (raison_sociale et adresse) a signé le contrat numéro 101 ?*/

Select	raison_sociale, adresse_client
From 	Client cl JOIN Contrat co ON cl.num_client = co.num_client
Where	num_contrat = 101; 