/*Trouver les noms des intérimaires ingénieurs débutants en informatique.*/

Select  nom_interim
From    Interimaire i join qualification q        on i.code_qualification=q.code_qualification 
                      join NIVEAU_QUALIFICATION n on i.code_niveau_qualif=n.code_niveau_qualif 
                      join Branche b              on q.code_branche=b.code_branche
Where   libelle_qualification = 'INGENIEUR' And
        libelle_niveau_qualif = 'DEBUTANT' And
        libelle_branche = 'INFORMATIQUE';
        
        
