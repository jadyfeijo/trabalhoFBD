package model.entities;

import java.time.Instant;
import java.util.Date;

public class Procedimento {

	private Date dia;
	private Instant horario;
	private Endereco endereco;
	private Colaborador marcador;
	private Comunicado comunicado;
		
	public Procedimento() {
	}

	public Procedimento(Date dia, Instant horario, Endereco endereco, Colaborador marcador, Comunicado comunicado) {
		super();
		this.dia = dia;
		this.horario = horario;
		this.endereco = endereco;
		this.marcador = marcador;
		this.comunicado = comunicado;
	}

	public Date getDia() {
		return dia;
	}

	public void setDia(Date dia) {
		this.dia = dia;
	}

	public Instant getHorario() {
		return horario;
	}

	public void setHorario(Instant horario) {
		this.horario = horario;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Colaborador getMarcador() {
		return marcador;
	}

	public void setMarcador(Colaborador marcador) {
		this.marcador = marcador;
	}

	public Comunicado getComunicado() {
		return comunicado;
	}

	public void setComunicado(Comunicado comunicado) {
		this.comunicado = comunicado;
	}
	
}
