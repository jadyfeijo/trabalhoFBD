package model.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import model.entities.Acao;
import model.entities.Advogado;
import model.entities.Audiencia;
import model.entities.Cliente;
import model.entities.Prazo;
import model.entities.Processo;
import model.entities.Sentenca;

public interface ConsultasDao {

	List<Acao> mostrarAudienciasAdv(String oab, Date dia);
	List<Processo> mostrarPrazos(String oab);
	List<Prazo> mostrarAndamento (String proc, String cpfCliente);
	List<Cliente> clientesComunicar();
	List<Advogado> advogadoTodasProcedente (int mes);
	List<Cliente> procPagar ();
	List<Audiencia> mostrarAudienciasCliente (String cpfCliente);
	Map<String,int[]> sentencasPorComarca (String cpfReu);
	List<Cliente> getTabelaPagamento();
	List<Processo> getTabelaSentenca();
	void inserirSentenca(Sentenca sent, String num);
	
	
	
}
