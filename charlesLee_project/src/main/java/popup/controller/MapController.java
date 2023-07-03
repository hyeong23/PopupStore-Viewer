package popup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {

	
	@RequestMapping(value = "/temp")
	public String getTemp() {
		
		return "tempMap";
	}
	
	@RequestMapping(value = "/temp2")
	public String getTemp2() {
		
		return "tempMap2";
	}
	
}
