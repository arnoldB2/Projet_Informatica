/*jointure avec le joiner*/

--Creation de la table Source NJ_s1

DROP TABLE NJ_s1;
CREATE TABLE NJ_s1
(
	ID_NJ_s1 INT,
	NOM VARCHAR(100),
	PRENOM VARCHAR(100),
	EMAIL VARCHAR(100),
	VILLE VARCHAR(100),
	PAYS VARCHAR(100)
);

--Creation de la table Source NJ_s2

DROP TABLE NJ_s2;
CREATE TABLE NJ_s2
(
	ID_NJ_s2 INT,
	DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
);

--Creation de la table CIBLE NJ_C

DROP TABLE NJ_c;
CREATE TABLE NJ_c
(
	ID_NJ_s1 INT,
	NOM VARCHAR(100),
	PRENOM VARCHAR(100),
	ID_NJ_s2 INT,
	DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)
);

/*jointure avec le Source Qualifier*/

--Creation de la table Source NJ_SQ_s1

DROP TABLE NJ_SQ_s1;
CREATE TABLE NJ_SQ_s1
(
	ID_NJ_SQ_s1 INT,
	NOM VARCHAR(100),
	PRENOM VARCHAR(100),
	EMAIL VARCHAR(100),
	VILLE VARCHAR(100),
	PAYS VARCHAR(100)
);

--Creation de la table Source NJ_SQ_s2

DROP TABLE NJ_SQ_s2;
CREATE TABLE NJ_SQ_s2
(
	ID_NJ_SQ_s2 INT,
	DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
);

--Creation de la table CIBLE NJ_QS_C

DROP TABLE NJ_SQ_c;
CREATE TABLE NJ_SQ_c
(
	ID_NJ_QS_s1 INT,
	NOM VARCHAR(100),
	PRENOM VARCHAR(100),
	ID_NJ_QS_s2 INT,
	DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)
);

-- Alimentation des tables Sources NJ_s1
INSERT INTO NJ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO NJ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO NJ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO NJ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources NJ_s2
INSERT INTO NJ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO NJ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO NJ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO NJ_s2 VALUES ('2',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO NJ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


-- Alimentation des tables Sources NJ_SQ_s1
INSERT INTO NJ_SQ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO NJ_SQ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO NJ_SQ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO NJ_SQ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources NJ_SQ_s2
INSERT INTO NJ_SQ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO NJ_SQ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO NJ_SQ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO NJ_SQ_s2 VALUES ('2',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO NJ_SQ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


SELECT * FROM NJ_s1 ;
SELECT * FROM NJ_s2 ;

SELECT * FROM NJ_s1 ORDER BY ID_NJ_S1 ;
SELECT * FROM NJ_s2 ORDER BY ID_NJ_S2 ;
SELECT * FROM NJ_c ;

SELECT ID_NJ_S1, ID_NJ_S2 FROM NJ_S1 ns 
INNER JOIN NJ_S2 ns2 ON ns.ID_NJ_S1 = ns2.ID_NJ_S2 
ORDER BY ID_NJ_S1;

SELECT * FROM NJ_SQ_s1 ;
SELECT * FROM NJ_SQ_s2 ;
SELECT * FROM NJ_SQ_c ;

SELECT NJ_s1.ID_NJ_s1, NJ_s1.NOM,NJ_s1.PRENOM, NJ_s2.ID_NJ_s2, NJ_s2.DATE_ACHAT, NJ_s2.NUM_FACTURE FROM NJ_s1 INNER JOIN NJ_s2 ON ID_NJ_s1=ID_NJ_s2 ;
 




/* ************************** Exerice Master Outer JOIN  ************************** */
-- Création de la table Source MOJ_s1
DROP TABLE MOJ_s1 ;
CREATE TABLE MOJ_s1
(
    ID_MOJ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    EMAIL VARCHAR(255),
	VILLE VARCHAR(255),
    PAYS VARCHAR(255)
) ;

-- Création de la table Source MOJ_s2
DROP TABLE MOJ_s2 ;
CREATE TABLE MOJ_s2
(
    ID_MOJ_s2 INT ,
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
) ;

-- Création de la table Cible MOJ_c
DROP TABLE MOJ_c ;
CREATE TABLE MOJ_c
(
    ID_MOJ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    ID_MOJ_s2 INT, 
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)

  ) ;
  
-- Création de la table Source MOJ_SQ_s1
DROP TABLE MOJ_SQ_s1 ;
CREATE TABLE MOJ_SQ_s1
(
    ID_MOJ_SQ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    EMAIL VARCHAR(255),
	VILLE VARCHAR(255),
    PAYS VARCHAR(255)
) ;

-- Création de la table Source MOJ_SQ_s2
DROP TABLE MOJ_SQ_s2 ;
CREATE TABLE MOJ_SQ_s2
(
    ID_MOJ_SQ_s2 INT ,
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
) ;

-- Création de la table Cible MOJ_SQ_c
DROP TABLE MOJ_SQ_c ;
CREATE TABLE MOJ_SQ_c
(
    ID_MOJ_SQ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    ID_MOJ_SQ_s2 INT, 
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)

  ) ;

 
 -- Alimentation des tables Sources MOJ_s1
INSERT INTO MOJ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO MOJ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO MOJ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO MOJ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources MOJ_s2
INSERT INTO MOJ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO MOJ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO MOJ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO MOJ_s2 VALUES ('2',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO MOJ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


-- Alimentation des tables Sources MOJ_SQ_s1
INSERT INTO MOJ_SQ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO MOJ_SQ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO MOJ_SQ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO MOJ_SQ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources MOJ_SQ_s2
INSERT INTO MOJ_SQ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO MOJ_SQ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO MOJ_SQ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO MOJ_SQ_s2 VALUES ('2',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO MOJ_SQ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


SELECT * FROM MOJ_s1 ;
SELECT * FROM MOJ_s2 ;
SELECT * FROM MOJ_c ;

SELECT * FROM MOJ_SQ_s1 ;
SELECT * FROM MOJ_SQ_s2 ;
SELECT * FROM MOJ_SQ_c ;

SELECT 
MOJ_s1.ID_MOJ_s1, 
MOJ_s1.NOM,
MOJ_s1.PRENOM, 
MOJ_s2.ID_MOJ_s2, 
MOJ_s2.DATE_ACHAT, 
MOJ_s2.NUM_FACTURE 
FROM MOJ_s1 
LEFT JOIN MOJ_s2 ON ID_MOJ_s1=ID_MOJ_s2 ;
 
/* ************************** Exerice Detail Outer JOIN  ************************** */
-- Création de la table Source DOJ_s1
DROP TABLE DOJ_s1 ;
CREATE TABLE DOJ_s1
(
    ID_DOJ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    EMAIL VARCHAR(255),
	VILLE VARCHAR(255),
    PAYS VARCHAR(255)
) ;

-- Création de la table Source DOJ_s2
DROP TABLE DOJ_s2 ;
CREATE TABLE DOJ_s2
(
    ID_DOJ_s2 INT ,
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
) ;

-- Création de la table Cible DOJ_c
DROP TABLE DOJ_c ;
CREATE TABLE DOJ_c
(
    ID_DOJ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    ID_DOJ_s2 INT, 
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)

  ) ;
 
-- Création de la table Source DOJ_SQ_s1
DROP TABLE DOJ_SQ_s1 ;
CREATE TABLE DOJ_SQ_s1
(
    ID_DOJ_SQ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    EMAIL VARCHAR(255),
	VILLE VARCHAR(255),
    PAYS VARCHAR(255)
) ;

-- Création de la table Source DOJ_SQ_s2
DROP TABLE DOJ_SQ_s2 ;
CREATE TABLE DOJ_SQ_s2
(
    ID_DOJ_SQ_s2 INT ,
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
) ;

-- Création de la table Cible DOJ_SQ_c
DROP TABLE DOJ_SQ_c ;
CREATE TABLE DOJ_SQ_c
(
    ID_DOJ_SQ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    ID_DOJ_SQ_s2 INT, 
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)

  ) ;
 
 -- Alimentation des tables Sources DOJ_s1
INSERT INTO DOJ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO DOJ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO DOJ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO DOJ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources DOJ_s2
INSERT INTO DOJ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO DOJ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO DOJ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO DOJ_s2 VALUES ('3',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO DOJ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


-- Alimentation des tables Sources DOJ_SQ_s1
INSERT INTO DOJ_SQ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO DOJ_SQ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO DOJ_SQ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO DOJ_SQ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources DOJ_SQ_s2
INSERT INTO DOJ_SQ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO DOJ_SQ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO DOJ_SQ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO DOJ_SQ_s2 VALUES ('3',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO DOJ_SQ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


SELECT * FROM DOJ_s1 ;
SELECT * FROM DOJ_s2 ;
SELECT * FROM DOJ_c ;

SELECT * FROM DOJ_SQ_s1 ;
SELECT * FROM DOJ_SQ_s2 ;
SELECT * FROM DOJ_SQ_c ;

SELECT DOJ_s1.ID_NJ_s1, DOJ_s1.NOM,DOJ_s1.PRENOM, DOJ_s2.ID_DOJ_s2, DOJ_s2.DATE_ACHAT, DOJ_s2.NUM_FACTURE FROM DOJ_s1 INNER JOIN DOJ_s2 ON ID_NJ_s1=ID_DOJ_s2 ;

/* **************************  Exerice Full Outer JOIN  ************************** */
-- Création de la table Source FOJ_s1
DROP TABLE FOJ_s1 ;
CREATE TABLE FOJ_s1
(
    ID_FOJ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    EMAIL VARCHAR(255),
	VILLE VARCHAR(255),
    PAYS VARCHAR(255)
) ;

-- Création de la table Source FOJ_s2
DROP TABLE FOJ_s2 ;
CREATE TABLE FOJ_s2
(
    ID_FOJ_s2 INT ,
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
) ;

-- Création de la table Cible FOJ_c
DROP TABLE FOJ_c ;
CREATE TABLE FOJ_c
(
    ID_FOJ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    ID_FOJ_s2 INT, 
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)

  ) ;
  
-- Création de la table Source FOJ_SQ_s1
DROP TABLE FOJ_SQ_s1 ;
CREATE TABLE FOJ_SQ_s1
(
    ID_FOJ_SQ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    EMAIL VARCHAR(255),
	VILLE VARCHAR(255),
    PAYS VARCHAR(255)
) ;

-- Création de la table Source FOJ_SQ_s2
DROP TABLE FOJ_SQ_s2 ;
CREATE TABLE FOJ_SQ_s2
(
    ID_FOJ_SQ_s2 INT ,
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100),
	PRIX_TOTAL NUMERIC(10,5)
) ;

-- Création de la table Cible FOJ_SQ_c
DROP TABLE FOJ_SQ_c ;
CREATE TABLE FOJ_SQ_c
(
    ID_FOJ_SQ_s1 INT ,
    NOM VARCHAR(100),
    PRENOM VARCHAR(100),
    ID_FOJ_SQ_s2 INT, 
    DATE_ACHAT DATE,
	NUM_FACTURE VARCHAR(100)

  ) ;
 
 -- Alimentation des tables Sources FOJ_s1
INSERT INTO FOJ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO FOJ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO FOJ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO FOJ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources FOJ_s2
INSERT INTO FOJ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO FOJ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO FOJ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO FOJ_s2 VALUES ('3',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO FOJ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


-- Alimentation des tables Sources FOJ_SQ_s1
INSERT INTO FOJ_SQ_s1 VALUES ('1','ABSCHEN','Jean','ABSCHEN.Jean@mail.com','Paris','France') ;
INSERT INTO FOJ_SQ_s1 VALUES ('2','ADAMO','Stéphane','ADAMO.Stéphane@mail.com','Strasbourg','France') ;
INSERT INTO FOJ_SQ_s1 VALUES ('3','AMELLAL','Viviane','AMELLAL.Viviane@mail.com','Nice','France') ;
INSERT INTO FOJ_SQ_s1 VALUES ('4','ANGONIN','Jean-Pierre','ANGONIN.Jean-Pierre@mail.com','Nantes','France') ;

-- Alimentation des tables Sources FOJ_SQ_s2
INSERT INTO FOJ_SQ_s2 VALUES ('1',TO_DATE('2020/05/15','YYYY/MM/DD'),'FAC200515',405.99);
INSERT INTO FOJ_SQ_s2 VALUES ('1',TO_DATE('2019/04/14','YYYY/MM/DD'),'FAC190414',304.21);
INSERT INTO FOJ_SQ_s2 VALUES ('2',TO_DATE('2018/03/13','YYYY/MM/DD'),'FAC180313',209.15);
INSERT INTO FOJ_SQ_s2 VALUES ('3',TO_DATE('2017/02/12','YYYY/MM/DD'),'FAC170212',540.25);
INSERT INTO FOJ_SQ_s2 VALUES ('5',TO_DATE('2016/01/11','YYYY/MM/DD'),'FAC160111',123.02);


SELECT * FROM FOJ_s1 ;
SELECT * FROM FOJ_s2 ;
SELECT * FROM FOJ_c ;

SELECT * FROM FOJ_SQ_s1 ;
SELECT * FROM FOJ_SQ_s2 ;
SELECT * FROM FOJ_SQ_c ;

SELECT FOJ_s1.ID_NJ_s1, FOJ_s1.NOM,FOJ_s1.PRENOM, FOJ_s2.ID_FOJ_s2, FOJ_s2.DATE_ACHAT, FOJ_s2.NUM_FACTURE FROM FOJ_s1 INNER JOIN FOJ_s2 ON ID_NJ_s1=ID_FOJ_s2 ;

----------------------LES CHAINES DE CARATERES---------------------------------------

UPPER ==> Majuscule
UPPER(NOM)
LOWER ==> Minicusle 
--pour recuper la 1ere lettre d'un mot 
UPPER(SUBSTR(PRENOM,1,1)) || LOWER (SUBSTR(PRENOM,2))

--POUR CREER UNE ADRESS MAIL
CONCAT(CONCAT(LOWER(i_PRENOM),LOWER(i_NOM)),'@mail.com')

--pour supprimer les blancs des deux cotés
LTRIM ==>POUR LA GAUCHE

RTRIM(LTRIM(VILLE))

RTRIM==> pour la droit

CREATE TABLE s_EMPLOYEE 
(
	NEMP INT ,	
	NOM VARCHAR(30),						
	PRENOM VARCHAR(30),						
	RUE VARCHAR(50), 						
	CP INT, 
	VILLE VARCHAR (50)
					  
) ;

insert into s_EMPLOYEE (NEMP , NOM, PRENOM, RUE, CP, VILLE)  values (110,'dupont','ALBERT','Rue de Crimée',69001,' Lyon ' ) ;
insert into s_EMPLOYEE (NEMP , NOM, PRENOM, RUE, CP, VILLE)  values (300,'martin','marie','Rue des Acacias',69130,' Ecully' ) ;
insert into s_EMPLOYEE (NEMP , NOM, PRENOM, RUE, CP, VILLE)  values (421,'DURAND','GASTON','Rue de la Meuse',69008,'Lyon ' ) ;
insert into s_EMPLOYEE (NEMP , NOM, PRENOM, RUE, CP, VILLE)  values (575,'TITGOUTTE','justine','Chemin du Château',69630,'Chaponost' ) ;
insert into s_EMPLOYEE (NEMP , NOM, PRENOM, RUE, CP, VILLE)  values (667,'DUPOND','NOÉMIE','Rue de Dôle',69007,' Lyon ' ) ;

SELECT * FROM S_EMPLOYEE se ;
SELECT * FROM C_EMPLOYEE ce ;

create table c_EMPLOYEE
(
	NEMP INT ,						
	NOM VARCHAR(30),						
	PRENOM VARCHAR(30),						
	MAIL VARCHAR(50),						
	RUE VARCHAR(50), 						
	CP INT, 					
	VILLE VARCHAR (50)
					  
) ;

-----------------------------------------------  LES FONCTIONS DE CONVERSION  ----------------------------------------------------

TO_CHAR  CONVERTIR UN CHIFFRE OU UN DECIMAL A UNE CHAINE DE CARATERE 

TO_DATE CONVERTIR UN DECIMAL OU UNE CHAINE DE CARATERE EN DATE

TO_INTEGER CONVERTIR UN NOMBRE EN ENTIER 

TO_FLOAT CONVERTIR UN NOMBRE A UN NOMBRE REEL

TO_DECIMAL CONVERTIR DES NOMBRE EN FORMAT DECIMAL

TO_NUMBER CONVERTIR UNE CHAINE DE CARATERE A UN NOMBRE

------------------------------------------------- NOTE -----------------------------------------------

DROP TABLE s_CONVERSION ;
CREATE TABLE s_CONVERSION (
C_CHAR DECIMAL(8,2),
C_DATE DECIMAL(19,2),
C_INTEGER VARCHAR(50),
C_FLOAT VARCHAR(50),
C_DECIMAL VARCHAR(50),
C_NUMBER VARCHAR(50)
);

DROP TABLE c_CONVERSION ;
CREATE TABLE c_CONVERSION(
C_CHAR VARCHAR(50),
C_DATE DATE,
C_INTEGER INTEGER,
C_FLOAT FLOAT,
C_DECIMAL DECIMAL(19,15),
C_NUMBER NUMBER(19,15)
);

SELECT * FROM s_CONVERSION ;
SELECT * FROM c_CONVERSION ;


insert into s_Conversion values(10.5,31122020, '12345','9.23','10.5',12.34);
insert into s_Conversion values(11.5,01012021, '56789','8.21','12.5',13.12);


commit ;


SELECT * FROM c_CONVERSION ;



-------------------------------------------------NETTOYER LES DONNEES---------------------------------------------------------------------------

- RECUPERATION DE LA PLUS GRADE VALEUR ENTRE DEUX NOMBRE : la fonction Greatest 
- verifier si une valeur existe dans une colonne ou par : la foncton IN

drop table s_CLEAN ;
CREATE TABLE s_CLEAN (
numetu INT,
NOM VARCHAR(30),
PRENOM VARCHAR(30),
DATENAISS DATE ,
RUE VARCHAR(30),
CP INT,
VILLE VARCHAR(30),
NOTE1 INT,
NOTE2 INT 

) ;



CREATE TABLE c_CLEAN (
numetu INT,
NOM VARCHAR(30),
PRENOM VARCHAR(30),
DATENAISS DATE ,
RUE VARCHAR(30),
CP INT,
VILLE VARCHAR(30),
NOTE1 INT,
NOTE2 INT ,
NOTE INT

) ;


SELECT * FROM s_CLEAN ;
SELECT * FROM c_CLEAN ;



insert into s_CLEAN values (110,'','Albert',TO_DATE('1980-06-01','YYYY-MM-DD'),'Rue de Crimée',69001,'Lyon',9,11 );
insert into s_CLEAN values (222,'West','James',TO_DATE('1983-09-03','YYYY-MM-DD'),'Studio','','Hollywood',8,12);
insert into s_CLEAN values (300,'Martin','Marie',TO_DATE('1988-06-05','YYYY-MM-DD'),'Rue des Acacias',69130,'Ecully',14,12 )  ;
insert into s_CLEAN values (421,'Durand','Gaston',TO_DATE('1980-11-15','YYYY-MM-DD'),'Rue de la Meuse',69008,'Lyon',10,13);
insert into s_CLEAN values (575,'Titgoutte','Justine',TO_DATE('1985-02-28','YYYY-MM-DD'),'Chemin du Château',69630,'Chaponost',13,7);
insert into s_CLEAN values (667,'Dupond','Noémie',TO_DATE('1987-09-18','YYYY-MM-DD'),'Rue de Dôle',69007,'Lyon',0,0);


COMMIT ;

-----------------------------------------------------------------LES FONCTIONS POUR LES DATES-------------------------------------------------------

POUR AJOUTER UNE DATE : ADD_TO_DATE(DATE_1,'YY',1)
POUR AJOUTER UNE Mois : ADD_TO_DATE(DATE_1,'MM',1)
POUR AJOUTER UNE Jour : ADD_TO_DATE(DATE_1,'JJ',1)
POUR AJOUTER UNE heure : ADD_TO_DATE(DATE_1,'HH',1)

pour recuperer l'années d'une DATE : Get_Date_Part(DATE,'YYYY')
pour recuperer l'années d'une Mois : Get_Date_Part(DATE,'MM')
pour recuperer l'années d'une Jour : Get_Date_Part(DATE,'JJ')

DROP TABLE S_DATE ;
CREATE TABLE S_DATE (
ANNEE VARCHAR(4),
MOIS VARCHAR(2),
DATE_1 DATE ,
DATE_2 DATE ,
DATE_3 DATE 
) ;

CREATE TABLE C_DATE (
ANNEE VARCHAR(4),
MOIS VARCHAR(2),
DATE_1 DATE ,
DATE_2 DATE ,
DATE_3 DATE 
) ;


INSERT INTO S_DATE VALUES ( '','',TO_DATE('2019-11-06','YYYY-MM-DD') , TO_DATE('2020-12-31','YYYY-MM-DD'),'' ) ;
INSERT INTO S_DATE VALUES ( '','',TO_DATE('2018-10-05','YYYY-MM-DD') , TO_DATE('2019-12-31','YYYY-MM-DD'),''  ) ;
INSERT INTO S_DATE VALUES ( '','',TO_DATE('2017-09-04','YYYY-MM-DD') , TO_DATE('2018-12-31','YYYY-MM-DD'),''  ) ;
INSERT INTO S_DATE VALUES ( '','',TO_DATE('2016-08-03','YYYY-MM-DD') , TO_DATE('2017-12-31','YYYY-MM-DD') ,'' ) ;
INSERT INTO S_DATE VALUES ( '','',TO_DATE('2015-07-02','YYYY-MM-DD') , TO_DATE('2016-12-31','YYYY-MM-DD'),''  ) ;
INSERT INTO S_DATE VALUES ( '','',TO_DATE('2014-06-01','YYYY-MM-DD') , TO_DATE('2015-12-31','YYYY-MM-DD'),''  ) ;

COMMIT ;

SELECT * FROM C_DATE ;
SELECT * FROM S_DATE ;

---------------------------------------------------------------- MANIPULATION DES DONNEES NUMERIQUES----------------------------------------------------------

1 )POUR TRUNQUER UN NOMBRE : TRUNC ==>TRUNC(Valeur, Précision)
Exemple TRUNC (10.12345,4) le resultal sera 10,1

2) pour arrondir d'un chiffre: ROUND(Valeur, Précision)
Exemple ROUND(12.9936,3) le resultal sera 12,994

3) pour avoir le carre d un chiffre: SQRT
Exemple SQRT(16) le resultal sera 4

CREATE TABLE s_NUMERIC (
C1 DECIMAL(19,15) ,
C2 DECIMAL(19,15) ,
C3 INT 
) ;


insert into s_NUMERIC values( 12.3456789 , 12.3456789 , 9 ) ;
insert into s_NUMERIC values( 524.35 , 524.35 , 10 ) ;


CREATE TABLE c_NUMERIC (
C1 DECIMAL(19,15) ,
C2 DECIMAL(19,15) ,
C3 INT 
) ;

SELECT * FROM S_NUMERIC sn ;
SELECT * FROM C_NUMERIC cn ;


------------------------------------------------------------------les fonctions de testes---------------------------------------------------------------------------------------

DECODE ==> DECODE(TRUE, Condition1, Résultat1, Résultat2)
IIF ==> IIF(Condition1, Résultat1, Résultat2)
permet d arrete la fonction si la CONDITION est respecter

ABORT






CREATE TABLE s_ETUDIANT(
		NUMETU INT ,
		NOM VARCHAR(50),
		PRENOM VARCHAR(50),
		NOTE INT 
) ;


CREATE TABLE c_ETUDIANT(
		NUMETU INT ,
		NOM VARCHAR(50) ,
		PRENOM VARCHAR(50),
		NOTE INT ,
		STATUT VARCHAR(50)
		) ; 
        
insert into s_ETUDIANT values (110,'Dupont','Albert', 10 );
insert into s_ETUDIANT values (222,'West','James', 12 );
insert into s_ETUDIANT values (300,'Martin','Marie', 08 )  ;
insert into s_ETUDIANT values (421,'Durand','Gaston', 06 );
insert into s_ETUDIANT values (575,'Titgoutte','Justine', 14 );
insert into s_ETUDIANT values (667,'Dupond','Noémie', 13 );
insert into s_ETUDIANT values (999,'Phantom','Marcel', 21 );

COMMIT ;

SELECT * FROM s_ETUDIANT ;
SELECT * FROM c_ETUDIANT ;

TRUNCATE TABLE c_ETUDIANT ;

----------------------------------------------LES DIFFERENTES STRATEGIE D'ALIMENTATION-------------------------------------------------------------------------------------------

DROP TABLE S_ETUDIANT ;
CREATE TABLE S_ETUDIANT (NUMETU INT PRIMARY KEY ,
						NOM VARCHAR(50),
						PRENOM VARCHAR(50),
						Note INT ,
						DATENAISS DATE,
						RUE VARCHAR(50), 
						CP INT,
						VILLE VARCHAR (50)
					  ) ;
					  
					  
Insert Into S_ETUDIANT Values (1,'Dupont','Albert',11,TO_DATE('1980-06-01','YYYY-MM-DD'),'Rue de Crimée',69001,'Lyon' );
Insert Into S_ETUDIANT Values (2,'West','James',12,TO_DATE('1983-09-03','YYYY-MM-DD'),'Studio','','Hollywood');
Insert Into S_ETUDIANT Values (3,'Martin','Marie',8,TO_DATE('1988-06-05','YYYY-MM-DD'),'Rue des Acacias',69130,'Ecully' )  ;
Insert Into S_ETUDIANT Values (4,'Durand','Gaston',7,TO_DATE('1980-11-15','YYYY-MM-DD'),'Rue de la Meuse',69008,'Lyon');
Insert Into S_ETUDIANT Values (5,'Titgoutte','Justine',14,TO_DATE('1985-02-28','YYYY-MM-DD'),'Chemin du Château',69630,'Chaponost');
Insert Into S_ETUDIANT Values (6,'Dupond','Noémie',15,TO_DATE('1987-09-18','YYYY-MM-DD'),'Rue de Dôle',69007,'Lyon');					  
					  

Drop Table C_Etudiant ;
CREATE TABLE C_Etudiant (NUMETU INT PRIMARY KEY ,
						NOM VARCHAR(30),
						PRENOM VARCHAR(30),
						Note INT ,
						DATENAISS DATE,
						RUE VARCHAR(30), 
						CP INT,
						VILLE VARCHAR (20)
					  ) ;
					  
Drop Table Etudiant_Admis ;					  
CREATE TABLE Etudiant_Admis (NUMETU INT PRIMARY KEY ,
						NOM VARCHAR(50),
						PRENOM VARCHAR(50),
						Note INT
						) ;
Drop Table Etudiant_Non_Admis ;						
CREATE TABLE Etudiant_Non_Admis (NUMETU INT PRIMARY KEY ,
								NOM VARCHAR(50),
								PRENOM VARCHAR(50),
								Note INT
								) ;
SELECT * FROM ETUDIANT_ADMIS ea ;
SELECT * FROM ETUDIANT_NON_ADMIS ena ;
SELECT * FROM C_ETUDIANT ce ;
SELECT * FROM S_ETUDIANT se ;

UPDATE C_ETUDIANT SET WHERE NUMETU =2;

TRUNCATE TABLE C_ETUDIANT ;
DELETE FROM S_ETUDIANT se WHERE NUMETU =2

USER_ARND.C_ETUDIANT
USER_ARND.S_ETUDIANT


