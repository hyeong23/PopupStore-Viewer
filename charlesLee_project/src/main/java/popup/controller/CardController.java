package popup.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.service.AlarmService;
import popup.service.FavoriteService;
import popup.service.OpenStoreService;
import popup.vo.StoreVo;

@Controller
public class CardController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@Autowired
	FavoriteService favoriteService;
	
	@Autowired
	AlarmService alarmService;
	
	
	@RequestMapping(value = "/card")
	public String openStoreList(Model model, HttpSession session) throws Exception  {
		
	
	try {
		Integer customerNum = (Integer) session.getAttribute("memberNum");
		
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		
		List<Integer> getStoreByHeart;
		getStoreByHeart = favoriteService.getStoreByHeart(customerNum);
		
		List<Integer> getStoreByAlarm = alarmService.getStoreByAlarm(customerNum);
		
		model.addAttribute("getStoreByHeart",getStoreByHeart);
		model.addAttribute("getStoreByAlarm",getStoreByAlarm);
		model.addAttribute("openStoreList", openStoreList);
	} catch (Exception e) {
		
		 List<StoreVo> openStoreList = openStoreService.getAllStore();
		 model.addAttribute("openStoreList", openStoreList); 
		 return "card";
		 

	 }
	
	
	
	
	return "card";
	
	
	
}
}