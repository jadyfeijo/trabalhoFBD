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
		
		System.out.println("-----Teste consulta Audiencias de Adv em uma data----\n");
		
		//System.out.println("oab: ");
		String oab = "RS108563";//sc.nextLine();
		//System.out.println("dia: ");
		Date dia=sdfData.parse("03/08/2019");
		
		List<Acao> acoes = consultas.mostrarAudienciasAdv(oab, dia);
		
		for(Acao a:acoes) {
			
			System.out.println("NumProc: "+a.getProcesso().getNumero()+ " Autor: "+ a.getAutor().get(0).getNome() + " Reu: "+ a.getReu().get(0).getNome()+ " Vara: "+a.getProcesso().getAudiencias().get(0).getLocal().getVara()+
					" Comarca: "+a.getProcesso().getAudiencias().get(0).getLocal().getComarca() + " Hora: "+sdfHora.format(a.getProcesso().getAudiencias().get(0).getHorario()) );
		}
		
		
		
		System.out.println("\n------Teste consulta Andamento-------\n");
		String numproc = "00111800000002";
		String cpf = "00000000001";
		
		List<Prazo> prazo = consultas.mostrarAndamento(numproc, cpf);
		
		for(Prazo p:prazo) {
			System.out.println("Descricao "+ p.getDescricao() + " Data: "+sdfData.format(p.getDataInicio()));
		}
		
		System.out.println("\n------Teste consulta prazos em aberto------\n");
		oab="RS074402";
		
		List<Processo> proc = consultas.mostrarPrazos(oab);
		
		for(Processo p: proc) {
			for(Prazo pz: p.getPrazos())
				System.out.println("NumProc: "+p.getNumero() + " Descricao: "+pz.getDescricao() + " Data Fim: "+sdfData.format(pz.getDataFim())+ " Vara: "+ p.getLocal().getVara());
		}
		
		System.out.println("\n------Teste consulta Cilientes a Comunicar------\n");
		List<Cliente> clientes = consultas.clientesComunicar();
		
		for(Cliente c:clientes) {
		
			System.out.println("Nome: "+c.getNome() + "\tTelefone: "+c.getTelefone());
		}
			
		System.out.println("\n------Teste consulta Procedentes-----\n");
		
		List<Advogado> adv = consultas.advogadoTodasProcedente(3);
		
		for(Advogado a: adv) {
			System.out.println("Nome: "+a.getNome() + " OAB: "+a.getOab());
		}
		
		
		System.out.println("\n-------Teste consulta Audiencia de Cliente -------\n");
		cpf="00000000002";
		
		List<Audiencia> aud = consultas.mostrarAudienciasCliente(cpf);
		
		for(Audiencia a: aud) {
			System.out.println("Dia: "+sdfData.format(a.getDia())+" Horario: "+sdfHora.format(a.getHorario())+
					" Vara: "+a.getLocal().getVara() + " Comarca: "+a.getLocal().getComarca() + " Endereco: "+a.getEndereco().getRua());
		}
		
		System.out.println("\n-------Teste consulta Processos a pagar---------\n");
		
		clientes=consultas.procPagar();
		
		for(Cliente c: clientes) {
			for(Acao a:c.getAcoes())
				System.out.println("Nome: "+c.getNome() + " CPF: "+c.getId() + " Num. Processo: "+a.getProcesso().getNumero());
		}
		
		System.out.println("\n-------Teste consulta Sentencas procedentes de um reu por Comarca------\n");
		
		String cpfReu="00011100011100";
		Map<String,int[]> map=consultas.sentencasPorComarca(cpfReu);
		
		for(String comarca: map.keySet()) {
			
			System.out.println("Comarca \t Total de Sentenças \t Sentencas Procedentes");
			System.out.println(comarca+" \t\t\t "+map.get(comarca)[0] + " \t\t\t "+ map.get(comarca)[1]);
		}
		
	}

}
