create table F_details(f_id int auto_increment primary key,f_name varchar(15),price bigint(12),depart_time datetime,arriving_time datetime,total_seats int(60),from_loc varchar(20),to_loc varchar(20));

create table Pas_details(p_id int auto_increment primary key,p_name varchar(10),p_mbl bigint(20),p_email varchar(30),p_address varchar(20));

create table Ticket(t_id int auto_increment primary key,p_id int, foreign key(p_id) references Pas_details(p_id),f_id int, foreign key(f_id) references F_details(f_id));

create table F_enq(fl_id int,foreign key(fl_id) references F_details(f_id),avl_seats int(20));

insert into Pas_details values(1,'ram',123456789,'ram@gmail.com','bnglr');
insert into Pas_details values(NULL,'bhim',443456789,'bhim@gmail.com','smg');
insert into Pas_details values(NULL,'ramesh',553456789,'ramesh@gmail.com','hyd');
insert into Pas_details values(NULL,'kamali',7773456789,'lotus@gmail.com','uk');
insert into Pas_details values(NULL,'manasa',8883456789,'man@gmail.com','tn');


insert into F_details values(111,'indigo',1000,'2022-05-25 02:00:00','2022-05-25 04:00:00',60,'smg','bnglr');
insert into F_details values(NULL,'airasia',1500,'2022-05-25 04:00:00','2022-05-25 06:00:00',50,'bnglr','goa');
insert into F_details values(NULL,'abibi',2000,'2022-05-28 20:00:00','2022-05-28 22:30:00',80,'delhi','goa');
insert into F_details values(NULL,'alibaba',999,'2022-06-02 10:00:00','2022-06-02 12:00:00',90,'smg','bnglr');
insert into F_details values(NULL,'flyair',1800,'2022-06-20 11:00:00','2022-06-20 13:30:00',75,'TN','delhi');

insert into Ticket values(001,1,112);
insert into Ticket values(NULL,3,116);
insert into Ticket values(NULL,2,111);
insert into Ticket values(NULL,4,117);
insert into Ticket values(NULL,5,111);


Queries:
1.Count of all passangers travelling in each Flight
select f_id ,count(p_id) from Ticket group by f_id;

2.Boarding details 
 select * from F_details;

3.Customer details
select * from F_details;






