package model.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.entities.Prazo;

public class PrazoDaoJDBC {

	protected static Prazo instantiatePrazo(ResultSet rs) throws SQLException{
		Prazo prazo= new Prazo();
		prazo.setDescricao(rs.getString("descricao"));
		prazo.setDataInicio(rs.getDate("datainicio"));
		/*prazo.setDataFim(rs.getDate("datafim"));
		prazo.setDatarealizacao(rs.getDate("datarealizacao"));*/
		return prazo;
	}
}
