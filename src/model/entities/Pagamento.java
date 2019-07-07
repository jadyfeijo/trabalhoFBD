package model.entities;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Pagamento {

	private static SimpleDateFormat sdfData = new SimpleDateFormat("dd/MM/yyyy");

	
	private Integer codigo;
	private Float valor;
	private Date data;
	private String numeroProcesso;
	private Boolean pago;
	
	
	
	public Pagamento() {
	}

	public Pagamento(Integer codigo, Float valor, Date data, String numeroProcesso, Boolean pago) {
		this.codigo = codigo;
		this.valor = valor;
		this.data = data;
		this.numeroProcesso = numeroProcesso;
		this.pago = pago;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public Float getValor() {
		return valor;
	}

	public void setValor(Float valor) {
		this.valor = valor;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getNumeroProcesso() {
		return numeroProcesso;
	}

	public void setNumeroProcesso(String numeroProcesso) {
		this.numeroProcesso = numeroProcesso;
	}

	public Boolean getPago() {
		return pago;
	}

	public void setPago(Boolean pago) {
		this.pago = pago;
	}

	@Override
	public String toString() {
		return "Pagamento codigo=" + codigo + ":\tvalor=" + valor + ",\tdata=" + sdfData.format(data) + ",\tnumeroProcesso="
				+ numeroProcesso + ",\tpago=" + pago;
	}
	
		
}
