package popup.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value = "/calendar")
	public String openStoreList(Model model, HttpSession session) throws SQLException {


	List<StoreVo> openStoreList = openStoreService.getAllStore();
	List<String> getBussinessMember = memberService.getBussinessMember();
	
	model.addAttribute("openStoreList", openStoreList);
	model.addAttribute("getBussinessMember", getBussinessMember);
	
	return "calendar";
	
	}
	
	
	
	
	
	
}
