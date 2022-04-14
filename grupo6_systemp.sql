create database systemp; 
use systemp;

create table empresa (idcliente int primary key auto_increment,
razao_social varchar(50),
cnpj char(14),
inscricao_estadual char(9),
contato_nome varchar(30),
contato2_nome varchar(30),
contato_email varchar(40),
contato_tel varchar(15),
estado char(2),
cidade varchar (30));

select * from empresa;

create table usuario (idcadastro int primary key auto_increment,
email varchar(50),
senha varchar(30),
fk_cliente int,
foreign key (fk_cliente) references empresa (idcliente));

select * from usuario;
desc usuario;

create table sensor (idsensor int primary key auto_increment,
local_maquina varchar(30),
temp_min char(4),
temp_max char(4),
fk_empresa int,
foreign key (fk_empresa) references empresa (idcliente));

select * from sensor;
desc sensor;

create table log_temperatura (idregistro int primary key auto_increment,
registro_temp char(4),
data_hora_registro datetime default current_timestamp,
fk_sensor int,
foreign key (fk_sensor) references sensor (idsensor));

select * from sensor;
desc sensor;

create table colaboradores (idcolaborador int primary key auto_increment,
nome_colaborador varchar(50),
cpf char(14),
cargo varchar (45),
chefe varchar(45),
fk_chefe int);
