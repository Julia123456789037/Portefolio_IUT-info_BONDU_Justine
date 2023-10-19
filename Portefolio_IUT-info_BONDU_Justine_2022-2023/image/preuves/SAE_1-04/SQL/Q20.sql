/*  Chercher l’intérimaire ayant la durée de convention la plus longue  */

Select	*
From	Interimaire
Where	num_interim IN (select 	Max(durree_conv)
						From	convention);