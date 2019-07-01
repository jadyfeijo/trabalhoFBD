package model.entities;

import java.util.Date;

import model.entities.enums.TipoAudiencia;

public class Audiencia extends Procedimento {
	
	private TipoAudiencia tipo;
	private Advogado realizador;	
	
	public Audiencia() {
		super();
	}
	
	public Audiencia(Date dia, Date horario, String local, Colaborador marcador, Comunicado comunicado,
			TipoAudiencia tipo, Advogado realizador) {
		super(dia, horario, local, marcador, comunicado);
		this.tipo = tipo;
		this.realizador = realizador;
	}

	public TipoAudiencia getTipo() {
		return tipo;
	}

	public void setTipo(TipoAudiencia tipo) {
		this.tipo = tipo;
	}

	public Advogado getRealizador() {
		return realizador;
	}

	public void setRealizador(Advogado realizador) {
		this.realizador = realizador;
	}
}
