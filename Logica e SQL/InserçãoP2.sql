use escritorio;

insert into colaborador values ('Joao Carlos da Silva','00000000000','12345678901',1000.00,'Auxiliar');
insert into colaborador values ('Jose Pereira','11111111111','98765432100',1000.00,'Auxiliar');
insert into colaborador values ('Maria Josefina Luz','77777777777','96325874155',1500.00,'Auxiliar');
insert into colaborador values ('Angela Cardoso','88888888888','14785236999',1500.00,'Auxiliar');
insert into colaborador values ('Pedro Paulo Paz','99999999999','36985214777',1000.00,'Auxiliar');
insert into colaborador values ('Maria da Rosa Santos','22222222222','12365478999',5000.00,'Advogado');
insert into colaborador values ('Luis Fernando Lima','33333333333','74185296300',5000.00,'Advogado');
insert into colaborador values ('Antonio Rodrigues','44444444444','98745632100',7000.00,'Advogado');
insert into colaborador values ('Ana Carla Almeida','55555555555','96328741000',8000.00,'Advogado');
insert into colaborador values ('Sandro Santos','66666666666','12365478900',5000.00,'Advogado');

insert into auxiliar values ('00000000000');
insert into auxiliar values ('11111111111');
insert into auxiliar values ('77777777777');
insert into auxiliar values ('88888888888');
insert into auxiliar values ('99999999999');

insert into advogado values ('RS074402','Trabalhista','22222222222');
insert into advogado values ('RS108563','Civel','33333333333');
insert into advogado values ('RS88990','Criminal','44444444444');
insert into advogado values ('RS052003','Previdenciario','55555555555');
insert into advogado values ('RS105553','Civel','66666666666');

insert into consulta values (null,'2019-06-03','15:00','Ana Amaro','51989028076','22222222222');
insert into consulta values (null,'2019-06-03','16:00','Pedro Paulo','51998886655','33333333333');
insert into consulta values (null,'2019-06-07','13:30','Silvia Sanhudo','519825821514','22222222222');
insert into consulta values (null,'2019-06-08','14:30','Sergio Silva','51984865351','66666666666');
insert into consulta values (null,'2019-05-03','13:30','Gilson Guedes','53981868587','55555555555');

insert into parte values ('00000000001','Sergio Silva','Cliente');
insert into parte values ('00000000002','Pedro Paulo','Cliente');
insert into parte values ('00000000003','Silvia Sanhudo','Cliente');
insert into parte values ('00000000004','Gilson Guedes','Cliente');
insert into parte values ('00000000005','Ana Amaro','Cliente');
insert into parte values ('00011100011100','ABCTelecom','Parte Contraria');
insert into parte values ('00011100011111','DTF Ltda','Parte Contraria');
insert into parte values ('00011100011122','KON S.A','Parte Contraria');
insert into parte values ('00011100011133','Silva Santos','Parte Contraria');
insert into parte values ('00011100011144','KKM Ltda','Parte Contraria');

insert into endereco values (null,'Av. Bento Gonçalves','4455','ap. 302','Agronomia','Porto Alegre','RS','00000000001');
insert into endereco values (null,'Av. Liberdade','123','ap.256','Santa Isabel','Viamão','RS','00000000002');
insert into endereco values (null,'Rua Pinto Bandeira','633',null,'Centro','Porto Alegre','RS','00000000003');
insert into endereco values (null,'Rua Antonio Zanquetim','335',null,'Viamopolis','Viamão','RS','00000000004');
insert into endereco values (null,'Av. Nilo Peçanha','7561','4º andar','Chacara das Pedras','Porto Alegre','RS','00000000005');
insert into endereco values (null,'Rua A','123',null,'Centro','Londrina','PR','00011100011100');
insert into endereco values (null,'Av. Paraizo','4455',NULL,'Cidade Baixa','Zeropolis','SP','00011100011111');
insert into endereco values (null,'Av. Antonio Zanquetim','5566','sala 5','Centro','Porto Alegre','RS','00011100011122');
insert into endereco values (null,'Rua C','222',null,'São Lucas','Gravatai','RS','00011100011133');
insert into endereco values (null,'Rua Jose Filho','185',null,'Krahe', 'Alvorada','RS','00011100011144');


insert into cliente values ('123456789','brasileiro','sergio@gmail.com','00000000001');
insert into cliente values ('987456321','brasileiro','pedro@hotmail.com','00000000002');
insert into cliente values ('321456987','haitiana','sanhudo@gmail.com','00000000003');
insert into cliente values ('741258963','argentino','gilsong@outlook,com','00000000004');
insert into cliente values ('963258741','brasileira','ana@gmail.com','00000000005');


insert into telefone values (null,'Celular','51','998877445','00000000001');
insert into telefone values (null,'Residencial','51','34460488','00000000002');
insert into telefone values (null,'Celular','51','981818514','00000000003');
insert into telefone values (null,'Residencial','51','30256699','00000000004');
insert into telefone values (null,'Celular','51','989028076','00000000005');


insert into documento value (null,'Identidade',null,'Outros','00000000001');
insert into documento value (null,'Foto',null,'Outros','00000000001');
insert into documento value (null,'Pet.inicial',null,'Petição','00000000001');
insert into documento value (null,'Identidade',null,'Outros','00000000002');
insert into documento value (null,'Procuração',null,'Outros','00000000003');
insert into documento value (null,'Pet.inicial',null,'Petição','00000000002');
insert into documento value (null,'Pet.inicial',null,'Petição','00000000003');
insert into documento value (null,'Pet.36',null,'Petição','00000000004');
insert into documento value (null,'Pet.85',null,'Petição','00000000005');

insert into documento value (null,'Contrato',null,'Contrato','00000000004');
insert into documento value (null,'Contrato',null,'Contrato','00000000005');
insert into documento value (null,'Contrato',null,'Contrato','00000000001');
insert into documento value (null,'Contrato',null,'Contrato','00000000002');
insert into documento value (null,'Contrato',null,'Contrato','00000000003');



insert into pagamento value (null,22000,'2019-01-15','00111700000003','00000000003');
insert into pagamento value (null,1000,'2019-05-21','00111700000043','00000000001');
insert into pagamento value (null,5000,'2019-05-21','001117000000448','00000000001');
insert into pagamento value (null,2500,'2018-12-04','001117000000775','00000000002');
insert into pagamento value (null,50000,'2017-08-05','00111700000012','00000000005');

insert into acao values (null,'Trabalhista');
insert into acao values (null,'Cível');
insert into acao values (null,'Criminal');
insert into acao values (null,'Previdenciaria');
insert into acao values (null,'Trabalhista');

insert into representacao values (1,'22222222222');
insert into representacao values (2,'33333333333');
insert into representacao values (3,'44444444444');
insert into representacao values (4,'55555555555');
insert into representacao values (2,'66666666666');

insert into peticao value (null,'Inicial',1);
insert into peticao value (null,'Inicial',2);
insert into peticao value ('0011170000000002','Andamento',3);
insert into peticao value ('0011170000000003','Andamento',4);
insert into peticao value (null,'Inicial',5);

insert into distribuicao values ('00000000000',1,'2019-01-02','15:00');
insert into distribuicao values ('11111111111',2,'2019-01-03','14:30');
insert into distribuicao values ('77777777777',3,'2019-01-03','14:30');
insert into distribuicao values ('88888888888',4,'2019-05-03','08:32');
insert into distribuicao values ('99999999999',5,'2018-12-06','14:32');

insert into contrato values (2000,0.5,10);
insert into contrato values (1000,0.2,11);
insert into contrato values (5000,0.3,12);
insert into contrato values (1000,0.5,13);
insert into contrato values (2000,0.5,14);

insert into processo values ('00111800000001','01','Viamão','Reparação de Danos',2);
insert into processo values ('00111800000002','02','Viamão','Acidente trabalho',1);
insert into processo values ('00111800000004','03','Porto Alegre','Acidente trabalho',5);
insert into processo values ('00111800000005','04','Porto Alegre','Auxilio Doença',4);
insert into processo values ('00111800000003','05','Viamão','Habeas Corpus',3);

insert into procedimento values (null,'2019-08-03','15:20','Rua A','00111800000001','00000000000','Audiência');
insert into procedimento values (null,'2019-07-15','19:20','Rua A','00111800000002','00000000000','Audiência');
insert into procedimento values (null,'2019-09-17','14:50','Rua B','00111800000003','11111111111','Audiência');
insert into procedimento values (null,'2018-04-26','09:40','Rua A','00111800000001','77777777777','Audiência');
insert into procedimento values (null,'2019-11-29','16:10','Rua C','00111800000005','88888888888','Audiência');
insert into procedimento values (null,'2019-12-03','15:35','Rua AB','00111800000002','99999999999','Perícia');
insert into procedimento values (null,'2015-07-13','08:50','Rua AB','00111800000002','99999999999','Perícia');
insert into procedimento values (null,'2019-09-15','15:20','Rua AB','00111800000004','00000000000','Perícia');
insert into procedimento values (null,'2014-11-27','10:20','Rua AB','00111800000004','00000000000','Perícia');
insert into procedimento values (null,'2020-08-19','11:40','Rua DE','00111800000001','88888888888','Perícia');

insert into comunicado values (null,'2019-05-07','Audiencia',1);
insert into comunicado values (null,'2019-05-07','Pericia',6);
insert into comunicado values (null,'2019-04-15','Audiencia',2);
insert into comunicado values (null,'2019-05-08','Audiencia',4);
insert into comunicado values (null,'2019-03-05','Pericia',10);


insert into audiencia values ('Inicial','33333333333',1);
insert into audiencia values ('Inicial','22222222222',2);
insert into audiencia values ('Inicial','44444444444',3);
insert into audiencia values ('Prosseguimento','33333333333',4);
insert into audiencia values ('Inicial','55555555555',5);

insert into pericia values ('Insalubridade',null,'Joao Carlos',6);
insert into pericia values ('Periculosidade',null,'Joao Carlos',7);
insert into pericia values ('Médica',null,'Luis Antonio',8);
insert into pericia values ('Médica',null,'Rafael Santos',9);
insert into pericia values ('Médica',null,'Luiz Lima',10);

insert into prazo values (null,'2019-06-02','2019-06-10','Réplica','00111800000002','99999999999');
insert into prazo values (null,'2019-08-03','2019-08-13','Contrarrazoes','00111800000001','00000000000');
insert into prazo values (null,'2019-07-15','2019-07-20','Recurso','00111800000002','00000000000');
insert into prazo values (null,'2019-09-17','2019-09-25','Réplica','00111800000003','11111111111');
insert into prazo values (null,'2018-04-26','2018-04-30','Manifestação','00111800000005','77777777777');

insert into sentenca values (null,'2019-01-06','Improcedente',null,'00111800000001');
insert into sentenca values (null,'2019-03-09','Procedente','5000','00111800000002');
insert into sentenca values (null,'2019-06-08','Extinto',null,'00111800000004');
insert into sentenca values (null,'2018-05-07','Procedente','2000','00111800000005');
insert into sentenca values (null,'2017-11-06','Improcedente',null,'00111800000003');

insert into realizacaoPrazo values ('44444444444',1,3,'2019-06-04');
insert into realizacaoPrazo values ('55555555555',4,4,'2019-09-19');
insert into realizacaoPrazo values ('22222222222',1,2,'2019-06-05');
insert into realizacaoPrazo values ('44444444444',3,3,'2019-07-20');
insert into realizacaoPrazo values ('33333333333',5,1,'2018-04-28');

insert into autor values ('00000000001',1);
insert into autor values ('00000000002',2);
insert into autor values ('00000000003',3);
insert into autor values ('00000000004',4);
insert into autor values ('00000000005',5);
insert into reu values ('00011100011100',1);
insert into reu values ('00011100011111',2);
insert into reu values ('00011100011122',3);
insert into reu values ('00011100011133',4);
insert into reu values ('00011100011144',5);

/*--------------------------------------------------------Dados Novos------------------------------------------------------------------------------*/

/* inserção de funcionarios*/
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Jacob","16060402763","43586481199",3126,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Jermaine","16290302461","39211766299",1245,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Taylor","16430419189","05605559299",2332,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Xantha","16220405930","87711358299",2581,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Kellie","16050315267","64354621699",3155,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Remedios","16340519545","61805003799",2715,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Savannah","16730924419","51536921599",4190,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Kamal","16401013870","16921259399",4906,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Aiko","16381008764","80664142899",1848,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Teegan","16720926622","61475292799",3763,"Auxiliar");

/*Advogados*/
INSERT INTO advogado (oab,especializacao,cpfadv) VALUES ("RS074402","Criminal ","16060402763");
INSERT INTO advogado (oab,especializacao,cpfadv) VALUES ('RS108563',"Trabalhista ", "16290302461");
INSERT INTO advogado (oab,especializacao,cpfadv) VALUES ('RS88990',"Trabalhista ", "16430419189");
INSERT INTO advogado (oab,especializacao,cpfadv) VALUES ('RS052003',"Previdenciario","16220405930");
INSERT INTO advogado (oab,especializacao,cpfadv) VALUES ('RS105553',"Civel ","16050315267");

/*Auxiliares */
INSERT INTO auxiliar (cpfaux) VALUES ("16340519545");
INSERT INTO auxiliar (cpfaux) VALUES ("16730924419");
INSERT INTO auxiliar (cpfaux) VALUES ("16401013870");
INSERT INTO auxiliar (cpfaux) VALUES ("16381008764");
INSERT INTO auxiliar (cpfaux) VALUES ("16720926622");
/* Inserção das consultas */

/*Inset partes */

INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16520930744","Sonya","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16810501825","Tanner","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16680915991","Wyatt","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16280301777","Katelyn","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16720206031","Cedric","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16171103784","Idona","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16221222961","Grady","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16780822427","Yuli","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16500618797","William","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16250517764","Adam","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16660807919","Charles","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16120211831","Buffy","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16070628641","Xena","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16180414970","Yoshi","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16590311332","Kaye","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16590311432","Arthur","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16150929806","Camden","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16260605093","Adara","Parte Contrária");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16820212556","Kalia","Cliente");
INSERT INTO parte (cpfcnpj,nome,tipo) VALUES ("16970608177","Jenna","Parte Contrária");

/* Insere Endeteço */

INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #344-1869 Eu, Road","31"," Alvorada","RS","16520930744","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"301-7831 Elementum, Avenue","29"," Porto Alegre ","RS","16810501825","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"P.O. Box 197, 9819 Arcu Rd.","9"," Canoas ","RS","16680915991","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"P.O. Box 666, 9568 Non, Road","35"," Alvorada","RS","16280301777","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"P.O. Box 915, 2733 Orci Avenue","9","Viamão ","RS","16720206031","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"7224 Cursus St.","41","Torres","RS","16171103784","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #708-5057 Justo St.","43"," Canoas ","RS","16221222961","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"P.O. Box 268, 8105 Taciti Avenue","25"," Canoas ","RS","16780822427","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #700-1823 Semper. St.","47"," Canoas ","RS","16500618797","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"508-7381 Magna St.","19","Torres","RS","16250517764","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"P.O. Box 998, 8645 Sed St.","25","Viamão ","RS","16660807919","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #497-5103 Nunc. Street","37","Viamão ","RS","16120211831","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"8161 At, Road","15"," Alvorada","RS","16070628641","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #324-8182 Vel Ave","29"," Canoas ","RS","16180414970","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"859-9863 Vel St.","29","Viamão ","RS","16590311332","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #581-6061 Vestibulum Ave","9"," Alvorada","RS","16590311432","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"576 Bibendum. Street","29","Torres","RS","16150929806","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #341-7348 Curabitur St.","31"," Porto Alegre ","RS","16260605093","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"Ap #569-9675 Aenean St.","47","Torres","RS","16820212556","centro");
INSERT INTO endereco (codendereco,rua,numero,cidade,uf,identificacao, bairro) VALUES (null,"9606 Pede, Street","5"," Canoas ","RS","16970608177","centro");

/*  Insert Clientes */
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16231014253","Brasileiro","tristique@sed.org","16810501825");
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16800523184","Brasileiro","enim@ultricesposuere.net","16720206031");
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16381209027","Brasileiro","diam.Sed@Sed.co.uk","16221222961");
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16041204835","Brasileiro","nisl.Quisque@purusNullam.edu","16120211831");
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16830422109","Brasileiro","massa@aliquet.net","16070628641");
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16040610835","Brasileiro","orci.sem.eget@asollicitudin.net","16180414970");
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16220417180","Brasileiro","Integer.vulputate.risus@eunibhvulputate.org","16590311432");
INSERT INTO cliente (rg,nacionalidade,email,cpf) VALUES ("16011007721","Brasileiro","et.ipsum@elitsed.net","16820212556");


/*Insert Telefones */

INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Residêncial","51","174800326","16810501825");
INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Residêncial","51","563233005","16720206031");
INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Celular","51","809106047","16221222961");
INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Residêncial","51","461133644","16120211831");
INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Celular","51","261779604","16070628641");
INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Celular","51","543104161","16180414970");
INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Residêncial","51","533647128","16590311432");
INSERT INTO telefone (codtelefone,tipo,ddd,numero,cpf) VALUES (null,"Comercial","51","218931870","16820212556");
/* Insert Documentos */

INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,'2020-07-20',"14:00","Tanner","16810501825","0951760483","16220405930");
INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,'2019-04-05',"11:30","Cedric","16720206031","0985379133","16430419189");
INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,"2018-10-10","10:30","Grady","16221222961","0117968458","16050315267");
INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,"2019/06/20","15:30","Buffy","16120211831","0994642986","16430419189");
INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,"2018/09/18","17:30","Xena","16070628641","0383011970","16060402763");
INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,"2019/04/20","15:00","Yoshi","16180414970","0987422333","16050315267");
INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,"2018/04/05","09:30","Arthur","16590311432","0910276740","16290302461");
INSERT INTO consulta (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (null,"2019/05/07","17:00","Kalia","16820212556","0133217045","16060402763");


 /*PAREI AQUI*/
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"non","Petição","16810501825",1);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"vitae","Petição","16720206031",2);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"sed, sapien. Nunc","Petição","16221222961",3);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"interdum.","Petição","16120211831",4);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"sit amet,","Petição","16070628641",5);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"dolor quam, elementum","Petição","16180414970",6);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"enim, sit amet","Petição","16590311432",7);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Integer vitae","Petição","16820212556",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"arcu. Curabitur ut","Petição","16120211831",9);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"ullamcorper","Petição","16720206031",10);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"non","Contrato","16810501825",1);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"vitae","Contrato","16720206031",2);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"sed, sapien. Nunc","Contrato","16221222961",3);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"interdum.","Contrato","16120211831",4);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"sit amet,","Contrato","16070628641",5);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"dolor quam, elementum","Contrato","16180414970",6);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"enim, sit amet","Contrato","16590311432",7);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Integer vitae","Contrato","16820212556",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"arcu. Curabitur ut","Contrato","16120211831",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"ullamcorper","Contrato","16720206031",10);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"non","Outros","16810501825",1);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"vitae","Outros","16720206031",2);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"sed, sapien. Nunc","Outros","16221222961",3);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"interdum.","Outros","16120211831",4);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"sit amet,","Outros","16070628641","5");
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"dolor quam, elementum","Outros","16180414970",6);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"enim, sit amet","Outros","16590311432",7);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Integer vitae","Outros","16820212556",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"arcu. Curabitur ut","Outros","16120211831",9);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"ullamcorper","Outros","16720206031",10);
/* Insert Pagamentos   */

INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,49480,"2019-2-13","16810501825","2252277622793296904963002");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,8879,"2019-06-25","16720206031","9265184410242621389005714");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,18687,"2019-04-08","16221222961","6689211958692027846706226");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,9503,"2018-05-20","16120211831","8881609590415913913468914");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,10564,"2019-03-25","16070628641","5331394338039618237832748");

/* Insert Ação*/

INSERT INTO acao (codacao,area) VALUES (null,"Trabalhista");
INSERT INTO acao (codacao,area) VALUES (null,"Trabalhista");
INSERT INTO acao (codacao,area) VALUES (null,"Trabalhista");
INSERT INTO acao (codacao,area) VALUES (null,"Cível");
INSERT INTO acao (codacao,area) VALUES (null,"Civel");
INSERT INTO acao (codacao,area) VALUES (null,"Trabalhista");
INSERT INTO acao (codacao,area) VALUES (null,"Cível");
INSERT INTO acao (codacao,area) VALUES (null,"Criminal");
INSERT INTO acao (codacao,area) VALUES (null,"Previdenciaria");
INSERT INTO acao (codacao,area) VALUES (null,"Cível");

/*Insert Representação*/

INSERT INTO representacao (codacao,cpfadv) VALUES (1,"16060402763");
INSERT INTO representacao (codacao,cpfadv) VALUES (2,"16430419189");
INSERT INTO representacao (codacao,cpfadv) VALUES (3,"16220405930");
INSERT INTO representacao (codacao,cpfadv) VALUES (4,"16290302461");
INSERT INTO representacao (codacao,cpfadv) VALUES (5,"16050315267");
INSERT INTO representacao (codacao,cpfadv) VALUES (6,"16430419189");
INSERT INTO representacao (codacao,cpfadv) VALUES (7,"16050315267");
INSERT INTO representacao (codacao,cpfadv) VALUES (8,"16220405930");
INSERT INTO representacao (codacao,cpfadv) VALUES (9,"16220405930");
INSERT INTO representacao (codacao,cpfadv) VALUES (10,"16220405930");

/*Insert petição*/

INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("2252277622793296904963002","Andamento",1);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("9265184410242621389005714","Andamento",2);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("6689211958692027846706226","Andamento",3);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("8881609590415913913468914","Inicial",4);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("5331394338039618237832748","Andamento",5);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("3734175883320449549886134","Inicial",6);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("5211200029659843072433130","Inicial",7);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("2208768326089533299711442","Andamento",8);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("6542546845678954231458965","Andamento",9);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("9548354584575366584569954","Inicial",10);

/*Insert Distribuição*/

INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16381008764",1,"2019-01-20","08:00");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16381008764",2,"2019-06-27","14:00");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16340519545",3,"2019-07-02","10:00");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16720926622",4,"2018-11-05","16:00");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16401013870",5,"2019-04-20","08:00");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16730924419",6,"2019-02-20","13:30");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16381008764",7,"2018-10-15","15:00");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16381008764",8,"2018-07-05","13:00");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16720926622",9,"2017-10-28","10:30");
INSERT INTO distribuicao (cpfaux,coddocumento,dia,hora) VALUES ("16381008764",10,"2018-07-09","14:30");

/*Insert Contrato*/

INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (15721,30,11);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (8708,13,12);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (35493,19,13);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (3915,21,14);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (21236,22,15);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (20311,17,16);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (17451,22,17);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (4363,25,18);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (7164,10,19);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (20372,30,20);

/*Insert Processo*/

INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("2252277622793296904963002","08","Porto Alegre","Aposentadoria",1);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("9265184410242621389005714","28","Canoas","Aposentadoria",2);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("6689211958692027846706226","04","Alvorada","Dano moral",3);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("8881609590415913913468914","03","Alvorada","Dano moral",4);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("5331394338039618237832748","24","Alvorada","Aposentadoria",5);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("3734175883320449549886134","10","Alvorada","Rescisoria",6);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("5211200029659843072433130","23","Viamão","Dano moral",7);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("2208768326089533299711442","15","Viamão","Dano moral",8);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("6542546845678954231458965","23","Viamão","Aposentadoria",9);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("9548354584575366584569954","03","Viamão","Aposentadoria",10);

/*Insert Procedimento*/

INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-02-10","09:00","P.O. Box 687, 7161 Cras Road","16340519545","Audiência","2252277622793296904963002" );
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-09-20","16:00","908-1037 Laoreet Avenue","16381008764","Audiência","9265184410242621389005714");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-05-15","13:00","P.O. Box 673, 2233 Habitant St.","16381008764","Audiência","6689211958692027846706226");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-03-12","09:30","574-3919 Eu St.","16381008764","Audiência","8881609590415913913468914");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-12-03","17:30","P.O. Box 573, 7439 Ultricies Ave","16381008764","Audiência","5331394338039618237832748");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-09-15","17:30","276 Penatibus Avenue","16720926622","Audiência","3734175883320449549886134");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2020-01-21","10:00","Ap #669-3358 Est, Avenue","16381008764","Audiência","5211200029659843072433130");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-11-17","16:30","Ap #275-3387 Et, Road","16381008764","Audiência","2208768326089533299711442");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-05-19","08:00","Ap #463-2366 Donec Street","16401013870","Audiência","6542546845678954231458965");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-06-15","11:00","Ap #771-8914 Molestie Av.","16401013870","Audiência","9548354584575366584569954");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-05-29","14:30","P.O. Box 847, 345 Ac, Avenue","16340519545","Perícia","2252277622793296904963002");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-10-12","10:00","P.O. Box 357, 6014 Sodales Rd.","16401013870","Perícia","9265184410242621389005714");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-06","09:00","323-5103 Enim, Ave","16381008764","Perícia","6689211958692027846706226");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-05-20","13:30","P.O. Box 636, 4576 Sed, Avenue","16381008764","Perícia","8881609590415913913468914");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-07-12","08:30","385 Nec, Road","16720926622","Perícia","5331394338039618237832748");


/*Insert Comunicado*/

INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-13","pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet",1);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-20","accumsan neque et nunc. Quisque",2);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-04-17","facilisi. Sed neque. Sed eget lacus. Mauris non",3);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-09-22","blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros.",4);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-02-19","Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ",5);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-28","amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor",6);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-07-08","molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,",7);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-12-11","eu elit. Nulla facilisi. Sed",8);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-23","ullamcorper, nisl arcu iaculis",9);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-12-06","felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras",10);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-05","amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor",11);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-07-01","molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,",12);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-11-12","eu elit. Nulla facilisi. Sed",13);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-03-15","ullamcorper, nisl arcu iaculis",14);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-12-08","felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras",15);

/*Insert Audiencia*/

INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Inicial","16290302461",1);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Prosseguimento","16060402763",2);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Prosseguimento","16060402763",3);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Prosseguimento","16050315267",4);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Inicial","16050315267",5);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Inicial","16290302461",6);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Inicial","16050315267",7);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Prosseguimento","16290302461",8);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Prosseguimento","16060402763",9);
INSERT INTO audiencia (tipo,cpfadv,codprocedimento) VALUES ("Inicial","16430419189",10);

/*Insert Perícia*/

INSERT INTO pericia (tipo,perito,codprocedimento) VALUES ("Médica","Benjamin Ford",11);
INSERT INTO pericia (tipo,perito,codprocedimento) VALUES ("Insalubridade","Lana W. Park",12);
INSERT INTO pericia (tipo,perito,codprocedimento) VALUES ("Insalubridade","Sean Gay",13);
INSERT INTO pericia (tipo,perito,codprocedimento) VALUES ("Médica","Megan Sharpe",14);
INSERT INTO pericia (tipo,perito,codprocedimento) VALUES ("Médica","Ginger Roman",15);


/*Insert Prazo */

INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-03-10","2019-08-08","molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.","8881609590415913913468914");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-15","2019-07-14","per conubia","2252277622793296904963002");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-04-06","2019-08-16","Nunc sollicitudin commodo ipsum. Suspendisse non","9265184410242621389005714");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-04-12","2019-05-03","leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget","6689211958692027846706226");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-07","2018-05-03","vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.","5331394338039618237832748");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-29","2018-06-08","Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia","3734175883320449549886134");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-29","2018-07-06","ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc","5211200029659843072433130");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-17","2019-06-12","erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec","2208768326089533299711442");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-12","2019-06-29","egestas. Aliquam nec enim. Nunc ut","6542546845678954231458965");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-07-01","2019-09-01","hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam","9548354584575366584569954");

/*Insert Sentença*/

INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-07-15","Procedente",27283,"2252277622793296904963002");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-07-02","Procedente",40882,"9265184410242621389005714");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-07-13","Procedente",18435,"6689211958692027846706226");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-06-28","Procedente",37613,"8881609590415913913468914");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-05-04","Procedente",31550,"5331394338039618237832748");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2018-06-07","Extinto",27975,"2208768326089533299711442");


/*Insert RealizacaoPrazo*/

INSERT INTO realizacaoprazo (codprazo,codpeticao,dia) VALUES (1,21,"2019-06-01");
INSERT INTO realizacaoprazo (codprazo,codpeticao,dia) VALUES (2,22,"2019-01-25");
INSERT INTO realizacaoprazo (codprazo,codpeticao,dia) VALUES (3,23,"2019-05-29");
INSERT INTO realizacaoprazo (codprazo,codpeticao,dia) VALUES (4,24,"2019-05-12");
INSERT INTO realizacaoprazo (codprazo,codpeticao,dia) VALUES (5,25,"2019-11-12");


/*Insert Autor*/

INSERT INTO autor (cpfautor,codacao) VALUES ("16810501825",1);
INSERT INTO autor (cpfautor,codacao) VALUES ("16720206031",2);
INSERT INTO autor (cpfautor,codacao) VALUES ("16221222961",3);
INSERT INTO autor (cpfautor,codacao) VALUES ("16120211831",4);
INSERT INTO autor (cpfautor,codacao) VALUES ("16070628641",5);
INSERT INTO autor (cpfautor,codacao) VALUES ("16180414970",6);
INSERT INTO autor (cpfautor,codacao) VALUES ("16590311432",7);
INSERT INTO autor (cpfautor,codacao) VALUES ("16820212556",8);
INSERT INTO autor (cpfautor,codacao) VALUES ("16120211831",9);
INSERT INTO autor (cpfautor,codacao) VALUES ("16720206031",10);

/*Insert Réu*/

INSERT INTO reu (cpfreu,codacao) VALUES ("16680915991",1);
INSERT INTO reu (cpfreu,codacao) VALUES ("16280301777",2);
INSERT INTO reu (cpfreu,codacao) VALUES ("16171103784",3);
INSERT INTO reu (cpfreu,codacao) VALUES ("16780822427",4);
INSERT INTO reu (cpfreu,codacao) VALUES ("16500618797",5);
INSERT INTO reu (cpfreu,codacao) VALUES ("16250517764",6);
INSERT INTO reu (cpfreu,codacao) VALUES ("16660807919",7);
INSERT INTO reu (cpfreu,codacao) VALUES ("16590311332",8);
INSERT INTO reu (cpfreu,codacao) VALUES ("16150929806",9);
INSERT INTO reu (cpfreu,codacao) VALUES ("16260605093",10);

/*Insert  Peticionamento*/

INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (1,1,"16290302461");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (2,2,"16290302461");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (3,3,"16050315267");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (4,4,"16430419189");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (5,5,"16060402763");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (6,6,"16050315267");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (7,7,"16290302461");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (8,8,"16430419189");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (9,9,"16220405930");
INSERT INTO peticionamento (coddocumento,codacao,cpfadv) VALUES (10,10,"16290302461");

/*Insert Documentacao*/

INSERT INTO Documentacao (coddocumento,codacao) VALUES (21,1);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (22,2);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (23,3);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (24,4);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (25,5);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (26,6);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (27,7);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (28,8);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (29,9);
INSERT INTO Documentacao (coddocumento,codacao) VALUES (30,10);

/*Insert Pertence */

INSERT INTO pertence (coddocumento,codpeticao) VALUES (11,1);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (12,2);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (13,3);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (14,4);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (15,5);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (16,6);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (17,7);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (18,8);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (19,9);
INSERT INTO pertence (coddocumento,codpeticao) VALUES (20,10);
