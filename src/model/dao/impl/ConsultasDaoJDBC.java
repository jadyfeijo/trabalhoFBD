package model.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
	public List<Acao> mostrarAudienciasAdv(String oab, java.util.Date dia) {
		PreparedStatement st =null;
		ResultSet rs=null;
		
		try {
			st=conn.prepareStatement("select numprocesso,hora,dia,pautor.nome, preu.nome,comarca,vara\r\n" + 
					"from acao natural join autor join parte as pautor on (pautor.cpfcnpj=cpfAutor) natural join reu join parte as preu on (preu.cpfcnpj=cpfReu)  join processo using (codacao) join procedimento on (numprocesso=num_processo)\r\n" + 
					"where procedimento.tipo='Audiencia' and dia=? and codacao in (\r\n" + 
					"	select codacao\r\n" + 
					"    from representacao join acao on(cod_acao=codacao) natural join advogado\r\n" + 
					"    where oab=?);"
					
					
					);
			
			st.setString(2, oab);
			st.setDate(1, new java.sql.Date(dia.getTime()));
			
			rs=st.executeQuery();
			List<Acao> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Audiencia aud = new Audiencia();
				Local lc = new Local();
				
				lc.setComarca(rs.getString("comarca"));
				lc.setVara(rs.getString("vara"));
				aud.setHorario(new java.util.Date (rs.getTime("hora").getTime()));			
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
			st=conn.prepareStatement("select numprocesso,vara,datafim,descricao\r\n" + 
					"from ProcessosAdv natural join processo join prazo on (numprocesso=num_processo)\r\n" + 
					"where datafim>now() and oab=?"
					
					
					);
			
			st.setString(1, oab);
			
			rs=st.executeQuery();
			List<Processo> list = new ArrayList<>();
			Map<String,Processo> map = new HashMap<>();
			
			while(rs.next()) {
				Processo proc = map.get(rs.getString("numprocesso"));
				
				if(proc==null) {
					
					proc=new Processo();
					Local lc=new Local();
					lc.setVara(rs.getString("vara"));
					proc.setNumero(rs.getString("numprocesso"));
					proc.setLocal(lc);
					
				}
				
				Prazo prazo = new Prazo();
				prazo.setDescricao(rs.getString("descricao"));
				prazo.setDataFim(new java.util.Date(rs.getDate("datafim").getTime()));

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
				
				Prazo prazo = new Prazo();
				prazo.setDescricao(rs.getString("descricao"));
				prazo.setDataInicio(new java.util.Date (rs.getDate("datainicio").getTime()));
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
			st=conn.prepareStatement("select nome, ddd,numero\r\n" + 
					"from parte join cliente on (cpfcnpj=cpf) join telefone using (cpf)\r\n" + 
					"where cpf not in (\r\n" + 
					"	select cpf\r\n" + 
					"    from ProcessosCliente join procedimento on (num_processo=numprocesso) natural join comunicado);\r\n" + 
					"    "
					


					);
			
			rs=st.executeQuery();
			List<Cliente> list = new ArrayList<>();
			
			while(rs.next()) {
				
				Cliente cliente = new Cliente();
				Telefone fone = new Telefone();
				fone.setDdd(rs.getString("ddd"));
				fone.setNumero(rs.getString("numero"));
				cliente.setTelefone(fone);
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
				aud.setHorario(new java.util.Date (rs.getTime("hora").getTime()));			
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
