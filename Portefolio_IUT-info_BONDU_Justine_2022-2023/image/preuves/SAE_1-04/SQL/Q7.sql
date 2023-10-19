/*  Quelle est la date de début de la (ou des) convention(s) qu'a signé l'intérimaire MARC ainsi que la durée
de la (ou des) convention(s), les numéros d'ordre (de la convention ou des conventions). */

Select	date_debut_conv, durree_conv, num_ordre
From	Convention c JOIN Interimaire I ON c.num_interim = I.num_interim
Where	nom_interim = UPPER('marc');