/* Quelle est (ou quelles sont) la (ou les) branche(s) de l'intérimaire (ou des intérimaires) dont le nom est
'MARC' ? */

Select	*
From	Branche
Where	code_branche IN (Select	code_branche
						 From	Qualification Q JOIN Interimaire I ON Q.code_qualification = I.code_qualification
						 Where	nom_interim = UPPER('marc'));