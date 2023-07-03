package popup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {
	
	@RequestMapping(value = "/calendar")
	public String home() {

		System.out.println("calendar test");
    
		return "calendar";
	}
	
	
}
