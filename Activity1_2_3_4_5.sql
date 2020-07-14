####Activity1#####
Create Database Rakhi_Activities;
Create table Rakhi_Activities.salesman (
salesman_id int primary key,
name varchar(20), 
city varchar(20), 
comission int );
describe salesman;
#####Activity2#######
Insert into salesman values (5005,'Paul Adam','Rome', 13);
Insert into salesman values (5006,'Lauson Hen','San Jose', 12);
Select * from Rakhi_Activities.salesman;
###Activity3-###
Select salesman_id,city from salesman;
select * from salesman where city='Paris';
select salesman_id,comission from salesman where name='Paul Adam';
######Activity4######
Alter table salesman add column grade int;
desc salesman;
Update salesman set grade=100;
select * from salesman;
#####Activity5########
Update salesman set grade=200 where city='Rome';
Update salesman set grade=300 where name='James hoog';
Update salesman set name='Pierre' where name='Mclyon';


