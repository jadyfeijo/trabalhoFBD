package model.entities;

import java.util.Date;

import model.entities.enums.TipoSentenca;

public class Sentenca {

	private Date data;
	private Double valor;
	private TipoSentenca resultado;
	
	public Sentenca() {
	}

	public Sentenca(Date data, Double valor, TipoSentenca resultado) {
		super();
		this.data = data;
		this.valor = valor;
		this.resultado = resultado;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public TipoSentenca getResultado() {
		return resultado;
	}

	public void setResultado(TipoSentenca resultado) {
		this.resultado = resultado;
	}
	
}
