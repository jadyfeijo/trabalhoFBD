package application;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import model.dao.ConsultasDao;
import model.dao.DaoFactory;
import model.entities.Acao;
import model.entities.Advogado;
import model.entities.Audiencia;
import model.entities.Cliente;
import model.entities.Prazo;
import model.entities.Processo;

public class Program {

	public static void main(String[] args) throws ParseException {

		ConsultasDao consultas=DaoFactory.createConsultasDao();
		
		SimpleDateFormat sdfData = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfHora = new SimpleDateFormat("HH:mm:ss");
		
		Scanner sc = new Scanner(System.in);
		
		
		int op;
		
		do {
			
			System.out.println("Escolha uma opcao: ");
			System.out.println("1 - Consultar audiências de um determinado advogado em um dia específico\n"
					+ "2 - Consultar andamento de um processo de um determinado cliente\n"
					+ "3 - Consultar prazos em aberto para um determinado advogado\n"
					+ "4 - Consultar clientes que precisam ser comunicados\n"
					+ "5 - Consultar o nome de advogados que tiveram apenas sentenças procedentes em um determinado mês\n"
					+ "6 - Consultar audiências futuras de um determinado cliente\n"
					+ "7 - Consultar Processos que estão com pagamento pendente\n"
					+ "8 - Consultar o número de sentenças procedentes por comarca contra um determinado réu\n"
					+ "9 - Inserir uma nova sentença\n"
					+ "0 - Sair\n");
			
			op = sc.nextInt();
		
		switch (op) {
		
		case 1:
		
		System.out.println("\n-----Consultar audiências de um determinado advogado em um dia específico----\n");
		
		System.out.print("OAB: ");
		String oab =sc.next();
		System.out.println("Dia (dd/mm/yyy): ");
		Date dia=sdfData.parse(sc.next());
		
		List<Acao> acoes = consultas.mostrarAudienciasAdv(oab, dia);
		
		for(Acao a:acoes) {
			
			System.out.println("NumProc: "+a.getProcesso().getNumero()+ " Autor: "+ a.getAutor().get(0).getNome() + " Reu: "+ a.getReu().get(0).getNome()+ " Vara: "+a.getProcesso().getAudiencias().get(0).getLocal().getVara()+
					" Comarca: "+a.getProcesso().getAudiencias().get(0).getLocal().getComarca() + " Hora: "+sdfHora.format(a.getProcesso().getAudiencias().get(0).getHorario()) );
		}
		break;
		
		case 2:
		
		
		System.out.println("\n------Consultar andamento de um processo de um determinado cliente-------\n");
		
		System.out.print("Número do processo: ");
		String numproc = sc.next();
		System.out.println("CPF do Cliente (apenas números): ");
		String cpf = sc.next();
		
		List<Prazo> prazo = consultas.mostrarAndamento(numproc, cpf);
		
		for(Prazo p:prazo) {
			System.out.println("Descricao "+ p.getDescricao() + " Data: "+sdfData.format(p.getDataInicio()));
		}
		
		break;
		
		case 3:
		System.out.println("\n------Consultar prazos em aberto para um determinado advogado------\n");
		
		System.out.print("OAB: ");
		oab =sc.next();
		
		List<Processo> proc = consultas.mostrarPrazos(oab);
		
		for(Processo p: proc) {
			for(Prazo pz: p.getPrazos())
				System.out.println("NumProc: "+p.getNumero() + " Descricao: "+pz.getDescricao() + " Data Fim: "+sdfData.format(pz.getDataFim())+ " Vara: "+ p.getLocal().getVara());
		}
		
		break;
		
		case 4:
			
		System.out.println("\n------Consultar clientes que precisam ser comunicados------\n");
		List<Cliente> clientes = consultas.clientesComunicar();
		
		for(Cliente c:clientes) {
		
			System.out.println("Nome: "+c.getNome() + "\tTelefone: "+c.getTelefone());
		}
		break;
		
		case 5:
			
		System.out.println("\n------Consultar o nome de advogados que tiveram apenas sentenças procedentes em um determinado mês-----\n");
		
		List<Advogado> adv = consultas.advogadoTodasProcedente(3);
		
		for(Advogado a: adv) {
			System.out.println("Nome: "+a.getNome() + " OAB: "+a.getOab());
		}
		break;
		

		case 6:
		System.out.println("\n-------Consultar audiências futuras de um determinado cliente -------\n");
		
		System.out.println("CPF do Cliente (apenas números): ");
		cpf = sc.next();
		List<Audiencia> aud = consultas.mostrarAudienciasCliente(cpf);
		
		for(Audiencia a: aud) {
			System.out.println("Dia: "+sdfData.format(a.getDia())+" Horario: "+sdfHora.format(a.getHorario())+
					" Vara: "+a.getLocal().getVara() + " Comarca: "+a.getLocal().getComarca() + " Endereco: "+a.getEndereco().getRua());
		}
		
		break;
		
		case 7: 
		
		System.out.println("\n-------Consultar Processos que estão com pagamento pendente-------\n");
		
		clientes=consultas.procPagar();
		
		for(Cliente c: clientes) {
			for(Acao a:c.getAcoes())
				System.out.println("Nome: "+c.getNome() + " CPF: "+c.getId() + " Num. Processo: "+a.getProcesso().getNumero());
		}
		
		break;
		
		case 8 :
		
		System.out.println("\n-------Consultar o número de sentenças procedentes por comarca contra um determinado réu----\n");
		
		System.out.print("CPF/CNPJ do Réu (apenas números): ");
		String cpfReu=sc.next();
		Map<String,int[]> map=consultas.sentencasPorComarca(cpfReu);
		
		for(String comarca: map.keySet()) {
			
			System.out.println("Comarca \t Total de Sentenças \t Sentencas Procedentes");
			System.out.println(comarca+" \t\t\t "+map.get(comarca)[0] + " \t\t\t "+ map.get(comarca)[1]);
		}
		
		break;
		
		case 9:
			
			
			
			break;
		
		}
		}
		while(op!=0);
	}

}
