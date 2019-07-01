package model.entities;

import model.entities.enums.Area;

public class Acao {
	
	private Area area;
	private Processo processo;
	private Advogado procurador;
	private Parte parteContraria;
	
	
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
		
}
	