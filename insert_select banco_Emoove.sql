USE bdEmoove;

INSERT INTO tbUsuario VALUES 
		('527.690.598-31','winycios@gmail.com','winycios alves','madalena','contratante','11984675735');
        
INSERT INTO tbEstabelecimento VALUES
		(1,'rua itaberaba açu','08451180',169);
        
INSERT INTO tbCompraUsuario VALUES
		(null,'2004-09-13',1500,'527.690.598-31',2,1);
        
INSERT INTO tbSensor VALUES
		(null,'sensor_caixa',1),
        (null,'sensor_contadores',1);
 
 INSERT INTO tbCaixaSensor VALUES 
		(null,140,'1970-01-01 13:59:01',1);
        
INSERT INTO tbSensorContagem VALUES 
		(null,150,'1970-01-01 13:59:01',2);
        
SELECT * FROM tbUSuario;

SELECT * FROM tbEstabelecimento;

SELECT 
DATE_FORMAT(c.dataCompra,'%d/%m/%Y')  AS 'Data da compra',
c.valorCompra AS 'Valor da compra',
c.qtdSensor AS 'Quantidade de sensores',
u.nomeUsuario AS 'Nome do usuario',
u.cpfUsuario AS 'cpf do usuario',
e.cepEstabelecimento AS 'Cep do estabelecimento'
FROM tbCompraUsuario c INNER JOIN tbUsuario u
		ON c.fk_cpfUsuario = u.cpfUsuario
	INNER JOIN tbEstabelecimento e
		ON c.fk_idEstabelecimento = e.idEstabelecimento;
        
SELECT * FROM tbSensor;

SELECT 
cs.idCaixaSensor AS 'identificação do sensor',
cs.contagem_sensor AS 'Contagem do sensor',
DATE_FORMAT (cs.dtHora,'%d/%m/%Y às %Hh%i') AS 'Data e hora do contador',
s.tipoSensor AS 'Tipo do sensor'
 FROM tbCaixaSensor cs INNER JOIN tbSensor s
	ON cs.fk_idSensor = s.idSensor;

SELECT 
sc.idSensorContagem AS 'identificação do sensor',
sc.contagem_sensor AS 'Contagem do sensor',
DATE_FORMAT (sc.dtHora,'%d/%m/%Y às %Hh%i') AS 'Data e hora do contador',
s.tipoSensor AS 'Tipo do sensor'
 FROM tbSensorContagem sc INNER JOIN tbSensor s
	ON sc.fk_idSensor = s.idSensor;