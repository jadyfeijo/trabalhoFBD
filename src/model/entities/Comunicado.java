package model.entities;

import java.util.Date;

public class Comunicado {

	private Date dataEntrega;
	private String informacao;
	
	
	
	public Comunicado() {
	}

	public Comunicado(Date dataEntrega, String informacao) {
		this.dataEntrega = dataEntrega;
		this.informacao = informacao;
	}

	public Date getDataEntrega() {
		return dataEntrega;
	}

	public void setDataEntrega(Date dataEntrega) {
		this.dataEntrega = dataEntrega;
	}

	public String getInformacao() {
		return informacao;
	}

	public void setInformacao(String informacao) {
		this.informacao = informacao;
	}
	
}
