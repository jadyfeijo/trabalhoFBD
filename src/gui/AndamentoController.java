package gui;

import java.net.URL;
import java.util.Date;
import java.util.ResourceBundle;

import application.Main;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import model.entities.Prazo;

public class AndamentoController implements Initializable {
	
	
	
	@FXML
	private TextField txtcpfCliente;
	
	@FXML 
	private TextField txtnumProc;
	
	@FXML
	private TableView<Prazo> tableViewPrazo;
	
	@FXML
	private TableColumn<Prazo,String> tableColumnDescricao;
	
	@FXML 
	private TableColumn<Prazo,Date> tableColumnData;
	
	@FXML
	private Button btPerquisar;

	public void onBtPesquisar() {
		
	}
	
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		initializeNodes();
	}

	private void initializeNodes() {
		tableColumnDescricao.setCellValueFactory(new PropertyValueFactory<>("Descrição"));
		tableColumnData.setCellValueFactory(new PropertyValueFactory<>("Data"));

		Stage stage=(Stage)Main.getMainScene().getWindow();
		//faz o tableView acompanhar o tamanho da janela -->ajusta na janela
		tableViewPrazo.prefHeightProperty().bind(stage.heightProperty());
	}
	

	
	
	

}
