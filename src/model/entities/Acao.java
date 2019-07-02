package model.entities;

import java.util.ArrayList;
import java.util.List;

import model.entities.enums.Area;

public class Acao {
	
	private Area area;
	private Processo processo;
	private Advogado procurador;
	private List<Parte> autor= new ArrayList<>();
	private List<Parte> reu = new ArrayList<>();
	
	public Acao() {
		super();
	}

	public Acao(Area area, Processo processo, Advogado procurador) {
		super();
		this.area = area;
		this.processo = processo;
		this.procurador = procurador;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public Processo getProcesso() {
		return processo;
	}

	public void setProcesso(Processo processo) {
		this.processo = processo;
	}

	public Advogado getProcurador() {
		return procurador;
	}

	public void setProcurador(Advogado procurador) {
		this.procurador = procurador;
	}
	
	public void addReu(Parte parte) {
		reu.add(parte);
	}
	
	public void removeReu(Parte parte) {
		reu.remove(parte);
	}
	
	public void addAutor(Parte cliente) {
		autor.add(cliente);
	}
	
	public void removeAutor(Parte cliente) {
		autor.remove(cliente);
	}

	public List<Parte> getAutor() {
		return autor;
	}

	public List<Parte> getReu() {
		return reu;
	}
		
	
}
	