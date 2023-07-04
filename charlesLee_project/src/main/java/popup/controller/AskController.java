package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.service.AskService;

@Controller
public class AskController {
	
	
	@Autowired
	AskService askService;
	
	@RequestMapping(value = "/ask")
	public String home() {

		System.out.println("ask test");
    
		return "ask";
	}
}
