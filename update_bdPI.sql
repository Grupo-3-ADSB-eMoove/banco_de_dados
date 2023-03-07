USE bdEmoove;

INSERT INTO tbUsuario (cpfUsuario,nomeUsuario,emailUsuario,senhaUsuario,situacaoUsuario)
VALUES ('527.690.598-31','winyc','winycios@gmail.com','123','comum');

SELECT * FROM tbUsuario;

INSERT INTO tbTelefoneUsuario(idTelefoneUsuario,telefoneUser,cpfUsuario)
VALUES (null,'11 984675735','527.690.598-31');

SELECT * FROM tbTelefoneUsuario;

INSERT INTO tbSensor(idSensor,tipoSensor)
VALUES (null, 'bloqueio');

SELECT * FROM tbSensor;

INSERT INTO tbEntradaSensor(idEntrada,idSensor,contagemEntrada,dtHora)
VALUES (null, 1, 50, '2022-09-13 12:33:00');

SELECT * FROM tbEntradaSensor;

INSERT INTO tbCompraCliente(idCompraCliente,cpfUsuario,idSensor,dataCompra,qtdSensor,valor_compra)
VALUES (null,'527.690.598-31',1,'2022-09-13',25,1499.99);

SELECT * FROM tbCompraCliente;

INSERT INTO tbEstabelecimentoUser (idEstabelecimento,idCompraCliente,enderecoEstabelecimento,cepEstabelecimento,numeroEstabelecimento)
VALUES (null, 2, 'rua itapetinga da roça', '08451190', 1);

SELECT * FROM tbEstabelecimentoUser;
