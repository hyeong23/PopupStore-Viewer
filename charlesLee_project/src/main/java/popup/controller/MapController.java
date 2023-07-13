package popup.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.service.OpenStoreService;
import popup.service.ReplyService;
import popup.vo.ReplyVo;
import popup.vo.StoreVo;

@Controller
public class MapController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@Autowired
	ReplyService replyService;
	
	
	@RequestMapping(value = "/map")
	public String getMap(Model model, HttpSession session) {
		
		List<StoreVo> getMapList = openStoreService.getMapStore();
		List<ReplyVo> getReplyList = replyService.getReplyList();
		
		model.addAttribute("getMapList", getMapList);
		model.addAttribute("getReplyList", getReplyList);
		
		System.out.println(getMapList);
		System.out.println(getReplyList);
		
		return "map";
	}
	
	@RequestMapping(value = "/tempMap")
	public String get() {
		
		return "tempMap3";
	}
	
}
