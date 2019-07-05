/*Após ser inserida uma sentença uma sentença procedente, será inserido um novo pagamento com seu valor calculado pelas informacoes do contrato e data de pagamento com prazo de 30 dias*/
   
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
    /*insert into pagamento values (null,(valor*(1-hon)-preco),adddate(dia,interval 30 day),num,(
																								select cpf
																								from ProcessosCliente
																								where num=numprocesso),0);*/
	
end$

DELIMITER $
create procedure inserirPagamento(valor float, dia date, num char(25))
begin
	insert into pagamento values (null,valorPagamento(valor,num),adddate(dia,interval 30 day),num,(
																								select cpf
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
/*
	insert into pagamento values (null,valorPagamento(new.valor),adddate(new.datasentenca,interval 30 day),NEW.numprocesso,(
			
            select cpf
            from ProcessosCliente
            where new.numprocesso=numprocesso),0);*/
		end if;
end$

INSERT INTO sentenca (codsentenca,datasentenca,resultado,valor,numprocesso) VALUES (null,"2019-08-12","Procedente",20000,'0000000000000000000000001');



select valorPagamento(50000);

