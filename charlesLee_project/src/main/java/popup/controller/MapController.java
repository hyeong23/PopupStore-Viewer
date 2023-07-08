package popup.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.service.OpenStoreService;
import popup.vo.StoreVo;

@Controller
public class MapController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	
	@RequestMapping(value = "/map")
	public String getMap(Model model, HttpSession session) {
		
		List<StoreVo> getMapList = openStoreService.getMapStore();
		
		model.addAttribute("getMapList", getMapList);
		
		System.out.println(getMapList);
		
		return "map";
	}
	
	@RequestMapping(value = "/tempMap")
	public String get() {
		
		return "tempMap3";
	}
	
}
