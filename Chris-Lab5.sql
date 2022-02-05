use sakila;

#Q1
alter table staff
drop column picture;

#Q2
select * from customer
where first_name = 'TAMMY' and last_name = 'SANDERS';

select * from staff;
where first_name = 'JON';

insert into staff values (4,'TAMMY','SANDERS',79,"TAMMY.SANDERS@sakilacustomer.org", 2, 1, "Tammy" "", "2006-02-16 00:00:00");

#Q3
# inventory_id: 1, cutomer_id: 130, return_date: , staff_id: 1, last_update:
#film_id: 1
select * from rental;
select * from inventory where film_id =1;
select * from film where title = "Academy Dinosaur";
select * from customer where last_name ="Hunter";
select * from staff;

insert into rental values (16050, "2022-01-05 22:30:00", 1,  130, "2022-02-05 22:00:00", 1, "22022-02-05 12:00:00");

#Q4

create table deleted_users (
  customer_id int default null,
  email text,
  `date` datetime,
 );
 
 select distinct customer.active from customer;
 select count(active) from customer where active =0;
 
 insert into deleted_users (customer_id, email, `date`)
 select customer_id, email, `date`
 from customer
 where active =0;
 
 




