/*Para cada comarca, a quantidade de processos que tem sentença e quantos foram procedentes contra um determinado réu.*/

select comarca, count(numprocesso)
from ProcComSentenca natural join acao natural join reu 
where resultado='Procedente'
group by comarca;

/*Mostrar a descrição e data dos prazos do processo de um determinado cliente.*/

select descricao, datainicio
from ProcessosCliente join prazo on numprocesso=num_processo
where cpf='00000000001'


create view SentencaCom as select count(numprocesso) from processo natural join sentenca group by comarca;

create view ProcessosCliente as select * from acao natural join autor natural join reu join cliente on (cpf=cpfAutor or cpf=cpfReu) natural join processo

