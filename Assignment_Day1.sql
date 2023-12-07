create database OurExerciseDb
on primary(name='OurExercise_Db',Filename='E:\Mphasis Phase3\Day1\Assignment01\OurExercise_Db.mdf',
size=24MB, filegrowth=8MB)
log on(name='OurExercise_Db_log',filename='E:\Mphasis Phase3\Day1\Assignment01\OurExercise_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS



use OurExerciseDb
create table Product(
PId int primary key,
PName nvarchar(50) not null,
PPrice float check(PPrice>=50 AND PPrice<=100000),
PCompany nvarchar(100),
PQty int default 1 check(PQty>=1)
)

insert into Product(PId, PName,PPrice,PCompany,PQty) values
(50,'Samsung',1000,'Samsung',1),
(51,'Apple',2000,'Apple',2),
(52,'Redmi',800,'Xiaomi',1),
(53, 'HTC',900, 'HTC',3),
(54, 'Laptop',40000,'HP',1)

select * from Product


