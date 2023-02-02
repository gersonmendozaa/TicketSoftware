create database bdTicket;
go
use bdTicket;
go
create table tipo_usuarios(
codi_tipo_usua int not null primary key identity(1,1),
nomb_tipo_usua varchar(50) unique,
acti_tipo_usua bit
);
insert into tipo_usuarios values('Administrador', 1);
insert into tipo_usuarios values('Cliente', 1);
insert into tipo_usuarios values('Personal', 1);
go
create table permiso(
codi_perm int not null identity(1,1) primary key,
desc_perm varchar(150) not null,
dire_perm varchar(150),
refe_perm int references permiso(codi_perm),
acti_perm bit
);
go
create table permiso_tipo(
codi_perm_tipo int identity(1,1) primary key,
codi_tipo_usua int not null references tipo_usuarios(codi_tipo_usua),
codi_perm int not null references permiso(codi_perm),
acti_perm_tipo bit
);
go
create table usuarios(
codi_usua int not null primary key identity(1,1),
nomb_usua varchar(50),
apel_usua varchar(50),
corr_usua varchar(100),
pass_usua varchar(100),
codi_tipo_usua int not null,
acti_usua bit,
foreign key(codi_tipo_usua) references tipo_usuarios(codi_tipo_usua)
);
go
insert into usuarios values('Gerson', 'Mendoza', 'gersonmendozacarranza@gmail.com', '123456',1,1)
go
create table tipo_ticket(
codi_tipo_tick int not null primary key identity(1,1),
nomb_tipo_tick varchar(50) NOT NULL,
acti_tipo_tick bit
);
go
insert into tipo_ticket values('Software', 1);
insert into tipo_ticket values('Hardware', 1);
go
create table tipo_estado_ticket(
codi_tipo_esta_tick int primary key identity(1,1),
nomb_tipo_esta_tick varchar(50),
acti_tipo_tick bit
);
go
insert into tipo_estado_ticket values('Inicial', 1);
insert into tipo_estado_ticket values('Proceso', 1);
insert into tipo_estado_ticket values('Evaluacion', 1);
insert into tipo_estado_ticket values('Finalizado', 1);
go
create table ticket(
codi_tick int not null primary key identity(1,1),
codi_tipo_tick int not null,
foreign key(codi_tipo_tick) references tipo_ticket(codi_tipo_tick),
desc_tick text,
fechhora_tick datetime,
codi_tipo_esta_tick int,
foreign key (codi_tipo_esta_tick) references tipo_estado_ticket(codi_tipo_esta_tick)
);
go
create table estado_ticket(
codi_esta_tick int not null primary key identity(1,1),
desc_esta_tick text,
fechhora_esta_tick datetime
);
create table evaluacion_ticket(
codi_eval_tick int identity(1,1) primary key,
desc_eval_tick text,
nota_eval_tick float
);