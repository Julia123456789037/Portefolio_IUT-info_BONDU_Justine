/*Le nom des ingénieurs spécialiste, confirmé et expert qui n'ont pas de contrat*/
Select  nom_interim
From    INTERIMAIRE im join NIVEAU_QUALIFICATION n on im.code_niveau_qualif=n.code_niveau_qualif join INTERVENIR iv on im.num_interim=iv.num_interim
Where   libelle_niveau_qualif in ('SPECIALISTE','CONFIRME','EXPERT') AND
        num_contrat = Null;