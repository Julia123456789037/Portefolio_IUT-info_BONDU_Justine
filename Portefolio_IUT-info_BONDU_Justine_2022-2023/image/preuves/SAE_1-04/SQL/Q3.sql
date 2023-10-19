/* Quelles sont les qualifications de l’intérimaire qui a signé le contrat numéro 101 ? */

Select	Q.*
From	Interimaire I JOIN Qualification Q ON Q.code_qualification = I.code_qualification
Where	num_interim IN (Select	num_interim
                        From	INTERVENIR
						Where	num_contrat = 101); 