package model.entities;

import java.util.ArrayList;
import java.util.List;

public class Processo {

	private String numero;
	private int vara;
	private String comarca;
	private String tipo;
	private Sentenca sentenca;
	private List<Prazo> prazos = new ArrayList<>();
	private List<Audiencia> audiencias = new ArrayList<>();
	
	public Processo() {
		super();
	}

	public Processo(String numero, int vara, String comarca, String tipo) {
		this.numero = numero;
		this.vara = vara;
		this.comarca = comarca;
		this.tipo = tipo;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public int getVara() {
		return vara;
	}

	public void setVara(int vara) {
		this.vara = vara;
	}

	public String getComarca() {
		return comarca;
	}

	public void setComarca(String comarca) {
		this.comarca = comarca;
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
}
