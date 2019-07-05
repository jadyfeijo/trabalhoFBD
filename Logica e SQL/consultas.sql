use escritorio;

/*Para cada comarca, a quantidade de processos que tem sentença e quantos foram procedentes contra um determinado réu.*/
select comarca, count(numprocesso),count(SentencasProcedentes.resultado)
from processo natural join sentenca left join  SentencasProcedentes using(codsentenca) natural join reu
where cpfReu = '00011100011100' 
group by comarca;

/*Número do processo, comarca, vara, nome do autor e réu e horário das audiências de um certo advogado em determinado dia.*/
select numprocesso,hora,dia,codacao,pautor.nome, preu.nome,comarca,vara
from acao natural join autor join parte as pautor on (pautor.cpfcnpj=cpfAutor) natural join reu join parte as preu on (preu.cpfcnpj=cpfReu)  join processo using (codacao) join procedimento on (numprocesso=num_processo)
where procedimento.tipo='Audiencia' and dia='2019-08-03'and codacao in (
	select codacao
    from representacao join acao on(cod_acao=codacao) natural join advogado
    where oab='RS108563');
    
/*Mostrar a descrição e data dos prazos do processo de um determinado cliente.*/
select descricao, datainicio
from ProcessosCliente join prazo on numprocesso=num_processo
where cpf='00000000001';

/*Número do processo, vara, data final e descrição dos prazos em aberto  de um determinado advogado.*/
select oanumprocesso,vara,datafim,descricao
from ProcessosAdv join prazo on (numprocesso=num_processo)
where datafim>now() and oab='RS074402';

/*Nome e telefone dos clientes que tem um procedimento marcado, mas não possuem comunicado.*/

select nome, ddd,numero,cpf
from parte join cliente on (cpfcnpj=cpf) join telefone using (cpf)
where cpf not in (
	select cpf
    from ProcessosCliente join procedimento on (num_processo=numprocesso) natural join comunicado);
    
     
/*Nome do advogado que teve sentença procedente em todos seus processos em um determinado mês.*/
select oab
from Advogado as adv join Colaborador on (cpf=cpfAdv)
where  not exists(
	select *
	from  ProcessosAdv join  sentenca using (numprocesso)
	where adv.oab=oab and resultado <>'Procedente') and oab in (
		select oab
		from  ProcessosAdv natural join processo join  sentenca using (numprocesso)
        where month(datasentenca)=3 and year(now()));
        
/*Nome dos clientes e o numero de processos  com sentença procedente que não foram pagos.*/
select nome, cpf,numprocesso
from ProcessosCliente join parte on(cpf=cpfcnpj)
where numprocesso in (
	select numprocesso
    from sentenca
    where resultado='Procedente' and numprocesso not in(
			select numProc
            from pagamento));
            
/*Dia, horário,local, vara,comarca das audiências futuras de um cliente.*/
    select dia,hora,localP, vara,comarca,procedimento.tipo
    from ProcessosCliente join procedimento on(numprocesso=num_processo)
    where cpf ='00000000002' and dia>=now();

create view SentencasProcedentes as select codsentenca,resultado from sentenca where resultado='Procedente';

create view ProcessosCliente as select * from acao natural join autor natural join reu join cliente on (cpf=cpfAutor or cpf=cpfReu) natural join processo;

create view ProcessosAdv as select codacao, oab,numprocesso, vara, comarca from representacao join acao on(cod_acao=codacao) natural join advogado natural join processo;

drop view SentencasProcedentes

