/*Após ser inserida uma sentença uma sentença procedente, será inserido um novo pagamento com seu valor calculado pelas informacoes do contrato e data de pagamento 
com prazo de 30 dias.*/

/* O gatilho é ativado após ser feita uma inserção em Sentença, ele testará se o resultado da sentença inserida é Procedente e se for chamará o procedure inserirPagamento 
que recebe como parâmetro o valor e numero de processo da sentença 'new' inserida. Esses valores serão repassados a função valorPagamento que retornará o valor calculado 
que deve ser pago ao cliente. O procedure irá inserir uma nova tupla com os valores passados por parâmetro na tabela pagamento */


SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $
create function valorPagamento(valor float, num char(25)) returns float
begin 
	
    return (valor*(1-(select honorarios from contrato where coddocumento=(
										select coddocumento
										from acao natural join processo
                                        where num=numprocesso))/100)-(select preco from contrato where coddocumento=(
																				select coddocumento
																				from acao natural join processo
																				where num=numprocesso)));
	
end$

DELIMITER $
create procedure inserirPagamento(valor float, dia date, num char(25))
begin
	insert into pagamento values (null,valorPagamento(valor,num),adddate(dia,interval 30 day),num,(	select cpf
																									from ProcessosCliente
																									where num=numprocesso),0);
end$


DELIMITER $
create trigger inserirPagamento after insert
on sentenca
for each row
begin
		if new.resultado='Procedente' then  
			call inserirPagamento(new.valor,new.datasentenca,new.numprocesso);
		end if;
end$

INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-08-12","Procedente",20000,'0000000000000000000000001');

