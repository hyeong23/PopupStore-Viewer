package popup.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.dto.Picture;
import popup.service.OpenStoreService;
import popup.service.ReplyService;
import popup.vo.ReplyVo;
import popup.service.PictureService;
import popup.vo.StoreVo;

@Controller
public class MapController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@Autowired
	ReplyService replyService;
  
  @Autowired
	PictureService pictureService;
	
	@RequestMapping(value = "/map")
	public String getMap(Model model, HttpSession session) {
		
		List<StoreVo> getMapList = openStoreService.getMapStore();
		List<ReplyVo> getReplyList = replyService.getReplyList();
		
		
		model.addAttribute("getMapList", getMapList);
		model.addAttribute("getReplyList", getReplyList);
		
		
		
		// key storeNum, value pictureName
//		List<HashMap<, V>> arr = new HashMap<K, V>(); 
		
//		Map<String, List<Picture>> --> stream : groupBy
//		for(int i =0 ; i< getMapList.size(); i++) {
//			System.out.println(getMapList.get(i).getStoreNum());
//			List<Picture> getPicture = pictureService.getPictureByStoreNum(getMapList.get(i).getStoreNum());
//			System.out.println(getPicture.get(0).getPictureName());
//			String getPictureName = getPicture.get(0).getPictureName();
//			model.addAttribute("getPicture", getPicture);
//		}
		
		
		System.out.println(getMapList);
		System.out.println(getReplyList);
		
		
		
		return "map";
	}
	
	@RequestMapping(value = "/tempMap")
	public String get() {
		
		return "tempMap3";
	}
	
}
