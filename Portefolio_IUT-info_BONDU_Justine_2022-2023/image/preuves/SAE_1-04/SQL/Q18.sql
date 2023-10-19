/* Trouver toutes les informations (qualification et niveau requis, les branches déployés, les intérimaires participant, 
   le client ayant signés le contrat)  relatives au contrat 105 hormis les réglements et 
   la convention des intérimaires concernés*/

Select	Q.code_qualification, Q.libelle_qualification, Q.taux_fact_journalier, NQ.*, B.*, IM.*, cl.*, co.num_contrat, co.date_debut_contrat, co.date_fin_contrat, co.montant_total, co.montant_verse
From	contrat co JOIN REQUERIR r ON co.num_contrat = r.num_contrat
                   JOIN qualification Q ON r.code_qualification = Q.code_qualification
				   JOIN NIVEAU_QUALIFICATION NQ ON r.code_niveau_qualif = NQ.code_niveau_qualif
				   JOIN BRANCHE B ON Q.code_branche = B.code_branche
				   JOIN client cl ON co.num_client = cl.num_client
				   JOIN intervenir IV ON IV.num_contrat = CO.num_contrat
				   JOIN interimaire IM ON IV.num_interim = IM.num_interim
Where	co.num_contrat = 105;