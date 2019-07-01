package model.entities;

public class Parte {

	private String id;
	private String nome;
	private Endereco endereco;
	
	public Parte() {
		super();
	}

	public Parte(String id, String nome, Endereco endereco) {
		super();
		this.id = id;
		this.nome = nome;
		this.endereco = endereco;
	}
		
}
