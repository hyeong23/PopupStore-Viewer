package popup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/home")
	public String home() {

		System.out.println("home test1");
    
		return "home";
	}
	
	@RequestMapping(value = "/main")
	public String main(Model model) {
		System.out.println("main test");
		return "main";
	}
	
	
	
}
