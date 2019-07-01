package model.entities;

import java.util.Date;

public class Procedimento {

	private Date dia;
	private Date horario;
	private String local;
	private Colaborador marcador;
	private Comunicado comunicado;
		
	public Procedimento() {
		super();
	}

	public Procedimento(Date dia, Date horario, String local, Colaborador marcador, Comunicado comunicado) {
		super();
		this.dia = dia;
		this.horario = horario;
		this.local = local;
		this.marcador = marcador;
		this.comunicado = comunicado;
	}



	public Date getDia() {
		return dia;
	}

	public void setDia(Date dia) {
		this.dia = dia;
	}

	public Date getHorario() {
		return horario;
	}

	public void setHorario(Date horario) {
		this.horario = horario;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
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
