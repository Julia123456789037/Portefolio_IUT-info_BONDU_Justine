/*Coût total des contrats de l'entreprise Ford*/
Select  Sum(montant_total)
From    Contrat co join client cl on co.num_client=cl.num_client
Where   raison_sociale = 'FORD';