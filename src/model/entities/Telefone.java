package model.entities;

import model.entities.enums.TipoTelefone;

public class Telefone {

	private String ddd;
	private String numero;
	private TipoTelefone tipo;
		
	public Telefone() {
		super();
	}

	public Telefone(String ddd, String numero, TipoTelefone tipo) {
		super();
		this.ddd = ddd;
		this.numero = numero;
		this.tipo = tipo;
	}

	public String getDdd() {
		return ddd;
	}

	public void setDdd(String ddd) {
		this.ddd = ddd;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public TipoTelefone getTipo() {
		return tipo;
	}

	public void setTipo(TipoTelefone tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "("+ ddd + ") " + numero;
	}
	
	public static Telefone parseToTelefone(String telefone) {
		Telefone fone=new Telefone();
		
		fone.setDdd(telefone.substring(0, 1));
		fone.setNumero(telefone.substring(2, telefone.length()-1));
		
		return fone;
		
	}
	
	
	
}
