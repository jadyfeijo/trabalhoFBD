package model.entities;

import java.time.Instant;
import java.util.Date;

import model.entities.enums.TipoAudiencia;

public class Audiencia extends Procedimento {
	
	private TipoAudiencia tipo;
	private Advogado realizador;
	private Local local;
	
	public Audiencia() {
		super();
	}

	public Audiencia(Date dia, Date horario, Endereco endereco, Colaborador marcador, Comunicado comunicado,
			TipoAudiencia tipo, Advogado realizador, Local local) {
		super(dia, horario, endereco, marcador, comunicado);
		this.tipo = tipo;
		this.realizador = realizador;
		this.local = local;
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

	public Local getLocal() {
		return local;
	}

	public void setLocal(Local local) {
		this.local = local;
	}
}
