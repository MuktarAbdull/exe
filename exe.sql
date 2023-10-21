create database exercise
use exercise

create table candidates(
Cand_id int not null,
Cand_name varchar(20) primary key not null,
Sex char(2) not null,
birth_date date not null);

Create table Qualificatoins_ass(
Assesor_name varchar(20) primary key not null,
Certification varchar(20) not null,
Experience varchar(20) not null
)

Create table Occupation(
Occu_type varchar(20) primary key not null
)

create table supervisor(
sup_id int not null,
sup_name varchar(20) primary key not null
)

Create table Assesment_center(
Asses_date date primary key not null,
Assesment_name varchar(20) not null,
Asses_address varchar(20) not null
) 

Create table Result(
Cand_name varchar(20) foreign key references candidates(cand_name),
Sup_name varchar(20) foreign key references supervisor(sup_name),
Asses_date date foreign key references assesment_center(asses_date),
Assesor_name varchar(20) foreign key references Qualificatoins_ass(assesor_name),
Occu_type varchar(20) foreign key references occupation(occu_type),
Result varchar(20) not null,
Result_Date date not null,
constraint CMP_Pk_Result primary key (cand_name, sup_name, Assesor_name)
)
--Cmp means composite.
--in this result table there are three primary keys also they are foriegn keys.