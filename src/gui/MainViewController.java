package gui;

import java.io.IOException;
import java.util.function.Consumer;

import application.Main;
import gui.util.Alerts;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ScrollPane;
import javafx.scene.layout.VBox;

public class MainViewController {

	@FXML
	private Button btAndamento;
	
	@FXML
	private Button btAudienciasCliente;
	
	@FXML
	private Button btComunicado;
	
	@FXML
	private Button btPrazos;
	
	@FXML
	private Button btAudienciasAdv;
	
	@FXML
	private Button btPagar;
	
	@FXML
	private Button btAdvProc;
	
	public void onbtAndamento() {
		loadView("/gui/Andamento.fxml",(AndamentoController controller)->{
		});
	}
	
	private synchronized <T> void loadView(String absoluteName,Consumer<T> initializingAction)
	{
		try {
		FXMLLoader loader = new FXMLLoader(getClass().getResource(absoluteName));

		VBox newVBox = loader.load();

		Scene mainScene = Main.getMainScene();
		VBox mainVBox =(VBox)((ScrollPane) mainScene.getRoot()).getContent();

		//Node mainMenu = mainVBox.getChildren().get(0);
		mainVBox.getChildren().clear();
		//mainVBox.getChildren().add(mainMenu);
		mainVBox.getChildren().addAll(newVBox.getChildren());
		
		T controller = loader.getController();
		initializingAction.accept(controller);

		}

		catch (IOException e) {
			Alerts.showAlert("IO Exception", "Error loading view", e.getMessage(),AlertType.ERROR);
		}

	}
	
	
}
