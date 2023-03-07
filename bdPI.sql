CREATE DATABASE bdEmoove;
USE bdEmoove;

CREATE TABLE tbUsuario (
cpfUsuario varchar(14) primary key,
nomeUsuario varchar(50) not null,
emailUsuario varchar(100),
senhaUsuario varchar(30),
situacaoUsuario varchar (15) constraint chkSituacao check (situacaoUsuario IN ('comum','premium','bloqueado'))
);

CREATE TABLE tbTelefoneUsuario(
idTelefoneUsuario int primary key auto_increment,
telefoneUser varchar (12),
cpfUsuario varchar(14),
foreign key (cpfUsuario) references tbUsuario (cpfUsuario)
);

CREATE TABLE tbSensor (
idSensor int primary key auto_increment ,
tipoSensor varchar (20)
);

CREATE TABLE tbEntradaSensor(

idEntrada int primary key auto_increment,
idSensor int,
contagemEntrada int,
dtHora datetime,
foreign key (idSensor) references tbSensor (idSensor)
);


CREATE TABLE tbCompraCliente (
idCompraCliente int primary key auto_increment,
cpfUsuario varchar(14),
idSensor int ,
dataCompra date,
qtdSensor int,
valor_compra decimal (10,2),
foreign key (idSensor) references tbSensor (idSensor),
foreign key (cpfUsuario) references tbUsuario (cpfUsuario)
);

CREATE TABLE tbEstabelecimentoUser (
idEstabelecimento int primary key auto_increment,
idCompraCliente int,
enderecoEstabelecimento varchar(100),
cepEstabelecimento varchar(8),
numeroEstabelecimento tinyint,
foreign key (idCompraCliente) references tbCompraCliente (idCompraCliente)
);




