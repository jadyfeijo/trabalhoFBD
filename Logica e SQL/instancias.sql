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
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição01","Petição","16810501825",1);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição02","Petição","16720206031",2);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição03","Petição","16221222961",3);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição04","Petição","16120211831",4);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição05","Petição","16070628641",5);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição06","Petição","16180414970",6);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição07","Petição","16590311432",7);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição08","Petição","16820212556",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição09","Petição","16120211831",9);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Petição10","Petição","16720206031",10);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16810501825",1);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16720206031",2);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16221222961",3);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16120211831",4);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16070628641",5);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16180414970",6);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16590311432",7);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16820212556",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16120211831",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Contrato01","Contrato","16720206031",10);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc01","Outros","16810501825",1);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc02","Outros","16720206031",2);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc03","Outros","16221222961",3);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc04","Outros","16120211831",4);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc05","Outros","16070628641","5");
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc06","Outros","16180414970",6);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc07","Outros","16590311432",7);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc08","Outros","16820212556",8);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc09","Outros","16120211831",9);
INSERT INTO documento (coddocumento,nome,tipo,cpfcliente,codacao) VALUES (null,"Doc10","Outros","16720206031",10);
/* Insert Pagamentos   */

INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,49480,"2019-2-13","16810501825","0000000000000000000000005");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,8879,"2019-06-25","16720206031","0000000000000000000000004");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,18687,"2019-04-08","16221222961","0000000000000000000000003");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,9503,"2018-05-20","16120211831","0000000000000000000000004");
INSERT INTO pagamento (codpagamento,valor,datapagamento,cpfcliente,numproc) VALUES (null,10564,"2019-03-25","16070628641","0000000000000000000000005");

/*Insert petição*/

INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000001","Andamento",1);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000002","Andamento",2);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000003","Andamento",3);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000004","Inicial",4);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000005","Andamento",5);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000006","Inicial",6);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000007","Inicial",7);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000008","Andamento",8);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000009","Andamento",9);
INSERT INTO peticao (numeroproc,tipo,coddocumento) VALUES ("0000000000000000000000010","Inicial",10);

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

INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (1000,30,11);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (2000,13,12);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (1500,19,13);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (500,21,14);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (1000,22,15);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (1000,17,16);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (2000,22,17);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (1500,25,18);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (500,10,19);
INSERT INTO contrato (preco,honorarios,coddocumento) VALUES (2000,30,20);

/* Insert Ação*/

INSERT INTO acao VALUES (null,"Trabalhista",11);
INSERT INTO acao VALUES (null,"Trabalhista",12);
INSERT INTO acao VALUES (null,"Trabalhista",13);
INSERT INTO acao VALUES (null,"Cível",14);
INSERT INTO acao VALUES (null,"Civel",15);
INSERT INTO acao VALUES (null,"Trabalhista",16);
INSERT INTO acao VALUES (null,"Cível",17);
INSERT INTO acao VALUES (null,"Criminal",18);
INSERT INTO acao VALUES (null,"Previdenciaria",19);
INSERT INTO acao VALUES (null,"Cível",20);

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

/*Insert Processo*/

INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000001","08","Porto Alegre","Aposentadoria",1);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000002","28","Canoas","Aposentadoria",2);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000003","04","Alvorada","Dano moral",3);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000004","03","Alvorada","Dano moral",4);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000005","24","Alvorada","Aposentadoria",5);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000006","10","Alvorada","Rescisoria",6);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000007","23","Viamão","Dano moral",7);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000008","15","Viamão","Dano moral",8);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000009","23","Viamão","Aposentadoria",9);
INSERT INTO Processo (numprocesso,vara,comarca,tipo,codacao) VALUES ("0000000000000000000000010","03","Viamão","Aposentadoria",10);

/*Insert Procedimento*/

INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-15","09:00","P.O. Box 687, 7161 Cras Road","16340519545","Audiência","0000000000000000000000001" );
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-20","16:00","908-1037 Laoreet Avenue","16381008764","Audiência","0000000000000000000000002");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-20","13:00","P.O. Box 673, 2233 Habitant St.","16381008764","Audiência","0000000000000000000000003");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-03-12","09:30","574-3919 Eu St.","16381008764","Audiência","0000000000000000000000004");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-12-03","17:30","P.O. Box 573, 7439 Ultricies Ave","16381008764","Audiência","0000000000000000000000005");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-15","17:30","276 Penatibus Avenue","16720926622","Audiência","0000000000000000000000006");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-12-03","10:00","Ap #669-3358 Est, Avenue","16381008764","Audiência","0000000000000000000000007");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-15","16:30","Ap #275-3387 Et, Road","16381008764","Audiência","0000000000000000000000008");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-20","08:00","Ap #463-2366 Donec Street","16401013870","Audiência","0000000000000000000000009");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2018-06-15","11:00","Ap #771-8914 Molestie Av.","16401013870","Audiência","0000000000000000000000010");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-05-29","14:30","P.O. Box 847, 345 Ac, Avenue","16340519545","Perícia","0000000000000000000000001");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-10-12","10:00","P.O. Box 357, 6014 Sodales Rd.","16401013870","Perícia","0000000000000000000000002");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-09-06","09:00","323-5103 Enim, Ave","16381008764","Perícia","0000000000000000000000003");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-05-20","13:30","P.O. Box 636, 4576 Sed, Avenue","16381008764","Perícia","0000000000000000000000004");
INSERT INTO procedimento (codprocedimento,dia,hora,localp,cpfaux,tipo,numprocesso) VALUES (null,"2019-07-12","08:30","385 Nec, Road","16720926622","Perícia","0000000000000000000000005");


/*Insert Comunicado*/

INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-13","Comunica-se a parte sobre a audiencia agendada para o dia XXhorario yy",1);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-04-17","Comunica-se a parte sobre a audiencia agendada para o dia XX horario yy",3);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-09-22","Comunica-se a parte sobre a audiencia agendada para o dia XX horario yy",4);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-28","Comunica-se a parte sobre a audiencia agendada para o dia XX horario yy",6);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-07-08","Comunica-se a parte sobre a audiencia agendada para o dia XX horario yy",7);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-12-11","Comunica-se a parte sobre a audiencia agendada para o dia XX horario yy",8);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-23","Comunica-se a parte sobre a audiencia agendada para o dia XX horario yy",9);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2018-12-06","Comunica-se a parte sobre a audiencia agendada para o dia XX horario yy",10);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-06-05","Comunica-se a parte sobre a pericia agendada para o dia XX horario yy",11);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-07-01","Comunica-se a parte sobre a pericia agendada para o dia XX horario yy",12);
INSERT INTO comunicado (codcomunicado,dataentrega,informacao,codprocedimento) VALUES (null,"2019-03-15","Comunica-se a parte sobre a pericia agendada para o dia XX horario yy",14);

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

INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-03-10","2019-08-08","Juntar Documentos pertinentes para complementação.","0000000000000000000000001");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-15","2019-07-14","Manifestar-se sobre decisão","0000000000000000000000002");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-04-06","2019-08-16","Entrega Documentos Solicitados","0000000000000000000000003");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-04-12","2019-05-03","Manifestar-se sobre interesse em conciliação","0000000000000000000000004");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-07","2018-05-03","juntar complementação ao processo.","0000000000000000000000005");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-29","2018-06-08","juntar carteira de identidade","0000000000000000000000006");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-29","2018-07-06","requerer o que entender de direito","0000000000000000000000007");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-17","2019-06-12","Juntar novas provas ao feito","0000000000000000000000008");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-12","2019-06-29","adicionar comprovantes atualizados","0000000000000000000000009");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-07-01","2019-09-01","Expressar interesse em audiencia de Conciliação","0000000000000000000000010");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-03-10","2019-08-08","Juntar Documentos pertinentes para complementação.","0000000000000000000000007");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-15","2019-07-14","Manifestar-se sobre decisão","0000000000000000000000004");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-04-06","2019-08-16","Entrega Documentos Solicitados","0000000000000000000000009");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-04-12","2019-05-03","Manifestar-se sobre interesse em conciliação","0000000000000000000000009");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-07","2018-05-03","juntar complementação ao processo.","0000000000000000000000003");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-29","2018-06-08","juntar carteira de identidade","0000000000000000000000001");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-29","2018-07-06","requerer o que entender de direito","0000000000000000000000007");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-05-17","2019-06-12","Juntar novas provas ao feito","0000000000000000000000001");
INSERT INTO prazo (codprazo,datainicio,datafim,descricao,numprocesso) VALUES (null,"2019-06-12","2019-06-29","adicionar comprovantes atualizados","0000000000000000000000010");

/*Insert Sentença*/

INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-07-15","Procedente",27283,"0000000000000000000000001");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-07-02","Procedente",40882,"0000000000000000000000002");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-07-13","Procedente",18435,"0000000000000000000000003");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-06-28","Improcedente",37613,"0000000000000000000000004");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-05-04","Procedente",31550,"0000000000000000000000005");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2018-05-16","Improcedente",0,"0000000000000000000000006");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2018-04-13","Improcedente",0,"0000000000000000000000007");
INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2018-05-12","Extinto",0,"0000000000000000000000008");


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