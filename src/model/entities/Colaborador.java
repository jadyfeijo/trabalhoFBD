package model.entities;

import model.entities.enums.Funcao;

public class Colaborador {

	private String nome;
	private String cpf;
	private String rg;
	private Double salario;
	private Funcao funcao;	
	
	public Colaborador() {
	}

	public Colaborador(String nome, String cpf, String rg, Double salario, Funcao funcao) {
		this.nome = nome;
		this.cpf = cpf;
		this.rg = rg;
		this.salario = salario;
		this.funcao = funcao;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public Double getSalario() {
		return salario;
	}

	public void setSalario(Double salario) {
		this.salario = salario;
	}

	public Funcao getFuncao() {
		return funcao;
	}

	public void setFuncao(Funcao funcao) {
		this.funcao = funcao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cpf == null) ? 0 : cpf.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Colaborador other = (Colaborador) obj;
		if (cpf == null) {
			if (other.cpf != null)
				return false;
		} else if (!cpf.equals(other.cpf))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Colaborador [nome=" + nome + ", cpf=" + cpf + ", rg=" + rg + ", salario=" + salario + "]";
	}
	
	
	
	
	
}
