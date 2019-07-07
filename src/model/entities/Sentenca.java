package model.entities;

import java.text.SimpleDateFormat;
import java.util.Date;

import model.entities.enums.TipoSentenca;

public class Sentenca {
	
	private static SimpleDateFormat sdfData = new SimpleDateFormat("dd/MM/yyyy");


	private Integer codigo;
	private Date data;
	private Float valor;
	private TipoSentenca resultado;
	
	public Sentenca() {
	}

	public Sentenca(Date data, Float valor, TipoSentenca resultado) {
		this.data = data;
		this.valor = valor;
		this.resultado = resultado;
	}


	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Float getValor() {
		return valor;
	}

	public void setValor(Float valor) {
		this.valor = valor;
	}

	public TipoSentenca getResultado() {
		return resultado;
	}

	public void setResultado(TipoSentenca resultado) {
		this.resultado = resultado;
	}

	@Override
	public String toString() {
		return "Sentenca codigo " + codigo + ":\tdata=" + sdfData.format(data) + ",\tresultado=" + resultado +  ",\tvalor=" + valor;
	}
	
	
}
