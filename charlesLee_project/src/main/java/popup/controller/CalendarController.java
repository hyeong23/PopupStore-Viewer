package popup.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.service.OpenStoreService;
import popup.vo.StoreVo;

@Controller
public class CalendarController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@RequestMapping(value = "/calendar")
	public String openStoreList(Model model, HttpSession session) {

	System.out.println("calendar test");

	List<StoreVo> openStoreList = openStoreService.getAllStore();

	model.addAttribute("openStoreList", openStoreList);
	
	
	return "calendar";
	
	}
}
