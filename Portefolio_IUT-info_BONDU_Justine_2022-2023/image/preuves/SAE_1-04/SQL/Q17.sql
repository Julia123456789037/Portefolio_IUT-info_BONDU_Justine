/* Afficher le client qui ont signé le contrat 102 et les intérimaires intervenant dans le contrat 102. */

Select	cl.*, im.*
From	contrat co JOIN intervenir  Iv ON co.num_contrat = iv.num_contrat
                JOIN client      cl ON cl.num_client  = co.num_client
                JOIN interimaire im ON im.num_interim = iv.num_interim
Where   Iv.num_contrat = 102;            

