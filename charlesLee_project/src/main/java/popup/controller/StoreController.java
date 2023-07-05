package popup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import popup.service.StoreService;
import popup.vo.StoreVo;

@Controller
public class StoreController {
	
	
	@Autowired
	StoreService storeService;
	
	@RequestMapping(value = "/storeList", method = RequestMethod.GET)
	public String storeListForm(Model model) throws Exception{
		
		List<StoreVo> store = storeService.getStoreList();
		
		model.addAttribute("store", store);

		return "storeList";
	}
	

	
	
}
