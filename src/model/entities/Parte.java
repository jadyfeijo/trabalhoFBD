package model.entities;

public class Parte {

	private String id;
	private String nome;
	private Endereco endereco;
	
	public Parte() {
	}

	public Parte(String id, String nome, Endereco endereco) {
		this.id = id;
		this.nome = nome;
		this.endereco = endereco;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	
		
}
