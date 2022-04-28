create database systemp; 
use systemp;

create table empresas (idcliente int primary key auto_increment,
razao_social varchar(50) not null,
cnpj char(14) unique,
inscricao_estadual char(9),
contato_nome varchar(30),
contato2_nome varchar(30),
contato_email varchar(40),
contato_tel varchar(15),
estado char(2),
cidade varchar (30));

insert into empresas values (null, 'Industria Intubaia', '12123456000290', '214365870', 'Marcelo Vieira', 'Mariana Silva', 'fabrica1@intubaia.ind.br', '11921436587', 'MG', 'Extrema');

select * from empresa;

create table usuario (idcadastro int primary key auto_increment,
Nome_usuario varchar(40),
CNPJ char(14),
email varchar(50),
senha varchar(30),
fk_cliente int,
foreign key (fk_cliente) references empresas (idcliente));

select * from usuario;
desc usuario;

create table sensor (idsensor int primary key auto_increment,
fk_maquina int,
foreign key (fk_maquina) references maquina (idmaquina))
auto_increment = 1000;

select * from sensor;
desc sensor;

create table log_temperatura (idregistro int primary key auto_increment,
registro_temp char(4),
data_hora_registro datetime default current_timestamp,
fk_sensor int,
foreign key (fk_sensor) references sensor (idsensor));

select * from log_temperatura;
desc sensor;

create table maquina(idmaquina int primary key auto_increment,
nome_maquina varchar (25),
temp_max char (4),
temp_min char (4),
fk_cliente int,
foreign key (fk_cliente) references empresas (idcliente));

insert into maquina 
values (null, 'maq_1', '50°C', '41°C', '1');

select * from maquina;

drop database systemp;