package application;

import java.sql.Connection;
import java.util.List;

import db.DB;
import model.dao.ConsultasDao;
import model.dao.DaoFactory;
import model.entities.Prazo;

public class Main {

	public static void main(String[] args) {
		
		/*Connection conn = DB.getConnection();
		System.out.println("connected");
		DB.closeConnection();
		System.out.println("disconnected");*/

		ConsultasDao cons = DaoFactory.createConsultasDao();
		
		System.out.println("Teste consulta:\n");
		
		List<Prazo> list = cons.mostrarAndamento("00111800000002", "00000000001");
		
		for(Prazo p: list) {
			System.out.println(p.getDescricao());
		}
		
	}

}
