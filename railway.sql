use itvedant;

/* Table 1: create user Table: it shows user info */

Create table User( ID int primary key, First_Name varchar(50) , Middle_name varchar(50),
 Last_name varchar(50), Gender char, Age int, Mobile_No  varchar(50), City varchar(50), State varchar(50), Pin_Code varchar(20));
 
 
 Insert into User VALUES (1 ,'Anushka' , 'Kumari' ,'Gupta' , 'F' , 20 , '9890888666' , 'Badarpur' , 'Delhi' ,'110044'),
(2 ,'Harshita' ,'Kumari' , 'Prajapati' ,'F' ,'19' ,'9022336760' , 'Roshanara' ,'Delhi', '110007'),
(3 ,'Khyati' ,'Kumari' , 'Singh' ,'F' ,'19' ,'9022336563' , 'Rohini' ,'Delhi', '110087'),
(4 ,'Geeta' ,'Singh' , 'Rajan' ,'F' ,'22' ,'9024566760' , 'Shahadra' ,'Haryana', '11054'),
(5 ,'Neha' ,'Kumari' , 'Sood' ,'F' ,'21' ,'9992336760' , 'Sarita Vihar' ,'Haryana', '156007'),
(6 ,'Muskaan' ,'sharma' , 'Ranjan' ,'F' ,'20' ,'9023676760' , 'Dwarka' ,'Punjab', '113407'),
(7 ,'Aditi' ,'Yadav' , 'Pran' ,'F' ,'34' ,'9022336444' , 'Lajpat Nagar' ,'Punjab', '114507'),
(8 ,'Akash' ,'Kumar' , 'Baghel' ,'M' ,'24' ,'9342336760' , 'Nehru place' ,'Delhi', '112307'),
(9 ,'Sarthak' ,'Sinha' , 'Dagar' ,'M' ,'20' ,'8042336760' , 'Sangam Vihar' ,'Haryana', '101007'),
(10 ,'Shiv' ,'Kumar' , 'Bharti' ,'M' ,'19' ,'9022356112' , 'Dwarka' ,'Delhi', '110067'),
(11 ,'Mihir' ,'Krishan' , 'Gautam' ,'M' ,'30' ,'9022311883' , 'Bareilly' ,'UP', '110627'),
(12 ,'Amit' ,'Singh' , 'Roshan' ,'M' ,'23' ,'8944336760' , 'Bareilly' ,'UP', '158007');

select * from user;

/* Table 2: create train table: it include train related information */
Create table Train( Train_No int primary key, Train_Name varchar(50), 
Capacity int, Train_Desc Varchar(50), Destination varchar(50), Arrival_Time varchar(50) );

INSERT INTO Train VALUES
( 1021, 'Ashram Express',700,'Third Class' , 'Kolkata', '21:30:00' ),
( 1089,'Shatabdi Express',600, 'First Class','Allahabad', '16:30:00' ),
(1290,'Harijan Express',3600, 'Second Class', 'Madhya Pradesh', '13:00:00'),
(1345,'Jammu Mail Express',2500,'Third Class' ,  'Madras', '22:00:00'),
( 1234,'Delhi Jaipur Double Decker',800, 'Third Class' , 'Jaipur', '22:45:00'),
( 1453,'Jaipur Delhi Double Decker' ,800,'Third Class' , 'Patna', '09:30:00'),
( 1678, 'Delhi Chandigarh Shatabdi',1200,'Second Class' , 'Chandigarh', '20:30:00'),
( 1276,'Chandigarh Delhi Shatabdi', 1200,'First Class',  'Jammu Kashmir', '14:00:00'),
( 3121,'Ashram Express',700,'Third Class' , 'Lucknow', '05:15:00'),
( 4563,'Frontier Express',800,'Second Class',  'Rajasthan', '16:00:00'),
( 5678, 'Frontier Express',800,'First Class', 'Delhi', '10:00:00'),
( 3232, 'Rajdhani Express', 2300,'Second Class','Mumbai','09:00:00');

select * from train;



/* table 3: create station table: it shows station information*/
 
Create table Station( Train_No int, Station_No int primary key,station_name varchar(50),
 Arrival_Time time, Hault time, Departure time ,
 constraint train_no_fk foreign key(Train_No) references Train(Train_no));
 
 INSERT INTO Station VALUES
( 1678 , 101, 'Chandigarh','10:00:00', '00:00:30', '22:05:00'),
( 5678 , 120, 'Delhi', '20:40:00', '00:00:10' , '18:00:00'),
( 1234 , 371, 'Jaipur','01:00:00','00:00:25' ,'10:00:00'),
( 3121 , 230, 'Lucknow','18:00:00', '00:00:35','03:05:00'),
( 3232 , 123, 'Mumbai','10:00:00', '00:00:28' ,'18:00:00'),
( 1089 , 110, 'Allahbad', '10:35:00','00:00:35' ,'22:18:00'),
( 1021, 126, 'Kolkata', '10:05:00','00:00:20' ,'18:55:00'),
(1453, 119, 'Patna','15:00:00', '00:00:10','20:00:00'),
( 1345, 220, 'Madras','18:00:00', '00:00:30' ,'18:00:00'),
( 1276 ,189, 'Jammu Kashmir','19:55:00', '00:00:10','11:20:00'),
( 4563 ,773, 'Rajasthan','01:45:00', '00:00:25' ,'12:00:00'),
( 1290 ,171, 'Madhya Pradesh','15:00:00','00:00:15' ,'10:00:00');

select * from station;
 
 
 
 
 
 /*Table 4: create ticket table : it shows ticket information */
 

 Create table Ticket1( Ticket_Id int primary key, First_Name varchar(50),city varchar(55),
 Ticket_Price varchar(50), PNR_No int , Train_No int, ID int );
 
INSERT INTO Ticket1 VALUES 
( 109900 ,'Anushka' , 'Chandigarh', '200','234671289','1678' , 1);
INSERT INTO Ticket1 VALUES 
( 109834 ,'Harshita', 'Delhi', '300' ,'456627813' ,'2341', 2),
( 106734 ,'Khyati', 'Jaipur', '156' ,'346734562' ,'9043', 3),
( 109823 ,'Geeta', 'Lucknow', '799', '763542312', '8754', 4),
( 109992 ,'Neha', 'Mumbai', '425', '546734589', '2312',5),
( 107843 ,'Muskaan', 'Allahabad', '677', '782345619','5632',6),
(102235, 'Aditi','Kolkata' , '500', '894532317', '9076', 7),
(109978 ,'Akash' ,'Patna' ,'200', '982341563', '7823',8),
(105588 ,'Sarthak','Madras' , '600', '672341243', '3452', 9),
(107823 , 'Shiv','Jammu Kashmir' ,'300', '234123845', '8954',10),
(106721 ,'Mihir', 'Rajasthan' ,'800', '744854534' , '5634', 11),
(102344 ,'Amit' ,'Madhya Pradesh', '500', '563424891' ,'9078', 12);


select * from Ticket1;



/*Table 5: create Ticket Status*/

 Create table Ticket_Status ( Ticket_Id int primary key, Confirmed varchar(50), RAC varchar(50), Waiting varchar(50) , ID int);

INSERT INTO Ticket_Status VALUES
(109900,'Yes','No','No',1),
(109834,'No','Yes','No',2),
(106734,'No','Yes','No',3),
(109823,'No','No','Yes',4),
(109992,'Yes','No','No',5),
(107843,'No','No','Yes',6),
(102235,'No','Yes','No',7),
(109978,'Yes','No','No',8),
(105588,'No','No','Yes',9),
(107823,'Yes','No','No',10),
(106721,'No','Yes','No',11),
(102344,'Yes','No','No',12);
 





/*table 6: Payment table*/

Create table Payment ( Pay_date date, Ticket_Id int, Paid_Amt int, ID int, Pay_Desc Varchar(50),
constraint id_paytable_fk foreign key(ID) references User(ID) );


INSERT INTO  Payment VALUES 
( '2021-06-23' , 109900 ,200 , 1 , 'UPI ');
INSERT INTO  Payment VALUES 
( '2020-05-21' , 109834 , 300 , 2, 'BY cash'),
( '2020-02-13' , 106734 , 156 , 3, 'Net Banking'),
( '2021-06-25' , 109823 ,799 ,4 ,'UPI' ),
( '2019-08-09' , 109992 , 425 , 5 , 'BY cash'),
( '2020-04-30' , 107843 , 677, 6,'UPI'),
( '2021-03-17' , 102235, 500, 7, 'Net Banking'),
( '2019-09-20' , 109978, 200, 8 , 'Net Banking'),
( '2020-02-05' , 105588, 600, 9, 'UPI'),
( '2021-03-29' , 107823, 300, 10,'UPI'),
( '2020-03-06', 106721, 800, 11, 'BY cash'),
( '2021-04-05', 102344 , 500, 12, 'UPI');


select * from payment;

/*Table 7: Traveling Details */

Create table Travels_In ( ID int , Train_No Int ,
 Constraint travel_in_Id foreign key(ID) references User(ID), 
 Constraint travel_in_tainno foreign key(Train_No) references Train(Train_No) );
 
 INSERT INTO Travels_In VALUES 
( 1, 1021);
INSERT INTO Travels_In VALUES 
( 2 , 1089);
INSERT INTO Travels_In VALUES 
( 3, 1290);
INSERT INTO Travels_In VALUES 
(4, 1345);
INSERT INTO Travels_In VALUES 
( 5 ,1234);
INSERT INTO Travels_In VALUES 
(6 , 1453);
INSERT INTO Travels_In VALUES 
(7 , 1678);
INSERT INTO Travels_In VALUES 
(8 , 1276);

INSERT INTO Travels_In VALUES 
(9 , 3121);
INSERT INTO Travels_In VALUES 
(10, 4563);
INSERT INTO Travels_In VALUES 
(11, 5678);
INSERT INTO Travels_In VALUES 
(12, 3232);

select * from Travels_In;

 
 
/*Table 9 : book cancel ticket status */
Create table Books_Cancel( ID int ,First_Name varchar(50),ticket_ID int,
 Constraint bkcl_idfk foreign key (ID) references User(ID),
 Constraint bkclticket_idfk foreign key (ticket_ID) references Ticket1(Ticket_Id));
 
 INSERT INTO Books_Cancel(ID,first_name,ticket_ID) VALUES
(1,'Anushka',109900),
(2,'Harshita',109834),
(3,'khyati',106734),
(4,'Geeta',109823),
(5,'Neha',109992),
(6,'Muskan',107843),
(7,'Aditi',102235),
(8,'Akash',109978),
(9,'Sarthak',105588),
(10,'Shiv',107823),
(11,'Mihir',106721),
(12,'Amit',102344);

select * from books_cancel;

 
 /*Table 10 : Train reaches details */
Create table  Reaches ( Train_No int , Arrival_time varchar(50), 
Constraint reach_train_no_fk foreign key(train_no) references Train(train_no) );



INSERT INTO Reaches VALUES
(1678, '10:00:00'),
(5678, '20:40:00'),
(1234,'01:00:00'),
(3121, '18:00:00'),
(3232, '10:00:00' ),
(1089, '10:35:00'),
(1021, '10:05:00' ),
(1453, '15:00:00'),
(1345, '18:00:00'),
(1276, '19:55:00'),
(4563,'01:45:00'),
(1290,'15:00:00');
SELECT * FROM Reaches;


/*Table 11: train origin information , from where train is start */
Create table  Start (Train_No int , Departure_time varchar(50),
 Constraint start_trainno_fk foreign key(train_no) references Train(train_no) );

INSERT INTO start VALUES
(1678, '22:05:00'),
(5678, '18:40:00'),
(1234,'10:00:00'),
(3121, '03:05:00'),
(3232, '18:00:00' ),
(1089, '22:18:00'),
(1021, '18:55:00' ),
(1453, '20:00:00'),
(1345, '18:00:00'),
(1276, '11:20:00'),
(4563,'12:00:00'),
(1290,'10:00:00');

SELECT * FROM  Start;


/*Table 12 :shows tables provide information about ticket*/
Create table Shows (Ticket_Id int NOT NULL,
    ID int NOT NULL,
 Constraint shows_tkid foreign key (Ticket_Id) references Ticket1(Ticket_Id),
 Constraint show_tkstatus_idfk foreign key(Ticket_Id) references Ticket_Status( ticket_Id) );

INSERT INTO Shows VALUES

(109900,1),
( 109834,2),
( 106734,3),
( 109823,4),
( 109992,5),
( 107843,6),
(102235,7),
(109978,8),
(105588,9),
(107823,10),
(106721,11),
(102344,12);

select * from shows;

/* Toatl journey time :UNION operation */
SELECT Departure_time FROM Start 
                    UNION
SELECT Arrival_time FROM Reaches ;


/* same time required for journey  : INTERSECT operation  */

SELECT Departure_time FROM Start 
                    intersect
SELECT Arrival_time FROM Reaches ;

/*-- UPDATE Operation*/

UPDATE User set Middle_Name='Sharma' where ID= 4;

/*Delete*/
DELETE FROM Payment  WHERE ID='10';
SELECT * FROM Payment;

/* Altering A Table */

ALTER Table Train ADD COLUMN AC_Type Varchar(50);
UPDATE Train set AC_Type='AC' where Train_No='1021';
UPDATE Train set AC_Type='NON-AC' where Train_No='1089';
UPDATE Train set AC_Type='AC' where Train_No='1290';
UPDATE Train set AC_Type='AC' where Train_No='1345';
UPDATE Train set AC_Type='NON-AC' where Train_No='1234';
UPDATE Train set AC_Type='AC' where Train_No='1453';
UPDATE Train set AC_Type='AC' where Train_No='1678';
UPDATE Train set AC_Type='NON-AC' where Train_No='1276';
UPDATE Train set AC_Type='AC' where Train_No='3121';
UPDATE Train set AC_Type='NON-AC' where Train_No='4563';
UPDATE Train set AC_Type='AC' where Train_No='5678';
UPDATE Train set AC_Type='NON-AC' where Train_No='3232';

select * from Train;

/* operation: Drop
Dropping* actual table name is reaches */

DROP TABLE Reachess;

/* operetion : Truncate : actual table name is payment */

TRUNCATE TABLE Payments;

/*operation : Rename Tables*/

ALTER TABLE Train RENAME Train_Info;
select * from Train_Info;

/*if we want to print data of train table then use 
ALTER TABLE Train_Info RENAME Train;
*/

/*Simple Queries, Simple Queries with Aggregate functions.*/

-- 1.Average

SELECT 
    AVG(Paid_Amt)
FROM
    Payment; 
    
 -- 2. Maximum
SELECT 
    MAX(Capacity)
FROM
    Train_Info;
    
-- 3.Minimum
SELECT 
    MIN(Capacity)
FROM
    Train_Info;


-- 4. Count
SELECT 
    COUNT(*)
FROM
    user;

/* Queries with Aggregate functions(group by and having clause)*/ 
/* it shows the average amount for each ticket id*/
SELECT 
    Ticket_Id, AVG(Paid_Amt)
FROM
    Payment
GROUP BY Ticket_Id;

   
/*it shows the total capacity according to each train */
SELECT 
    Train_No, SUM(Capacity)
FROM
    Train_Info
GROUP BY Train_No;
 
 /*it shows state of user  whose count Id is more than 3*/
   SELECT COUNT(ID), State
FROM User
GROUP BY State
HAVING COUNT(ID) > 3
ORDER BY COUNT(ID) DESC;

    
/*operation subquery*/
select ticket_id from payment
 where Paid_Amt >
(select AVG(Paid_Amt)from Payment); 


 create or replace view UserView as
 select first_name,middle_name,last_name from user
 where id =1;

 select * from UserView;
