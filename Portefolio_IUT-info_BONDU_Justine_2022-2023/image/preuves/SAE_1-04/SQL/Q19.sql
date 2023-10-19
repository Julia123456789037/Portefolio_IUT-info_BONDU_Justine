/* afficher chaque qualification classés par ordre croissant alphabétiquement et décroissant des  taux de facturation journaliers */

Select	*
From	qualification
ORDER BY libelle_qualification ASC,
		taux_fact_journalier DESC;