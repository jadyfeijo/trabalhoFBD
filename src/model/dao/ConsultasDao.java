package model.dao;

import java.util.Date;
import java.util.List;

import model.entities.Advogado;
import model.entities.Audiencia;
import model.entities.Cliente;
import model.entities.Prazo;
import model.entities.Processo;

public interface ConsultasDao {

	List<Audiencia> mostrarAudienciasAdv(String oab, Date dia);
	List<Prazo> mostrarPrazos(String oab);
	List<Prazo> mostrarAndamento (String proc, String cpfCliente);
	List<Cliente> clientesComunicar();
	List<Advogado> advogadoTodasProcedente ();
	
	List<Processo> procPagar ();
	List<Audiencia> mostrarAudienciasCliente (String cpfCliente);
	
	
}