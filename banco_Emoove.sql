CREATE DATABASE bdEmoove;

USE bdEmoove;

CREATE TABLE tbUsuario(

cpfUsuario VARCHAR(14) PRIMARY KEY NOT NULL,
emailUsuario VARCHAR(100) NOT NULL,
nomeUsuario VARCHAR(50) NOT NULL,
senhaUsuario VARCHAR(15),
situacaoUsuario VARCHAR(15) constraint chkSituacao check (situacaoUsuario IN ('comum','contratante')),
telefoneUsuario VARCHAR(12)
);

CREATE TABLE tbEstabelecimento(

idEstabelecimento INT PRIMARY KEY,
enderecoEstabelecimento VARCHAR(100),
cepEstabelecimento VARCHAR(9),
numeroEstabelecimento INT
);

CREATE TABLE tbCompraUsuario(

idCompraUsuario INT PRIMARY KEY AUTO_INCREMENT,
dataCompra DATE,
valorCompra DECIMAL(10,2),
fk_cpfUsuario  CHAR(14),
qtdSensor INT,
FOREIGN KEY (fk_cpfUsuario) REFERENCES tbUsuario(cpfUsuario),
fk_idEstabelecimento INT,
FOREIGN KEY (fk_idEstabelecimento) REFERENCES tbEstabelecimento(idEstabelecimento)
);

CREATE TABLE tbSensor(

idSensor INT PRIMARY KEY AUTO_INCREMENT,
tipoSensor VARCHAR(20) CONSTRAINT chkSensor CHECK (tipoSensor IN ('sensor_caixa','sensor_contadores')),
fk_compraUsuario INT,
FOREIGN KEY (fk_compraUsuario) REFERENCES tbCompraUSuario(idCompraUsuario)
);

CREATE TABLE tbSensorContagem(

idSensorContagem INT PRIMARY KEY AUTO_INCREMENT,
contagem_sensor INT,
dtHora  DATETIME,
fk_idSensor INT,
FOREIGN KEY (fk_idSensor) REFERENCES tbSensor(idSensor)
);

CREATE TABLE tbCaixaSensor(

idCaixaSensor INT PRIMARY KEY AUTO_INCREMENT,
contagem_sensor INT,
dtHora  DATETIME,
fk_idSensor INT,
FOREIGN KEY (fk_idSensor) REFERENCES tbSensor(idSensor)
);
