/* Quels sont les numéros, noms et adresses des intérimaires qui n'ont pas signé de contrats. */

Select	num_interim, nom_interim, adresse_interim
From	Interimaire
Where	num_interim NOT IN (Select	num_interim
							From	INTERVENIR);