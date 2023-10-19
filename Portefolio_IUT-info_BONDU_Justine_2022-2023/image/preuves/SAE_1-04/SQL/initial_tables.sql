
/* INITIALISATION DES TABLES AVEC LES DONNEES DONNEE, ET CREER. */

/* NIVEAU_QUALIFICATION */

Insert into NIVEAU_QUALIFICATION values(1, 'DEBUTANT',   5);
Insert into NIVEAU_QUALIFICATION values(2, 'EXPERT',     8);
Insert into NIVEAU_QUALIFICATION values(3, 'CONFIRME',   12);
Insert into NIVEAU_QUALIFICATION values(4, 'SPECIALISTE',14);


/* BRANCHE */

Insert into BRANCHE values(1, 'RESTAURATION');
Insert into BRANCHE values(2, 'INFORMATIQUE');
Insert into BRANCHE values(3, 'SECRETARIAT');
Insert into BRANCHE values(4, 'BATIMENT');
Insert into BRANCHE values(5, 'COMPTABILITE');



/* CLIENT */

Insert into CLIENT values(1, 'FORD',      'PARIS');
Insert into CLIENT values(2, 'PEUGEOT',   'TOULOUSE');
Insert into CLIENT values(3, 'SIEMENS',   'PARIS');
Insert into CLIENT values(4, 'BIHANIC',   'BORDEAUX');
Insert into CLIENT values(5, 'CRAM',      'AGEN');
Insert into CLIENT values(6, 'MAIF',      'TOULOUSE');
Insert into CLIENT values(7, 'AUCHAN',    'PARIS');
Insert into CLIENT values(8, 'CARREFOUR', 'TOULOUSE');


/* QUALIFICATION */

Insert into QUALIFICATION values(1, 'INGENIEUR',210,4);
Insert into QUALIFICATION values(2, 'ANALYSTE' ,150,2);
Insert into QUALIFICATION values(3, 'COMPTABLE',170,5);
Insert into QUALIFICATION values(4, 'CHEF'     ,160,1);
Insert into QUALIFICATION values(5, 'EMPLOYE'  ,100,3);



/* CONTRAT */

Insert into CONTRAT values(101, '2020-01-01', '2020-12-31', 852000.00,    85200.00,     6);
Insert into CONTRAT values(102, '2019-01-01', '2021-05-01', 160.00,       63.00,        3);
Insert into CONTRAT values(103, '1998-01-01', '2019-11-07', 741000000.00, 365000000.00, 8);
Insert into CONTRAT values(104, '2009-01-01', '2022-05-15', 45600.00,     31800.00,     4);
Insert into CONTRAT values(105, '2017-06-01', '2018-05-31', 951800.00,    542160.00,    2);
Insert into CONTRAT values(106, '2020-02-01', '2020-10-01', 354000.00,    85000.00,     7);
Insert into CONTRAT values(107, '2010-04-15', '2012-09-02', 8423600.00,   2845650.00,   1);
Insert into CONTRAT values(108, '2017-01-01', '2019-04-30', 3740500.00,   298500.00,    6);


/* REGLEMENT */
Insert into REGLEMENT values(562,  '2001-06-24',5601.32,   103);
Insert into REGLEMENT values(62,   '2017-03-16',63254.23,  108);
Insert into REGLEMENT values(5,    '2009-01-03',5300.00,   104);
Insert into REGLEMENT values(7,    '2010-04-15',850000.00, 107);
Insert into REGLEMENT values(2368, '2003-08-27',12000.00,  103);
Insert into REGLEMENT values(548,  '2020-01-02',85200.00,  101);
Insert into REGLEMENT values(2586, '2021-09-18',8300.00,   103);
Insert into REGLEMENT values(6,    '2020-02-05',35400,     106);
Insert into REGLEMENT values(254,  '2018-12-30',63.00,     102);
Insert into REGLEMENT values(5256, '2022-03-04',2600128,   103);


/* INTERIMAIRE */

Insert into INTERIMAIRE values(1, 'REBILLET',   'MARC',     '1922-02-28', 'PARIS',    0254231578, 122027510202736, 'marc.rebillet@wanadoo.fr',    1 , 3 );
Insert into INTERIMAIRE values(2, 'MORICIOT',   'ERIC',     '1966-01-07', 'ROUEN',    0223578154, 166017602503148, 'eric.moriciot@orange.fr',     3 , 2 );
Insert into INTERIMAIRE values(3, 'JONES',      'JACQUES',  '1961-06-24', 'PARIS',    0254231578, 161067510520475, 'jacques.jones@gmail.com',     3 , 1 );
Insert into INTERIMAIRE values(4, 'OLICAR',     'FABIEN',   '1942-01-17', 'TOURS',    0651432548, 142013715801524, 'fabien.olicar@orange.fr',     2 , 5 );
Insert into INTERIMAIRE values(5, 'ARAMEL',     'ERIC',     '1937-09-30', 'LE HAVRE', 0784521068, 137097610137539, 'eric.aramel@wanadoo.fr',      4 , 4 );
Insert into INTERIMAIRE values(6, 'BIRDY',      'JUSTINE',  '1986-12-18', 'LE HAVRE', 0698521487, 286127608368175, 'justine.birdy@orange.fr',     1 , 2 );
Insert into INTERIMAIRE values(7, 'FORESTI',    'FLORENCE', '1952-02-15', 'ROUEN',    0605710850, 252027620220222, 'florence.foresti@wanadoo.fr', 2 , 3 );
Insert into INTERIMAIRE values(8, 'DEFRINGUE',  'MARC',     '2935-01-12', 'LE HAVRE', 0702748206, 135017630403465, 'marc.defringue@gmail.fr',     3 , 5 );


/* CONVENTION */

Insert into CONVENTION values(1, '2009-01-31', 1, 2500.00, 8);
Insert into CONVENTION values(2, '2021-06-01', 8, 1800.00, 5);
Insert into CONVENTION values(3, '2021-02-28', 6, 3200.00, 7);
Insert into CONVENTION values(4, '2010-06-01', 4, 3600.00, 2);
Insert into CONVENTION values(5, '2015-12-31', 2, 2800.00, 1);
Insert into CONVENTION values(6, '2021-07-15', 3, 3500.00, 3);
Insert into CONVENTION values(7, '2022-03-15', 7, 2600.00, 8);
Insert into CONVENTION values(8, '2012-12-01', 1, 5400.00, 6);

