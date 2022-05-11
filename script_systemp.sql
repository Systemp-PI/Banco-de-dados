create database systemp; 
use systemp;

create table empresas (idcliente int primary key auto_increment,
razao_social varchar(50) not null,
cnpj char(14) unique not null,
inscricao_estadual char(9) not null,
contato1_nome varchar(30) not null,
contato1_email varchar (40) not null,
contato1_tel varchar (15) not null,
contato2_nome varchar(30) not null,
contato2_email varchar(40) not null,
contato2_tel varchar(15) not null,
cep char(8) not null,
estado char(2)not null,
cidade varchar (30) not null,
bairro varchar (45) not null,
rua varchar (45) not null,
numero char (5) not null,
complemento varchar (20)
);

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

create table maquina(idmaquina int primary key auto_increment,
nome_maquina varchar (25),
temp_max float,
temp_min float,
fk_cliente int,
foreign key (fk_cliente) references empresas (idcliente));

select * from maquina;

create table sensor (idsensor int primary key auto_increment,
fk_maquina int,
foreign key (fk_maquina) references maquina (idmaquina))
auto_increment = 1000;

select * from sensor;
desc sensor;

create table log_temperatura (idregistro int primary key auto_increment,
registro_temp float,
data_hora_registro datetime default current_timestamp,
fk_sensor int,
foreign key (fk_sensor) references sensor (idsensor));

select * from log_temperatura;
desc sensor;

select * from empresas;