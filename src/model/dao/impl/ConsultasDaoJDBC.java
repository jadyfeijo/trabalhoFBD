package model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import db.DB;
import db.DBException;
import model.dao.ConsultasDao;
import model.entities.Acao;
import model.entities.Advogado;
import model.entities.Audiencia;
import model.entities.Cliente;
import model.entities.Local;
import model.entities.Parte;
import model.entities.Prazo;
import model.entities.Processo;
import model.entities.Telefone;

public class ConsultasDaoJDBC implements ConsultasDao{
	
	private Connection conn;
	
	public ConsultasDaoJDBC(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public List<Acao> mostrarAudienciasAdv(String oab, Date dia) {
		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(
					""
					
					);
			
			st.setString(1, oab);
			st.setDate(1, (java.sql.Date) dia);
			
			rs=st.executeQuery();
			List<Acao> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Audiencia aud = new Audiencia();
				Local lc = new Local();
				
				lc.setComarca(rs.getString("comarca"));
				lc.setVara(rs.getString("vara"));
				aud.setHorario(rs.getTime("hora").toInstant());			
				aud.setLocal(lc);
				
				Processo proc = new Processo();
				proc.setNumero(rs.getString("numprocesso"));
				
				proc.addAudiencia(aud);
				
				Acao acao = new Acao();
				Parte autor = new Parte();
				Parte reu = new Parte();
				autor.setNome(rs.getString("pautor.nome"));
				reu.setNome(rs.getString("preu.nome"));
				
				acao.addAutor(autor);
				acao.addReu(reu);
				acao.setProcesso(proc);
				
				list.add(acao);
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
	public List<Processo> mostrarPrazos(String oab) {

		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(""
					
					
					);
			
			st.setString(1, oab);
			
			rs=st.executeQuery();
			List<Processo> list = new ArrayList<>();
			Map<String,Processo> map = new HashMap<>();
			
			while(rs.next()) {
				Processo proc = map.get(rs.getString("numprocesso"));
				
				if(proc==null) {
					
					Local lc=new Local();
					lc.setVara(rs.getString("vara"));
					proc.setNumero(rs.getString("numero"));
					proc.setLocal(lc);
					
				}
				
				Prazo prazo = new Prazo();
				prazo.setDescricao(rs.getString("descricao"));
				prazo.setDataFim(rs.getDate("datafim"));

				proc.addPrazo(prazo);
				
				map.put(rs.getString("numprocesso"), proc);	

			}
			
			for(String num: map.keySet()) {
				list.add(map.get(num));
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
		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(""
					


					);
			
			rs=st.executeQuery();
			List<Cliente> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Cliente cliente = new Cliente();
				cliente.setTelefone(Telefone.parseToTelefone(rs.getString("ddd").concat(rs.getString("telefone"))));
				cliente.setNome(rs.getString("nome"));
				
				list.add(cliente);
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
	public List<Advogado> advogadoTodasProcedente(int mes) {
		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(
					""
					
					);
			
			st.setInt(1,mes);
			
			
			rs=st.executeQuery();
			List<Advogado> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Advogado adv = new Advogado();
				
				adv.setNome(rs.getString("nome"));
				adv.setOab(rs.getString("oab"));
				list.add(adv);
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
	public List<Processo> procPagar() {
		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(
					
					""
					);
			
			rs=st.executeQuery();
			List<Processo> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Processo proc = new Processo();
				proc.setNumero(rs.getString("numprocesso"));
				list.add(proc);
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
	public List<Audiencia> mostrarAudienciasCliente(String cpfCliente) {

		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement(
					
					""
					);
			
			st.setString(1, cpfCliente);
			
			rs=st.executeQuery();
			List<Audiencia> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Audiencia aud = new Audiencia();
				Local lc = new Local();
				
				lc.setComarca(rs.getString("comarca"));
				lc.setVara(rs.getString("vara"));
				
				aud.setDia(rs.getDate("dia"));
				aud.setHorario(rs.getTime("hora").toInstant());			
				aud.setLocal(lc);
				
				list.add(aud);
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

	
}
