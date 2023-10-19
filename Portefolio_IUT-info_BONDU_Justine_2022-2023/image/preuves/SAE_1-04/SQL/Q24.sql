/* Afficher les raison sociale des clients par ordre alphabétique qui sont dans une ville contenant un ‘o’. */

SELECT    raison_sociale
FROM      CLIENT 
WHERE     adresse_client LIKE '%o%' OR 
          adresse_client LIKE '%O%'
ORDER BY  raison_sociale DESC;

