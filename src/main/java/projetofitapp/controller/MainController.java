package projetofitapp.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String index() throws IOException {
		
		return "index";
	}
	
	@GetMapping("/cadastro")
	public String formularioCadastro() throws IOException {
		
		return "formularioCadastro";
	}

}
