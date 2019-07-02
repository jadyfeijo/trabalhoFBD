package model.entities;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

public class Processo {

	private String numero;
	private Local local;
	private String tipo;
	private Sentenca sentenca;
	private List<Prazo> prazos = new ArrayList<>();
	private List<Audiencia> audiencias = new ArrayList<>();
	
	public Processo() {
		super();
	}

	public Processo(String numero, Local local, String tipo) {
		this.numero = numero;
		this.local = local;
		this.tipo = tipo;
	}
	
	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Sentenca getSentenca() {
		return sentenca;
	}

	public void setSentenca(Sentenca sentenca) {
		this.sentenca = sentenca;
	}

	public Local getLocal() {
		return local;
	}

	public void setLocal(Local local) {
		this.local = local;
	}

	public List<Prazo> getPrazos() {
		return prazos;
	}	
	
	public void addPrazo(Prazo prazo)
	{
		prazos.add(prazo);
	}
	
	public void removePrazo(Prazo prazo)
	{
		prazos.remove(prazo);
	}
	
	public void addAudiencia(Audiencia audiencia) {
		
		audiencias.add(audiencia);
	}
	
	public void removeAudiencia(Audiencia audiencia) {
		
		audiencias.remove(audiencia);
	}

	public List<Audiencia> getAudiencias() {
		return audiencias;
	}
	
	
}
