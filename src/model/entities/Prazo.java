package model.entities;

import java.util.Date;

public class Prazo {

	private Date dataInicio;
	private Date dataFim;
	private String descricao;
	private Date datarealizacao;
	
	public Prazo() {
	}

	public Prazo(Date dataInicio, Date dataFim, String descricao) {
		super();
		this.dataInicio = dataInicio;
		this.dataFim = dataFim;
		this.descricao = descricao;
	}

	public Date getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(Date dataInicio) {
		this.dataInicio = dataInicio;
	}

	public Date getDataFim() {
		return dataFim;
	}

	public void setDataFim(Date dataFim) {
		this.dataFim = dataFim;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Date getDatarealizacao() {
		return datarealizacao;
	}

	public void setDatarealizacao(Date datarealizacao) {
		this.datarealizacao = datarealizacao;
	}
	
}
