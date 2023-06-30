package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import popup.service.StoreService;

@Controller
public class StoreController {
	
	
	@Autowired
	StoreService storeService;
}
