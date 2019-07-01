package model.dao;

import db.DB;
import model.dao.impl.ConsultasDaoJDBC;

public class DaoFactory {

	public static ConsultasDao createConsultasDao() {
		return new ConsultasDaoJDBC(DB.getConnection());
	}
}
