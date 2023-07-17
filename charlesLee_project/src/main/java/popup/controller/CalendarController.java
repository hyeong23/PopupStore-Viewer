package popup.controller;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import popup.dto.Member;
import popup.service.MemberService;
import popup.service.OpenStoreService;
import popup.vo.StoreVo;

@Controller
public class CalendarController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String openStoreList(Model model, HttpSession session) throws SQLException {


	List<StoreVo> openStoreList = openStoreService.getAllStore();
	List<String> getBussinessMember = memberService.getBussinessMember();
	List<String> location = Arrays.asList("서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
	
	model.addAttribute("openStoreList", openStoreList);
	model.addAttribute("getBussinessMember", getBussinessMember);
	model.addAttribute("location", location);
	
	return "calendar";
	
	}
	
	
	
	
	
	
}
