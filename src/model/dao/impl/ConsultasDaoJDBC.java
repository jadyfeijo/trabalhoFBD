package model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import db.DB;
import db.DBException;
import model.dao.ConsultasDao;
import model.entities.Advogado;
import model.entities.Audiencia;
import model.entities.Cliente;
import model.entities.Prazo;
import model.entities.Processo;

public class ConsultasDaoJDBC implements ConsultasDao{

	private Connection conn;
	
	public ConsultasDaoJDBC(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public List<Audiencia> mostrarAudienciasAdv(String oab, Date dia) {

		
		return null;
	}

	@Override
	public List<Prazo> mostrarPrazos(String oab) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Prazo> mostrarAndamento(String proc, String cpfCliente) {

		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(
					
					"select descricao, datainicio "
					+"from ProcessosCliente join prazo on numprocesso=num_processo "
					+"where cpf=? and numprocesso=?"
					);
			
			st.setString(1, cpfCliente);
			st.setString(2, proc);
			
			rs=st.executeQuery();
			List<Prazo> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Prazo prazo = PrazoDaoJDBC.instantiatePrazo(rs);
				list.add(prazo);
			}
			
			return list;
		}
		catch(SQLException e) {
			throw new DBException(e.getMessage());
		}
		finally {
			DB.closeStatement(st);
			DB.closeResultSet(rs);
		}
		
	}

	@Override
	public List<Cliente> clientesComunicar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Advogado> advogadoTodasProcedente() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Processo> procPagar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Audiencia> mostrarAudienciasCliente(String cpfCliente) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
