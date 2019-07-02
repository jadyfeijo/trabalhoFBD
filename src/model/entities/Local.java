package model.entities;

public class Local {
	
	private String vara;
	private String comarca;
	private String foro;
		
	public Local() {
		super();
	}

	public Local(String vara, String comarca, String foro) {
		super();
		this.vara = vara;
		this.comarca = comarca;
		this.foro = foro;
	}

	public String getVara() {
		return vara;
	}

	public void setVara(String vara) {
		this.vara = vara;
	}

	public String getComarca() {
		return comarca;
	}

	public void setComarca(String comarca) {
		this.comarca = comarca;
	}

	public String getForo() {
		return foro;
	}

	public void setForo(String foro) {
		this.foro = foro;
	}
}
