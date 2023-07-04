package popup.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.dto.Member;
import popup.service.MemberService;

@Controller
public class RegisterController {
	
	@Autowired
	MemberService memberService;
	

	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerForm() {
		return "register";
	}
	
	
	@RequestMapping(value = "/general", method = RequestMethod.GET)
	public String generalForm() {
		return "general";
	}
	
	@RequestMapping(value = "/general", method = RequestMethod.POST)
	public String general(@RequestParam("member_id") String member_id,
						  @RequestParam("member_pw") String member_pw,
						  @RequestParam("member_email") String member_email,
						  @RequestParam("member_nickname") String member_nickname,
						  Model model) throws SQLException, Exception{
		String view = "/error";
		
		int member_type = 1;
		
		
		boolean member = memberService.insertMember(member_id,member_pw,member_nickname,member_email,member_type);
		
		if(member == true) {
		 view = "/login";
		}
		
		return view;
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/business", method = RequestMethod.GET)
	public String businessForm() {
		return "business";
	}
	
	
	
	
	
}
