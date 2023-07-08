package popup.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.service.OpenStoreService;
import popup.vo.StoreVo;

@Controller
public class FilterController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@RequestMapping(value = "/filterMain", method = RequestMethod.GET)
	public String storeListForm(Model model) throws Exception{
		
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		
		model.addAttribute("openStoreList", openStoreList);

		return "filterMain";
	}
	
	@RequestMapping(value = "/filterTested", method = RequestMethod.GET)
	public String searchStore(Model model, @RequestParam("inputText") String inputText) throws SQLException {       
	    List<StoreVo> openStoreList = openStoreService.getStoreByTitle(inputText);
	    String view = "error";
	    
	    if (openStoreList != null) {
	        model.addAttribute("openStoreList", openStoreList);
	        view = "filterMain";
	    }
	    
	    return view;
	}
	
}
