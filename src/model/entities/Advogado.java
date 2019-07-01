package model.entities;

import model.entities.enums.Area;
import model.entities.enums.Funcao;

public class Advogado extends Colaborador{
	
	private String oab;
	
	private Area especialidade;
	
	
	
	public Advogado() {
		super();
	}

	public Advogado(String nome, String cpf, String rg, Double salario,Funcao funcao,String oab, Area especialidade) {
		super(nome,cpf,rg,salario,funcao);
		this.oab = oab;
		this.especialidade = especialidade;
	}

	public String getOab() {
		return oab;
	}

	public void setOab(String oab) {
		this.oab = oab;
	}

	public Area getEspecialidade() {
		return especialidade;
	}

	public void setEspecialidade(Area especialidade) {
		this.especialidade = especialidade;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((oab == null) ? 0 : oab.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Advogado other = (Advogado) obj;
		if (oab == null) {
			if (other.oab != null)
				return false;
		} else if (!oab.equals(other.oab))
			return false;
		return true;
	}
}
