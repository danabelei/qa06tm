//MYSQL

create database bancadb;

create user 'banca'@'localhost' identified by 'changeit';

use bancadb;

grant all on bancadb.* to 'banca'@'localhost';


create table Users ( ID int primary key auto_increment,
					
		     Prenume varchar(50),
                    
		     Nume varchar(50),
                    
		     CNP varchar(15)) Engine=InnoDB;
                    


create table Accounts(ID int primary key auto_increment,

		      Tip varchar(50),
					
		      Sold double) engine=InnoDB;




create table mappings(ID int primary key auto_increment,

		      UserId int,
                       
		      AccountId int,
                       
		      foreign key (UserId) references Users(ID) on delete cascade,
  
                      foreign key (AccountId) references Accounts(ID) on delete cascade)
 engine =InnoDb;