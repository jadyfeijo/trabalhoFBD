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
import model.entities.Sentenca;
import model.entities.enums.TipoSentenca;

public class Program {

	public static void main(String[] args) throws ParseException {

		ConsultasDao consultas = DaoFactory.createConsultasDao();

		SimpleDateFormat sdfData = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfHora = new SimpleDateFormat("HH:mm:ss");

		Scanner sc = new Scanner(System.in);

		int op;

		do {

			System.out.println("\nEscolha uma opcao: ");
			System.out.println("1 - Consultar audiências de um determinado advogado em um dia específico\n"
					+ "2 - Consultar andamento de um processo de um determinado cliente\n"
					+ "3 - Consultar prazos em aberto para um determinado advogado\n"
					+ "4 - Consultar clientes que precisam ser comunicados\n"
					+ "5 - Consultar o nome de advogados que tiveram apenas sentenças procedentes em um determinado mês\n"
					+ "6 - Consultar audiências futuras de um determinado cliente\n"
					+ "7 - Consultar Processos que estão com pagamento pendente\n"
					+ "8 - Consultar o número de sentenças procedentes por comarca contra um determinado réu\n"
					+ "9 - Inserir uma nova sentença\n" + "0 - Sair\n");

			op = sc.nextInt();

			try {
			switch (op) {

			case 1:

				System.out.println("\n-----Consultar audiências de um determinado advogado em um dia específico----\n");

				System.out.print("OAB: ");
				String oab = sc.next();
				System.out.print("Dia (dd/mm/yyy): ");
				Date dia = sdfData.parse(sc.next());

				List<Acao> acoes = consultas.mostrarAudienciasAdv(oab, dia);

				for (Acao a : acoes) {

					System.out.println("NumProc: " + a.getProcesso().getNumero() + " Autor: "
							+ a.getAutor().get(0).getNome() + " Reu: " + a.getReu().get(0).getNome() + " Vara: "
							+ a.getProcesso().getAudiencias().get(0).getLocal().getVara() + " Comarca: "
							+ a.getProcesso().getAudiencias().get(0).getLocal().getComarca() + " Hora: "
							+ sdfHora.format(a.getProcesso().getAudiencias().get(0).getHorario()));
				}
				break;

			case 2:

				System.out.println("\n------Consultar andamento de um processo de um determinado cliente-------\n");

				System.out.print("Número do processo: ");
				String numproc = sc.next();
				System.out.print("CPF do Cliente (apenas números): ");
				String cpf = sc.next();

				List<Prazo> prazo = consultas.mostrarAndamento(numproc, cpf);

				for (Prazo p : prazo) {
					System.out.println("Data: " + sdfData.format(p.getDataInicio()) + "\tDescricao " + p.getDescricao());
				}

				break;

			case 3:
				System.out.println("\n------Consultar prazos em aberto para um determinado advogado------\n");

				System.out.print("OAB: ");
				oab = sc.next();

				List<Processo> proc = consultas.mostrarPrazos(oab);

				for (Processo p : proc) {
					for (Prazo pz : p.getPrazos())
						System.out.println("NumProc: " + p.getNumero() + "\tDescricao: " + pz.getDescricao()
								+ "\tData Fim: " + sdfData.format(pz.getDataFim()) + "\tVara: " + p.getLocal().getVara());
				}

				break;

			case 4:

				System.out.println("\n------Consultar clientes que precisam ser comunicados------\n");
				List<Cliente> clientes = consultas.clientesComunicar();

				for (Cliente c : clientes) {

					System.out.println("Nome: " + c.getNome() + "\tTelefone: " + c.getTelefone());
				}
				break;

			case 5:

				System.out.println(
						"\n------Consultar o nome de advogados que tiveram apenas sentenças procedentes em um determinado mês-----\n");

				System.out.print("Entre com um mes (1-12): ");
				int mes = sc.nextInt();
				
				List<Advogado> adv = consultas.advogadoTodasProcedente(mes);

				for (Advogado a : adv) {
					System.out.println("Nome: " + a.getNome() + "\tOAB: " + a.getOab());
				}
				break;

			case 6:
				System.out.println("\n-------Consultar audiências futuras de um determinado cliente -------\n");

				System.out.print("CPF do Cliente (apenas números): ");
				cpf = sc.next();
				List<Audiencia> aud = consultas.mostrarAudienciasCliente(cpf);

				for (Audiencia a : aud) {
					System.out.println("Dia: " + sdfData.format(a.getDia()) + "\tHorario: "
							+ sdfHora.format(a.getHorario()) + "\tVara: " + a.getLocal().getVara() + "\tComarca: "
							+ a.getLocal().getComarca() + "\tEndereco: " + a.getEndereco().getRua());
				}

				break;

			case 7:

				System.out.println("\n-------Consultar Processos que estão com pagamento pendente-------\n");

				clientes = consultas.procPagar();

				for (Cliente c : clientes) {
					for (Acao a : c.getAcoes())
						System.out.println("Nome: " + c.getNome() + "\tCPF: " + c.getId() + "\tNum. Processo: "
								+ a.getProcesso().getNumero());
				}

				break;

			case 8:

				System.out.println(
						"\n-------Consultar o número de sentenças procedentes por comarca contra um determinado réu----\n");

				System.out.print("CPF/CNPJ do Réu (apenas números): ");
				String cpfReu = sc.next();
				Map<String, int[]> map = consultas.sentencasPorComarca(cpfReu);

				for (String comarca : map.keySet()) {

					System.out.println("Comarca \t Total de Sentenças \t Sentencas Procedentes");
					System.out.println(comarca + " \t\t\t " + map.get(comarca)[0] + " \t\t\t " + map.get(comarca)[1]);
				}

				break;

			case 9:

				System.out.println("\n----------Inserir uma nova sentença---------\n");

				List<Processo> listS = consultas.getTabelaSentenca();
				List<Cliente> listP = consultas.getTabelaPagamento();

				System.out.println("Tabela Sentenca antes da insercao:\n");

				mostrarListaSentenca(listS);
				
				System.out.println("\nTabela Pagamento antes da insercao:\n");

				mostrarListaPagamento(listP);

				System.out.print("\nEntre com a data (dd/mm/aaaa): ");
				Date data = sdfData.parse(sc.next());
				System.out.print("Entre com o resultado: ");
				TipoSentenca resultado = TipoSentenca.valueOf(sc.next());
				System.out.print("Valor: ");
				float valor = sc.nextFloat();
				System.out.print("Numero Processo: ");
				String numero = sc.next();

				Sentenca sent = new Sentenca(data, valor, resultado);

				consultas.inserirSentenca(sent, numero);

				listS = consultas.getTabelaSentenca();
				listP = consultas.getTabelaPagamento();

				System.out.println("Tabela Sentenca após a insercao:\n");
				
				mostrarListaSentenca(listS);
				
				System.out.println("\nTabela Pagamento após a insercao:\n");
				
				mostrarListaPagamento(listP);

				break;
	}
			
}
			
			catch(Exception e) {
				System.out.println("ERROR: "+ e.getMessage());
			}
		}
		while (op != 0);
		
		
		sc.close();
	}

	public static void mostrarListaSentenca(List<Processo> listS) {

		for (Processo p : listS) {

			System.out.println(p.getSentenca() + "\tNum. Processo= " + p.getNumero());
		}
	}

	public static void mostrarListaPagamento(List<Cliente> listP) {

		for (Cliente c : listP) {

			System.out.println(c.getPagamento() + "\tCPF Cliente = " + c.getId());
		}
	}

}
