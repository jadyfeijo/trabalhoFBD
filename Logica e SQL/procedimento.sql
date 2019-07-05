DELIMITER $
create trigger inserirPagamento after insert
on sentenca
for each row
begin
	insert into pagamento values (null,(NEW.valor*(1-(
			select honorarios
            from contrato 
            where cod_documento=10))-(
            
            select preco
            from contrato 
            where cod_documento=10)),now()+15,NEW.numprocesso,'00000000003');
end$
    
    
    DELIMITER $$

	drop function if exists valorPagamento $$

    create function valorPagamento(valor float) returns float
    begin 
		declare hon float;
        declare preco float;
        
       select contrato.honorarios into hon from contratos where cod_documento=10;
		select contrato.preco into preco from contratos where cod_documento=10;
        
        return (valor*(1-hon) -preco);
	end$$
        
	
    

