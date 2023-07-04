package popup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {

	
	@RequestMapping(value = "/map")
	public String getMap() {
		
		return "map";
	}
	
	@RequestMapping(value = "/tempMap")
	public String get() {
		
		return "tempMap3";
	}
	
}
