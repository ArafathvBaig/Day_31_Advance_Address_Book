create database Address_Book_Service
use Address_Book_Service
create table address_book (firstName varchar(100) not null, lastName varchar(100) not null, 
address varchar(250) not null, city varchar(100) not null, state varchar(100) not null,
zip int not null, phoneNumber double not null, email varchar(250) not null);
desc address_book;
insert into address_book (firstName, lastName, address, city, state, zip, phoneNumber, email) values
('Arafath', 'Baig', 'Kopurivari Palem', 'Repalle', 'Andhra Pradesh', 522262, 7986331895, 'arafathbaig1997@gmail.com');
select * from address_book;
insert into address_book (firstName, lastName, address, city, state, zip, phoneNumber, email) values
('Subham', 'Das', 'Ludhiana', 'Ludhiana', 'Pubjab', 144411, 9440755022, 'subhamdas@gmail.com'),
('Kunal', 'Batham', 'Jalandhar', 'Jalandhar', 'Pubjab', 144401, 9115513683, 'kunalbatham@gmail.com');
update address_book set state = 'Telangana' where firstName = 'Arafath';
delete from address_book where firstName = 'Subham';
select * from address_book where city = 'Ludhiana' or state = 'Telangana';
select * from address_book where city = 'Jalandhar';
select * from address_book where state = 'Telangana';
update address_book set state = 'Andhra Pradesh' where firstName = 'Arafath';
insert into address_book (firstName, lastName, address, city, state, zip, phoneNumber, email) values
('Subham', 'Das', 'Ludhiana', 'Ludhiana', 'Pubjab', 144411, 9440755022, 'subhamdas@gmail.com');
select count(city) from address_book;
select count(state) from address_book;
select * from address_book where city = 'Repalle' order by firstName;
insert into address_book (firstName, lastName, address, city, state, zip, phoneNumber, email) values
('Subham', 'Das', 'Ludhiana', 'Repalle', 'Pubjab', 144411, 9440755022, 'subhamdas@gmail.com');
insert into address_book (firstName, lastName, address, city, state, zip, phoneNumber, email) values
('Aarav', 'Das', 'Ludhiana', 'Repalle', 'Pubjab', 144411, 9440755022, 'subhamdas@gmail.com');
select * from address_book where city = 'Repalle' order by firstName;
delete from address_book where firstName = 'Subham' and city = 'Repalle';
delete from address_book where firstName = 'Aarav' and city = 'Repalle';
alter table address_book add type varchar(100) after lastName;
update address_book set type = 'Friend' where firstName = 'Kunal';
update address_book set type = 'Profession' where firstName = 'Subham';
update address_book set type = 'Family' where firstName = 'Arafath';
select count(type) from address_book where type = 'Family';
insert into address_book (firstName, lastName, address, city, state, zip, phoneNumber, email) values
('Aarav', 'Das', 'Ludhiana', 'Repalle', 'Pubjab', 144411, 9440755022, 'subhamdas@gmail.com');
update address_book set type = 'Friend', type = 'Family' where firstName = 'Aarav';
select * from address_book;
insert into address_book (firstName, lastName, address, city, state, zip, phoneNumber, email,type) values
('Aarav', 'Das', 'Ludhiana', 'Repalle', 'Pubjab', 144411, 9440755022, 'subhamdas@gmail.com',('Family'and'Friend'));