package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import popup.service.AskService;

@Controller
public class AskController {
	
	
	@Autowired
	AskService askService;
}
