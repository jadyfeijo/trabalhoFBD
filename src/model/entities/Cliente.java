package model.entities;

import java.util.ArrayList;
import java.util.List;

public class Cliente extends Parte{

	private String rg;
	private String nascionalidade;
	private String email;
	private Telefone telefone;
	
	private List<Acao> acoes = new ArrayList<>();
	
	public Cliente() {
		super();
	}

	public Cliente(String rg, String nascionalidade, String email, Telefone telefone) {
		super();
		this.rg = rg;
		this.nascionalidade = nascionalidade;
		this.email = email;
		this.telefone = telefone;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getNascionalidade() {
		return nascionalidade;
	}

	public void setNascionalidade(String nascionalidade) {
		this.nascionalidade = nascionalidade;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Telefone getTelefone() {
		return telefone;
	}

	public void setTelefone(Telefone telefone) {
		this.telefone = telefone;
	}

	public List<Acao> getAcoes() {
		return acoes;
	}
	
	public void addAcao (Acao acao) {
		
		acoes.add(acao);
	}
	
	public void removeAcao(Acao acao) {
		acoes.add(acao);
	}
}
